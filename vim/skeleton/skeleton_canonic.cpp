#include "MyClass.hpp"

// CONSTRUCTOR
MyClass::MyClass( void )
{
	std::cout << "[MyClass] has been created" << std::endl;
}

// DESTRUCTOR
MyClass::~MyClass( void )
{
	std::cout << "[MyClass] has been destroyed" << std::endl;
}

// COPY CONSTRUCTOR
MyClass::MyClass( MyClass const &rs )
{
	if (this == (rs))
		return ;
	*this = rs;
}

// OVERLOAD OPERATOR
MyClass	&MyClass::operator = ( MyClass const &rs )
{
}

// GETTER

// SETTER

// MEMBER METHODS

// EXCEPTIONS METHODS

// OUTSIDE OF THE CLASS
std::ostream	&operator << ( std::ostream &out, MyClass const &rs )
{
	return (out << "[MyClass]");
}
