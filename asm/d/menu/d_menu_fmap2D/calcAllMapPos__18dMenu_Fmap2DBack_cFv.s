lbl_801D0AC8:
/* 801D0AC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D0ACC  7C 08 02 A6 */	mflr r0
/* 801D0AD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D0AD4  39 61 00 40 */	addi r11, r1, 0x40
/* 801D0AD8  48 19 16 F5 */	bl _savegpr_25
/* 801D0ADC  7C 79 1B 78 */	mr r25, r3
/* 801D0AE0  3B 60 00 00 */	li r27, 0
/* 801D0AE4  48 00 01 15 */	bl calcAllMapScaleRate__18dMenu_Fmap2DBack_cFv
/* 801D0AE8  3B 40 00 00 */	li r26, 0
/* 801D0AEC  3B E0 00 00 */	li r31, 0
/* 801D0AF0  3B C0 00 00 */	li r30, 0
lbl_801D0AF4:
/* 801D0AF4  7F 99 F2 14 */	add r28, r25, r30
/* 801D0AF8  80 1C 0C B4 */	lwz r0, 0xcb4(r28)
/* 801D0AFC  28 00 00 00 */	cmplwi r0, 0
/* 801D0B00  41 82 00 CC */	beq lbl_801D0BCC
/* 801D0B04  7F B9 FA 14 */	add r29, r25, r31
/* 801D0B08  7F 23 CB 78 */	mr r3, r25
/* 801D0B0C  C0 3D 0C E8 */	lfs f1, 0xce8(r29)
/* 801D0B10  C0 5D 0C EC */	lfs f2, 0xcec(r29)
/* 801D0B14  38 81 00 14 */	addi r4, r1, 0x14
/* 801D0B18  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D0B1C  48 00 01 51 */	bl calcAllMapPos2DFirst__18dMenu_Fmap2DBack_cFffPfPf
/* 801D0B20  7F 23 CB 78 */	mr r3, r25
/* 801D0B24  C0 3D 0C F0 */	lfs f1, 0xcf0(r29)
/* 801D0B28  C0 5D 0C F4 */	lfs f2, 0xcf4(r29)
/* 801D0B2C  38 81 00 0C */	addi r4, r1, 0xc
/* 801D0B30  38 A1 00 08 */	addi r5, r1, 8
/* 801D0B34  48 00 01 39 */	bl calcAllMapPos2DFirst__18dMenu_Fmap2DBack_cFffPfPf
/* 801D0B38  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D0B3C  D0 1C 0E 8C */	stfs f0, 0xe8c(r28)
/* 801D0B40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D0B44  D0 1C 0E AC */	stfs f0, 0xeac(r28)
/* 801D0B48  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D0B4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D0B50  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D0B54  D0 1C 0E CC */	stfs f0, 0xecc(r28)
/* 801D0B58  C0 21 00 08 */	lfs f1, 8(r1)
/* 801D0B5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D0B60  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D0B64  D0 1C 0E EC */	stfs f0, 0xeec(r28)
/* 801D0B68  7F 23 CB 78 */	mr r3, r25
/* 801D0B6C  C0 3C 0D 8C */	lfs f1, 0xd8c(r28)
/* 801D0B70  C0 5C 0D AC */	lfs f2, 0xdac(r28)
/* 801D0B74  38 9C 0E 0C */	addi r4, r28, 0xe0c
/* 801D0B78  38 BC 0E 2C */	addi r5, r28, 0xe2c
/* 801D0B7C  48 00 00 F1 */	bl calcAllMapPos2DFirst__18dMenu_Fmap2DBack_cFffPfPf
/* 801D0B80  7F 23 CB 78 */	mr r3, r25
/* 801D0B84  C0 3C 0D CC */	lfs f1, 0xdcc(r28)
/* 801D0B88  C0 5C 0D EC */	lfs f2, 0xdec(r28)
/* 801D0B8C  38 9C 0E 4C */	addi r4, r28, 0xe4c
/* 801D0B90  38 BC 0E 6C */	addi r5, r28, 0xe6c
/* 801D0B94  48 00 00 D9 */	bl calcAllMapPos2DFirst__18dMenu_Fmap2DBack_cFffPfPf
/* 801D0B98  88 79 12 2C */	lbz r3, 0x122c(r25)
/* 801D0B9C  38 00 00 01 */	li r0, 1
/* 801D0BA0  7C 00 D0 30 */	slw r0, r0, r26
/* 801D0BA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801D0BA8  7C 60 03 78 */	or r0, r3, r0
/* 801D0BAC  98 19 12 2C */	stb r0, 0x122c(r25)
/* 801D0BB0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801D0BB4  40 82 00 18 */	bne lbl_801D0BCC
/* 801D0BB8  3B 60 00 01 */	li r27, 1
/* 801D0BBC  7F 23 CB 78 */	mr r3, r25
/* 801D0BC0  48 00 1E 75 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D0BC4  7F 23 CB 78 */	mr r3, r25
/* 801D0BC8  48 00 1D F1 */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
lbl_801D0BCC:
/* 801D0BCC  3B 5A 00 01 */	addi r26, r26, 1
/* 801D0BD0  2C 1A 00 08 */	cmpwi r26, 8
/* 801D0BD4  3B FF 00 14 */	addi r31, r31, 0x14
/* 801D0BD8  3B DE 00 04 */	addi r30, r30, 4
/* 801D0BDC  41 80 FF 18 */	blt lbl_801D0AF4
/* 801D0BE0  39 61 00 40 */	addi r11, r1, 0x40
/* 801D0BE4  48 19 16 35 */	bl _restgpr_25
/* 801D0BE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D0BEC  7C 08 03 A6 */	mtlr r0
/* 801D0BF0  38 21 00 40 */	addi r1, r1, 0x40
/* 801D0BF4  4E 80 00 20 */	blr 
