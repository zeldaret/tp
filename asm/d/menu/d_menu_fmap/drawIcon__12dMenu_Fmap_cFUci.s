lbl_801CD10C:
/* 801CD10C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801CD110  7C 08 02 A6 */	mflr r0
/* 801CD114  90 01 00 74 */	stw r0, 0x74(r1)
/* 801CD118  39 61 00 70 */	addi r11, r1, 0x70
/* 801CD11C  48 19 50 B5 */	bl _savegpr_26
/* 801CD120  7C 7A 1B 78 */	mr r26, r3
/* 801CD124  7C 9B 23 78 */	mr r27, r4
/* 801CD128  7C BC 2B 78 */	mr r28, r5
/* 801CD12C  3C 80 80 3A */	lis r4, __vt__19dMenuFmapIconDisp_c@ha /* 0x803A7D74@ha */
/* 801CD130  38 04 7D 74 */	addi r0, r4, __vt__19dMenuFmapIconDisp_c@l /* 0x803A7D74@l */
/* 801CD134  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801CD138  8B AD 87 E4 */	lbz r29, struct_80450D64+0x0(r13)
/* 801CD13C  7F BD 07 74 */	extsb r29, r29
/* 801CD140  83 C3 02 0C */	lwz r30, 0x20c(r3)
/* 801CD144  48 00 02 25 */	bl getNowFmapStageData__12dMenu_Fmap_cFv
/* 801CD148  7C 7F 1B 78 */	mr r31, r3
/* 801CD14C  7F 43 D3 78 */	mr r3, r26
/* 801CD150  48 00 02 01 */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801CD154  7C 64 1B 78 */	mr r4, r3
/* 801CD158  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD15C  7F E5 FB 78 */	mr r5, r31
/* 801CD160  7F 66 DB 78 */	mr r6, r27
/* 801CD164  7F C7 F3 78 */	mr r7, r30
/* 801CD168  7F A8 EB 78 */	mr r8, r29
/* 801CD16C  4B E7 0F A9 */	bl init__22dMenuFmapIconPointer_cFP24dMenu_Fmap_region_data_cP23dMenu_Fmap_stage_data_cUcii
/* 801CD170  48 00 00 78 */	b lbl_801CD1E8
lbl_801CD174:
/* 801CD174  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD178  4B E7 15 71 */	bl isDrawDisp__19dMenuFmapIconDisp_cFv
/* 801CD17C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD180  41 82 00 58 */	beq lbl_801CD1D8
/* 801CD184  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD188  38 81 00 0C */	addi r4, r1, 0xc
/* 801CD18C  38 A1 00 08 */	addi r5, r1, 8
/* 801CD190  38 C1 00 14 */	addi r6, r1, 0x14
/* 801CD194  38 E1 00 10 */	addi r7, r1, 0x10
/* 801CD198  39 00 00 00 */	li r8, 0
/* 801CD19C  4B E7 13 DD */	bl getPosition__19dMenuFmapIconDisp_cFPiPiPfPfPPCQ27dTres_c6data_s
/* 801CD1A0  7F 43 D3 78 */	mr r3, r26
/* 801CD1A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801CD1A8  80 A1 00 08 */	lwz r5, 8(r1)
/* 801CD1AC  4B FF E1 15 */	bl isRoomCheck__12dMenu_Fmap_cFii
/* 801CD1B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD1B4  41 82 00 24 */	beq lbl_801CD1D8
/* 801CD1B8  80 7A 00 14 */	lwz r3, 0x14(r26)
/* 801CD1BC  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 801CD1C0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801CD1C4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801CD1C8  C0 62 A7 28 */	lfs f3, lit_4158(r2)
/* 801CD1CC  38 A0 00 00 */	li r5, 0
/* 801CD1D0  38 C0 00 00 */	li r6, 0
/* 801CD1D4  48 00 4F 2D */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcfffUcb
lbl_801CD1D8:
/* 801CD1D8  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD1DC  4B E7 12 B5 */	bl nextData__22dMenuFmapIconPointer_cFv
/* 801CD1E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD1E4  40 82 00 14 */	bne lbl_801CD1F8
lbl_801CD1E8:
/* 801CD1E8  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD1EC  4B E7 13 25 */	bl getValidData__22dMenuFmapIconPointer_cFv
/* 801CD1F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD1F4  41 82 FF 80 */	beq lbl_801CD174
lbl_801CD1F8:
/* 801CD1F8  39 61 00 70 */	addi r11, r1, 0x70
/* 801CD1FC  48 19 50 21 */	bl _restgpr_26
/* 801CD200  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801CD204  7C 08 03 A6 */	mtlr r0
/* 801CD208  38 21 00 70 */	addi r1, r1, 0x70
/* 801CD20C  4E 80 00 20 */	blr 
