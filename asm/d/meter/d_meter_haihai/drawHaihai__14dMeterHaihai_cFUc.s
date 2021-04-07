lbl_8020B518:
/* 8020B518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020B51C  7C 08 02 A6 */	mflr r0
/* 8020B520  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020B524  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8020B528  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8020B52C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8020B530  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8020B534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020B538  93 C1 00 08 */	stw r30, 8(r1)
/* 8020B53C  7C 7E 1B 78 */	mr r30, r3
/* 8020B540  C3 E2 AD C0 */	lfs f31, lit_3893(r2)
/* 8020B544  C3 C2 AD C4 */	lfs f30, lit_3894(r2)
/* 8020B548  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8020B54C  28 00 00 01 */	cmplwi r0, 1
/* 8020B550  40 82 00 30 */	bne lbl_8020B580
/* 8020B554  C0 22 AD D8 */	lfs f1, lit_3940(r2)
/* 8020B558  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B55C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B560  C0 03 05 1C */	lfs f0, 0x51c(r3)
/* 8020B564  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B568  EF FF 00 2A */	fadds f31, f31, f0
/* 8020B56C  C0 23 05 20 */	lfs f1, 0x520(r3)
/* 8020B570  C0 02 AD DC */	lfs f0, lit_3941(r2)
/* 8020B574  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B578  EF DE 00 2A */	fadds f30, f30, f0
/* 8020B57C  48 00 00 1C */	b lbl_8020B598
lbl_8020B580:
/* 8020B580  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B584  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B588  C0 03 05 1C */	lfs f0, 0x51c(r3)
/* 8020B58C  EF FF 00 2A */	fadds f31, f31, f0
/* 8020B590  C0 03 05 20 */	lfs f0, 0x520(r3)
/* 8020B594  EF DE 00 2A */	fadds f30, f30, f0
lbl_8020B598:
/* 8020B598  28 00 00 01 */	cmplwi r0, 1
/* 8020B59C  40 82 01 44 */	bne lbl_8020B6E0
/* 8020B5A0  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 8020B5A4  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8020B5A8  40 82 00 18 */	bne lbl_8020B5C0
/* 8020B5AC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B5B0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B5B4  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B5B8  28 00 00 00 */	cmplwi r0, 0
/* 8020B5BC  41 82 00 34 */	beq lbl_8020B5F0
lbl_8020B5C0:
/* 8020B5C0  7F C3 F3 78 */	mr r3, r30
/* 8020B5C4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B5C8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B5CC  C0 24 05 0C */	lfs f1, 0x50c(r4)
/* 8020B5D0  C0 02 AD B4 */	lfs f0, lit_3890(r2)
/* 8020B5D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B5D8  EC 3F 00 2A */	fadds f1, f31, f0
/* 8020B5DC  C0 44 05 14 */	lfs f2, 0x514(r4)
/* 8020B5E0  C0 02 AD B8 */	lfs f0, lit_3891(r2)
/* 8020B5E4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8020B5E8  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B5EC  48 00 05 99 */	bl drawHaihaiBottom__14dMeterHaihai_cFff
lbl_8020B5F0:
/* 8020B5F0  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8020B5F4  40 82 00 18 */	bne lbl_8020B60C
/* 8020B5F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B5FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B600  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B604  28 00 00 00 */	cmplwi r0, 0
/* 8020B608  41 82 00 34 */	beq lbl_8020B63C
lbl_8020B60C:
/* 8020B60C  7F C3 F3 78 */	mr r3, r30
/* 8020B610  C0 42 AD E0 */	lfs f2, lit_3942(r2)
/* 8020B614  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B618  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B61C  C0 24 05 10 */	lfs f1, 0x510(r4)
/* 8020B620  C0 02 AD BC */	lfs f0, lit_3892(r2)
/* 8020B624  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B628  EC 1F 00 2A */	fadds f0, f31, f0
/* 8020B62C  EC 22 00 2A */	fadds f1, f2, f0
/* 8020B630  C0 04 05 18 */	lfs f0, 0x518(r4)
/* 8020B634  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B638  48 00 04 15 */	bl drawHaihaiRight__14dMeterHaihai_cFff
lbl_8020B63C:
/* 8020B63C  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020B640  40 82 00 18 */	bne lbl_8020B658
/* 8020B644  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B648  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B64C  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B650  28 00 00 00 */	cmplwi r0, 0
/* 8020B654  41 82 00 3C */	beq lbl_8020B690
lbl_8020B658:
/* 8020B658  7F C3 F3 78 */	mr r3, r30
/* 8020B65C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B660  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B664  C0 24 05 0C */	lfs f1, 0x50c(r4)
/* 8020B668  C0 02 AD B4 */	lfs f0, lit_3890(r2)
/* 8020B66C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B670  EC 3F 00 2A */	fadds f1, f31, f0
/* 8020B674  C0 62 AD E4 */	lfs f3, lit_3943(r2)
/* 8020B678  C0 44 05 14 */	lfs f2, 0x514(r4)
/* 8020B67C  C0 02 AD B8 */	lfs f0, lit_3891(r2)
/* 8020B680  EC 02 00 28 */	fsubs f0, f2, f0
/* 8020B684  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8020B688  EC 43 00 2A */	fadds f2, f3, f0
/* 8020B68C  48 00 04 5D */	bl drawHaihaiTop__14dMeterHaihai_cFff
lbl_8020B690:
/* 8020B690  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8020B694  40 82 00 18 */	bne lbl_8020B6AC
/* 8020B698  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B69C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B6A0  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B6A4  28 00 00 00 */	cmplwi r0, 0
/* 8020B6A8  41 82 01 44 */	beq lbl_8020B7EC
lbl_8020B6AC:
/* 8020B6AC  7F C3 F3 78 */	mr r3, r30
/* 8020B6B0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B6B4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B6B8  C0 24 05 10 */	lfs f1, 0x510(r4)
/* 8020B6BC  C0 02 AD BC */	lfs f0, lit_3892(r2)
/* 8020B6C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B6C4  EC 3F 00 28 */	fsubs f1, f31, f0
/* 8020B6C8  C0 02 AD E0 */	lfs f0, lit_3942(r2)
/* 8020B6CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B6D0  C0 04 05 18 */	lfs f0, 0x518(r4)
/* 8020B6D4  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B6D8  48 00 02 D9 */	bl drawHaihaiLeft__14dMeterHaihai_cFff
/* 8020B6DC  48 00 01 10 */	b lbl_8020B7EC
lbl_8020B6E0:
/* 8020B6E0  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 8020B6E4  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8020B6E8  40 82 00 18 */	bne lbl_8020B700
/* 8020B6EC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B6F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B6F4  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B6F8  28 00 00 00 */	cmplwi r0, 0
/* 8020B6FC  41 82 00 24 */	beq lbl_8020B720
lbl_8020B700:
/* 8020B700  7F C3 F3 78 */	mr r3, r30
/* 8020B704  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B708  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B70C  C0 04 05 0C */	lfs f0, 0x50c(r4)
/* 8020B710  EC 3F 00 2A */	fadds f1, f31, f0
/* 8020B714  C0 04 05 14 */	lfs f0, 0x514(r4)
/* 8020B718  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B71C  48 00 04 69 */	bl drawHaihaiBottom__14dMeterHaihai_cFff
lbl_8020B720:
/* 8020B720  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8020B724  40 82 00 18 */	bne lbl_8020B73C
/* 8020B728  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B72C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B730  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B734  28 00 00 00 */	cmplwi r0, 0
/* 8020B738  41 82 00 2C */	beq lbl_8020B764
lbl_8020B73C:
/* 8020B73C  7F C3 F3 78 */	mr r3, r30
/* 8020B740  C0 22 AD E0 */	lfs f1, lit_3942(r2)
/* 8020B744  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B748  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B74C  C0 04 05 10 */	lfs f0, 0x510(r4)
/* 8020B750  EC 1F 00 2A */	fadds f0, f31, f0
/* 8020B754  EC 21 00 2A */	fadds f1, f1, f0
/* 8020B758  C0 04 05 18 */	lfs f0, 0x518(r4)
/* 8020B75C  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B760  48 00 02 ED */	bl drawHaihaiRight__14dMeterHaihai_cFff
lbl_8020B764:
/* 8020B764  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020B768  40 82 00 18 */	bne lbl_8020B780
/* 8020B76C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B770  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B774  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B778  28 00 00 00 */	cmplwi r0, 0
/* 8020B77C  41 82 00 2C */	beq lbl_8020B7A8
lbl_8020B780:
/* 8020B780  7F C3 F3 78 */	mr r3, r30
/* 8020B784  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B788  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B78C  C0 04 05 0C */	lfs f0, 0x50c(r4)
/* 8020B790  EC 3F 00 2A */	fadds f1, f31, f0
/* 8020B794  C0 42 AD E4 */	lfs f2, lit_3943(r2)
/* 8020B798  C0 04 05 14 */	lfs f0, 0x514(r4)
/* 8020B79C  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8020B7A0  EC 42 00 2A */	fadds f2, f2, f0
/* 8020B7A4  48 00 03 45 */	bl drawHaihaiTop__14dMeterHaihai_cFff
lbl_8020B7A8:
/* 8020B7A8  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8020B7AC  40 82 00 18 */	bne lbl_8020B7C4
/* 8020B7B0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B7B4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B7B8  88 03 05 24 */	lbz r0, 0x524(r3)
/* 8020B7BC  28 00 00 00 */	cmplwi r0, 0
/* 8020B7C0  41 82 00 2C */	beq lbl_8020B7EC
lbl_8020B7C4:
/* 8020B7C4  7F C3 F3 78 */	mr r3, r30
/* 8020B7C8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020B7CC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020B7D0  C0 04 05 10 */	lfs f0, 0x510(r4)
/* 8020B7D4  EC 3F 00 28 */	fsubs f1, f31, f0
/* 8020B7D8  C0 02 AD E0 */	lfs f0, lit_3942(r2)
/* 8020B7DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B7E0  C0 04 05 18 */	lfs f0, 0x518(r4)
/* 8020B7E4  EC 5E 00 2A */	fadds f2, f30, f0
/* 8020B7E8  48 00 01 C9 */	bl drawHaihaiLeft__14dMeterHaihai_cFff
lbl_8020B7EC:
/* 8020B7EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8020B7F0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8020B7F4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8020B7F8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8020B7FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020B800  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020B804  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020B808  7C 08 03 A6 */	mtlr r0
/* 8020B80C  38 21 00 30 */	addi r1, r1, 0x30
/* 8020B810  4E 80 00 20 */	blr 
