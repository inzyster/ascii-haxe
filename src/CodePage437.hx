package ;

import flash.display.BitmapData;
import flash.display.BitmapDataChannel;
import flash.geom.Point;
import flash.geom.Rectangle;
import flixel.FlxSprite;
import haxe.ds.IntMap;

@:bitmap("../assets/img/Codepage-437-no-fg.png") class CodePageBitmapDataNoFG extends BitmapData {}

class CodePage437
{

	public static var NULL:UInt = 0;
	public static var START_OF_HEADING:UInt = 1;
	public static var START_OF_TEXT:UInt = 2;
	public static var END_OF_TEXT:UInt = 3;
	public static var END_OF_TRANSMISSION:UInt = 4;
	public static var ENQUIRY:UInt = 5;
	public static var ACKNOWLEDGE:UInt = 6;
	public static var BELL:UInt = 7;
	public static var BACKSPACE:UInt = 8;
	public static var CHARACTER_TABULATION:UInt = 9;
	public static var LINE_FEED_LF:UInt = 10;
	public static var LINE_TABULATION:UInt = 11;
	public static var FORM_FEED_FF:UInt = 12;
	public static var CARRIAGE_RETURN_CR:UInt = 13;
	public static var SHIFT_OUT:UInt = 14;
	public static var SHIFT_IN:UInt = 15;
	public static var DATA_LINK_ESCAPE:UInt = 16;
	public static var DEVICE_CONTROL_ONE:UInt = 17;
	public static var DEVICE_CONTROL_TWO:UInt = 18;
	public static var DEVICE_CONTROL_THREE:UInt = 19;
	public static var DEVICE_CONTROL_FOUR:UInt = 20;
	public static var NEGATIVE_ACKNOWLEDGE:UInt = 21;
	public static var SYNCHRONOUS_IDLE:UInt = 22;
	public static var END_OF_TRANSMISSION_BLOCK:UInt = 23;
	public static var CANCEL:UInt = 24;
	public static var END_OF_MEDIUM:UInt = 25;
	public static var SUBSTITUTE:UInt = 26;
	public static var ESCAPE:UInt = 27;
	public static var INFORMATION_SEPARATOR_FOUR:UInt = 28;
	public static var INFORMATION_SEPARATOR_THREE:UInt = 29;
	public static var INFORMATION_SEPARATOR_TWO:UInt = 30;
	public static var INFORMATION_SEPARATOR_ONE:UInt = 31;
	public static var SPACE:UInt = 32;
	public static var EXCLAMATION_MARK:UInt = 33;
	public static var QUOTATION_MARK:UInt = 34;
	public static var NUMBER_SIGN:UInt = 35;
	public static var DOLLAR_SIGN:UInt = 36;
	public static var PERCENT_SIGN:UInt = 37;
	public static var AMPERSAND:UInt = 38;
	public static var APOSTROPHE:UInt = 39;
	public static var LEFT_PARENTHESIS:UInt = 40;
	public static var RIGHT_PARENTHESIS:UInt = 41;
	public static var ASTERISK:UInt = 42;
	public static var PLUS_SIGN:UInt = 43;
	public static var COMMA:UInt = 44;
	public static var HYPHEN_MINUS:UInt = 45;
	public static var FULL_STOP:UInt = 46;
	public static var SOLIDUS:UInt = 47;
	public static var DIGIT_ZERO:UInt = 48;
	public static var DIGIT_ONE:UInt = 49;
	public static var DIGIT_TWO:UInt = 50;
	public static var DIGIT_THREE:UInt = 51;
	public static var DIGIT_FOUR:UInt = 52;
	public static var DIGIT_FIVE:UInt = 53;
	public static var DIGIT_SIX:UInt = 54;
	public static var DIGIT_SEVEN:UInt = 55;
	public static var DIGIT_EIGHT:UInt = 56;
	public static var DIGIT_NINE:UInt = 57;
	public static var COLON:UInt = 58;
	public static var SEMICOLON:UInt = 59;
	public static var LESS_THAN_SIGN:UInt = 60;
	public static var EQUALS_SIGN:UInt = 61;
	public static var GREATER_THAN_SIGN:UInt = 62;
	public static var QUESTION_MARK:UInt = 63;
	public static var COMMERCIAL_AT:UInt = 64;
	public static var LATIN_CAPITAL_LETTER_A:UInt = 65;
	public static var LATIN_CAPITAL_LETTER_B:UInt = 66;
	public static var LATIN_CAPITAL_LETTER_C:UInt = 67;
	public static var LATIN_CAPITAL_LETTER_D:UInt = 68;
	public static var LATIN_CAPITAL_LETTER_E:UInt = 69;
	public static var LATIN_CAPITAL_LETTER_F:UInt = 70;
	public static var LATIN_CAPITAL_LETTER_G:UInt = 71;
	public static var LATIN_CAPITAL_LETTER_H:UInt = 72;
	public static var LATIN_CAPITAL_LETTER_I:UInt = 73;
	public static var LATIN_CAPITAL_LETTER_J:UInt = 74;
	public static var LATIN_CAPITAL_LETTER_K:UInt = 75;
	public static var LATIN_CAPITAL_LETTER_L:UInt = 76;
	public static var LATIN_CAPITAL_LETTER_M:UInt = 77;
	public static var LATIN_CAPITAL_LETTER_N:UInt = 78;
	public static var LATIN_CAPITAL_LETTER_O:UInt = 79;
	public static var LATIN_CAPITAL_LETTER_P:UInt = 80;
	public static var LATIN_CAPITAL_LETTER_Q:UInt = 81;
	public static var LATIN_CAPITAL_LETTER_R:UInt = 82;
	public static var LATIN_CAPITAL_LETTER_S:UInt = 83;
	public static var LATIN_CAPITAL_LETTER_T:UInt = 84;
	public static var LATIN_CAPITAL_LETTER_U:UInt = 85;
	public static var LATIN_CAPITAL_LETTER_V:UInt = 86;
	public static var LATIN_CAPITAL_LETTER_W:UInt = 87;
	public static var LATIN_CAPITAL_LETTER_X:UInt = 88;
	public static var LATIN_CAPITAL_LETTER_Y:UInt = 89;
	public static var LATIN_CAPITAL_LETTER_Z:UInt = 90;
	public static var LEFT_SQUARE_BRACKET:UInt = 91;
	public static var REVERSE_SOLIDUS:UInt = 92;
	public static var RIGHT_SQUARE_BRACKET:UInt = 93;
	public static var CIRCUMFLEX_ACCENT:UInt = 94;
	public static var LOW_LINE:UInt = 95;
	public static var GRAVE_ACCENT:UInt = 96;
	public static var LATIN_SMALL_LETTER_A:UInt = 97;
	public static var LATIN_SMALL_LETTER_B:UInt = 98;
	public static var LATIN_SMALL_LETTER_C:UInt = 99;
	public static var LATIN_SMALL_LETTER_D:UInt = 100;
	public static var LATIN_SMALL_LETTER_E:UInt = 101;
	public static var LATIN_SMALL_LETTER_F:UInt = 102;
	public static var LATIN_SMALL_LETTER_G:UInt = 103;
	public static var LATIN_SMALL_LETTER_H:UInt = 104;
	public static var LATIN_SMALL_LETTER_I:UInt = 105;
	public static var LATIN_SMALL_LETTER_J:UInt = 106;
	public static var LATIN_SMALL_LETTER_K:UInt = 107;
	public static var LATIN_SMALL_LETTER_L:UInt = 108;
	public static var LATIN_SMALL_LETTER_M:UInt = 109;
	public static var LATIN_SMALL_LETTER_N:UInt = 110;
	public static var LATIN_SMALL_LETTER_O:UInt = 111;
	public static var LATIN_SMALL_LETTER_P:UInt = 112;
	public static var LATIN_SMALL_LETTER_Q:UInt = 113;
	public static var LATIN_SMALL_LETTER_R:UInt = 114;
	public static var LATIN_SMALL_LETTER_S:UInt = 115;
	public static var LATIN_SMALL_LETTER_T:UInt = 116;
	public static var LATIN_SMALL_LETTER_U:UInt = 117;
	public static var LATIN_SMALL_LETTER_V:UInt = 118;
	public static var LATIN_SMALL_LETTER_W:UInt = 119;
	public static var LATIN_SMALL_LETTER_X:UInt = 120;
	public static var LATIN_SMALL_LETTER_Y:UInt = 121;
	public static var LATIN_SMALL_LETTER_Z:UInt = 122;
	public static var LEFT_CURLY_BRACKET:UInt = 123;
	public static var VERTICAL_LINE:UInt = 124;
	public static var RIGHT_CURLY_BRACKET:UInt = 125;
	public static var TILDE:UInt = 126;
	public static var DELETE:UInt = 127;
	public static var LATIN_CAPITAL_LETTER_C_WITH_CEDILLA:UInt = 128;
	public static var LATIN_SMALL_LETTER_U_WITH_DIAERESIS:UInt = 129;
	public static var LATIN_SMALL_LETTER_E_WITH_ACUTE:UInt = 130;
	public static var LATIN_SMALL_LETTER_A_WITH_CIRCUMFLEX:UInt = 131;
	public static var LATIN_SMALL_LETTER_A_WITH_DIAERESIS:UInt = 132;
	public static var LATIN_SMALL_LETTER_A_WITH_GRAVE:UInt = 133;
	public static var LATIN_SMALL_LETTER_A_WITH_RING_ABOVE:UInt = 134;
	public static var LATIN_SMALL_LETTER_C_WITH_CEDILLA:UInt = 135;
	public static var LATIN_SMALL_LETTER_E_WITH_CIRCUMFLEX:UInt = 136;
	public static var LATIN_SMALL_LETTER_E_WITH_DIAERESIS:UInt = 137;
	public static var LATIN_SMALL_LETTER_E_WITH_GRAVE:UInt = 138;
	public static var LATIN_SMALL_LETTER_I_WITH_DIAERESIS:UInt = 139;
	public static var LATIN_SMALL_LETTER_I_WITH_CIRCUMFLEX:UInt = 140;
	public static var LATIN_SMALL_LETTER_I_WITH_GRAVE:UInt = 141;
	public static var LATIN_CAPITAL_LETTER_A_WITH_DIAERESIS:UInt = 142;
	public static var LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE:UInt = 143;
	public static var LATIN_CAPITAL_LETTER_E_WITH_ACUTE:UInt = 144;
	public static var LATIN_SMALL_LETTER_AE:UInt = 145;
	public static var LATIN_CAPITAL_LETTER_AE:UInt = 146;
	public static var LATIN_SMALL_LETTER_O_WITH_CIRCUMFLEX:UInt = 147;
	public static var LATIN_SMALL_LETTER_O_WITH_DIAERESIS:UInt = 148;
	public static var LATIN_SMALL_LETTER_O_WITH_GRAVE:UInt = 149;
	public static var LATIN_SMALL_LETTER_U_WITH_CIRCUMFLEX:UInt = 150;
	public static var LATIN_SMALL_LETTER_U_WITH_GRAVE:UInt = 151;
	public static var LATIN_SMALL_LETTER_Y_WITH_DIAERESIS:UInt = 152;
	public static var LATIN_CAPITAL_LETTER_O_WITH_DIAERESIS:UInt = 153;
	public static var LATIN_CAPITAL_LETTER_U_WITH_DIAERESIS:UInt = 154;
	public static var CENT_SIGN:UInt = 155;
	public static var POUND_SIGN:UInt = 156;
	public static var YEN_SIGN:UInt = 157;
	public static var PESETA_SIGN:UInt = 158;
	public static var LATIN_SMALL_LETTER_F_WITH_HOOK:UInt = 159;
	public static var LATIN_SMALL_LETTER_A_WITH_ACUTE:UInt = 160;
	public static var LATIN_SMALL_LETTER_I_WITH_ACUTE:UInt = 161;
	public static var LATIN_SMALL_LETTER_O_WITH_ACUTE:UInt = 162;
	public static var LATIN_SMALL_LETTER_U_WITH_ACUTE:UInt = 163;
	public static var LATIN_SMALL_LETTER_N_WITH_TILDE:UInt = 164;
	public static var LATIN_CAPITAL_LETTER_N_WITH_TILDE:UInt = 165;
	public static var FEMININE_ORDINAL_INDICATOR:UInt = 166;
	public static var MASCULINE_ORDINAL_INDICATOR:UInt = 167;
	public static var INVERTED_QUESTION_MARK:UInt = 168;
	public static var REVERSED_NOT_SIGN:UInt = 169;
	public static var NOT_SIGN:UInt = 170;
	public static var VULGAR_FRACTION_ONE_HALF:UInt = 171;
	public static var VULGAR_FRACTION_ONE_QUARTER:UInt = 172;
	public static var INVERTED_EXCLAMATION_MARK:UInt = 173;
	public static var LEFT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK:UInt = 174;
	public static var RIGHT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK:UInt = 175;
	public static var LIGHT_SHADE:UInt = 176;
	public static var MEDIUM_SHADE:UInt = 177;
	public static var DARK_SHADE:UInt = 178;
	public static var BOX_DRAWINGS_LIGHT_VERTICAL:UInt = 179;
	public static var BOX_DRAWINGS_LIGHT_VERTICAL_AND_LEFT:UInt = 180;
	public static var BOX_DRAWINGS_VERTICAL_SINGLE_AND_LEFT_DOUBLE:UInt = 181;
	public static var BOX_DRAWINGS_VERTICAL_DOUBLE_AND_LEFT_SINGLE:UInt = 182;
	public static var BOX_DRAWINGS_DOWN_DOUBLE_AND_LEFT_SINGLE:UInt = 183;
	public static var BOX_DRAWINGS_DOWN_SINGLE_AND_LEFT_DOUBLE:UInt = 184;
	public static var BOX_DRAWINGS_DOUBLE_VERTICAL_AND_LEFT:UInt = 185;
	public static var BOX_DRAWINGS_DOUBLE_VERTICAL:UInt = 186;
	public static var BOX_DRAWINGS_DOUBLE_DOWN_AND_LEFT:UInt = 187;
	public static var BOX_DRAWINGS_DOUBLE_UP_AND_LEFT:UInt = 188;
	public static var BOX_DRAWINGS_UP_DOUBLE_AND_LEFT_SINGLE:UInt = 189;
	public static var BOX_DRAWINGS_UP_SINGLE_AND_LEFT_DOUBLE:UInt = 190;
	public static var BOX_DRAWINGS_LIGHT_DOWN_AND_LEFT:UInt = 191;
	public static var BOX_DRAWINGS_LIGHT_UP_AND_RIGHT:UInt = 192;
	public static var BOX_DRAWINGS_LIGHT_UP_AND_HORIZONTAL:UInt = 193;
	public static var BOX_DRAWINGS_LIGHT_DOWN_AND_HORIZONTAL:UInt = 194;
	public static var BOX_DRAWINGS_LIGHT_VERTICAL_AND_RIGHT:UInt = 195;
	public static var BOX_DRAWINGS_LIGHT_HORIZONTAL:UInt = 196;
	public static var BOX_DRAWINGS_LIGHT_VERTICAL_AND_HORIZONTAL:UInt = 197;
	public static var BOX_DRAWINGS_VERTICAL_SINGLE_AND_RIGHT_DOUBLE:UInt = 198;
	public static var BOX_DRAWINGS_VERTICAL_DOUBLE_AND_RIGHT_SINGLE:UInt = 199;
	public static var BOX_DRAWINGS_DOUBLE_UP_AND_RIGHT:UInt = 200;
	public static var BOX_DRAWINGS_DOUBLE_DOWN_AND_RIGHT:UInt = 201;
	public static var BOX_DRAWINGS_DOUBLE_UP_AND_HORIZONTAL:UInt = 202;
	public static var BOX_DRAWINGS_DOUBLE_DOWN_AND_HORIZONTAL:UInt = 203;
	public static var BOX_DRAWINGS_DOUBLE_VERTICAL_AND_RIGHT:UInt = 204;
	public static var BOX_DRAWINGS_DOUBLE_HORIZONTAL:UInt = 205;
	public static var BOX_DRAWINGS_DOUBLE_VERTICAL_AND_HORIZONTAL:UInt = 206;
	public static var BOX_DRAWINGS_UP_SINGLE_AND_HORIZONTAL_DOUBLE:UInt = 207;
	public static var BOX_DRAWINGS_UP_DOUBLE_AND_HORIZONTAL_SINGLE:UInt = 208;
	public static var BOX_DRAWINGS_DOWN_SINGLE_AND_HORIZONTAL_DOUBLE:UInt = 209;
	public static var BOX_DRAWINGS_DOWN_DOUBLE_AND_HORIZONTAL_SINGLE:UInt = 210;
	public static var BOX_DRAWINGS_UP_DOUBLE_AND_RIGHT_SINGLE:UInt = 211;
	public static var BOX_DRAWINGS_UP_SINGLE_AND_RIGHT_DOUBLE:UInt = 212;
	public static var BOX_DRAWINGS_DOWN_SINGLE_AND_RIGHT_DOUBLE:UInt = 213;
	public static var BOX_DRAWINGS_DOWN_DOUBLE_AND_RIGHT_SINGLE:UInt = 214;
	public static var BOX_DRAWINGS_VERTICAL_DOUBLE_AND_HORIZONTAL_SINGLE:UInt = 215;
	public static var BOX_DRAWINGS_VERTICAL_SINGLE_AND_HORIZONTAL_DOUBLE:UInt = 216;
	public static var BOX_DRAWINGS_LIGHT_UP_AND_LEFT:UInt = 217;
	public static var BOX_DRAWINGS_LIGHT_DOWN_AND_RIGHT:UInt = 218;
	public static var FULL_BLOCK:UInt = 219;
	public static var LOWER_HALF_BLOCK:UInt = 220;
	public static var LEFT_HALF_BLOCK:UInt = 221;
	public static var RIGHT_HALF_BLOCK:UInt = 222;
	public static var UPPER_HALF_BLOCK:UInt = 223;
	public static var GREEK_SMALL_LETTER_ALPHA:UInt = 224;
	public static var LATIN_SMALL_LETTER_SHARP_S:UInt = 225;
	public static var GREEK_CAPITAL_LETTER_GAMMA:UInt = 226;
	public static var GREEK_SMALL_LETTER_PI:UInt = 227;
	public static var GREEK_CAPITAL_LETTER_SIGMA:UInt = 228;
	public static var GREEK_SMALL_LETTER_SIGMA:UInt = 229;
	public static var MICRO_SIGN:UInt = 230;
	public static var GREEK_SMALL_LETTER_TAU:UInt = 231;
	public static var GREEK_CAPITAL_LETTER_PHI:UInt = 232;
	public static var GREEK_CAPITAL_LETTER_THETA:UInt = 233;
	public static var GREEK_CAPITAL_LETTER_OMEGA:UInt = 234;
	public static var GREEK_SMALL_LETTER_DELTA:UInt = 235;
	public static var INFINITY:UInt = 236;
	public static var GREEK_SMALL_LETTER_PHI:UInt = 237;
	public static var GREEK_SMALL_LETTER_EPSILON:UInt = 238;
	public static var INTERSECTION:UInt = 239;
	public static var IDENTICAL_TO:UInt = 240;
	public static var PLUS_MINUS_SIGN:UInt = 241;
	public static var GREATER_THAN_OR_EQUAL_TO:UInt = 242;
	public static var LESS_THAN_OR_EQUAL_TO:UInt = 243;
	public static var TOP_HALF_INTEGRAL:UInt = 244;
	public static var BOTTOM_HALF_INTEGRAL:UInt = 245;
	public static var DIVISION_SIGN:UInt = 246;
	public static var ALMOST_EQUAL_TO:UInt = 247;
	public static var DEGREE_SIGN:UInt = 248;
	public static var BULLET_OPERATOR:UInt = 249;
	public static var MIDDLE_DOT:UInt = 250;
	public static var SQUARE_ROOT:UInt = 251;
	public static var SUPERSCRIPT_LATIN_SMALL_LETTER_N:UInt = 252;
	public static var SUPERSCRIPT_TWO:UInt = 253;
	public static var BLACK_SQUARE:UInt = 254;
	public static var NO_BREAK_SPACE:UInt = 255;

