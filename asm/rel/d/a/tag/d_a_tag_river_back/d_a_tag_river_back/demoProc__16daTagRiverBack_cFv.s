lbl_80D5F710:
/* 80D5F710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5F714  7C 08 02 A6 */	mflr r0
/* 80D5F718  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5F71C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5F720  4B 60 2A B9 */	bl _savegpr_28
/* 80D5F724  7C 7F 1B 78 */	mr r31, r3
/* 80D5F728  3C 60 80 D6 */	lis r3, lit_3813@ha /* 0x80D5F944@ha */
/* 80D5F72C  3B A3 F9 44 */	addi r29, r3, lit_3813@l /* 0x80D5F944@l */
/* 80D5F730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5F734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5F738  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80D5F73C  7F 83 E3 78 */	mr r3, r28
/* 80D5F740  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5F744  3C A0 80 D6 */	lis r5, action_table@ha /* 0x80D5FA0C@ha */
/* 80D5F748  38 A5 FA 0C */	addi r5, r5, action_table@l /* 0x80D5FA0C@l */
/* 80D5F74C  38 C0 00 02 */	li r6, 2
/* 80D5F750  38 E0 00 00 */	li r7, 0
/* 80D5F754  39 00 00 00 */	li r8, 0
/* 80D5F758  4B 2E 86 B9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D5F75C  7C 7E 1B 78 */	mr r30, r3
/* 80D5F760  7F 83 E3 78 */	mr r3, r28
/* 80D5F764  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5F768  4B 2E 85 E5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D5F76C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5F770  41 82 00 94 */	beq lbl_80D5F804
/* 80D5F774  2C 1E 00 01 */	cmpwi r30, 1
/* 80D5F778  41 82 00 50 */	beq lbl_80D5F7C8
/* 80D5F77C  40 80 00 88 */	bge lbl_80D5F804
/* 80D5F780  2C 1E 00 00 */	cmpwi r30, 0
/* 80D5F784  40 80 00 08 */	bge lbl_80D5F78C
/* 80D5F788  48 00 00 7C */	b lbl_80D5F804
lbl_80D5F78C:
/* 80D5F78C  7F 83 E3 78 */	mr r3, r28
/* 80D5F790  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5F794  3C A0 80 D6 */	lis r5, d_a_tag_river_back__stringBase0@ha /* 0x80D5F950@ha */
/* 80D5F798  38 A5 F9 50 */	addi r5, r5, d_a_tag_river_back__stringBase0@l /* 0x80D5F950@l */
/* 80D5F79C  38 A5 00 28 */	addi r5, r5, 0x28
/* 80D5F7A0  38 C0 00 03 */	li r6, 3
/* 80D5F7A4  4B 2E 89 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D5F7A8  28 03 00 00 */	cmplwi r3, 0
/* 80D5F7AC  40 82 00 10 */	bne lbl_80D5F7BC
/* 80D5F7B0  38 00 00 01 */	li r0, 1
/* 80D5F7B4  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80D5F7B8  48 00 00 4C */	b lbl_80D5F804
lbl_80D5F7BC:
/* 80D5F7BC  80 03 00 00 */	lwz r0, 0(r3)
/* 80D5F7C0  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80D5F7C4  48 00 00 40 */	b lbl_80D5F804
lbl_80D5F7C8:
/* 80D5F7C8  38 00 00 33 */	li r0, 0x33
/* 80D5F7CC  90 01 00 08 */	stw r0, 8(r1)
/* 80D5F7D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5F7D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5F7D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5F7DC  38 81 00 08 */	addi r4, r1, 8
/* 80D5F7E0  38 A0 00 00 */	li r5, 0
/* 80D5F7E4  38 C0 00 00 */	li r6, 0
/* 80D5F7E8  38 E0 00 00 */	li r7, 0
/* 80D5F7EC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D5F7F0  FC 40 08 90 */	fmr f2, f1
/* 80D5F7F4  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80D5F7F8  FC 80 18 90 */	fmr f4, f3
/* 80D5F7FC  39 00 00 00 */	li r8, 0
/* 80D5F800  4B 54 C1 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5F804:
/* 80D5F804  2C 1E 00 01 */	cmpwi r30, 1
/* 80D5F808  41 82 00 34 */	beq lbl_80D5F83C
/* 80D5F80C  40 80 00 58 */	bge lbl_80D5F864
/* 80D5F810  2C 1E 00 00 */	cmpwi r30, 0
/* 80D5F814  40 80 00 08 */	bge lbl_80D5F81C
/* 80D5F818  48 00 00 4C */	b lbl_80D5F864
lbl_80D5F81C:
/* 80D5F81C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80D5F820  48 00 01 01 */	bl func_80D5F920
/* 80D5F824  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5F828  40 82 00 48 */	bne lbl_80D5F870
/* 80D5F82C  7F 83 E3 78 */	mr r3, r28
/* 80D5F830  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5F834  4B 2E 89 49 */	bl cutEnd__16dEvent_manager_cFi
/* 80D5F838  48 00 00 38 */	b lbl_80D5F870
lbl_80D5F83C:
/* 80D5F83C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5F840  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D5F844  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80D5F848  38 80 00 00 */	li r4, 0
/* 80D5F84C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D5F850  7C 05 07 74 */	extsb r5, r0
/* 80D5F854  38 C0 00 00 */	li r6, 0
/* 80D5F858  38 E0 FF FF */	li r7, -1
/* 80D5F85C  4B 2C 79 15 */	bl dStage_changeScene__FifUlScsi
/* 80D5F860  48 00 00 10 */	b lbl_80D5F870
lbl_80D5F864:
/* 80D5F864  7F 83 E3 78 */	mr r3, r28
/* 80D5F868  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5F86C  4B 2E 89 11 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D5F870:
/* 80D5F870  38 60 00 00 */	li r3, 0
/* 80D5F874  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5F878  4B 60 29 AD */	bl _restgpr_28
/* 80D5F87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5F880  7C 08 03 A6 */	mtlr r0
/* 80D5F884  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5F888  4E 80 00 20 */	blr 
