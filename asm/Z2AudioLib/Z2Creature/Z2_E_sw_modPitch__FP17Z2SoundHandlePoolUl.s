lbl_802C2DE0:
/* 802C2DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C2DE4  7C 08 02 A6 */	mflr r0
/* 802C2DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C2DEC  28 03 00 00 */	cmplwi r3, 0
/* 802C2DF0  41 82 00 54 */	beq lbl_802C2E44
/* 802C2DF4  80 03 00 00 */	lwz r0, 0(r3)
/* 802C2DF8  28 00 00 00 */	cmplwi r0, 0
/* 802C2DFC  41 82 00 48 */	beq lbl_802C2E44
/* 802C2E00  C0 22 C2 20 */	lfs f1, lit_3669(r2)
/* 802C2E04  2C 04 00 02 */	cmpwi r4, 2
/* 802C2E08  41 82 00 2C */	beq lbl_802C2E34
/* 802C2E0C  40 80 00 10 */	bge lbl_802C2E1C
/* 802C2E10  2C 04 00 01 */	cmpwi r4, 1
/* 802C2E14  40 80 00 14 */	bge lbl_802C2E28
/* 802C2E18  48 00 00 1C */	b lbl_802C2E34
lbl_802C2E1C:
/* 802C2E1C  2C 04 00 04 */	cmpwi r4, 4
/* 802C2E20  40 80 00 14 */	bge lbl_802C2E34
/* 802C2E24  48 00 00 0C */	b lbl_802C2E30
lbl_802C2E28:
/* 802C2E28  C0 22 C2 54 */	lfs f1, lit_4188(r2)
/* 802C2E2C  48 00 00 08 */	b lbl_802C2E34
lbl_802C2E30:
/* 802C2E30  C0 22 C2 14 */	lfs f1, lit_3666(r2)
lbl_802C2E34:
/* 802C2E34  80 63 00 00 */	lwz r3, 0(r3)
/* 802C2E38  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2E3C  38 80 00 00 */	li r4, 0
/* 802C2E40  4B FD FF CD */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C2E44:
/* 802C2E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C2E48  7C 08 03 A6 */	mtlr r0
/* 802C2E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C2E50  4E 80 00 20 */	blr 
