lbl_801A86F8:
/* 801A86F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A86FC  7C 08 02 A6 */	mflr r0
/* 801A8700  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8704  7C 64 1B 78 */	mr r4, r3
/* 801A8708  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A870C  C0 82 A3 A8 */	lfs f4, lit_8647(r2)
/* 801A8710  A8 03 03 50 */	lha r0, 0x350(r3)
/* 801A8714  98 01 00 0C */	stb r0, 0xc(r1)
/* 801A8718  A8 03 03 52 */	lha r0, 0x352(r3)
/* 801A871C  98 01 00 0D */	stb r0, 0xd(r1)
/* 801A8720  A8 03 03 54 */	lha r0, 0x354(r3)
/* 801A8724  98 01 00 0E */	stb r0, 0xe(r1)
/* 801A8728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A872C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A8730  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 801A8734  28 03 00 00 */	cmplwi r3, 0
/* 801A8738  41 82 00 38 */	beq lbl_801A8770
/* 801A873C  C0 43 00 C8 */	lfs f2, 0xc8(r3)
/* 801A8740  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A8744  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A8748  4C 41 13 82 */	cror 2, 1, 2
/* 801A874C  40 82 00 24 */	bne lbl_801A8770
/* 801A8750  C0 23 00 CC */	lfs f1, 0xcc(r3)
/* 801A8754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8758  4C 41 13 82 */	cror 2, 1, 2
/* 801A875C  40 82 00 14 */	bne lbl_801A8770
/* 801A8760  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801A8764  40 80 00 0C */	bge lbl_801A8770
/* 801A8768  FC 60 10 90 */	fmr f3, f2
/* 801A876C  FC 80 08 90 */	fmr f4, f1
lbl_801A8770:
/* 801A8770  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A8774  90 01 00 08 */	stw r0, 8(r1)
/* 801A8778  38 60 00 02 */	li r3, 2
/* 801A877C  C0 24 03 68 */	lfs f1, 0x368(r4)
/* 801A8780  C0 44 03 6C */	lfs f2, 0x36c(r4)
/* 801A8784  38 81 00 08 */	addi r4, r1, 8
/* 801A8788  48 12 57 15 */	bl GFSetFog__F10_GXFogTypeffff8_GXColor
/* 801A878C  48 00 00 15 */	bl GxXFog_set__Fv
/* 801A8790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8794  7C 08 03 A6 */	mtlr r0
/* 801A8798  38 21 00 10 */	addi r1, r1, 0x10
/* 801A879C  4E 80 00 20 */	blr 
