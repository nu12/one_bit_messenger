import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected at MessageChannel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("Data received")
    let messageContainer = document.querySelector("div.message-container")
    messageContainer.innerHTML += data
    messageContainer.scrollIntoView(false)
  }
});
