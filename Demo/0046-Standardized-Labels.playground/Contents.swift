func oldBehaviour(_ age: Int, name: String) {

}

oldBehaviour(30, name: "Arthur")

func newBehaviour(age: Int, name: String) {

}

newBehaviour(age: 30, name: "Arthur")

func a(p: @autoclosure () -> ()) {

}

func b(p: @noescape () -> ()) {

}


