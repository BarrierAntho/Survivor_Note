#pragma once

# include <iostream>

class MyClass
{
	public:
		// CONSTRUCTOR
		MyClass::MyClass( void );

		// DESTRUCTOR
		MyClass::~MyClass( void )

		// COPY CONSTRUCTOR
		MyClass::MyClass( MyClass const &rs )

		// OVERLOAD OPERATOR
		MyClass	&MyClass::operator = ( MyClass const &rs )

		// GETTER

		// SETTER

		// MEMBER METHODS

		// EXCEPTIONS METHODS

	private:
		// MEMBERS

		// MEMBER METHODS
};

// OUTSIDE OF THE CLASS
std::ostream	&operator << ( std::ostream &out, MyClass const &rs )
