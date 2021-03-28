lbl_80BA1D48:
/* 80BA1D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1D4C  7C 08 02 A6 */	mflr r0
/* 80BA1D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1D58  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA1D5C  7C 7E 1B 78 */	mr r30, r3
/* 80BA1D60  3C 60 80 BA */	lis r3, lit_3655@ha
/* 80BA1D64  3B E3 23 90 */	addi r31, r3, lit_3655@l
/* 80BA1D68  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80BA1D6C  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80BA1D70  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80BA1D74  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80BA1D78  38 84 25 6C */	addi r4, r4, l_HIO@l
/* 80BA1D7C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 80BA1D80  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80BA1D84  4B 6C DB F8 */	b cLib_addCalc__FPfffff
/* 80BA1D88  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BA1D8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BA1D90  40 82 00 24 */	bne lbl_80BA1DB4
/* 80BA1D94  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BA1D98  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80BA1D9C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80BA1DA0  98 03 00 91 */	stb r0, 0x91(r3)
/* 80BA1DA4  38 00 00 00 */	li r0, 0
/* 80BA1DA8  98 1E 05 D9 */	stb r0, 0x5d9(r30)
/* 80BA1DAC  7F C3 F3 78 */	mr r3, r30
/* 80BA1DB0  4B FF FD 9D */	bl init_modeWait__14daAmiShutter_cFv
lbl_80BA1DB4:
/* 80BA1DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1DB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA1DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1DC0  7C 08 03 A6 */	mtlr r0
/* 80BA1DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1DC8  4E 80 00 20 */	blr 
