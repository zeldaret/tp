lbl_80BEC7CC:
/* 80BEC7CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BEC7D0  7C 08 02 A6 */	mflr r0
/* 80BEC7D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BEC7D8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BEC7DC  4B 77 59 E8 */	b _savegpr_23
/* 80BEC7E0  7C 7C 1B 78 */	mr r28, r3
/* 80BEC7E4  7C 9D 23 78 */	mr r29, r4
/* 80BEC7E8  7C BE 2B 78 */	mr r30, r5
/* 80BEC7EC  7D 1F 43 78 */	mr r31, r8
/* 80BEC7F0  3C 60 80 BF */	lis r3, M_attr__12daObjFlag2_c@ha
/* 80BEC7F4  3B 63 E0 DC */	addi r27, r3, M_attr__12daObjFlag2_c@l
/* 80BEC7F8  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80BEC7FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEC800  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEC804  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BEC808  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80BEC80C  41 82 00 0C */	beq lbl_80BEC818
/* 80BEC810  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80BEC814  40 82 00 24 */	bne lbl_80BEC838
lbl_80BEC818:
/* 80BEC818  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80BEC81C  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80BEC820  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BEC824  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEC828  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BEC82C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEC830  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BEC834  48 00 00 DC */	b lbl_80BEC910
lbl_80BEC838:
/* 80BEC838  1C 9F 00 18 */	mulli r4, r31, 0x18
/* 80BEC83C  3C 60 80 BF */	lis r3, rel_pos_idx_tbl_3652@ha
/* 80BEC840  38 03 E5 18 */	addi r0, r3, rel_pos_idx_tbl_3652@l
/* 80BEC844  7F 00 22 14 */	add r24, r0, r4
/* 80BEC848  7C E3 3B 78 */	mr r3, r7
/* 80BEC84C  1F 3F 00 0C */	mulli r25, r31, 0xc
/* 80BEC850  7F 46 CA 14 */	add r26, r6, r25
/* 80BEC854  7F 44 D3 78 */	mr r4, r26
/* 80BEC858  4B 75 A9 3C */	b PSVECDotProduct
/* 80BEC85C  38 61 00 08 */	addi r3, r1, 8
/* 80BEC860  7F 44 D3 78 */	mr r4, r26
/* 80BEC864  4B 67 A3 20 */	b __ml__4cXyzCFf
/* 80BEC868  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BEC86C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEC870  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80BEC874  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BEC878  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BEC87C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BEC880  C0 1D 09 7C */	lfs f0, 0x97c(r29)
/* 80BEC884  EC 01 00 2A */	fadds f0, f1, f0
/* 80BEC888  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEC88C  3A E0 00 00 */	li r23, 0
/* 80BEC890  7F 5E CA 14 */	add r26, r30, r25
lbl_80BEC894:
/* 80BEC894  80 18 00 00 */	lwz r0, 0(r24)
/* 80BEC898  2C 00 FF FF */	cmpwi r0, -1
/* 80BEC89C  41 82 00 5C */	beq lbl_80BEC8F8
/* 80BEC8A0  2C 00 00 00 */	cmpwi r0, 0
/* 80BEC8A4  41 82 00 1C */	beq lbl_80BEC8C0
/* 80BEC8A8  2C 1F 00 00 */	cmpwi r31, 0
/* 80BEC8AC  41 82 00 14 */	beq lbl_80BEC8C0
/* 80BEC8B0  7C 7F 00 50 */	subf r3, r31, r0
/* 80BEC8B4  4B 77 88 1C */	b abs
/* 80BEC8B8  2C 03 00 01 */	cmpwi r3, 1
/* 80BEC8BC  40 81 00 0C */	ble lbl_80BEC8C8
lbl_80BEC8C0:
/* 80BEC8C0  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 80BEC8C4  48 00 00 08 */	b lbl_80BEC8CC
lbl_80BEC8C8:
/* 80BEC8C8  C0 3B 00 20 */	lfs f1, 0x20(r27)
lbl_80BEC8CC:
/* 80BEC8CC  7F A3 EB 78 */	mr r3, r29
/* 80BEC8D0  7F 44 D3 78 */	mr r4, r26
/* 80BEC8D4  80 18 00 00 */	lwz r0, 0(r24)
/* 80BEC8D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BEC8DC  7C BE 02 14 */	add r5, r30, r0
/* 80BEC8E0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80BEC8E4  48 00 00 45 */	bl calcFlagFactorSub__11FlagCloth_cFP4cXyzP4cXyzP4cXyzf
/* 80BEC8E8  3A F7 00 01 */	addi r23, r23, 1
/* 80BEC8EC  2C 17 00 06 */	cmpwi r23, 6
/* 80BEC8F0  3B 18 00 04 */	addi r24, r24, 4
/* 80BEC8F4  41 80 FF A0 */	blt lbl_80BEC894
lbl_80BEC8F8:
/* 80BEC8F8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BEC8FC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BEC900  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BEC904  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BEC908  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BEC90C  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_80BEC910:
/* 80BEC910  39 61 00 50 */	addi r11, r1, 0x50
/* 80BEC914  4B 77 58 FC */	b _restgpr_23
/* 80BEC918  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BEC91C  7C 08 03 A6 */	mtlr r0
/* 80BEC920  38 21 00 50 */	addi r1, r1, 0x50
/* 80BEC924  4E 80 00 20 */	blr 
