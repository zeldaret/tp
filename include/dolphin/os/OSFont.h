#ifndef OSFONT_H
#define OSFONT_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    OS_FONT_ENCODE_ANSI,
    OS_FONT_ENCODE_SJIS,
    OS_FONT_ENCODE_2,
    OS_FONT_ENCODE_UTF8,
    OS_FONT_ENCODE_UTF16,
    OS_FONT_ENCODE_UTF32,
    OS_FONT_ENCODE_MAX
} OSFontEncode;

typedef struct OSFontHeader {
    /* 0x00 */ u16 type;          
    /* 0x02 */ u16 firstChar;     
    /* 0x04 */ u16 lastChar;      
    /* 0x06 */ u16 invalidChar;   
    /* 0x08 */ u16 ascent;        
    /* 0x0A */ u16 descent;       
    /* 0x0C */ u16 width;         
    /* 0x0E */ u16 leading;       
    /* 0x10 */ u16 cellWidth;     
    /* 0x12 */ u16 cellHeight;    
    /* 0x14 */ u32 sheetSize;     
    /* 0x18 */ u16 sheetFormat;   
    /* 0x1A */ u16 sheetNumCol;   
    /* 0x1C */ u16 sheetNumRow;   
    /* 0x1E */ u16 sheetWidth;    
    /* 0x20 */ u16 sheetHeight;   
    /* 0x22 */ u16 widthTableOfs; 
    /* 0x24 */ u32 sheetImageOfs; 
    /* 0x28 */ u32 sheetFullSize; 
    /* 0x2C */ u8 c0;             
    /* 0x2D */ u8 c1;             
    /* 0x2E */ u8 c2;             
    /* 0x2F */ u8 c3;             
} OSFontHeader;

static u32 GetFontCode(u16 param_0, u16 param_1);
u16 OSGetFontEncode(void);
static const u8* ParseStringS(u16 encode, const u8* str, OSFontHeader** fontOut, u32* codeOut);

#ifdef __cplusplus
};
#endif

#endif /* OSFONT_H */
