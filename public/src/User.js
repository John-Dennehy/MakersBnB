function User() {
  this.username = "";
  this.email = "";
  this.password = "";
};

User.prototype.SignUp = function(username, email, password) {
  if ((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))) {
    return true
  } else {
    // console.log("fl")
    throw "Please enter a valid email address"
  }
};

User.prototype.ValidUsername = function(username) {
  if (username.length === 0) {
    throw "Please enter a valid username"
  } else {
    return true
  }
};
