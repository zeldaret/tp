lbl_801C77F0:
/* 801C77F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C77F4  7C 08 02 A6 */	mflr r0
/* 801C77F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C77FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C7800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C7804  7C 7F 1B 78 */	mr r31, r3
/* 801C7808  3B C0 00 08 */	li r30, 8
/* 801C780C  38 00 00 00 */	li r0, 0
/* 801C7810  98 04 00 00 */	stb r0, 0(r4)
/* 801C7814  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801C7818  28 00 00 00 */	cmplwi r0, 0
/* 801C781C  40 82 00 C4 */	bne lbl_801C78E0
/* 801C7820  48 03 28 31 */	bl dMw_B_TRIGGER__Fv
/* 801C7824  2C 03 00 00 */	cmpwi r3, 0
/* 801C7828  41 82 00 B8 */	beq lbl_801C78E0
/* 801C782C  88 1F 03 04 */	lbz r0, 0x304(r31)
/* 801C7830  28 00 00 03 */	cmplwi r0, 3
/* 801C7834  40 82 00 28 */	bne lbl_801C785C
/* 801C7838  38 00 00 01 */	li r0, 1
/* 801C783C  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7840  38 00 00 00 */	li r0, 0
/* 801C7844  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7848  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C784C  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C7850  38 00 04 00 */	li r0, 0x400
/* 801C7854  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801C7858  48 00 00 4C */	b lbl_801C78A4
lbl_801C785C:
/* 801C785C  38 00 00 03 */	li r0, 3
/* 801C7860  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7864  48 04 5D ED */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 801C7868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C786C  41 82 00 18 */	beq lbl_801C7884
/* 801C7870  38 00 00 01 */	li r0, 1
/* 801C7874  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7878  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C787C  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C7880  48 00 00 14 */	b lbl_801C7894
lbl_801C7884:
/* 801C7884  38 00 00 00 */	li r0, 0
/* 801C7888  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C788C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7890  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_801C7894:
/* 801C7894  38 00 02 00 */	li r0, 0x200
/* 801C7898  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C789C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C78A0  B0 03 00 AA */	sth r0, 0xaa(r3)
lbl_801C78A4:
/* 801C78A4  3B C0 00 09 */	li r30, 9
/* 801C78A8  38 00 00 BB */	li r0, 0xbb
/* 801C78AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C78B0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C78B4  38 81 00 14 */	addi r4, r1, 0x14
/* 801C78B8  38 A0 00 00 */	li r5, 0
/* 801C78BC  38 C0 00 00 */	li r6, 0
/* 801C78C0  38 E0 00 00 */	li r7, 0
/* 801C78C4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C78C8  FC 40 08 90 */	fmr f2, f1
/* 801C78CC  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C78D0  FC 80 18 90 */	fmr f4, f3
/* 801C78D4  39 00 00 00 */	li r8, 0
/* 801C78D8  48 0E 40 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C78DC  48 05 70 F9 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801C78E0:
/* 801C78E0  88 9F 03 00 */	lbz r4, 0x300(r31)
/* 801C78E4  28 04 00 08 */	cmplwi r4, 8
/* 801C78E8  40 82 00 C8 */	bne lbl_801C79B0
/* 801C78EC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C78F0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C78F4  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 801C78F8  28 00 00 03 */	cmplwi r0, 3
/* 801C78FC  40 82 00 B4 */	bne lbl_801C79B0
/* 801C7900  88 1F 03 04 */	lbz r0, 0x304(r31)
/* 801C7904  28 00 00 03 */	cmplwi r0, 3
/* 801C7908  40 82 00 20 */	bne lbl_801C7928
/* 801C790C  38 00 00 01 */	li r0, 1
/* 801C7910  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7914  38 00 00 00 */	li r0, 0
/* 801C7918  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C791C  38 00 04 00 */	li r0, 0x400
/* 801C7920  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801C7924  48 00 00 4C */	b lbl_801C7970
lbl_801C7928:
/* 801C7928  38 00 00 03 */	li r0, 3
/* 801C792C  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7930  48 04 5D 21 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 801C7934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C7938  41 82 00 18 */	beq lbl_801C7950
/* 801C793C  38 00 00 01 */	li r0, 1
/* 801C7940  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7944  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7948  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C794C  48 00 00 14 */	b lbl_801C7960
lbl_801C7950:
/* 801C7950  38 00 00 00 */	li r0, 0
/* 801C7954  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7958  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C795C  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_801C7960:
/* 801C7960  38 00 02 00 */	li r0, 0x200
/* 801C7964  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7968  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C796C  B0 03 00 AA */	sth r0, 0xaa(r3)
lbl_801C7970:
/* 801C7970  38 00 00 BB */	li r0, 0xbb
/* 801C7974  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C7978  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C797C  38 81 00 10 */	addi r4, r1, 0x10
/* 801C7980  38 A0 00 00 */	li r5, 0
/* 801C7984  38 C0 00 00 */	li r6, 0
/* 801C7988  38 E0 00 00 */	li r7, 0
/* 801C798C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7990  FC 40 08 90 */	fmr f2, f1
/* 801C7994  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7998  FC 80 18 90 */	fmr f4, f3
/* 801C799C  39 00 00 00 */	li r8, 0
/* 801C79A0  48 0E 3F E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C79A4  48 05 70 31 */	bl dMeter2Info_set2DVibrationM__Fv
/* 801C79A8  38 60 00 09 */	li r3, 9
/* 801C79AC  48 00 01 38 */	b lbl_801C7AE4
lbl_801C79B0:
/* 801C79B0  28 04 00 00 */	cmplwi r4, 0
/* 801C79B4  41 82 00 1C */	beq lbl_801C79D0
/* 801C79B8  28 04 00 06 */	cmplwi r4, 6
/* 801C79BC  41 82 00 14 */	beq lbl_801C79D0
/* 801C79C0  28 04 00 08 */	cmplwi r4, 8
/* 801C79C4  41 82 00 0C */	beq lbl_801C79D0
/* 801C79C8  28 04 00 0D */	cmplwi r4, 0xd
/* 801C79CC  40 82 01 14 */	bne lbl_801C7AE0
lbl_801C79D0:
/* 801C79D0  7F E3 FB 78 */	mr r3, r31
/* 801C79D4  48 00 01 29 */	bl isSync__12dMenu_Fmap_cFv
/* 801C79D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C79DC  41 82 01 04 */	beq lbl_801C7AE0
/* 801C79E0  48 03 25 CD */	bl dMw_LEFT_TRIGGER__Fv
/* 801C79E4  2C 03 00 00 */	cmpwi r3, 0
/* 801C79E8  41 82 00 8C */	beq lbl_801C7A74
/* 801C79EC  48 04 5C 65 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 801C79F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C79F4  41 82 00 18 */	beq lbl_801C7A0C
/* 801C79F8  38 00 00 01 */	li r0, 1
/* 801C79FC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7A00  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7A04  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C7A08  48 00 00 14 */	b lbl_801C7A1C
lbl_801C7A0C:
/* 801C7A0C  38 00 00 00 */	li r0, 0
/* 801C7A10  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7A14  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7A18  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_801C7A1C:
/* 801C7A1C  38 00 00 03 */	li r0, 3
/* 801C7A20  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7A24  38 00 02 00 */	li r0, 0x200
/* 801C7A28  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7A2C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7A30  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801C7A34  38 00 00 BB */	li r0, 0xbb
/* 801C7A38  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C7A3C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7A40  38 81 00 0C */	addi r4, r1, 0xc
/* 801C7A44  38 A0 00 00 */	li r5, 0
/* 801C7A48  38 C0 00 00 */	li r6, 0
/* 801C7A4C  38 E0 00 00 */	li r7, 0
/* 801C7A50  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7A54  FC 40 08 90 */	fmr f2, f1
/* 801C7A58  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7A5C  FC 80 18 90 */	fmr f4, f3
/* 801C7A60  39 00 00 00 */	li r8, 0
/* 801C7A64  48 0E 3F 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7A68  48 05 6F 6D */	bl dMeter2Info_set2DVibrationM__Fv
/* 801C7A6C  38 60 00 09 */	li r3, 9
/* 801C7A70  48 00 00 74 */	b lbl_801C7AE4
lbl_801C7A74:
/* 801C7A74  48 03 25 81 */	bl dMw_RIGHT_TRIGGER__Fv
/* 801C7A78  2C 03 00 00 */	cmpwi r3, 0
/* 801C7A7C  41 82 00 64 */	beq lbl_801C7AE0
/* 801C7A80  38 00 00 00 */	li r0, 0
/* 801C7A84  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7A88  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7A8C  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801C7A90  38 00 00 01 */	li r0, 1
/* 801C7A94  98 1F 03 04 */	stb r0, 0x304(r31)
/* 801C7A98  38 00 04 00 */	li r0, 0x400
/* 801C7A9C  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801C7AA0  38 00 00 BB */	li r0, 0xbb
/* 801C7AA4  90 01 00 08 */	stw r0, 8(r1)
/* 801C7AA8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7AAC  38 81 00 08 */	addi r4, r1, 8
/* 801C7AB0  38 A0 00 00 */	li r5, 0
/* 801C7AB4  38 C0 00 00 */	li r6, 0
/* 801C7AB8  38 E0 00 00 */	li r7, 0
/* 801C7ABC  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7AC0  FC 40 08 90 */	fmr f2, f1
/* 801C7AC4  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7AC8  FC 80 18 90 */	fmr f4, f3
/* 801C7ACC  39 00 00 00 */	li r8, 0
/* 801C7AD0  48 0E 3E B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7AD4  48 05 6F 01 */	bl dMeter2Info_set2DVibrationM__Fv
/* 801C7AD8  38 60 00 09 */	li r3, 9
/* 801C7ADC  48 00 00 08 */	b lbl_801C7AE4
lbl_801C7AE0:
/* 801C7AE0  7F C3 F3 78 */	mr r3, r30
lbl_801C7AE4:
/* 801C7AE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C7AE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C7AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C7AF0  7C 08 03 A6 */	mtlr r0
/* 801C7AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 801C7AF8  4E 80 00 20 */	blr 
