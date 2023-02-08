lbl_80A866B0:
/* 80A866B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A866B4  7C 08 02 A6 */	mflr r0
/* 80A866B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A866BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A866C0  4B 8D BB 15 */	bl _savegpr_27
/* 80A866C4  7C 7B 1B 78 */	mr r27, r3
/* 80A866C8  7C 9C 23 78 */	mr r28, r4
/* 80A866CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A866D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A866D4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A866D8  3B C0 00 00 */	li r30, 0
/* 80A866DC  3B A0 FF FF */	li r29, -1
/* 80A866E0  38 7B 0B E8 */	addi r3, r27, 0xbe8
/* 80A866E4  38 80 00 00 */	li r4, 0
/* 80A866E8  4B 83 B5 3D */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A866EC  7F E3 FB 78 */	mr r3, r31
/* 80A866F0  7F 84 E3 78 */	mr r4, r28
/* 80A866F4  3C A0 80 A9 */	lis r5, d_a_npc_myna2__stringBase0@ha /* 0x80A88654@ha */
/* 80A866F8  38 A5 86 54 */	addi r5, r5, d_a_npc_myna2__stringBase0@l /* 0x80A88654@l */
/* 80A866FC  38 A5 00 5C */	addi r5, r5, 0x5c
/* 80A86700  38 C0 00 03 */	li r6, 3
/* 80A86704  4B 5C 19 E9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A86708  28 03 00 00 */	cmplwi r3, 0
/* 80A8670C  41 82 00 08 */	beq lbl_80A86714
/* 80A86710  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A86714:
/* 80A86714  7F E3 FB 78 */	mr r3, r31
/* 80A86718  7F 84 E3 78 */	mr r4, r28
/* 80A8671C  4B 5C 16 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A86720  2C 03 00 00 */	cmpwi r3, 0
/* 80A86724  41 82 00 60 */	beq lbl_80A86784
/* 80A86728  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A8672C  41 82 00 58 */	beq lbl_80A86784
/* 80A86730  40 80 00 10 */	bge lbl_80A86740
/* 80A86734  2C 1D 00 00 */	cmpwi r29, 0
/* 80A86738  41 82 00 14 */	beq lbl_80A8674C
/* 80A8673C  48 00 00 48 */	b lbl_80A86784
lbl_80A86740:
/* 80A86740  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A86744  41 82 00 30 */	beq lbl_80A86774
/* 80A86748  48 00 00 3C */	b lbl_80A86784
lbl_80A8674C:
/* 80A8674C  7F 63 DB 78 */	mr r3, r27
/* 80A86750  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86754  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86758  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A8675C  4B 59 3F B5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A86760  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A86764  3C 63 00 01 */	addis r3, r3, 1
/* 80A86768  38 03 80 00 */	addi r0, r3, -32768
/* 80A8676C  B0 04 06 06 */	sth r0, 0x606(r4)
/* 80A86770  48 00 00 14 */	b lbl_80A86784
lbl_80A86774:
/* 80A86774  7F 63 DB 78 */	mr r3, r27
/* 80A86778  80 9B 0E 04 */	lwz r4, 0xe04(r27)
/* 80A8677C  38 A0 00 00 */	li r5, 0
/* 80A86780  4B 6C D5 9D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80A86784:
/* 80A86784  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A86788  41 82 00 38 */	beq lbl_80A867C0
/* 80A8678C  40 80 00 10 */	bge lbl_80A8679C
/* 80A86790  2C 1D 00 00 */	cmpwi r29, 0
/* 80A86794  41 82 00 14 */	beq lbl_80A867A8
/* 80A86798  48 00 00 94 */	b lbl_80A8682C
lbl_80A8679C:
/* 80A8679C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A867A0  41 82 00 58 */	beq lbl_80A867F8
/* 80A867A4  48 00 00 88 */	b lbl_80A8682C
lbl_80A867A8:
/* 80A867A8  3B C0 00 01 */	li r30, 1
/* 80A867AC  7F 63 DB 78 */	mr r3, r27
/* 80A867B0  38 80 00 00 */	li r4, 0
/* 80A867B4  38 A0 00 01 */	li r5, 1
/* 80A867B8  48 00 06 D5 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A867BC  48 00 00 74 */	b lbl_80A86830
lbl_80A867C0:
/* 80A867C0  7F 63 DB 78 */	mr r3, r27
/* 80A867C4  38 80 00 00 */	li r4, 0
/* 80A867C8  38 A0 00 01 */	li r5, 1
/* 80A867CC  48 00 06 C1 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A867D0  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80A867D4  3C 60 80 A9 */	lis r3, lit_5358@ha /* 0x80A885E0@ha */
/* 80A867D8  C0 23 85 E0 */	lfs f1, lit_5358@l(r3)  /* 0x80A885E0@l */
/* 80A867DC  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A867E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A867E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A867E8  4C 40 13 82 */	cror 2, 0, 2
/* 80A867EC  40 82 00 44 */	bne lbl_80A86830
/* 80A867F0  3B C0 00 01 */	li r30, 1
/* 80A867F4  48 00 00 3C */	b lbl_80A86830
lbl_80A867F8:
/* 80A867F8  7F 63 DB 78 */	mr r3, r27
/* 80A867FC  38 80 00 00 */	li r4, 0
/* 80A86800  38 A0 00 01 */	li r5, 1
/* 80A86804  48 00 06 89 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86808  7F 63 DB 78 */	mr r3, r27
/* 80A8680C  38 80 00 00 */	li r4, 0
/* 80A86810  38 A0 00 01 */	li r5, 1
/* 80A86814  38 C0 00 00 */	li r6, 0
/* 80A86818  4B 6C D5 6D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A8681C  2C 03 00 00 */	cmpwi r3, 0
/* 80A86820  41 82 00 10 */	beq lbl_80A86830
/* 80A86824  3B C0 00 01 */	li r30, 1
/* 80A86828  48 00 00 08 */	b lbl_80A86830
lbl_80A8682C:
/* 80A8682C  3B C0 00 01 */	li r30, 1
lbl_80A86830:
/* 80A86830  7F C3 F3 78 */	mr r3, r30
/* 80A86834  39 61 00 20 */	addi r11, r1, 0x20
/* 80A86838  4B 8D B9 E9 */	bl _restgpr_27
/* 80A8683C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A86840  7C 08 03 A6 */	mtlr r0
/* 80A86844  38 21 00 20 */	addi r1, r1, 0x20
/* 80A86848  4E 80 00 20 */	blr 
