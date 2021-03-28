lbl_806EAADC:
/* 806EAADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EAAE0  7C 08 02 A6 */	mflr r0
/* 806EAAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EAAE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EAAEC  93 C1 00 08 */	stw r30, 8(r1)
/* 806EAAF0  7C 7E 1B 78 */	mr r30, r3
/* 806EAAF4  7C 9F 23 78 */	mr r31, r4
/* 806EAAF8  80 03 06 C0 */	lwz r0, 0x6c0(r3)
/* 806EAAFC  7C 00 F8 00 */	cmpw r0, r31
/* 806EAB00  40 82 00 0C */	bne lbl_806EAB0C
/* 806EAB04  2C 1F 00 05 */	cmpwi r31, 5
/* 806EAB08  40 82 00 48 */	bne lbl_806EAB50
lbl_806EAB0C:
/* 806EAB0C  88 1E 06 ED */	lbz r0, 0x6ed(r30)
/* 806EAB10  28 00 00 00 */	cmplwi r0, 0
/* 806EAB14  41 82 00 1C */	beq lbl_806EAB30
/* 806EAB18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EAB1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EAB20  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806EAB24  4B 95 79 44 */	b reset__14dEvt_control_cFv
/* 806EAB28  38 00 00 00 */	li r0, 0
/* 806EAB2C  98 1E 06 ED */	stb r0, 0x6ed(r30)
lbl_806EAB30:
/* 806EAB30  38 60 00 00 */	li r3, 0
/* 806EAB34  98 7E 06 E7 */	stb r3, 0x6e7(r30)
/* 806EAB38  80 1E 06 C0 */	lwz r0, 0x6c0(r30)
/* 806EAB3C  90 1E 06 C4 */	stw r0, 0x6c4(r30)
/* 806EAB40  93 FE 06 C0 */	stw r31, 0x6c0(r30)
/* 806EAB44  90 7E 06 C8 */	stw r3, 0x6c8(r30)
/* 806EAB48  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EAB4C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806EAB50:
/* 806EAB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EAB54  83 C1 00 08 */	lwz r30, 8(r1)
/* 806EAB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EAB5C  7C 08 03 A6 */	mtlr r0
/* 806EAB60  38 21 00 10 */	addi r1, r1, 0x10
/* 806EAB64  4E 80 00 20 */	blr 
