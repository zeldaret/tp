lbl_807EB650:
/* 807EB650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807EB654  7C 08 02 A6 */	mflr r0
/* 807EB658  90 01 00 24 */	stw r0, 0x24(r1)
/* 807EB65C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807EB660  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807EB664  7C 7E 1B 78 */	mr r30, r3
/* 807EB668  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807EB66C  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807EB670  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807EB674  2C 00 00 00 */	cmpwi r0, 0
/* 807EB678  41 81 00 30 */	bgt lbl_807EB6A8
/* 807EB67C  38 00 00 05 */	li r0, 5
/* 807EB680  B0 1E 07 24 */	sth r0, 0x724(r30)
/* 807EB684  80 1E 0C 3C */	lwz r0, 0xc3c(r30)
/* 807EB688  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807EB68C  90 1E 0C 3C */	stw r0, 0xc3c(r30)
/* 807EB690  80 1E 0D 74 */	lwz r0, 0xd74(r30)
/* 807EB694  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807EB698  90 1E 0D 74 */	stw r0, 0xd74(r30)
/* 807EB69C  38 00 00 00 */	li r0, 0
/* 807EB6A0  98 1E 07 5D */	stb r0, 0x75d(r30)
/* 807EB6A4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_807EB6A8:
/* 807EB6A8  80 1E 06 BC */	lwz r0, 0x6bc(r30)
/* 807EB6AC  2C 00 00 02 */	cmpwi r0, 2
/* 807EB6B0  41 82 01 8C */	beq lbl_807EB83C
/* 807EB6B4  40 80 00 14 */	bge lbl_807EB6C8
/* 807EB6B8  2C 00 00 00 */	cmpwi r0, 0
/* 807EB6BC  41 82 00 24 */	beq lbl_807EB6E0
/* 807EB6C0  40 80 01 2C */	bge lbl_807EB7EC
/* 807EB6C4  48 00 02 88 */	b lbl_807EB94C
lbl_807EB6C8:
/* 807EB6C8  2C 00 00 06 */	cmpwi r0, 6
/* 807EB6CC  41 82 02 14 */	beq lbl_807EB8E0
/* 807EB6D0  40 80 02 7C */	bge lbl_807EB94C
/* 807EB6D4  2C 00 00 05 */	cmpwi r0, 5
/* 807EB6D8  40 80 01 B8 */	bge lbl_807EB890
/* 807EB6DC  48 00 02 70 */	b lbl_807EB94C
lbl_807EB6E0:
/* 807EB6E0  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807EB6E4  2C 00 00 00 */	cmpwi r0, 0
/* 807EB6E8  40 81 00 6C */	ble lbl_807EB754
/* 807EB6EC  7F C3 F3 78 */	mr r3, r30
/* 807EB6F0  38 80 00 06 */	li r4, 6
/* 807EB6F4  38 A0 00 00 */	li r5, 0
/* 807EB6F8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EB6FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EB700  4B FF C3 DD */	bl setBck__8daE_WW_cFiUcff
/* 807EB704  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070389@ha */
/* 807EB708  38 03 03 89 */	addi r0, r3, 0x0389 /* 0x00070389@l */
/* 807EB70C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EB710  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EB714  38 81 00 0C */	addi r4, r1, 0xc
/* 807EB718  38 A0 FF FF */	li r5, -1
/* 807EB71C  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EB720  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807EB724  7D 89 03 A6 */	mtctr r12
/* 807EB728  4E 80 04 21 */	bctrl 
/* 807EB72C  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EB730  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB734  41 82 00 0C */	beq lbl_807EB740
/* 807EB738  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807EB73C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807EB740:
/* 807EB740  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807EB744  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EB748  38 00 00 01 */	li r0, 1
/* 807EB74C  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EB750  48 00 00 70 */	b lbl_807EB7C0
lbl_807EB754:
/* 807EB754  7F C3 F3 78 */	mr r3, r30
/* 807EB758  38 80 00 07 */	li r4, 7
/* 807EB75C  38 A0 00 00 */	li r5, 0
/* 807EB760  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807EB764  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807EB768  4B FF C3 75 */	bl setBck__8daE_WW_cFiUcff
/* 807EB76C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038A@ha */
/* 807EB770  38 03 03 8A */	addi r0, r3, 0x038A /* 0x0007038A@l */
/* 807EB774  90 01 00 08 */	stw r0, 8(r1)
/* 807EB778  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807EB77C  38 81 00 08 */	addi r4, r1, 8
/* 807EB780  38 A0 FF FF */	li r5, -1
/* 807EB784  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807EB788  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807EB78C  7D 89 03 A6 */	mtctr r12
/* 807EB790  4E 80 04 21 */	bctrl 
/* 807EB794  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EB798  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB79C  41 82 00 0C */	beq lbl_807EB7A8
/* 807EB7A0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807EB7A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807EB7A8:
/* 807EB7A8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 807EB7AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807EB7B0  38 00 00 05 */	li r0, 5
/* 807EB7B4  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EB7B8  38 00 00 01 */	li r0, 1
/* 807EB7BC  98 1E 07 5C */	stb r0, 0x75c(r30)
lbl_807EB7C0:
/* 807EB7C0  38 00 00 01 */	li r0, 1
/* 807EB7C4  98 1E 07 5B */	stb r0, 0x75b(r30)
/* 807EB7C8  38 00 00 00 */	li r0, 0
/* 807EB7CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807EB7D0  A8 7E 0E A2 */	lha r3, 0xea2(r30)
/* 807EB7D4  3C 63 00 01 */	addis r3, r3, 1
/* 807EB7D8  38 03 80 00 */	addi r0, r3, -32768
/* 807EB7DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807EB7E0  A8 1E 0E A2 */	lha r0, 0xea2(r30)
/* 807EB7E4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807EB7E8  48 00 01 64 */	b lbl_807EB94C
lbl_807EB7EC:
/* 807EB7EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB7F0  38 63 00 0C */	addi r3, r3, 0xc
/* 807EB7F4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807EB7F8  4B B3 CC 34 */	b checkPass__12J3DFrameCtrlFf
/* 807EB7FC  2C 03 00 00 */	cmpwi r3, 0
/* 807EB800  41 82 00 10 */	beq lbl_807EB810
/* 807EB804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EB808  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB80C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_807EB810:
/* 807EB810  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EB814  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB818  41 82 01 34 */	beq lbl_807EB94C
/* 807EB81C  38 00 00 00 */	li r0, 0
/* 807EB820  98 1E 07 5B */	stb r0, 0x75b(r30)
/* 807EB824  38 00 00 02 */	li r0, 2
/* 807EB828  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EB82C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807EB830  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB834  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807EB838  48 00 01 14 */	b lbl_807EB94C
lbl_807EB83C:
/* 807EB83C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807EB840  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EB844  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807EB848  4B A8 4E F8 */	b cLib_chaseF__FPfff
/* 807EB84C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB850  38 80 00 01 */	li r4, 1
/* 807EB854  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EB858  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EB85C  40 82 00 18 */	bne lbl_807EB874
/* 807EB860  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EB864  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EB868  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EB86C  41 82 00 08 */	beq lbl_807EB874
/* 807EB870  38 80 00 00 */	li r4, 0
lbl_807EB874:
/* 807EB874  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EB878  41 82 00 D4 */	beq lbl_807EB94C
/* 807EB87C  7F C3 F3 78 */	mr r3, r30
/* 807EB880  38 80 00 03 */	li r4, 3
/* 807EB884  38 A0 00 00 */	li r5, 0
/* 807EB888  4B FF C3 55 */	bl setActionMode__8daE_WW_cFii
/* 807EB88C  48 00 00 C0 */	b lbl_807EB94C
lbl_807EB890:
/* 807EB890  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB894  38 63 00 0C */	addi r3, r3, 0xc
/* 807EB898  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 807EB89C  4B B3 CB 90 */	b checkPass__12J3DFrameCtrlFf
/* 807EB8A0  2C 03 00 00 */	cmpwi r3, 0
/* 807EB8A4  41 82 00 10 */	beq lbl_807EB8B4
/* 807EB8A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EB8AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB8B0  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_807EB8B4:
/* 807EB8B4  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EB8B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB8BC  41 82 00 90 */	beq lbl_807EB94C
/* 807EB8C0  38 00 00 00 */	li r0, 0
/* 807EB8C4  98 1E 07 5B */	stb r0, 0x75b(r30)
/* 807EB8C8  38 00 00 06 */	li r0, 6
/* 807EB8CC  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807EB8D0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807EB8D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB8D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807EB8DC  48 00 00 70 */	b lbl_807EB94C
lbl_807EB8E0:
/* 807EB8E0  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 807EB8E4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807EB8E8  41 82 00 14 */	beq lbl_807EB8FC
/* 807EB8EC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807EB8F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EB8F4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807EB8F8  4B A8 4E 48 */	b cLib_chaseF__FPfff
lbl_807EB8FC:
/* 807EB8FC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EB900  38 80 00 01 */	li r4, 1
/* 807EB904  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807EB908  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807EB90C  40 82 00 18 */	bne lbl_807EB924
/* 807EB910  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EB914  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807EB918  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807EB91C  41 82 00 08 */	beq lbl_807EB924
/* 807EB920  38 80 00 00 */	li r4, 0
lbl_807EB924:
/* 807EB924  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807EB928  41 82 00 24 */	beq lbl_807EB94C
/* 807EB92C  7F C3 F3 78 */	mr r3, r30
/* 807EB930  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807EB934  38 A0 00 0A */	li r5, 0xa
/* 807EB938  38 C0 00 00 */	li r6, 0
/* 807EB93C  38 E0 00 1B */	li r7, 0x1b
/* 807EB940  4B 83 11 98 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807EB944  7F C3 F3 78 */	mr r3, r30
/* 807EB948  4B 82 E3 34 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807EB94C:
/* 807EB94C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807EB950  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807EB954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807EB958  7C 08 03 A6 */	mtlr r0
/* 807EB95C  38 21 00 20 */	addi r1, r1, 0x20
/* 807EB960  4E 80 00 20 */	blr 
