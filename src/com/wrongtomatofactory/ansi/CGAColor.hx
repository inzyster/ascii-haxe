package com.wrongtomatofactory.ansi;

/**
 * ...
 * @author Wrong Tomato Factory
 */

enum CGAColor
{	
	Transparent;
	Black;
	Blue;
	Green;
	Cyan;
	Red;
	Magenta;
	Brown;
	LightGray;
	DarkGray;
	BrightBlue;
	BrightGreen;
	BrightCyan;
	BrightRed;
	BrightMagenta;
	BrightYellow;
	White;	
}

class CGAColorHelper
{

	public static function toARGBValue( color : CGAColor ) : UInt
	{
		return switch ( color ) 
		{
			case Transparent:	0x00000000;
			case Black:			0xFF000000;
			case Blue:			0xFF0000AA;
			case Green:			0xFF00AA00;
			case Cyan:			0xFF00AAAA;
			case Red:			0xFFAA0000;
			case Magenta:		0xFFAA00AA;
			case Brown:			0xFFAA5500;
			case LightGray:		0xFFAAAAAA;
			case DarkGray:		0xFF555555;
			case BrightBlue:	0xFF5555FF;
			case BrightGreen:	0xFF55FF55;
			case BrightCyan:	0xFF55FFFF;
			case BrightRed:		0xFFFF5555;
			case BrightMagenta:	0xFFFF55FF;
			case BrightYellow:	0xFFFFFF55;
			case White:			0xFFFFFFFF;
		}
	}
	
	public static function toRGBValue( color : CGAColor ) : UInt
	{
		return ( toARGBValue( color ) >> 24 );
	}
	
	public static function toPaletteIndex( color : CGAColor ) : UInt
	{
		return switch ( color ) 
		{
			case Black:			0x0;
			case Blue:			0x1;
			case Green:			0x2;
			case Cyan:			0x3;
			case Red:			0x4;
			case Magenta:		0x5;
			case Brown:			0x6;
			case LightGray:		0x7;
			case DarkGray:		0x8;
			case BrightBlue:	0x9;
			case BrightGreen:	0xA;
			case BrightCyan:	0xB;
			case BrightRed:		0xC;
			case BrightMagenta:	0xD;
			case BrightYellow:	0xE;
			case White:			0xF;
			case Transparent:	0xFF;
		}
	}	
	
	public static function fromPaletteIndex( index: UInt ) : CGAColor
	{
		return switch ( index ) 
		{
			case 0x0:	Black;
			case 0x1:	Blue;
			case 0x2:	Green;
			case 0x3:	Cyan;
			case 0x4:	Red;
			case 0x5:	Magenta;
			case 0x6:	Brown;
			case 0x7:	LightGray;
			case 0x8:	DarkGray;
			case 0x9:	BrightBlue;
			case 0xA:	BrightGreen;
			case 0xB:	BrightCyan;
			case 0xC:	BrightRed;
			case 0xD:	BrightMagenta;
			case 0xE:	BrightYellow;
			case 0xF:	White;
			case _:		Transparent;
		}
	}

	public static function fromANSIIndex( index: UInt ) : CGAColor
	{
		return switch ( index )
		{
			case 0x0: 	Black;
			case 0x1:	Red;
			case 0x2:	Green;
			case 0x3:	Brown;
			case 0x4:	Blue;
			case 0x5:	Magenta;
			case 0x6:	Cyan;
			case 0x7:	LightGray;
			case 0x8:	DarkGray;
			case 0x9:	BrightRed;
			case 0xA:	BrightGreen;
			case 0xB:	BrightYellow;
			case 0xC:	BrightBlue;
			case 0xD:	BrightMagenta;
			case 0xE:	BrightCyan;
			case 0xF:	White;
			case _:		Transparent;
		}
	}
	
	public static function colorsCount() : UInt
	{
		return 16;
	}
	
}