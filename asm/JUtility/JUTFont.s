.include "macros.inc"

.section .text, "ax" # 802decf8


.global __ct__7JUTFontFv
__ct__7JUTFontFv:
/* 802DECF8 002DBC38  3C 80 80 3A */	lis r4, lbl_803A31F0@ha
/* 802DECFC 002DBC3C  38 04 31 F0 */	addi r0, r4, lbl_803A31F0@l
/* 802DED00 002DBC40  90 03 00 00 */	stw r0, 0(r3)
/* 802DED04 002DBC44  38 00 FF FF */	li r0, -1
/* 802DED08 002DBC48  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DED0C 002DBC4C  90 03 00 10 */	stw r0, 0x10(r3)
/* 802DED10 002DBC50  90 03 00 14 */	stw r0, 0x14(r3)
/* 802DED14 002DBC54  90 03 00 18 */	stw r0, 0x18(r3)
/* 802DED18 002DBC58  38 00 00 00 */	li r0, 0
/* 802DED1C 002DBC5C  98 03 00 04 */	stb r0, 4(r3)
/* 802DED20 002DBC60  4E 80 00 20 */	blr 
