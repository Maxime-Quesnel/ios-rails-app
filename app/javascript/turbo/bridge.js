class Bridge {
  static helloWorld(newTitle) {
    let title = document.getElementById('page-title')
    if (!title) {
      return;
    }
    title.innerText = newTitle

    fetch(_);

    window.webkit.messageHandlers.tabCoord.postMessage({name: "from hello world", secret: Math.random()})

  }
}

export default Bridge;