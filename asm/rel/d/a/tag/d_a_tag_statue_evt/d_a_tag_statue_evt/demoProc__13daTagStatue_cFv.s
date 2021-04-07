lbl_805A784C:
/* 805A784C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7850  7C 08 02 A6 */	mflr r0
/* 805A7854  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A7858  39 61 00 20 */	addi r11, r1, 0x20
/* 805A785C  4B DB A9 79 */	bl _savegpr_27
/* 805A7860  7C 7D 1B 78 */	mr r29, r3
/* 805A7864  3C 60 80 5B */	lis r3, cNullVec__6Z2Calc@ha /* 0x805A81FC@ha */
/* 805A7868  3B 63 81 FC */	addi r27, r3, cNullVec__6Z2Calc@l /* 0x805A81FC@l */
/* 805A786C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A7870  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A7874  3B DC 4F F8 */	addi r30, r28, 0x4ff8
/* 805A7878  7F C3 F3 78 */	mr r3, r30
/* 805A787C  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A7880  38 BB 00 D4 */	addi r5, r27, 0xd4
/* 805A7884  38 C0 00 03 */	li r6, 3
/* 805A7888  38 E0 00 00 */	li r7, 0
/* 805A788C  39 00 00 00 */	li r8, 0
/* 805A7890  4B AA 05 81 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 805A7894  7C 7F 1B 78 */	mr r31, r3
/* 805A7898  7F C3 F3 78 */	mr r3, r30
/* 805A789C  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A78A0  4B AA 04 AD */	bl getIsAddvance__16dEvent_manager_cFi
/* 805A78A4  2C 03 00 00 */	cmpwi r3, 0
/* 805A78A8  41 82 01 50 */	beq lbl_805A79F8
/* 805A78AC  2C 1F 00 01 */	cmpwi r31, 1
/* 805A78B0  41 82 00 5C */	beq lbl_805A790C
/* 805A78B4  40 80 00 10 */	bge lbl_805A78C4
/* 805A78B8  2C 1F 00 00 */	cmpwi r31, 0
/* 805A78BC  40 80 00 14 */	bge lbl_805A78D0
/* 805A78C0  48 00 01 38 */	b lbl_805A79F8
lbl_805A78C4:
/* 805A78C4  2C 1F 00 03 */	cmpwi r31, 3
/* 805A78C8  40 80 01 30 */	bge lbl_805A79F8
/* 805A78CC  48 00 00 C0 */	b lbl_805A798C
lbl_805A78D0:
/* 805A78D0  7F C3 F3 78 */	mr r3, r30
/* 805A78D4  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A78D8  3C A0 80 5B */	lis r5, d_a_tag_statue_evt__stringBase0@ha /* 0x805A8154@ha */
/* 805A78DC  38 A5 81 54 */	addi r5, r5, d_a_tag_statue_evt__stringBase0@l /* 0x805A8154@l */
/* 805A78E0  38 A5 00 A2 */	addi r5, r5, 0xa2
/* 805A78E4  38 C0 00 03 */	li r6, 3
/* 805A78E8  4B AA 08 05 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 805A78EC  28 03 00 00 */	cmplwi r3, 0
/* 805A78F0  40 82 00 10 */	bne lbl_805A7900
/* 805A78F4  38 00 00 01 */	li r0, 1
/* 805A78F8  98 1D 05 95 */	stb r0, 0x595(r29)
/* 805A78FC  48 00 00 FC */	b lbl_805A79F8
lbl_805A7900:
/* 805A7900  80 03 00 00 */	lwz r0, 0(r3)
/* 805A7904  98 1D 05 95 */	stb r0, 0x595(r29)
/* 805A7908  48 00 00 F0 */	b lbl_805A79F8
lbl_805A790C:
/* 805A790C  88 1D 05 97 */	lbz r0, 0x597(r29)
/* 805A7910  28 00 00 01 */	cmplwi r0, 1
/* 805A7914  41 82 00 E4 */	beq lbl_805A79F8
/* 805A7918  28 00 00 04 */	cmplwi r0, 4
/* 805A791C  41 82 00 DC */	beq lbl_805A79F8
/* 805A7920  28 00 00 05 */	cmplwi r0, 5
/* 805A7924  41 82 00 D4 */	beq lbl_805A79F8
/* 805A7928  3C 60 80 5A */	lis r3, s_s_sub__FPvPv@ha /* 0x805A6F78@ha */
/* 805A792C  38 63 6F 78 */	addi r3, r3, s_s_sub__FPvPv@l /* 0x805A6F78@l */
/* 805A7930  7F A4 EB 78 */	mr r4, r29
/* 805A7934  4B A7 9A 05 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805A7938  28 03 00 00 */	cmplwi r3, 0
/* 805A793C  41 82 00 BC */	beq lbl_805A79F8
/* 805A7940  88 1D 05 97 */	lbz r0, 0x597(r29)
/* 805A7944  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805A7948  38 9B 00 E0 */	addi r4, r27, 0xe0
/* 805A794C  7C 84 02 14 */	add r4, r4, r0
/* 805A7950  C0 04 00 00 */	lfs f0, 0(r4)
/* 805A7954  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 805A7958  C0 04 00 04 */	lfs f0, 4(r4)
/* 805A795C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 805A7960  C0 04 00 08 */	lfs f0, 8(r4)
/* 805A7964  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 805A7968  88 1D 05 97 */	lbz r0, 0x597(r29)
/* 805A796C  54 00 08 3C */	slwi r0, r0, 1
/* 805A7970  38 9B 01 28 */	addi r4, r27, 0x128
/* 805A7974  7C 04 02 AE */	lhax r0, r4, r0
/* 805A7978  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 805A797C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 805A7980  60 00 08 00 */	ori r0, r0, 0x800
/* 805A7984  90 03 04 9C */	stw r0, 0x49c(r3)
/* 805A7988  48 00 00 70 */	b lbl_805A79F8
lbl_805A798C:
/* 805A798C  7F A3 EB 78 */	mr r3, r29
/* 805A7990  48 00 05 05 */	bl getLetterCount__13daTagStatue_cFv
/* 805A7994  2C 03 00 05 */	cmpwi r3, 5
/* 805A7998  40 82 00 20 */	bne lbl_805A79B8
/* 805A799C  3B 60 00 EB */	li r27, 0xeb
/* 805A79A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A79A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A79A8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A79AC  38 80 60 04 */	li r4, 0x6004
/* 805A79B0  4B A8 CF DD */	bl onEventBit__11dSv_event_cFUs
/* 805A79B4  48 00 00 08 */	b lbl_805A79BC
lbl_805A79B8:
/* 805A79B8  3B 60 00 EA */	li r27, 0xea
lbl_805A79BC:
/* 805A79BC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805A79C0  7F 64 DB 78 */	mr r4, r27
/* 805A79C4  38 A0 FF FF */	li r5, -1
/* 805A79C8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805A79CC  7C 06 07 74 */	extsb r6, r0
/* 805A79D0  38 E0 00 00 */	li r7, 0
/* 805A79D4  39 00 00 00 */	li r8, 0
/* 805A79D8  4B A7 42 9D */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 805A79DC  90 7D 05 9C */	stw r3, 0x59c(r29)
/* 805A79E0  80 9D 05 9C */	lwz r4, 0x59c(r29)
/* 805A79E4  3C 04 00 01 */	addis r0, r4, 1
/* 805A79E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A79EC  41 82 00 0C */	beq lbl_805A79F8
/* 805A79F0  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 805A79F4  4B A9 BC F9 */	bl setPtI_Id__14dEvt_control_cFUi
lbl_805A79F8:
/* 805A79F8  2C 1F 00 01 */	cmpwi r31, 1
/* 805A79FC  41 82 00 34 */	beq lbl_805A7A30
/* 805A7A00  40 80 00 40 */	bge lbl_805A7A40
/* 805A7A04  2C 1F 00 00 */	cmpwi r31, 0
/* 805A7A08  40 80 00 08 */	bge lbl_805A7A10
/* 805A7A0C  48 00 00 34 */	b lbl_805A7A40
lbl_805A7A10:
/* 805A7A10  38 7D 05 95 */	addi r3, r29, 0x595
/* 805A7A14  48 00 06 CD */	bl func_805A80E0
/* 805A7A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A7A1C  40 82 00 30 */	bne lbl_805A7A4C
/* 805A7A20  7F C3 F3 78 */	mr r3, r30
/* 805A7A24  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A7A28  4B AA 07 55 */	bl cutEnd__16dEvent_manager_cFi
/* 805A7A2C  48 00 00 20 */	b lbl_805A7A4C
lbl_805A7A30:
/* 805A7A30  7F C3 F3 78 */	mr r3, r30
/* 805A7A34  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A7A38  4B AA 07 45 */	bl cutEnd__16dEvent_manager_cFi
/* 805A7A3C  48 00 00 10 */	b lbl_805A7A4C
lbl_805A7A40:
/* 805A7A40  7F C3 F3 78 */	mr r3, r30
/* 805A7A44  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 805A7A48  4B AA 07 35 */	bl cutEnd__16dEvent_manager_cFi
lbl_805A7A4C:
/* 805A7A4C  38 60 00 00 */	li r3, 0
/* 805A7A50  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7A54  4B DB A7 CD */	bl _restgpr_27
/* 805A7A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7A5C  7C 08 03 A6 */	mtlr r0
/* 805A7A60  38 21 00 20 */	addi r1, r1, 0x20
/* 805A7A64  4E 80 00 20 */	blr 
