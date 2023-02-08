lbl_806A8ED4:
/* 806A8ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A8ED8  7C 08 02 A6 */	mflr r0
/* 806A8EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A8EE0  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 806A8EE4  2C 00 00 01 */	cmpwi r0, 1
/* 806A8EE8  41 82 00 28 */	beq lbl_806A8F10
/* 806A8EEC  40 80 00 10 */	bge lbl_806A8EFC
/* 806A8EF0  2C 00 00 00 */	cmpwi r0, 0
/* 806A8EF4  40 80 00 14 */	bge lbl_806A8F08
/* 806A8EF8  48 00 00 24 */	b lbl_806A8F1C
lbl_806A8EFC:
/* 806A8EFC  2C 00 00 03 */	cmpwi r0, 3
/* 806A8F00  40 80 00 1C */	bge lbl_806A8F1C
/* 806A8F04  48 00 00 14 */	b lbl_806A8F18
lbl_806A8F08:
/* 806A8F08  4B FF FE 91 */	bl ObjEatAction__8daE_DF_cFv
/* 806A8F0C  48 00 00 10 */	b lbl_806A8F1C
lbl_806A8F10:
/* 806A8F10  4B FF FA 29 */	bl LinkEatAction__8daE_DF_cFv
/* 806A8F14  48 00 00 08 */	b lbl_806A8F1C
lbl_806A8F18:
/* 806A8F18  4B FF F4 51 */	bl BombEatAction__8daE_DF_cFv
lbl_806A8F1C:
/* 806A8F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A8F20  7C 08 03 A6 */	mtlr r0
/* 806A8F24  38 21 00 10 */	addi r1, r1, 0x10
/* 806A8F28  4E 80 00 20 */	blr 
