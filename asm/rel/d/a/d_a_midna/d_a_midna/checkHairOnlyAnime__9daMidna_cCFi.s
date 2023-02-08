lbl_804C0F04:
/* 804C0F04  38 00 00 00 */	li r0, 0
/* 804C0F08  2C 04 00 30 */	cmpwi r4, 0x30
/* 804C0F0C  41 80 00 10 */	blt lbl_804C0F1C
/* 804C0F10  2C 04 00 35 */	cmpwi r4, 0x35
/* 804C0F14  40 80 00 08 */	bge lbl_804C0F1C
/* 804C0F18  38 00 00 01 */	li r0, 1
lbl_804C0F1C:
/* 804C0F1C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804C0F20  4E 80 00 20 */	blr 
