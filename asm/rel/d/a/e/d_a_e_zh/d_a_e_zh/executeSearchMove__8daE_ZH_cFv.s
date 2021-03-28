lbl_8082B820:
/* 8082B820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8082B824  7C 08 02 A6 */	mflr r0
/* 8082B828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8082B82C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8082B830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8082B834  7C 7F 1B 78 */	mr r31, r3
/* 8082B838  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082B83C  3B C4 F2 08 */	addi r30, r4, lit_3778@l
/* 8082B840  80 83 06 64 */	lwz r4, 0x664(r3)
/* 8082B844  28 04 00 00 */	cmplwi r4, 0
/* 8082B848  40 82 00 14 */	bne lbl_8082B85C
/* 8082B84C  38 80 00 08 */	li r4, 8
/* 8082B850  38 A0 00 00 */	li r5, 0
/* 8082B854  4B FF DC 01 */	bl setActionMode__8daE_ZH_cFii
/* 8082B858  48 00 01 A8 */	b lbl_8082BA00
lbl_8082B85C:
/* 8082B85C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8082B860  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8082B864  EC 21 00 2A */	fadds f1, f1, f0
/* 8082B868  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8082B86C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8082B870  C0 5F 08 8C */	lfs f2, 0x88c(r31)
/* 8082B874  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8082B878  41 82 00 18 */	beq lbl_8082B890
/* 8082B87C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8082B880  EC 00 10 2A */	fadds f0, f0, f2
/* 8082B884  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8082B888  40 81 00 08 */	ble lbl_8082B890
/* 8082B88C  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8082B890:
/* 8082B890  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 8082B894  C0 3F 08 B8 */	lfs f1, 0x8b8(r31)
/* 8082B898  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082B89C  41 82 00 1C */	beq lbl_8082B8B8
/* 8082B8A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082B8A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8082B8A8  40 81 00 10 */	ble lbl_8082B8B8
/* 8082B8AC  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8082B8B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082B8B4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8082B8B8:
/* 8082B8B8  80 1F 07 84 */	lwz r0, 0x784(r31)
/* 8082B8BC  2C 00 00 01 */	cmpwi r0, 1
/* 8082B8C0  41 82 00 A8 */	beq lbl_8082B968
/* 8082B8C4  40 80 00 D4 */	bge lbl_8082B998
/* 8082B8C8  2C 00 00 00 */	cmpwi r0, 0
/* 8082B8CC  40 80 00 08 */	bge lbl_8082B8D4
/* 8082B8D0  48 00 00 C8 */	b lbl_8082B998
lbl_8082B8D4:
/* 8082B8D4  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 8082B8D8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8082B8DC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8082B8E0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8082B8E4  4B A4 41 58 */	b cLib_addCalc2__FPffff
/* 8082B8E8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8082B8EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082B8F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082B8F4  FC 00 02 10 */	fabs f0, f0
/* 8082B8F8  FC 20 00 18 */	frsp f1, f0
/* 8082B8FC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8082B900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082B904  41 80 00 10 */	blt lbl_8082B914
/* 8082B908  80 1F 08 20 */	lwz r0, 0x820(r31)
/* 8082B90C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8082B910  41 82 00 88 */	beq lbl_8082B998
lbl_8082B914:
/* 8082B914  80 1F 07 90 */	lwz r0, 0x790(r31)
/* 8082B918  2C 00 00 0D */	cmpwi r0, 0xd
/* 8082B91C  41 82 00 24 */	beq lbl_8082B940
/* 8082B920  7F E3 FB 78 */	mr r3, r31
/* 8082B924  38 80 00 0D */	li r4, 0xd
/* 8082B928  38 A0 00 02 */	li r5, 2
/* 8082B92C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8082B930  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8082B934  4B FF DA 75 */	bl setBck__8daE_ZH_cFiUcff
/* 8082B938  38 00 00 14 */	li r0, 0x14
/* 8082B93C  90 1F 07 94 */	stw r0, 0x794(r31)
lbl_8082B940:
/* 8082B940  38 00 00 00 */	li r0, 0
/* 8082B944  B0 1F 07 B0 */	sth r0, 0x7b0(r31)
/* 8082B948  80 1F 0B 6C */	lwz r0, 0xb6c(r31)
/* 8082B94C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8082B950  90 1F 0B 6C */	stw r0, 0xb6c(r31)
/* 8082B954  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8082B958  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 8082B95C  38 00 00 01 */	li r0, 1
/* 8082B960  90 1F 07 84 */	stw r0, 0x784(r31)
/* 8082B964  48 00 00 34 */	b lbl_8082B998
lbl_8082B968:
/* 8082B968  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8082B96C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8082B970  EC 00 08 28 */	fsubs f0, f0, f1
/* 8082B974  FC 00 02 10 */	fabs f0, f0
/* 8082B978  FC 40 00 18 */	frsp f2, f0
/* 8082B97C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8082B980  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082B984  40 81 00 14 */	ble lbl_8082B998
/* 8082B988  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 8082B98C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8082B990  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8082B994  4B A4 40 A8 */	b cLib_addCalc2__FPffff
lbl_8082B998:
/* 8082B998  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082B99C  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082B9A0  90 01 00 08 */	stw r0, 8(r1)
/* 8082B9A4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8082B9A8  38 81 00 08 */	addi r4, r1, 8
/* 8082B9AC  38 A0 00 00 */	li r5, 0
/* 8082B9B0  38 C0 FF FF */	li r6, -1
/* 8082B9B4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8082B9B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082B9BC  7D 89 03 A6 */	mtctr r12
/* 8082B9C0  4E 80 04 21 */	bctrl 
/* 8082B9C4  80 1F 07 84 */	lwz r0, 0x784(r31)
/* 8082B9C8  2C 00 00 00 */	cmpwi r0, 0
/* 8082B9CC  41 82 00 34 */	beq lbl_8082BA00
/* 8082B9D0  80 1F 07 94 */	lwz r0, 0x794(r31)
/* 8082B9D4  2C 00 00 00 */	cmpwi r0, 0
/* 8082B9D8  40 82 00 28 */	bne lbl_8082BA00
/* 8082B9DC  7F E3 FB 78 */	mr r3, r31
/* 8082B9E0  38 80 00 00 */	li r4, 0
/* 8082B9E4  4B FF E6 39 */	bl mSearchMove__8daE_ZH_cFUc
/* 8082B9E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082B9EC  41 82 00 14 */	beq lbl_8082BA00
/* 8082B9F0  7F E3 FB 78 */	mr r3, r31
/* 8082B9F4  38 80 00 06 */	li r4, 6
/* 8082B9F8  38 A0 00 00 */	li r5, 0
/* 8082B9FC  4B FF DA 59 */	bl setActionMode__8daE_ZH_cFii
lbl_8082BA00:
/* 8082BA00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8082BA04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8082BA08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8082BA0C  7C 08 03 A6 */	mtlr r0
/* 8082BA10  38 21 00 20 */	addi r1, r1, 0x20
/* 8082BA14  4E 80 00 20 */	blr 
