lbl_80BC6EF0:
/* 80BC6EF0  A8 03 00 08 */	lha r0, 8(r3)
/* 80BC6EF4  2C 00 01 59 */	cmpwi r0, 0x159
/* 80BC6EF8  40 82 00 30 */	bne lbl_80BC6F28
/* 80BC6EFC  88 A3 07 78 */	lbz r5, 0x778(r3)
/* 80BC6F00  80 04 05 BC */	lwz r0, 0x5bc(r4)
/* 80BC6F04  7C 05 00 00 */	cmpw r5, r0
/* 80BC6F08  40 82 00 20 */	bne lbl_80BC6F28
/* 80BC6F0C  28 03 00 00 */	cmplwi r3, 0
/* 80BC6F10  41 82 00 0C */	beq lbl_80BC6F1C
/* 80BC6F14  80 03 00 04 */	lwz r0, 4(r3)
/* 80BC6F18  48 00 00 08 */	b lbl_80BC6F20
lbl_80BC6F1C:
/* 80BC6F1C  38 00 FF FF */	li r0, -1
lbl_80BC6F20:
/* 80BC6F20  90 04 05 B8 */	stw r0, 0x5b8(r4)
/* 80BC6F24  4E 80 00 20 */	blr 
lbl_80BC6F28:
/* 80BC6F28  38 60 00 00 */	li r3, 0
/* 80BC6F2C  4E 80 00 20 */	blr 
