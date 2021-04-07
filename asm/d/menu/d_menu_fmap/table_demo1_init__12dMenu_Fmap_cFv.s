lbl_801CA874:
/* 801CA874  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801CA878  7C 08 02 A6 */	mflr r0
/* 801CA87C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801CA880  39 61 00 60 */	addi r11, r1, 0x60
/* 801CA884  48 19 79 59 */	bl _savegpr_29
/* 801CA888  7C 7F 1B 78 */	mr r31, r3
/* 801CA88C  38 00 FF F6 */	li r0, -10
/* 801CA890  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CA894  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 801CA898  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 801CA89C  88 04 00 E1 */	lbz r0, 0xe1(r4)
/* 801CA8A0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CA8A4  98 04 12 27 */	stb r0, 0x1227(r4)
/* 801CA8A8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CA8AC  88 84 12 27 */	lbz r4, 0x1227(r4)
/* 801CA8B0  38 04 00 01 */	addi r0, r4, 1
/* 801CA8B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801CA8B8  48 00 0E B9 */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801CA8BC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA8C0  38 80 00 00 */	li r4, 0
/* 801CA8C4  38 A0 00 FF */	li r5, 0xff
/* 801CA8C8  48 00 CA 0D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA8CC  3C 60 80 3A */	lis r3, __vt__19dMenuFmapIconDisp_c@ha /* 0x803A7D74@ha */
/* 801CA8D0  38 03 7D 74 */	addi r0, r3, __vt__19dMenuFmapIconDisp_c@l /* 0x803A7D74@l */
/* 801CA8D4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801CA8D8  3B A0 00 00 */	li r29, 0
/* 801CA8DC  3B C0 00 00 */	li r30, 0
lbl_801CA8E0:
/* 801CA8E0  7C 7F F2 14 */	add r3, r31, r30
/* 801CA8E4  80 83 00 24 */	lwz r4, 0x24(r3)
/* 801CA8E8  28 04 00 00 */	cmplwi r4, 0
/* 801CA8EC  41 82 00 A0 */	beq lbl_801CA98C
/* 801CA8F0  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 801CA8F4  28 05 00 00 */	cmplwi r5, 0
/* 801CA8F8  41 82 00 94 */	beq lbl_801CA98C
/* 801CA8FC  89 0D 87 E4 */	lbz r8, struct_80450D64+0x0(r13)
/* 801CA900  7D 08 07 74 */	extsb r8, r8
/* 801CA904  38 61 00 18 */	addi r3, r1, 0x18
/* 801CA908  38 C0 00 05 */	li r6, 5
/* 801CA90C  80 FF 02 0C */	lwz r7, 0x20c(r31)
/* 801CA910  4B E7 38 05 */	bl init__22dMenuFmapIconPointer_cFP24dMenu_Fmap_region_data_cP23dMenu_Fmap_stage_data_cUcii
/* 801CA914  48 00 00 68 */	b lbl_801CA97C
lbl_801CA918:
/* 801CA918  38 61 00 18 */	addi r3, r1, 0x18
/* 801CA91C  4B E7 3D CD */	bl isDrawDisp__19dMenuFmapIconDisp_cFv
/* 801CA920  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CA924  41 82 00 48 */	beq lbl_801CA96C
/* 801CA928  38 61 00 18 */	addi r3, r1, 0x18
/* 801CA92C  38 81 00 0C */	addi r4, r1, 0xc
/* 801CA930  38 A1 00 08 */	addi r5, r1, 8
/* 801CA934  38 C1 00 14 */	addi r6, r1, 0x14
/* 801CA938  38 E1 00 10 */	addi r7, r1, 0x10
/* 801CA93C  39 00 00 00 */	li r8, 0
/* 801CA940  4B E7 3C 39 */	bl getPosition__19dMenuFmapIconDisp_cFPiPiPfPfPPCQ27dTres_c6data_s
/* 801CA944  7F E3 FB 78 */	mr r3, r31
/* 801CA948  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801CA94C  80 A1 00 08 */	lwz r5, 8(r1)
/* 801CA950  48 00 09 71 */	bl isRoomCheck__12dMenu_Fmap_cFii
/* 801CA954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CA958  41 82 00 14 */	beq lbl_801CA96C
/* 801CA95C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA960  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801CA964  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801CA968  48 00 B2 51 */	bl setArrowPosAxis__18dMenu_Fmap2DBack_cFff
lbl_801CA96C:
/* 801CA96C  38 61 00 18 */	addi r3, r1, 0x18
/* 801CA970  4B E7 3B 21 */	bl nextData__22dMenuFmapIconPointer_cFv
/* 801CA974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CA978  40 82 00 14 */	bne lbl_801CA98C
lbl_801CA97C:
/* 801CA97C  38 61 00 18 */	addi r3, r1, 0x18
/* 801CA980  4B E7 3B 91 */	bl getValidData__22dMenuFmapIconPointer_cFv
/* 801CA984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CA988  41 82 FF 90 */	beq lbl_801CA918
lbl_801CA98C:
/* 801CA98C  3B BD 00 01 */	addi r29, r29, 1
/* 801CA990  2C 1D 00 08 */	cmpwi r29, 8
/* 801CA994  3B DE 00 04 */	addi r30, r30, 4
/* 801CA998  41 80 FF 48 */	blt lbl_801CA8E0
/* 801CA99C  39 61 00 60 */	addi r11, r1, 0x60
/* 801CA9A0  48 19 78 89 */	bl _restgpr_29
/* 801CA9A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801CA9A8  7C 08 03 A6 */	mtlr r0
/* 801CA9AC  38 21 00 60 */	addi r1, r1, 0x60
/* 801CA9B0  4E 80 00 20 */	blr 
