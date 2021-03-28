lbl_8003A840:
/* 8003A840  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003A844  7C 08 02 A6 */	mflr r0
/* 8003A848  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003A84C  39 61 00 50 */	addi r11, r1, 0x50
/* 8003A850  48 32 79 69 */	bl _savegpr_20
/* 8003A854  7C 77 1B 78 */	mr r23, r3
/* 8003A858  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003A85C  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003A860  38 63 00 23 */	addi r3, r3, 0x23
/* 8003A864  38 80 00 5D */	li r4, 0x5d
/* 8003A868  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8003A86C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8003A870  3C A5 00 02 */	addis r5, r5, 2
/* 8003A874  38 C0 00 80 */	li r6, 0x80
/* 8003A878  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8003A87C  48 00 1A 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8003A880  7C 65 1B 78 */	mr r5, r3
/* 8003A884  80 77 00 6C */	lwz r3, 0x6c(r23)
/* 8003A888  A3 C3 00 00 */	lhz r30, 0(r3)
/* 8003A88C  38 80 00 01 */	li r4, 1
/* 8003A890  57 C0 28 34 */	slwi r0, r30, 5
/* 8003A894  7C A0 28 50 */	subf r5, r0, r5
/* 8003A898  48 2D 79 85 */	bl addResTIMG__10J3DTextureFUsPC7ResTIMG
/* 8003A89C  38 60 00 94 */	li r3, 0x94
/* 8003A8A0  48 29 43 AD */	bl __nw__FUl
/* 8003A8A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 8003A8A8  41 82 00 10 */	beq lbl_8003A8B8
/* 8003A8AC  3C 80 80 38 */	lis r4, l_texMtxInfo@ha
/* 8003A8B0  38 84 98 40 */	addi r4, r4, l_texMtxInfo@l
/* 8003A8B4  48 2E AE 65 */	bl __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
lbl_8003A8B8:
/* 8003A8B8  3B 20 00 00 */	li r25, 0
/* 8003A8BC  3B 6D 80 A8 */	la r27, l_texCoordInfo(r13) /* 80450628-_SDA_BASE_ */
/* 8003A8C0  3B 42 83 F0 */	la r26, l_alphaCompInfo(r2) /* 80451DF0-_SDA2_BASE_ */
/* 8003A8C4  3C 60 80 38 */	lis r3, l_tevStageInfo@ha
/* 8003A8C8  3B E3 98 A4 */	addi r31, r3, l_tevStageInfo@l
/* 8003A8CC  48 00 01 D8 */	b lbl_8003AAA4
lbl_8003A8D0:
/* 8003A8D0  80 77 00 60 */	lwz r3, 0x60(r23)
/* 8003A8D4  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 8003A8D8  7F 83 00 2E */	lwzx r28, r3, r0
/* 8003A8DC  82 DC 00 28 */	lwz r22, 0x28(r28)
/* 8003A8E0  7E C3 B3 78 */	mr r3, r22
/* 8003A8E4  81 96 00 00 */	lwz r12, 0(r22)
/* 8003A8E8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8003A8EC  7D 89 03 A6 */	mtctr r12
/* 8003A8F0  4E 80 04 21 */	bctrl 
/* 8003A8F4  7C 78 1B 78 */	mr r24, r3
/* 8003A8F8  7E C3 B3 78 */	mr r3, r22
/* 8003A8FC  7F 04 C3 78 */	mr r4, r24
/* 8003A900  81 96 00 00 */	lwz r12, 0(r22)
/* 8003A904  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8003A908  7D 89 03 A6 */	mtctr r12
/* 8003A90C  4E 80 04 21 */	bctrl 
/* 8003A910  1C 98 00 03 */	mulli r4, r24, 3
/* 8003A914  38 04 00 1E */	addi r0, r4, 0x1e
/* 8003A918  98 1B 00 02 */	stb r0, 2(r27)
/* 8003A91C  80 0D 80 A8 */	lwz r0, l_texCoordInfo(r13)
/* 8003A920  90 03 00 00 */	stw r0, 0(r3)
/* 8003A924  88 03 00 02 */	lbz r0, 2(r3)
/* 8003A928  B0 03 00 04 */	sth r0, 4(r3)
/* 8003A92C  7E C3 B3 78 */	mr r3, r22
/* 8003A930  38 98 00 01 */	addi r4, r24, 1
/* 8003A934  81 96 00 00 */	lwz r12, 0(r22)
/* 8003A938  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8003A93C  7D 89 03 A6 */	mtctr r12
/* 8003A940  4E 80 04 21 */	bctrl 
/* 8003A944  7E C3 B3 78 */	mr r3, r22
/* 8003A948  7F 04 C3 78 */	mr r4, r24
/* 8003A94C  7F A5 EB 78 */	mr r5, r29
/* 8003A950  81 96 00 00 */	lwz r12, 0(r22)
/* 8003A954  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8003A958  7D 89 03 A6 */	mtctr r12
/* 8003A95C  4E 80 04 21 */	bctrl 
/* 8003A960  82 BC 00 2C */	lwz r21, 0x2c(r28)
/* 8003A964  7E A3 AB 78 */	mr r3, r21
/* 8003A968  81 95 00 00 */	lwz r12, 0(r21)
/* 8003A96C  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 8003A970  7D 89 03 A6 */	mtctr r12
/* 8003A974  4E 80 04 21 */	bctrl 
/* 8003A978  7C 76 1B 78 */	mr r22, r3
/* 8003A97C  9B 0D 80 AC */	stb r24, l_tevOrderInfo(r13)
/* 8003A980  7E A3 AB 78 */	mr r3, r21
/* 8003A984  38 80 00 03 */	li r4, 3
/* 8003A988  7F C5 F3 78 */	mr r5, r30
/* 8003A98C  81 95 00 00 */	lwz r12, 0(r21)
/* 8003A990  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8003A994  7D 89 03 A6 */	mtctr r12
/* 8003A998  4E 80 04 21 */	bctrl 
/* 8003A99C  80 0D 80 AC */	lwz r0, l_tevOrderInfo(r13)
/* 8003A9A0  90 01 00 08 */	stw r0, 8(r1)
/* 8003A9A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A9A8  7E A3 AB 78 */	mr r3, r21
/* 8003A9AC  56 D4 06 3E */	clrlwi r20, r22, 0x18
/* 8003A9B0  7E 84 A3 78 */	mr r4, r20
/* 8003A9B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8003A9B8  81 95 00 00 */	lwz r12, 0(r21)
/* 8003A9BC  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8003A9C0  7D 89 03 A6 */	mtctr r12
/* 8003A9C4  4E 80 04 21 */	bctrl 
/* 8003A9C8  38 61 00 10 */	addi r3, r1, 0x10
/* 8003A9CC  7F E4 FB 78 */	mr r4, r31
/* 8003A9D0  48 00 00 FD */	bl __ct__11J3DTevStageFRC15J3DTevStageInfo
/* 8003A9D4  80 83 00 00 */	lwz r4, 0(r3)
/* 8003A9D8  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A9DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8003A9E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8003A9E4  7E A3 AB 78 */	mr r3, r21
/* 8003A9E8  7E 84 A3 78 */	mr r4, r20
/* 8003A9EC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8003A9F0  81 95 00 00 */	lwz r12, 0(r21)
/* 8003A9F4  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8003A9F8  7D 89 03 A6 */	mtctr r12
/* 8003A9FC  4E 80 04 21 */	bctrl 
/* 8003AA00  7E A3 AB 78 */	mr r3, r21
/* 8003AA04  38 16 00 01 */	addi r0, r22, 1
/* 8003AA08  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8003AA0C  81 95 00 00 */	lwz r12, 0(r21)
/* 8003AA10  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8003AA14  7D 89 03 A6 */	mtctr r12
/* 8003AA18  4E 80 04 21 */	bctrl 
/* 8003AA1C  82 BC 00 08 */	lwz r21, 8(r28)
/* 8003AA20  3A 98 00 01 */	addi r20, r24, 1
/* 8003AA24  7E A3 AB 78 */	mr r3, r21
/* 8003AA28  7E 84 A3 78 */	mr r4, r20
/* 8003AA2C  38 A0 00 00 */	li r5, 0
/* 8003AA30  48 2D A1 89 */	bl addTexMtxIndexInDL__8J3DShapeF7_GXAttrUl
/* 8003AA34  7E A3 AB 78 */	mr r3, r21
/* 8003AA38  7E 84 A3 78 */	mr r4, r20
/* 8003AA3C  48 2D A2 81 */	bl addTexMtxIndexInVcd__8J3DShapeF7_GXAttr
/* 8003AA40  82 BC 00 34 */	lwz r21, 0x34(r28)
/* 8003AA44  7E A3 AB 78 */	mr r3, r21
/* 8003AA48  81 95 00 00 */	lwz r12, 0(r21)
/* 8003AA4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8003AA50  7D 89 03 A6 */	mtctr r12
/* 8003AA54  4E 80 04 21 */	bctrl 
/* 8003AA58  88 1A 00 01 */	lbz r0, 1(r26)
/* 8003AA5C  98 03 00 02 */	stb r0, 2(r3)
/* 8003AA60  88 1A 00 04 */	lbz r0, 4(r26)
/* 8003AA64  98 03 00 03 */	stb r0, 3(r3)
/* 8003AA68  88 BA 00 03 */	lbz r5, 3(r26)
/* 8003AA6C  88 02 83 F0 */	lbz r0, l_alphaCompInfo(r2)
/* 8003AA70  54 04 2C F4 */	rlwinm r4, r0, 5, 0x13, 0x1a
/* 8003AA74  88 1A 00 02 */	lbz r0, 2(r26)
/* 8003AA78  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 8003AA7C  7C 00 2A 14 */	add r0, r0, r5
/* 8003AA80  7C 04 02 14 */	add r0, r4, r0
/* 8003AA84  B0 03 00 00 */	sth r0, 0(r3)
/* 8003AA88  7E A3 AB 78 */	mr r3, r21
/* 8003AA8C  38 80 00 00 */	li r4, 0
/* 8003AA90  81 95 00 00 */	lwz r12, 0(r21)
/* 8003AA94  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8003AA98  7D 89 03 A6 */	mtctr r12
/* 8003AA9C  4E 80 04 21 */	bctrl 
/* 8003AAA0  3B 39 00 01 */	addi r25, r25, 1
lbl_8003AAA4:
/* 8003AAA4  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8003AAA8  A0 17 00 5C */	lhz r0, 0x5c(r23)
/* 8003AAAC  7C 03 00 40 */	cmplw r3, r0
/* 8003AAB0  41 80 FE 20 */	blt lbl_8003A8D0
/* 8003AAB4  39 61 00 50 */	addi r11, r1, 0x50
/* 8003AAB8  48 32 77 4D */	bl _restgpr_20
/* 8003AABC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003AAC0  7C 08 03 A6 */	mtlr r0
/* 8003AAC4  38 21 00 50 */	addi r1, r1, 0x50
/* 8003AAC8  4E 80 00 20 */	blr 
