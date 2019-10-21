describe("User", function() {

    beforeEach( function() {
    user = new User()
    });

    it("has a username", function() {
      expect(typeof user.username).toEqual(typeof "string")
    });

    it("has a email", function() {
      expect(typeof user.email).toEqual(typeof "string")
    });

    it("has a password", function() {
      expect(typeof user.password).toEqual(typeof "string")
    });



    describe("SignUp", function() {

      let username = "not-real-username"
      let password = "not-real-password"

      it("check if the email is valid", function() {
        let email = "invalid-email"
        expect(function() {user.SignUp(username, email, password)}).toThrow("Please enter a valid email address")
      });

      // it("check if the email already exists", function() {
      //   expect(function() {user.SignUp(username, email, password)}).toThrow("This email is already in use")
      // });
      //
      // it("check if the username already exists", function() {
      //   expect(function() {user.SignUp(username, email, password)}).toThrow("This username is already in use")
      // })
    });

});
