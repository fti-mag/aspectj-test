package hello;

public aspect World {
	pointcut greeting() : execution(* HelloWorld.sayHello(..));
	after() returning : greeting() {
		System.out.println("World!");
	}
	before() : greeting() {
		System.out.println("World,");
	}
}
