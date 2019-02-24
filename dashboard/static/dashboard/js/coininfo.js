Chart.defaults.global.elements.point.pointStyle = 'circle';
Chart.defaults.global.elements.point.backgroundColor = 'rgba(75, 192, 192, 1)';
var LANG = $("html").attr("lang");
var CHART;
var totalSupply = 0;
var BTC = "BTC", ETH = "ETH", USD = "USD", KRW = "KRW";
var rateInfoObj = {BTC: 0,ETH: 0,USD: 0,KRW: 0};
var marketCapInfoObj = {BTC: 0,ETH: 0,USD: 0};
var volume24Info = {BTC: 0, ETH: 0, USD: 0};
/*
var histoInfoObj = {BTC: [],ETH: [],USD: []};
var histoDayInfoObj = {BTC: [],ETH: [],USD: []};
var histoMonthInfoObj = {BTC: [],ETH: [],USD: []};
var histoWeekInfoObj = {BTC: [],ETH: [],USD: []};
*/
var $selectRate = $('.tab.item-01');  //btc, eth, usd
var $selectChartPeriod = $('.duration');
var $rate = $('.screen1').find('.eth');
var $selectedRate = $rate.find('em');
var $rateKrw = $('.screen1').find('.price');
var $marketCapNum = $('.screen1').find('.market-vol-wrap').find('.left p:nth-child(2)');
var $volumeNum = $('.screen1').find('.market-vol-wrap').find('.right p:nth-child(2)');
var $table = $('.table-typeA');
var ctx = document.getElementById("chartCanvas");
function addCommas(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}
function getPriceInfoAjax() {
    return $.ajax({
        url: 'https://min-api.cryptocompare.com/data/price?fsym=ICX&tsyms=BTC,USD,ETH,KRW'
    });
}

function getMarketCapInfoAjax() {
    return $.ajax({
        url: 'https://min-api.cryptocompare.com/data/all/coinlist'
    });
}

function getVolumeInfoAjax(coinType) {
  return $.ajax({
    url: 'https://min-api.cryptocompare.com/data/histoday?fsym=ICX&tsym=' + coinType + '&limit=5&aggregate=1'
  });
}

function getVolume24InfoAjax(coinType) {
  if(coinType === USD){
    return $.ajax({
      url : 'https://min-api.cryptocompare.com/data/generateAvg?fsym=ICX&tsym=USD&e=HitBTC'
    })
  }else{
    return $.ajax({
      url: 'https://min-api.cryptocompare.com/data/generateAvg?fsym=ICX&tsym='+coinType+'&e=Binance,HuobiPro,OKEX,HitBTC'
    });
  }
}

function getHistoMinuteAjax(coinTypeParam, limitParam, aggregateParam) {
    //1<=aggregate<=30, default 1
    //1<=limit<=2000, default 1440
    var coinType = coinTypeParam || BTC;
    var limit = limitParam || 180;
    var aggregate = aggregateParam || 1;

    var url = 'https://min-api.cryptocompare.com/data/histominute?fsym=ICX&tsym=' + coinType + '&limit=' + limit + '&aggregate=' + aggregate + '&e=CCCAGG';
    return $.ajax({
        url: url
    });
}
function getHistoHourAjax(coinTypeParam, limitParam, aggregateParam) {
    //1<=aggregate<=30 default 1
    //1<=limit<=2000 , default: 168
    var coinType = coinTypeParam || BTC;
    var limit = limitParam || 180;
    var aggregate = aggregateParam || 1;

    var url = 'https://min-api.cryptocompare.com/data/histohour?fsym=ICX&tsym=' + coinType + '&limit=' + limit + '&aggregate=' + aggregate + '&e=CCCAGG';
    return $.ajax({
        url: url
    })
}
function getHistoDayAjax(coinTypeParam, limitParam, aggregateParam) {
    //1<=aggregate<=30 default 1
    //1<=limit<=2000, default 30
    var coinType = coinTypeParam || BTC;
    var limit = limitParam || 14;
    var aggregate = aggregateParam || 1;

    var url = 'https://min-api.cryptocompare.com/data/histoday?fsym=ICX&tsym=' + coinType + '&limit=' + limit + '&aggregate=' + aggregate + '&e=CCCAGG';
    return $.ajax({
        url: url
    })
}
function changeRateText(currencyUnit) {
    $rate.text(rateInfoObj[currencyUnit]);
    $rate.append("<em>" + currencyUnit + "</em>");
}
function changeMarketCapText(currencyUnit) {
    if (currencyUnit === BTC) {
        $marketCapNum.html("<em>B</em>");
    } else if (currencyUnit === ETH) {
        $marketCapNum.html("<em>E</em>");
    } else if (currencyUnit === USD) {
        $marketCapNum.html("<em>$</em>");
    }
    $marketCapNum.append(addCommas((marketCapInfoObj[currencyUnit] / 1000).toFixed(2)));
    $marketCapNum.append("<em> K</em>");
}
function changeVolumeText(currencyUnit) {
    if (currencyUnit === BTC) {
        $volumeNum.html("<em>B</em>");
    } else if (currencyUnit === ETH) {
        $volumeNum.html("<em>E</em>");
    } else if (currencyUnit === USD) {
        $volumeNum.html("<em>$</em>");
    }
    $volumeNum.append(addCommas(volume24Info[currencyUnit].toFixed(2)));
}
function fillTable(type, today){
    $table.find('thead').find('em').each(
        function(index, element){
            $(element).text(type);
        }
    )

  $table.find('tbody').find('tr').each(
    function (index, element) {
      var $tds = $(element).find('td');
      var date = new Date(today.setDate(today.getDate()));
      var dateMonth = date.getMonth()+1;
      var datePrice = (histoInfoObj[type][index]['low'] + histoInfoObj[type][index]['high'])/2;
      var exDatePrice = (histoInfoObj[type][index + 1]['low'] + histoInfoObj[type][index + 1]['high'])/2;
      if(dateMonth < 10) dateMonth = '0' + dateMonth;
      var exchangeRate = ((datePrice - exDatePrice) / exDatePrice) * 100;
      $tds.eq(0).text(date.getDate() + '-' + dateMonth + '-' + date.getFullYear());
      today.setDate(today.getDate()-1);
      if(type===USD){
        $tds.eq(1).text(addCommas(((histoInfoObj[type][index]['high']+histoInfoObj[type][index]['low'])/2).toFixed(2)));
      }else{
        $tds.eq(1).text(addCommas(((histoInfoObj[type][index]['high']+histoInfoObj[type][index]['low'])/2).toFixed(7)));
      }
      $tds.eq(2).text(addCommas(histoInfoObj[type][index]['volumeto'].toFixed(2)));
      $tds.eq(3).removeClass('down');

      if (exchangeRate < 0) {
        $tds.eq(3).addClass('down');
        $tds.eq(3).text(addCommas(exchangeRate.toFixed(2)) + " %");
      }else if(exchangeRate > 0){
        $tds.eq(3).text('+' +addCommas(exchangeRate.toFixed(2)) + " %");
      }else{
        $tds.eq(3).text(exchangeRate + " %");
      }
    }
  );
}

