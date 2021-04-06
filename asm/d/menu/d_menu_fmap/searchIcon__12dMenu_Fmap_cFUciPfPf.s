lbl_801CD000:
/* 801CD000  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801CD004  7C 08 02 A6 */	mflr r0
/* 801CD008  90 01 00 84 */	stw r0, 0x84(r1)
/* 801CD00C  39 61 00 80 */	addi r11, r1, 0x80
/* 801CD010  48 19 51 B5 */	bl _savegpr_23
/* 801CD014  7C 7C 1B 78 */	mr r28, r3
/* 801CD018  7C 97 23 78 */	mr r23, r4
/* 801CD01C  7C BD 2B 78 */	mr r29, r5
/* 801CD020  7C DE 33 78 */	mr r30, r6
/* 801CD024  7C FF 3B 78 */	mr r31, r7
/* 801CD028  3C 80 80 3A */	lis r4, __vt__19dMenuFmapIconDisp_c@ha /* 0x803A7D74@ha */
/* 801CD02C  38 04 7D 74 */	addi r0, r4, __vt__19dMenuFmapIconDisp_c@l /* 0x803A7D74@l */
/* 801CD030  90 01 00 48 */	stw r0, 0x48(r1)
/* 801CD034  3B 00 00 00 */	li r24, 0
/* 801CD038  8B 2D 87 E4 */	lbz r25, struct_80450D64+0x0(r13)
/* 801CD03C  7F 39 07 74 */	extsb r25, r25
/* 801CD040  83 43 02 0C */	lwz r26, 0x20c(r3)
/* 801CD044  48 00 03 25 */	bl getNowFmapStageData__12dMenu_Fmap_cFv
/* 801CD048  7C 7B 1B 78 */	mr r27, r3
/* 801CD04C  7F 83 E3 78 */	mr r3, r28
/* 801CD050  48 00 03 01 */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801CD054  7C 64 1B 78 */	mr r4, r3
/* 801CD058  38 61 00 14 */	addi r3, r1, 0x14
/* 801CD05C  7F 65 DB 78 */	mr r5, r27
/* 801CD060  7E E6 BB 78 */	mr r6, r23
/* 801CD064  7F 47 D3 78 */	mr r7, r26
/* 801CD068  7F 28 CB 78 */	mr r8, r25
/* 801CD06C  4B E7 10 A9 */	bl init__22dMenuFmapIconPointer_cFP24dMenu_Fmap_region_data_cP23dMenu_Fmap_stage_data_cUcii
/* 801CD070  48 00 00 70 */	b lbl_801CD0E0
lbl_801CD074:
/* 801CD074  38 61 00 14 */	addi r3, r1, 0x14
/* 801CD078  4B E7 16 71 */	bl isDrawDisp__19dMenuFmapIconDisp_cFv
/* 801CD07C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD080  41 82 00 50 */	beq lbl_801CD0D0
/* 801CD084  38 61 00 14 */	addi r3, r1, 0x14
/* 801CD088  38 81 00 10 */	addi r4, r1, 0x10
/* 801CD08C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801CD090  7F C6 F3 78 */	mr r6, r30
/* 801CD094  7F E7 FB 78 */	mr r7, r31
/* 801CD098  39 01 00 08 */	addi r8, r1, 8
/* 801CD09C  4B E7 14 DD */	bl getPosition__19dMenuFmapIconDisp_cFPiPiPfPfPPCQ27dTres_c6data_s
/* 801CD0A0  7F 83 E3 78 */	mr r3, r28
/* 801CD0A4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801CD0A8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 801CD0AC  4B FF E2 15 */	bl isRoomCheck__12dMenu_Fmap_cFii
/* 801CD0B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD0B4  41 82 00 1C */	beq lbl_801CD0D0
/* 801CD0B8  80 61 00 08 */	lwz r3, 8(r1)
/* 801CD0BC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801CD0C0  7C 00 E8 00 */	cmpw r0, r29
/* 801CD0C4  40 82 00 0C */	bne lbl_801CD0D0
/* 801CD0C8  3B 00 00 01 */	li r24, 1
/* 801CD0CC  48 00 00 24 */	b lbl_801CD0F0
lbl_801CD0D0:
/* 801CD0D0  38 61 00 14 */	addi r3, r1, 0x14
/* 801CD0D4  4B E7 13 BD */	bl nextData__22dMenuFmapIconPointer_cFv
/* 801CD0D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD0DC  40 82 00 14 */	bne lbl_801CD0F0
lbl_801CD0E0:
/* 801CD0E0  38 61 00 14 */	addi r3, r1, 0x14
/* 801CD0E4  4B E7 14 2D */	bl getValidData__22dMenuFmapIconPointer_cFv
/* 801CD0E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD0EC  41 82 FF 88 */	beq lbl_801CD074
lbl_801CD0F0:
/* 801CD0F0  7F 03 C3 78 */	mr r3, r24
/* 801CD0F4  39 61 00 80 */	addi r11, r1, 0x80
/* 801CD0F8  48 19 51 19 */	bl _restgpr_23
/* 801CD0FC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801CD100  7C 08 03 A6 */	mtlr r0
/* 801CD104  38 21 00 80 */	addi r1, r1, 0x80
/* 801CD108  4E 80 00 20 */	blr 
