lbl_80BA64A0:
/* 80BA64A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA64A4  7C 08 02 A6 */	mflr r0
/* 80BA64A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA64AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA64B0  7C 7F 1B 78 */	mr r31, r3
/* 80BA64B4  A8 03 00 08 */	lha r0, 8(r3)
/* 80BA64B8  2C 00 00 A7 */	cmpwi r0, 0xa7
/* 80BA64BC  40 82 00 2C */	bne lbl_80BA64E8
/* 80BA64C0  28 1F 00 00 */	cmplwi r31, 0
/* 80BA64C4  41 82 00 0C */	beq lbl_80BA64D0
/* 80BA64C8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80BA64CC  48 00 00 08 */	b lbl_80BA64D4
lbl_80BA64D0:
/* 80BA64D0  38 60 FF FF */	li r3, -1
lbl_80BA64D4:
/* 80BA64D4  4B 47 AE C8 */	b fpcEx_IsExist__FUi
/* 80BA64D8  2C 03 00 00 */	cmpwi r3, 0
/* 80BA64DC  41 82 00 0C */	beq lbl_80BA64E8
/* 80BA64E0  7F E3 FB 78 */	mr r3, r31
/* 80BA64E4  48 00 00 08 */	b lbl_80BA64EC
lbl_80BA64E8:
/* 80BA64E8  38 60 00 00 */	li r3, 0
lbl_80BA64EC:
/* 80BA64EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA64F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA64F4  7C 08 03 A6 */	mtlr r0
/* 80BA64F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA64FC  4E 80 00 20 */	blr 
