lbl_801F7FF8:
/* 801F7FF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F7FFC  7C 08 02 A6 */	mflr r0
/* 801F8000  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F8004  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801F8008  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801F800C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F8010  7C 7F 1B 78 */	mr r31, r3
/* 801F8014  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801F8018  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801F801C  A8 83 0A 66 */	lha r4, 0xa66(r3)
/* 801F8020  A8 7F 02 02 */	lha r3, 0x202(r31)
/* 801F8024  38 03 00 01 */	addi r0, r3, 1
/* 801F8028  B0 1F 02 02 */	sth r0, 0x202(r31)
/* 801F802C  A8 1F 02 02 */	lha r0, 0x202(r31)
/* 801F8030  7C 00 20 00 */	cmpw r0, r4
/* 801F8034  41 80 00 3C */	blt lbl_801F8070
/* 801F8038  38 00 00 02 */	li r0, 2
/* 801F803C  98 1F 02 05 */	stb r0, 0x205(r31)
/* 801F8040  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801F8044  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F8048  48 05 D7 89 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F804C  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F8050  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801F8054  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801F8058  88 84 0A 8D */	lbz r4, 0xa8d(r4)
/* 801F805C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8060  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F8064  7D 89 03 A6 */	mtctr r12
/* 801F8068  4E 80 04 21 */	bctrl 
/* 801F806C  48 00 00 8C */	b lbl_801F80F8
lbl_801F8070:
/* 801F8070  C8 42 AA B0 */	lfd f2, lit_4016(r2)
/* 801F8074  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F8078  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F807C  3C 60 43 30 */	lis r3, 0x4330
/* 801F8080  90 61 00 08 */	stw r3, 8(r1)
/* 801F8084  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F8088  EC 20 10 28 */	fsubs f1, f0, f2
/* 801F808C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801F8090  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8094  90 61 00 10 */	stw r3, 0x10(r1)
/* 801F8098  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F809C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F80A0  EF E1 00 24 */	fdivs f31, f1, f0
/* 801F80A4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801F80A8  FC 20 F8 90 */	fmr f1, f31
/* 801F80AC  48 05 D7 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F80B0  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F80B4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801F80B8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801F80BC  88 04 0A 8D */	lbz r0, 0xa8d(r4)
/* 801F80C0  C8 22 AA B8 */	lfd f1, lit_4104(r2)
/* 801F80C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F80C8  3C 00 43 30 */	lis r0, 0x4330
/* 801F80CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F80D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801F80D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F80D8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801F80DC  FC 00 00 1E */	fctiwz f0, f0
/* 801F80E0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801F80E4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801F80E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F80EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F80F0  7D 89 03 A6 */	mtctr r12
/* 801F80F4  4E 80 04 21 */	bctrl 
lbl_801F80F8:
/* 801F80F8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801F80FC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801F8100  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F8104  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F8108  7C 08 03 A6 */	mtlr r0
/* 801F810C  38 21 00 40 */	addi r1, r1, 0x40
/* 801F8110  4E 80 00 20 */	blr 
