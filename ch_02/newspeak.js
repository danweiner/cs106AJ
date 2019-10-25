function negate(s) {
  return "un" + s;
}

function intensify(s) {
  return "plus" + s;
}

function reinforce(s) {
  return "double" + s;
}

function testNewSpeak() {
  console.log('Prints uncold')
  console.log(negate('cold'))
  console.log()
  console.log('Prints pluscold')
  console.log(intensify('cold'))
  console.log()
  console.log('Prints plusuncold')
  console.log(intensify(negate('good')))
  console.log()
  console.log('Prints doubleplusungood')
  console.log(reinforce(intensify(negate('good'))))
}

testNewSpeak();