	public static var COLOR_BLACK:UInt 			= 0x000000;
	public static var COLOR_BLUE:UInt 			= 0x0000AA;
	public static var COLOR_GREEN:UInt 			= 0x00AA00;
	public static var COLOR_CYAN:UInt			= 0x00AAAA;
	public static var COLOR_RED:UInt			= 0xAA0000;
	public static var COLOR_MAGENTA:UInt		= 0xAA00AA;
	public static var COLOR_BROWN:UInt			= 0xAA5500;
	public static var COLOR_LIGHT_GRAY:UInt		= 0xAAAAAA;
	public static var COLOR_DARK_GRAY:UInt		= 0x555555;
	public static var COLOR_BRIGHT_BLUE:UInt	= 0x5555FF;
	public static var COLOR_BRIGHT_GREEN:UInt	= 0x55FF55;
	public static var COLOR_BRIGHT_CYAN:UInt	= 0x55FFFF;
	public static var COLOR_BRIGHT_RED:UInt		= 0xFF5555;
	public static var COLOR_BRIGHT_MAGENTA:UInt	= 0xFF55FF;
	public static var COLOR_BRIGHT_YELLOW:UInt	= 0xFFFF55;
	public static var COLOR_WHITE:UInt			= 0xFFFFFF;
		
	public static var Colors(get, never):Array<UInt>;
	
