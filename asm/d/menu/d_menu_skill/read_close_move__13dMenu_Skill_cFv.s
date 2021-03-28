lbl_801F826C:
/* 801F826C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F8270  7C 08 02 A6 */	mflr r0
/* 801F8274  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F8278  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801F827C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801F8280  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F8284  7C 7F 1B 78 */	mr r31, r3
/* 801F8288  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801F828C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801F8290  A8 83 0A 6A */	lha r4, 0xa6a(r3)
/* 801F8294  A8 7F 02 02 */	lha r3, 0x202(r31)
/* 801F8298  38 03 FF FF */	addi r0, r3, -1
/* 801F829C  B0 1F 02 02 */	sth r0, 0x202(r31)
/* 801F82A0  A8 7F 02 02 */	lha r3, 0x202(r31)
/* 801F82A4  7C 60 07 35 */	extsh. r0, r3
/* 801F82A8  41 81 00 3C */	bgt lbl_801F82E4
/* 801F82AC  38 00 00 00 */	li r0, 0
/* 801F82B0  98 1F 02 05 */	stb r0, 0x205(r31)
/* 801F82B4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801F82B8  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F82BC  48 05 D5 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F82C0  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F82C4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801F82C8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801F82CC  88 84 0A 8D */	lbz r4, 0xa8d(r4)
/* 801F82D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F82D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F82D8  7D 89 03 A6 */	mtctr r12
/* 801F82DC  4E 80 04 21 */	bctrl 
/* 801F82E0  48 00 00 8C */	b lbl_801F836C
lbl_801F82E4:
/* 801F82E4  C8 42 AA B0 */	lfd f2, lit_4016(r2)
/* 801F82E8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801F82EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F82F0  3C 60 43 30 */	lis r3, 0x4330
/* 801F82F4  90 61 00 08 */	stw r3, 8(r1)
/* 801F82F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F82FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 801F8300  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801F8304  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8308  90 61 00 10 */	stw r3, 0x10(r1)
/* 801F830C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F8310  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F8314  EF E1 00 24 */	fdivs f31, f1, f0
/* 801F8318  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801F831C  FC 20 F8 90 */	fmr f1, f31
/* 801F8320  48 05 D4 B1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F8324  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F8328  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801F832C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801F8330  88 04 0A 8D */	lbz r0, 0xa8d(r4)
/* 801F8334  C8 22 AA B8 */	lfd f1, lit_4104(r2)
/* 801F8338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F833C  3C 00 43 30 */	lis r0, 0x4330
/* 801F8340  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F8344  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801F8348  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F834C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801F8350  FC 00 00 1E */	fctiwz f0, f0
/* 801F8354  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801F8358  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801F835C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8360  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F8364  7D 89 03 A6 */	mtctr r12
/* 801F8368  4E 80 04 21 */	bctrl 
lbl_801F836C:
/* 801F836C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801F8370  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801F8374  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F8378  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F837C  7C 08 03 A6 */	mtlr r0
/* 801F8380  38 21 00 40 */	addi r1, r1, 0x40
/* 801F8384  4E 80 00 20 */	blr 