function drawChart(data, bifurcation, period) {
    var avgArr = data.map(function(v){return v.close});
    var periodText = "24 Hours";
    if(period === 'day'){
    	periodText = '24 Hours';
    }else if(period === 'week'){
    	periodText = "7 Days";
    }else{
    	periodText = "30 Days";
    }
    var labelArr = data.map(function(v,index){
        var time = new Date(v.time*1000);
        var year = time.getFullYear(), month = time.getMonth()+1, date = time.getDate();
        var hour = time.getHours(), minute = time.getMinutes();
        if(date<10) date = "0" + date;
        if(month<10) month = "0" + month;
        if(hour<10) hour = "0" + hour;
        if(minute<10) minute = "0" + minute;
        return year+"-"+month+"-"+date+" "+hour+":"+minute;
    });
    if(CHART) CHART.destroy();
    CHART = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labelArr,
            datasets: [{
                label: 'Market Price for '+ periodText,
                data: avgArr,
                borderColor: [
                    'rgba(75, 192, 192, 1)'
                ],
                backgroundColor: ['rgba(26, 170, 186, 0.1)'],
                borderWidth: 1,
                pointBackgroundColor: 'rgba(26, 170, 186, 1)'
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                    }
                }],
                xAxes: [{
                    ticks: {
                        callback: function(value, index, values){
		              if(period === 'day'){
		                if((index % bifurcation) !== 0){
		                  return undefined;
		                }else{
		                  return value.substr(5,11);
		                }
		              }else{
		                if((index % bifurcation) !== 0){
		                  return undefined;
		                }else{
		                  return value.substr(0,10);
		                }
		              }
                        }
                    }
                }]
            }
        }
    });
}

