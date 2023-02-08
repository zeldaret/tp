lbl_80A8684C:
/* 80A8684C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A86850  7C 08 02 A6 */	mflr r0
/* 80A86854  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A86858  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8685C  4B 8D B9 75 */	bl _savegpr_26
/* 80A86860  7C 7A 1B 78 */	mr r26, r3
/* 80A86864  7C 9B 23 78 */	mr r27, r4
/* 80A86868  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A8686C  3B E3 84 34 */	addi r31, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A86870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86878  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A8687C  3B A0 00 00 */	li r29, 0
/* 80A86880  3B 80 FF FF */	li r28, -1
/* 80A86884  38 7A 0B E8 */	addi r3, r26, 0xbe8
/* 80A86888  38 80 00 00 */	li r4, 0
/* 80A8688C  4B 83 B3 99 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86890  7F C3 F3 78 */	mr r3, r30
/* 80A86894  7F 64 DB 78 */	mr r4, r27
/* 80A86898  3C A0 80 A9 */	lis r5, d_a_npc_myna2__stringBase0@ha /* 0x80A88654@ha */
/* 80A8689C  38 A5 86 54 */	addi r5, r5, d_a_npc_myna2__stringBase0@l /* 0x80A88654@l */
/* 80A868A0  38 A5 00 5C */	addi r5, r5, 0x5c
/* 80A868A4  38 C0 00 03 */	li r6, 3
/* 80A868A8  4B 5C 18 45 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A868AC  28 03 00 00 */	cmplwi r3, 0
/* 80A868B0  41 82 00 08 */	beq lbl_80A868B8
/* 80A868B4  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A868B8:
/* 80A868B8  7F C3 F3 78 */	mr r3, r30
/* 80A868BC  7F 64 DB 78 */	mr r4, r27
/* 80A868C0  4B 5C 14 8D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A868C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A868C8  41 82 00 38 */	beq lbl_80A86900
/* 80A868CC  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A868D0  41 82 00 20 */	beq lbl_80A868F0
/* 80A868D4  40 80 00 10 */	bge lbl_80A868E4
/* 80A868D8  2C 1C 00 00 */	cmpwi r28, 0
/* 80A868DC  41 82 00 24 */	beq lbl_80A86900
/* 80A868E0  48 00 00 20 */	b lbl_80A86900
lbl_80A868E4:
/* 80A868E4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A868E8  41 82 00 18 */	beq lbl_80A86900
/* 80A868EC  48 00 00 14 */	b lbl_80A86900
lbl_80A868F0:
/* 80A868F0  7F 43 D3 78 */	mr r3, r26
/* 80A868F4  80 9A 0E 04 */	lwz r4, 0xe04(r26)
/* 80A868F8  38 A0 00 00 */	li r5, 0
/* 80A868FC  4B 6C D4 21 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80A86900:
/* 80A86900  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80A86904  41 82 00 54 */	beq lbl_80A86958
/* 80A86908  40 80 00 10 */	bge lbl_80A86918
/* 80A8690C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A86910  41 82 00 14 */	beq lbl_80A86924
/* 80A86914  48 00 00 D8 */	b lbl_80A869EC
lbl_80A86918:
/* 80A86918  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80A8691C  41 82 00 A0 */	beq lbl_80A869BC
/* 80A86920  48 00 00 CC */	b lbl_80A869EC
lbl_80A86924:
/* 80A86924  7F 43 D3 78 */	mr r3, r26
/* 80A86928  38 80 00 00 */	li r4, 0
/* 80A8692C  38 A0 00 01 */	li r5, 1
/* 80A86930  48 00 05 5D */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86934  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80A86938  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80A8693C  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80A86940  EC 01 00 2A */	fadds f0, f1, f0
/* 80A86944  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A86948  4C 40 13 82 */	cror 2, 0, 2
/* 80A8694C  40 82 00 A4 */	bne lbl_80A869F0
/* 80A86950  3B A0 00 01 */	li r29, 1
/* 80A86954  48 00 00 9C */	b lbl_80A869F0
lbl_80A86958:
/* 80A86958  7F 43 D3 78 */	mr r3, r26
/* 80A8695C  38 80 00 00 */	li r4, 0
/* 80A86960  38 A0 00 01 */	li r5, 1
/* 80A86964  48 00 05 29 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86968  7F 43 D3 78 */	mr r3, r26
/* 80A8696C  38 80 00 00 */	li r4, 0
/* 80A86970  38 A0 00 01 */	li r5, 1
/* 80A86974  38 C0 00 00 */	li r6, 0
/* 80A86978  4B 6C D4 0D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A8697C  2C 03 00 00 */	cmpwi r3, 0
/* 80A86980  41 82 00 70 */	beq lbl_80A869F0
/* 80A86984  A0 1A 0A 32 */	lhz r0, 0xa32(r26)
/* 80A86988  7C 00 07 35 */	extsh. r0, r0
/* 80A8698C  40 82 00 28 */	bne lbl_80A869B4
/* 80A86990  38 60 00 06 */	li r3, 6
/* 80A86994  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A86998  38 80 00 0A */	li r4, 0xa
/* 80A8699C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80A869A0  7C 05 07 74 */	extsb r5, r0
/* 80A869A4  38 C0 00 00 */	li r6, 0
/* 80A869A8  38 E0 FF FF */	li r7, -1
/* 80A869AC  4B 5A 07 C5 */	bl dStage_changeScene__FifUlScsi
/* 80A869B0  48 00 00 40 */	b lbl_80A869F0
lbl_80A869B4:
/* 80A869B4  3B A0 00 01 */	li r29, 1
/* 80A869B8  48 00 00 38 */	b lbl_80A869F0
lbl_80A869BC:
/* 80A869BC  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80A869C0  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A869C4  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80A869C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A869CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A869D0  40 81 00 08 */	ble lbl_80A869D8
/* 80A869D4  3B A0 00 01 */	li r29, 1
lbl_80A869D8:
/* 80A869D8  7F 43 D3 78 */	mr r3, r26
/* 80A869DC  38 80 00 01 */	li r4, 1
/* 80A869E0  38 A0 00 00 */	li r5, 0
/* 80A869E4  48 00 04 A9 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A869E8  48 00 00 08 */	b lbl_80A869F0
lbl_80A869EC:
/* 80A869EC  3B A0 00 01 */	li r29, 1
lbl_80A869F0:
/* 80A869F0  7F A3 EB 78 */	mr r3, r29
/* 80A869F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A869F8  4B 8D B8 25 */	bl _restgpr_26
/* 80A869FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A86A00  7C 08 03 A6 */	mtlr r0
/* 80A86A04  38 21 00 20 */	addi r1, r1, 0x20
/* 80A86A08  4E 80 00 20 */	blr 
