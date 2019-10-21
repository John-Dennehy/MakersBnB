'use strict';

function Space(name, description, ppn) {
  this.name = name
  this.description = description
  this.ppn = ppn
  this.datesUnavailable = []
}

Space.prototype.addDateUnavailable = function(date) {
  this.datesUnavailable.push(date)
} 