	public static function get_Colors():Array<UInt>
	{
		if (_colors == null)
		{
			_colors = 
			[
				COLOR_BLACK, 
				COLOR_BLUE, 
				COLOR_GREEN, 
				COLOR_CYAN, 
				COLOR_RED, 
				COLOR_MAGENTA, 
				COLOR_BROWN, 
				COLOR_LIGHT_GRAY,
				COLOR_DARK_GRAY,
				COLOR_BRIGHT_BLUE,
				COLOR_BRIGHT_GREEN,
				COLOR_BRIGHT_CYAN,
				COLOR_BRIGHT_RED,
				COLOR_BRIGHT_MAGENTA,
				COLOR_BRIGHT_YELLOW,
				COLOR_WHITE
			];			
		}
		return _colors;
	}
	
	private static var _backgroundsTexture:BitmapData;
	
	private static var _colorMapping:IntMap<UInt>;
	private static var _colors:Array<UInt>;
	
	private static var _charTextures:Array<BitmapData>;

	private static inline function _RectangleForCharacter(code:UInt):Rectangle
	{
		return new Rectangle((code % 32) * RenderConfig.CharacterWidth, Math.floor(code / 32) * RenderConfig.CharacterHeight, RenderConfig.CharacterWidth, RenderConfig.CharacterHeight);
	}
	
