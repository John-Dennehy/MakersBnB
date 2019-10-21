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



    // describe("SignUp", function() {
    //
    // });

});
