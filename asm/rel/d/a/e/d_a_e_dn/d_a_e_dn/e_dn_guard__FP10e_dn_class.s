lbl_804E9544:
/* 804E9544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E9548  7C 08 02 A6 */	mflr r0
/* 804E954C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9550  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E9554  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E9558  7C 7E 1B 78 */	mr r30, r3
/* 804E955C  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E9560  3B E4 E8 AC */	addi r31, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804E9564  38 A0 00 01 */	li r5, 1
/* 804E9568  98 A3 06 F1 */	stb r5, 0x6f1(r3)
/* 804E956C  98 A3 06 F4 */	stb r5, 0x6f4(r3)
/* 804E9570  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E9574  28 00 00 08 */	cmplwi r0, 8
/* 804E9578  41 81 01 AC */	bgt lbl_804E9724
/* 804E957C  3C 80 80 4F */	lis r4, lit_5544@ha /* 0x804EEAD4@ha */
/* 804E9580  38 84 EA D4 */	addi r4, r4, lit_5544@l /* 0x804EEAD4@l */
/* 804E9584  54 00 10 3A */	slwi r0, r0, 2
/* 804E9588  7C 04 00 2E */	lwzx r0, r4, r0
/* 804E958C  7C 09 03 A6 */	mtctr r0
/* 804E9590  4E 80 04 20 */	bctr 
lbl_804E9594:
/* 804E9594  38 80 00 20 */	li r4, 0x20
/* 804E9598  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E959C  38 A0 00 00 */	li r5, 0
/* 804E95A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E95A4  4B FF BD 2D */	bl anm_init__FP10e_dn_classifUcf
/* 804E95A8  38 00 00 01 */	li r0, 1
/* 804E95AC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E95B0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804E95B4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804E95B8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804E95BC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E95C0  38 00 00 03 */	li r0, 3
/* 804E95C4  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E95C8  48 00 01 5C */	b lbl_804E9724
lbl_804E95CC:
/* 804E95CC  38 00 00 05 */	li r0, 5
/* 804E95D0  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E95D4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E95D8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804E95DC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804E95E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E95E4  4C 41 13 82 */	cror 2, 1, 2
/* 804E95E8  40 82 01 3C */	bne lbl_804E9724
/* 804E95EC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E95F0  38 00 00 14 */	li r0, 0x14
/* 804E95F4  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E95F8  48 00 01 2C */	b lbl_804E9724
lbl_804E95FC:
/* 804E95FC  38 80 00 16 */	li r4, 0x16
/* 804E9600  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E9604  38 A0 00 00 */	li r5, 0
/* 804E9608  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E960C  4B FF BC C5 */	bl anm_init__FP10e_dn_classifUcf
/* 804E9610  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070046@ha */
/* 804E9614  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00070046@l */
/* 804E9618  90 01 00 08 */	stw r0, 8(r1)
/* 804E961C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E9620  38 81 00 08 */	addi r4, r1, 8
/* 804E9624  38 A0 FF FF */	li r5, -1
/* 804E9628  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E962C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E9630  7D 89 03 A6 */	mtctr r12
/* 804E9634  4E 80 04 21 */	bctrl 
/* 804E9638  38 00 00 06 */	li r0, 6
/* 804E963C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E9640:
/* 804E9640  38 00 00 05 */	li r0, 5
/* 804E9644  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E9648  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 804E964C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804E9650  41 82 00 14 */	beq lbl_804E9664
/* 804E9654  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E9658  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E965C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 804E9660  4B D8 64 21 */	bl cLib_addCalc0__FPfff
lbl_804E9664:
/* 804E9664  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E9668  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804E966C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804E9670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E9674  4C 41 13 82 */	cror 2, 1, 2
/* 804E9678  40 82 00 AC */	bne lbl_804E9724
/* 804E967C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E9680  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804E9684  38 00 00 07 */	li r0, 7
/* 804E9688  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E968C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E9690  48 00 00 94 */	b lbl_804E9724
lbl_804E9694:
/* 804E9694  38 00 00 05 */	li r0, 5
/* 804E9698  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E969C  4B B9 DD 39 */	bl cc_pl_cut_bit_get__Fv
/* 804E96A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804E96A4  28 00 00 80 */	cmplwi r0, 0x80
/* 804E96A8  41 82 00 14 */	beq lbl_804E96BC
/* 804E96AC  4B B9 DD 29 */	bl cc_pl_cut_bit_get__Fv
/* 804E96B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804E96B4  28 00 08 00 */	cmplwi r0, 0x800
/* 804E96B8  40 82 00 0C */	bne lbl_804E96C4
lbl_804E96BC:
/* 804E96BC  38 00 00 14 */	li r0, 0x14
/* 804E96C0  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
lbl_804E96C4:
/* 804E96C4  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E96C8  2C 00 00 00 */	cmpwi r0, 0
/* 804E96CC  40 82 00 58 */	bne lbl_804E9724
/* 804E96D0  38 00 00 08 */	li r0, 8
/* 804E96D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E96D8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E96DC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E96E0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804E96E4  48 00 00 40 */	b lbl_804E9724
lbl_804E96E8:
/* 804E96E8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E96EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E96F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E96F4  40 82 00 18 */	bne lbl_804E970C
/* 804E96F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E96FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E9700  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E9704  41 82 00 08 */	beq lbl_804E970C
/* 804E9708  38 A0 00 00 */	li r5, 0
lbl_804E970C:
/* 804E970C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804E9710  41 82 00 14 */	beq lbl_804E9724
/* 804E9714  38 00 00 03 */	li r0, 3
/* 804E9718  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E971C  38 00 00 00 */	li r0, 0
/* 804E9720  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E9724:
/* 804E9724  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E9728  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E972C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E9730  7C 08 03 A6 */	mtlr r0
/* 804E9734  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9738  4E 80 00 20 */	blr 