	private static function _StaticInit()
	{		
		var _charsNoFG:BitmapData = new CodePage437.CodePageBitmapDataNoFG(32 * RenderConfig.CharacterWidth, 8 * RenderConfig.CharacterHeight, true);

		_backgroundsTexture = new BitmapData(16 * RenderConfig.CharacterWidth, RenderConfig.CharacterHeight, true, 0xff000000);
		
		_colorMapping = new IntMap<UInt>();		
		
		var colors:Array<UInt> = CodePage437.Colors;
		
		_charTextures = new Array<BitmapData>();

		for (i in 0...colors.length)
		{
			_backgroundsTexture.fillRect(_RectangleForCharacter(i), (colors[i] | 0xFF << 24));
			_colorMapping.set(colors[i], i);
			var currentColor:BitmapData = new BitmapData(_charsNoFG.width, _charsNoFG.height, true, (colors[i] | 0xFF << 24));
			currentColor.copyChannel(_charsNoFG, _charsNoFG.rect, new Point(0, 0), BitmapDataChannel.ALPHA, BitmapDataChannel.ALPHA);
			_charTextures.push(currentColor);
		}
		
	}
	
	public static function RenderCharacter(charCode:UInt, textColor:UInt = 0xFFFFFF, backgroundColor:UInt = 0x000000, targetPoint:Point, targetBitmapData:BitmapData)
	{
		if (_backgroundsTexture == null)
		{
			_StaticInit();
		}
		targetBitmapData.copyPixels(_backgroundsTexture, _RectangleForCharacter(_colorMapping.get(backgroundColor)), targetPoint);
		var charRect:Rectangle = _RectangleForCharacter(charCode);
		var colorIndex = _colorMapping.get(textColor);
		targetBitmapData.copyPixels(_charTextures[colorIndex], charRect, targetPoint, null, null, true);
	}
	
}
