lbl_80654440:
/* 80654440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80654444  7C 08 02 A6 */	mflr r0
/* 80654448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065444C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80654450  93 C1 00 08 */	stw r30, 8(r1)
/* 80654454  7C 7F 1B 78 */	mr r31, r3
/* 80654458  3C 60 80 65 */	lis r3, lit_3896@ha
/* 8065445C  3B C3 55 AC */	addi r30, r3, lit_3896@l
/* 80654460  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80654464  4B C0 13 C4 */	b getAlphaRate__13CPaneMgrAlphaFv
/* 80654468  D0 3F 07 38 */	stfs f1, 0x738(r31)
/* 8065446C  88 1F 07 46 */	lbz r0, 0x746(r31)
/* 80654470  28 00 00 00 */	cmplwi r0, 0
/* 80654474  41 82 00 E4 */	beq lbl_80654558
/* 80654478  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8065447C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654480  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80654484  41 82 01 B0 */	beq lbl_80654634
/* 80654488  38 7F 07 38 */	addi r3, r31, 0x738
/* 8065448C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80654490  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80654494  4B C1 B5 A8 */	b cLib_addCalc2__FPffff
/* 80654498  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 8065449C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806544A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806544A4  FC 00 02 10 */	fabs f0, f0
/* 806544A8  FC 40 00 18 */	frsp f2, f0
/* 806544AC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806544B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806544B4  40 80 00 08 */	bge lbl_806544BC
/* 806544B8  D0 3F 07 38 */	stfs f1, 0x738(r31)
lbl_806544BC:
/* 806544BC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 806544C0  C0 3F 07 38 */	lfs f1, 0x738(r31)
/* 806544C4  4B C0 13 0C */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806544C8  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 806544CC  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 806544D0  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 806544D4  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 806544D8  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806544DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806544E0  4B C0 12 F0 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806544E4  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806544E8  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 806544EC  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 806544F0  C0 24 00 84 */	lfs f1, 0x84(r4)
/* 806544F4  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806544F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 806544FC  4B C0 12 D4 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80654500  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80654504  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 80654508  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 8065450C  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 80654510  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654514  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654518  4B C0 12 B8 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 8065451C  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80654520  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 80654524  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 80654528  C0 24 00 A4 */	lfs f1, 0xa4(r4)
/* 8065452C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654530  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654534  4B C0 12 9C */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80654538  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8065453C  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 80654540  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 80654544  C0 24 00 B4 */	lfs f1, 0xb4(r4)
/* 80654548  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 8065454C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654550  4B C0 12 80 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80654554  48 00 00 E0 */	b lbl_80654634
lbl_80654558:
/* 80654558  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8065455C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654560  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80654564  41 82 00 D0 */	beq lbl_80654634
/* 80654568  38 7F 07 38 */	addi r3, r31, 0x738
/* 8065456C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80654570  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80654574  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80654578  4B C1 B4 C4 */	b cLib_addCalc2__FPffff
/* 8065457C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654580  FC 00 02 10 */	fabs f0, f0
/* 80654584  FC 20 00 18 */	frsp f1, f0
/* 80654588  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8065458C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80654590  40 80 00 0C */	bge lbl_8065459C
/* 80654594  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80654598  D0 1F 07 38 */	stfs f0, 0x738(r31)
lbl_8065459C:
/* 8065459C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 806545A0  C0 3F 07 38 */	lfs f1, 0x738(r31)
/* 806545A4  4B C0 12 2C */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806545A8  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 806545AC  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 806545B0  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 806545B4  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 806545B8  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806545BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806545C0  4B C0 12 10 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806545C4  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 806545C8  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 806545CC  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 806545D0  C0 24 00 84 */	lfs f1, 0x84(r4)
/* 806545D4  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806545D8  EC 21 00 32 */	fmuls f1, f1, f0
/* 806545DC  4B C0 11 F4 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806545E0  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 806545E4  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 806545E8  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 806545EC  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 806545F0  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 806545F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 806545F8  4B C0 11 D8 */	b setAlphaRate__13CPaneMgrAlphaFf
/* 806545FC  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80654600  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 80654604  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 80654608  C0 24 00 A4 */	lfs f1, 0xa4(r4)
/* 8065460C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80654610  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654614  4B C0 11 BC */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80654618  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 8065461C  3C 80 80 65 */	lis r4, l_HOSTIO@ha
/* 80654620  38 84 57 7C */	addi r4, r4, l_HOSTIO@l
/* 80654624  C0 24 00 B4 */	lfs f1, 0xb4(r4)
/* 80654628  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 8065462C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80654630  4B C0 11 A0 */	b setAlphaRate__13CPaneMgrAlphaFf
lbl_80654634:
/* 80654634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80654638  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065463C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80654640  7C 08 03 A6 */	mtlr r0
/* 80654644  38 21 00 10 */	addi r1, r1, 0x10
/* 80654648  4E 80 00 20 */	blr 
