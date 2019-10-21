'use strict';

describe("Space", function () {

  var space

  beforeEach(function () {
    space = new Space("London Flat", "Beautiful place to stay", 5000);
  })

  describe("on initialization", function () {
    it('creates a new space with a name', function () {
      expect(space.name).toEqual("London Flat")
    })

    it('creates a new space with a description', function () {
      expect(space.description).toEqual("Beautiful place to stay")
    })

    it('creates a new space with a price per night', function () {
      expect(space.ppn).toEqual(5000)
    })
  })

  describe('so that a user can indicate the dates a space is unavailable', function () {
    it('a range of dates can be stored for when the space is not available', function () {
      let date = new Date("2020-02-28")
      space.addDateUnavailable(date)
      expect(space.datesUnavailable[0]).toEqual(date)
    })
  })
})
