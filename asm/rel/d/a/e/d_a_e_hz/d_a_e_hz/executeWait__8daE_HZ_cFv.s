lbl_806EB3EC:
/* 806EB3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EB3F0  7C 08 02 A6 */	mflr r0
/* 806EB3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EB3F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806EB3FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806EB400  7C 7E 1B 78 */	mr r30, r3
/* 806EB404  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EB408  3B E4 08 60 */	addi r31, r4, lit_3966@l /* 0x806F0860@l */
/* 806EB40C  38 00 00 00 */	li r0, 0
/* 806EB410  98 03 05 66 */	stb r0, 0x566(r3)
/* 806EB414  38 00 00 01 */	li r0, 1
/* 806EB418  98 03 06 E5 */	stb r0, 0x6e5(r3)
/* 806EB41C  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EB420  2C 00 00 02 */	cmpwi r0, 2
/* 806EB424  41 82 00 C0 */	beq lbl_806EB4E4
/* 806EB428  40 80 00 14 */	bge lbl_806EB43C
/* 806EB42C  2C 00 00 00 */	cmpwi r0, 0
/* 806EB430  41 82 00 18 */	beq lbl_806EB448
/* 806EB434  40 80 00 64 */	bge lbl_806EB498
/* 806EB438  48 00 02 D8 */	b lbl_806EB710
lbl_806EB43C:
/* 806EB43C  2C 00 00 05 */	cmpwi r0, 5
/* 806EB440  40 80 02 D0 */	bge lbl_806EB710
/* 806EB444  48 00 02 68 */	b lbl_806EB6AC
lbl_806EB448:
/* 806EB448  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EB44C  60 00 00 01 */	ori r0, r0, 1
/* 806EB450  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EB454  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010040@ha */
/* 806EB458  38 04 00 40 */	addi r0, r4, 0x0040 /* 0x00010040@l */
/* 806EB45C  90 1E 0D 34 */	stw r0, 0xd34(r30)
/* 806EB460  38 80 00 10 */	li r4, 0x10
/* 806EB464  38 A0 00 02 */	li r5, 2
/* 806EB468  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EB46C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EB470  4B FF F2 21 */	bl setBck__8daE_HZ_cFiUcff
/* 806EB474  A8 7E 06 B0 */	lha r3, 0x6b0(r30)
/* 806EB478  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EB47C  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EB480  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EB484  38 00 00 01 */	li r0, 1
/* 806EB488  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB48C  38 00 00 00 */	li r0, 0
/* 806EB490  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806EB494  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
lbl_806EB498:
/* 806EB498  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806EB49C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806EB4A0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806EB4A4  EC 21 00 2A */	fadds f1, f1, f0
/* 806EB4A8  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806EB4AC  4B B8 52 95 */	bl cLib_chaseF__FPfff
/* 806EB4B0  2C 03 00 00 */	cmpwi r3, 0
/* 806EB4B4  41 82 02 5C */	beq lbl_806EB710
/* 806EB4B8  38 00 00 02 */	li r0, 2
/* 806EB4BC  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB4C0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EB4C4  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EB4C8  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EB4CC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EB4D0  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806EB4D4  38 00 00 00 */	li r0, 0
/* 806EB4D8  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB4DC  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 806EB4E0  48 00 02 30 */	b lbl_806EB710
lbl_806EB4E4:
/* 806EB4E4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EB4E8  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806EB4EC  7C 03 02 14 */	add r0, r3, r0
/* 806EB4F0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EB4F4  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 806EB4F8  2C 00 00 03 */	cmpwi r0, 3
/* 806EB4FC  41 82 00 E0 */	beq lbl_806EB5DC
/* 806EB500  40 80 00 1C */	bge lbl_806EB51C
/* 806EB504  2C 00 00 01 */	cmpwi r0, 1
/* 806EB508  41 82 00 D4 */	beq lbl_806EB5DC
/* 806EB50C  40 80 00 78 */	bge lbl_806EB584
/* 806EB510  2C 00 00 00 */	cmpwi r0, 0
/* 806EB514  40 80 00 18 */	bge lbl_806EB52C
/* 806EB518  48 00 01 58 */	b lbl_806EB670
lbl_806EB51C:
/* 806EB51C  2C 00 00 05 */	cmpwi r0, 5
/* 806EB520  41 82 01 10 */	beq lbl_806EB630
/* 806EB524  40 80 01 4C */	bge lbl_806EB670
/* 806EB528  48 00 00 D0 */	b lbl_806EB5F8
lbl_806EB52C:
/* 806EB52C  A8 7E 06 B2 */	lha r3, 0x6b2(r30)
/* 806EB530  38 03 E8 00 */	addi r0, r3, -6144
/* 806EB534  7C 03 07 34 */	extsh r3, r0
/* 806EB538  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EB53C  7C 03 00 00 */	cmpw r3, r0
/* 806EB540  40 80 00 18 */	bge lbl_806EB558
/* 806EB544  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB548  38 80 FE 00 */	li r4, -512
/* 806EB54C  38 A0 00 80 */	li r5, 0x80
/* 806EB550  4B B8 56 41 */	bl cLib_chaseAngleS__FPsss
/* 806EB554  48 00 01 1C */	b lbl_806EB670
lbl_806EB558:
/* 806EB558  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB55C  38 80 00 00 */	li r4, 0
/* 806EB560  38 A0 00 80 */	li r5, 0x80
/* 806EB564  4B B8 56 2D */	bl cLib_chaseAngleS__FPsss
/* 806EB568  2C 03 00 00 */	cmpwi r3, 0
/* 806EB56C  41 82 01 04 */	beq lbl_806EB670
/* 806EB570  38 00 00 01 */	li r0, 1
/* 806EB574  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB578  38 00 00 0A */	li r0, 0xa
/* 806EB57C  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806EB580  48 00 00 F0 */	b lbl_806EB670
lbl_806EB584:
/* 806EB584  A8 7E 06 B2 */	lha r3, 0x6b2(r30)
/* 806EB588  38 03 18 00 */	addi r0, r3, 0x1800
/* 806EB58C  7C 03 07 34 */	extsh r3, r0
/* 806EB590  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EB594  7C 03 00 00 */	cmpw r3, r0
/* 806EB598  40 81 00 18 */	ble lbl_806EB5B0
/* 806EB59C  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB5A0  38 80 02 00 */	li r4, 0x200
/* 806EB5A4  38 A0 00 80 */	li r5, 0x80
/* 806EB5A8  4B B8 55 E9 */	bl cLib_chaseAngleS__FPsss
/* 806EB5AC  48 00 00 C4 */	b lbl_806EB670
lbl_806EB5B0:
/* 806EB5B0  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB5B4  38 80 00 00 */	li r4, 0
/* 806EB5B8  38 A0 00 80 */	li r5, 0x80
/* 806EB5BC  4B B8 55 D5 */	bl cLib_chaseAngleS__FPsss
/* 806EB5C0  2C 03 00 00 */	cmpwi r3, 0
/* 806EB5C4  41 82 00 AC */	beq lbl_806EB670
/* 806EB5C8  38 00 00 03 */	li r0, 3
/* 806EB5CC  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB5D0  38 00 00 0A */	li r0, 0xa
/* 806EB5D4  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806EB5D8  48 00 00 98 */	b lbl_806EB670
lbl_806EB5DC:
/* 806EB5DC  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806EB5E0  2C 00 00 00 */	cmpwi r0, 0
/* 806EB5E4  40 82 00 8C */	bne lbl_806EB670
/* 806EB5E8  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 806EB5EC  38 03 00 01 */	addi r0, r3, 1
/* 806EB5F0  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB5F4  48 00 00 7C */	b lbl_806EB670
lbl_806EB5F8:
/* 806EB5F8  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB5FC  38 80 FE 00 */	li r4, -512
/* 806EB600  38 A0 00 80 */	li r5, 0x80
/* 806EB604  4B B8 55 8D */	bl cLib_chaseAngleS__FPsss
/* 806EB608  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EB60C  A8 9E 06 B2 */	lha r4, 0x6b2(r30)
/* 806EB610  4B B8 58 15 */	bl cLib_distanceAngleS__Fss
/* 806EB614  2C 03 05 00 */	cmpwi r3, 0x500
/* 806EB618  40 80 00 58 */	bge lbl_806EB670
/* 806EB61C  38 00 00 0A */	li r0, 0xa
/* 806EB620  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806EB624  38 00 00 05 */	li r0, 5
/* 806EB628  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB62C  48 00 01 6C */	b lbl_806EB798
lbl_806EB630:
/* 806EB630  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EB634  38 80 00 00 */	li r4, 0
/* 806EB638  38 A0 00 80 */	li r5, 0x80
/* 806EB63C  4B B8 55 55 */	bl cLib_chaseAngleS__FPsss
/* 806EB640  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806EB644  2C 00 00 00 */	cmpwi r0, 0
/* 806EB648  40 82 00 28 */	bne lbl_806EB670
/* 806EB64C  7F C3 F3 78 */	mr r3, r30
/* 806EB650  4B FF FA 0D */	bl checkArrowCharge__8daE_HZ_cFv
/* 806EB654  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EB658  41 82 00 10 */	beq lbl_806EB668
/* 806EB65C  38 00 00 04 */	li r0, 4
/* 806EB660  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EB664  48 00 00 0C */	b lbl_806EB670
lbl_806EB668:
/* 806EB668  38 00 00 03 */	li r0, 3
/* 806EB66C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_806EB670:
/* 806EB670  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 806EB674  2C 00 00 02 */	cmpwi r0, 2
/* 806EB678  41 80 00 98 */	blt lbl_806EB710
/* 806EB67C  2C 00 00 04 */	cmpwi r0, 4
/* 806EB680  41 81 00 90 */	bgt lbl_806EB710
/* 806EB684  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806EB688  A8 9E 06 B0 */	lha r4, 0x6b0(r30)
/* 806EB68C  4B B8 57 99 */	bl cLib_distanceAngleS__Fss
/* 806EB690  2C 03 08 00 */	cmpwi r3, 0x800
/* 806EB694  40 80 00 7C */	bge lbl_806EB710
/* 806EB698  38 00 00 00 */	li r0, 0
/* 806EB69C  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
/* 806EB6A0  38 00 00 05 */	li r0, 5
/* 806EB6A4  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 806EB6A8  48 00 00 68 */	b lbl_806EB710
lbl_806EB6AC:
/* 806EB6AC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806EB6B0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806EB6B4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806EB6B8  EC 21 00 2A */	fadds f1, f1, f0
/* 806EB6BC  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 806EB6C0  4B B8 50 81 */	bl cLib_chaseF__FPfff
/* 806EB6C4  2C 03 00 00 */	cmpwi r3, 0
/* 806EB6C8  41 82 00 48 */	beq lbl_806EB710
/* 806EB6CC  A8 7E 06 B4 */	lha r3, 0x6b4(r30)
/* 806EB6D0  38 03 08 00 */	addi r0, r3, 0x800
/* 806EB6D4  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 806EB6D8  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 806EB6DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806EB6E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806EB6E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806EB6E8  7C 43 04 2E */	lfsx f2, r3, r0
/* 806EB6EC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806EB6F0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806EB6F4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806EB6F8  EC 01 00 2A */	fadds f0, f1, f0
/* 806EB6FC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806EB700  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806EB704  A8 9E 06 B0 */	lha r4, 0x6b0(r30)
/* 806EB708  38 A0 04 00 */	li r5, 0x400
/* 806EB70C  4B B8 54 85 */	bl cLib_chaseAngleS__FPsss
lbl_806EB710:
/* 806EB710  7F C3 F3 78 */	mr r3, r30
/* 806EB714  38 80 00 10 */	li r4, 0x10
/* 806EB718  4B FF F0 1D */	bl checkBck__8daE_HZ_cFi
/* 806EB71C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EB720  41 82 00 5C */	beq lbl_806EB77C
/* 806EB724  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EB728  38 63 00 0C */	addi r3, r3, 0xc
/* 806EB72C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EB730  4B C3 CC FD */	bl checkPass__12J3DFrameCtrlFf
/* 806EB734  2C 03 00 00 */	cmpwi r3, 0
/* 806EB738  40 82 00 1C */	bne lbl_806EB754
/* 806EB73C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EB740  38 63 00 0C */	addi r3, r3, 0xc
/* 806EB744  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806EB748  4B C3 CC E5 */	bl checkPass__12J3DFrameCtrlFf
/* 806EB74C  2C 03 00 00 */	cmpwi r3, 0
/* 806EB750  41 82 00 2C */	beq lbl_806EB77C
lbl_806EB754:
/* 806EB754  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070214@ha */
/* 806EB758  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00070214@l */
/* 806EB75C  90 01 00 08 */	stw r0, 8(r1)
/* 806EB760  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EB764  38 81 00 08 */	addi r4, r1, 8
/* 806EB768  38 A0 FF FF */	li r5, -1
/* 806EB76C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EB770  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EB774  7D 89 03 A6 */	mtctr r12
/* 806EB778  4E 80 04 21 */	bctrl 
lbl_806EB77C:
/* 806EB77C  7F C3 F3 78 */	mr r3, r30
/* 806EB780  4B FF F3 E9 */	bl checkHideStart__8daE_HZ_cFv
/* 806EB784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EB788  41 82 00 10 */	beq lbl_806EB798
/* 806EB78C  7F C3 F3 78 */	mr r3, r30
/* 806EB790  38 80 00 01 */	li r4, 1
/* 806EB794  4B FF F3 49 */	bl setActionMode__8daE_HZ_cFi
lbl_806EB798:
/* 806EB798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806EB79C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806EB7A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EB7A4  7C 08 03 A6 */	mtlr r0
/* 806EB7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 806EB7AC  4E 80 00 20 */	blr 
