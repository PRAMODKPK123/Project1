    //setTimeout method

    let timerId = window.setTimeout(function(){

    console.log("Hello after 2 sec")
    },2000)

    clearTimeout(timerId)


    //setInterval

    let setIntervalTimer = window.setInterval(function(){
    console.log("this is set Interval")
    },1000)

    clearInterval(setIntervalTimer)
