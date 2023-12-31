package edu.class1.basic;

// OOP (Object-Oriented Programming) - 객체 지향 프로그래밍.
// 클래스 선언부
// 클래스 내부에 작성하는 내용 : 변수선언, 생성자, 메소드 선언.
public class Ex02_class {
	//========= 변수 선언 영역 =============
	//필드변수(멤버변수, 인스턴스변수, 속성-property, 전역(global)변수) 선언.
	int num = 111;
	
	//클래스변수, 스테틱(static)변수, 인스턴스(객체) 공통변수(의미상)
	static int staticNum = 222;
	
	//========= 생성자 선언 영역 =============
	Ex02_class() {} // 기본 생성자 (default constructor) 생략가능.
	
	//========= 메소드 선언 영역 =============
	// main 메소드
	public static void main(String[] args) {
		// 지역변수(local variable)
		int num1 = 300;
		//System.out.println("num : " + num); // non-static
		//static영역에서는 non-static영역을 사용할 수 없음!
		//그래서 new를 만들어줘야 해.
		System.out.println("staticNum : " + staticNum);
		
		Ex02_class ex02 = new Ex02_class();
		System.out.println("ex02 : " + ex02);
		System.out.println("ex02.num : " + ex02.num);
		System.out.println("ex02.staticNUm : " + ex02.staticNum);
		
		int result = add(100, 200); //밑에 static int add()에 100->a로, 200->b로!
		System.out.println("add() 결과 : " + result);
		System.out.println("add(300, 500) 결과 : " + add(300, 500));
	}
	
	static int add(int a, int b) { //객체 생성하지 않아도 메인메소드에서 호출해서 쓸 수 있다.
		return a + b;
	}
	
	
	
}