getPriceInfoAjax().then(
    function (res) {
        rateInfoObj.BTC = Number(res.BTC);
        rateInfoObj.ETH = Number(res.ETH);
        rateInfoObj.USD = Number(res.USD);
        rateInfoObj.KRW = Number(res.KRW);

        $rate.text(rateInfoObj.BTC);
        $rate.append("<em>" + BTC + "</em>");
        $rateKrw.text(addCommas(rateInfoObj.KRW));
        $rateKrw.append("<em>" + KRW + "</em>");
        getMarketCapInfoAjax().then(
            function (res) {
                var selectedPeriod = $selectChartPeriod.find('.on');
                totalSupply = res.Data.ICX.TotalCoinSupply;
                marketCapInfoObj[BTC] = Number(totalSupply) * rateInfoObj.BTC;
                marketCapInfoObj[ETH] = Number(totalSupply) * rateInfoObj.ETH;
                marketCapInfoObj[USD] = Number(totalSupply) * rateInfoObj.USD;
                changeMarketCapText(BTC);

                if(selectedPeriod.hasClass('day')){
                    drawPriceChartForOneDay(BTC, 12);
                }else if(selectedPeriod.hasClass('week')){
                    drawPriceChartForOneWeek(BTC, 24);
                }else {
                    drawPriceChartForOneMonth(BTC, 12);
                }
                $selectRate.on('click', 'li', function () {
                    var selectedPeriod = $selectChartPeriod.find('.on');
                    var today = new Date();
                    if (!($(this).hasClass('on'))) {
                        $selectRate.find('li').removeClass('on');
                        $(this).addClass('on');
                        changeRateText($(this).text());
                        changeMarketCapText($(this).text());
                        changeVolumeText($(this).text());
                        fillTable($(this).text(), today);
                        if(selectedPeriod.hasClass('day')){
                            drawPriceChartForOneDay($(this).text(), 12);
                        }else if(selectedPeriod.hasClass('week')){
                            drawPriceChartForOneWeek($(this).text(), 24);
                        }else {
                            drawPriceChartForOneMonth($(this).text(), 12);
                        }
                    }
                });
            }
        )
    },
    function (e) {
        console.log("ë°ì´í„°ë¥¼ ê°€ì ¸ì˜¤ì§€ ëª»í•¨");
    }
);
$.when(getVolumeInfoAjax(BTC), getVolumeInfoAjax(ETH), getVolumeInfoAjax(USD)).done(function (res1, res2, res3) {
  histoInfoObj[BTC] = res1[2].responseJSON.Data.reverse();
  histoInfoObj[ETH] = res2[2].responseJSON.Data.reverse();
  histoInfoObj[USD] = res3[2].responseJSON.Data.reverse();

  var today = new Date();
  var type = $selectRate.find('.on').text();
  fillTable(type, today);
});
$.when(getVolume24InfoAjax(BTC), getVolume24InfoAjax(ETH), getVolume24InfoAjax(USD)).done(function(res1, res2, res3) {
  volume24Info[BTC] = res1[0].RAW.VOLUME24HOURTO;
  volume24Info[ETH] = res2[0].RAW.VOLUME24HOURTO;
  volume24Info[USD] = res3[0].RAW.VOLUME24HOURTO;
  var type = $selectRate.find('.on').text();
  changeVolumeText(type);
});


function drawPriceChartForOneDay(coinType, bifurcation){
  if(histoDayInfoObj[coinType] && histoDayInfoObj[coinType].length !== 0){
    drawChart(histoDayInfoObj[coinType], bifurcation, "day");
  }
  else {
    getHistoMinuteAjax(coinType, 96, 15).then(
      function(data){
        histoDayInfoObj[coinType] = data.Data;
        drawChart(histoDayInfoObj[coinType], bifurcation,"day");
      }
    );
  }
};

function drawPriceChartForOneWeek(coinType, bifurcation){
  if(histoWeekInfoObj[coinType] && histoWeekInfoObj[coinType].length !== 0){
    drawChart(histoWeekInfoObj[coinType], bifurcation, "week");
  }
  else {
    getHistoHourAjax(coinType, 168, 1).then(
      function(data){
        histoWeekInfoObj[coinType] = data.Data;
        drawChart(histoWeekInfoObj[coinType],bifurcation, "week");
      }
    );
  }
}

function drawPriceChartForOneMonth(coinType, bifurcation){
  if(histoMonthInfoObj[coinType] && histoMonthInfoObj[coinType].length !== 0) {
    drawChart(histoMonthInfoObj[coinType], bifurcation, "month");
  }
  getHistoHourAjax(coinType, 120, 6).then(
    function(data){
      histoMonthInfoObj[coinType] = data.Data;
      drawChart(histoMonthInfoObj[coinType], bifurcation, "month");
    }
  );
}


$selectChartPeriod.on('click', 'li', function(){
    var selectedPeriod = $(this).text();
    var selectedCurrency = $selectRate.find('.on').text();
    if (!($(this).hasClass('on'))) {
        $selectChartPeriod.find('li').removeClass('on');
        $(this).addClass('on');
        if(selectedPeriod === 'DAY'){
            drawPriceChartForOneDay(selectedCurrency, 12);
        }else if(selectedPeriod === 'WEEK'){
            drawPriceChartForOneWeek(selectedCurrency, 24);
        }else{
            drawPriceChartForOneMonth(selectedCurrency, 12);
        }
    }
});

function toggleDuration(selectedPeriod){
    var selectedPeriod = $(this).text();
    var selectedCurrency = $selectRate.find('.on').text();
    if(selectedPeriod === 'DAY'){
        drawPriceChartForOneDay(selectedCurrency, 12);
    }else if(selectedPeriod === 'WEEK'){
        drawPriceChartForOneWeek(selectedCurrency, 24);
    }else{
        drawPriceChartForOneMonth(selectedCurrency, 12);
    }
}

function toggleCurrency()