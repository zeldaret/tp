lbl_8007D0DC:
/* 8007D0DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007D0E0  7C 08 02 A6 */	mflr r0
/* 8007D0E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007D0E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8007D0EC  48 2E 50 E5 */	bl _savegpr_26
/* 8007D0F0  7C 7A 1B 78 */	mr r26, r3
/* 8007D0F4  7C 9B 23 78 */	mr r27, r4
/* 8007D0F8  7C BC 2B 78 */	mr r28, r5
/* 8007D0FC  3B A0 00 00 */	li r29, 0
lbl_8007D100:
/* 8007D100  80 1A 00 94 */	lwz r0, 0x94(r26)
/* 8007D104  57 7F 04 3E */	clrlwi r31, r27, 0x10
/* 8007D108  1F DF 00 18 */	mulli r30, r31, 0x18
/* 8007D10C  7C 60 F2 14 */	add r3, r0, r30
/* 8007D110  38 9C 00 3C */	addi r4, r28, 0x3c
/* 8007D114  38 A1 00 08 */	addi r5, r1, 8
/* 8007D118  48 1F 24 65 */	bl getCrossY__8cM3dGPlaCFRC4cXyzPf
/* 8007D11C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D120  41 82 00 B0 */	beq lbl_8007D1D0
/* 8007D124  C0 21 00 08 */	lfs f1, 8(r1)
/* 8007D128  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8007D12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007D130  40 81 00 A0 */	ble lbl_8007D1D0
/* 8007D134  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8007D138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007D13C  40 80 00 94 */	bge lbl_8007D1D0
/* 8007D140  80 7A 00 A0 */	lwz r3, 0xa0(r26)
/* 8007D144  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007D148  1C 1F 00 0A */	mulli r0, r31, 0xa
/* 8007D14C  7C C3 02 14 */	add r6, r3, r0
/* 8007D150  80 BA 00 9C */	lwz r5, 0x9c(r26)
/* 8007D154  A0 06 00 00 */	lhz r0, 0(r6)
/* 8007D158  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007D15C  7C 65 02 14 */	add r3, r5, r0
/* 8007D160  A0 06 00 02 */	lhz r0, 2(r6)
/* 8007D164  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007D168  7C 85 02 14 */	add r4, r5, r0
/* 8007D16C  A0 06 00 04 */	lhz r0, 4(r6)
/* 8007D170  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007D174  7C A5 02 14 */	add r5, r5, r0
/* 8007D178  80 1A 00 94 */	lwz r0, 0x94(r26)
/* 8007D17C  7C C0 F2 14 */	add r6, r0, r30
/* 8007D180  38 FC 00 3C */	addi r7, r28, 0x3c
/* 8007D184  48 1E D4 89 */	bl cM3d_CrossY_Tri__FRC3VecRC3VecRC3VecRC8cM3dGPlaPC3Vec
/* 8007D188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D18C  41 82 00 44 */	beq lbl_8007D1D0
/* 8007D190  7F 43 D3 78 */	mr r3, r26
/* 8007D194  57 7B 04 3E */	clrlwi r27, r27, 0x10
/* 8007D198  7F 64 DB 78 */	mr r4, r27
/* 8007D19C  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8007D1A0  81 9A 00 04 */	lwz r12, 4(r26)
/* 8007D1A4  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007D1A8  7D 89 03 A6 */	mtctr r12
/* 8007D1AC  4E 80 04 21 */	bctrl 
/* 8007D1B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D1B4  40 82 00 1C */	bne lbl_8007D1D0
/* 8007D1B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8007D1BC  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 8007D1C0  7F 83 E3 78 */	mr r3, r28
/* 8007D1C4  7F 64 DB 78 */	mr r4, r27
/* 8007D1C8  48 1E AF DD */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 8007D1CC  3B A0 00 01 */	li r29, 1
lbl_8007D1D0:
/* 8007D1D0  80 7A 00 98 */	lwz r3, 0x98(r26)
/* 8007D1D4  57 E0 18 38 */	slwi r0, r31, 3
/* 8007D1D8  7C 03 02 2E */	lhzx r0, r3, r0
/* 8007D1DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007D1E0  41 82 00 0C */	beq lbl_8007D1EC
/* 8007D1E4  7C 1B 03 78 */	mr r27, r0
/* 8007D1E8  4B FF FF 18 */	b lbl_8007D100
lbl_8007D1EC:
/* 8007D1EC  7F A3 EB 78 */	mr r3, r29
/* 8007D1F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8007D1F4  48 2E 50 29 */	bl _restgpr_26
/* 8007D1F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007D1FC  7C 08 03 A6 */	mtlr r0
/* 8007D200  38 21 00 30 */	addi r1, r1, 0x30
/* 8007D204  4E 80 00 20 */	blr 
