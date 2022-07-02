lbl_80183480:
/* 80183480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80183484  7C 08 02 A6 */	mflr r0
/* 80183488  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018348C  39 61 00 20 */	addi r11, r1, 0x20
/* 80183490  48 1D ED 49 */	bl _savegpr_28
/* 80183494  7C 7C 1B 78 */	mr r28, r3
/* 80183498  8B CD 87 E4 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8018349C  7F DE 07 74 */	extsb r30, r30
/* 801834A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801834A4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801834A8  38 7F 4E C4 */	addi r3, r31, 0x4ec4
/* 801834AC  7F C4 F3 78 */	mr r4, r30
/* 801834B0  4B EA 0E D5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801834B4  7C 7D 1B 79 */	or. r29, r3, r3
/* 801834B8  40 82 00 0C */	bne lbl_801834C4
/* 801834BC  38 60 00 01 */	li r3, 1
/* 801834C0  48 00 00 C8 */	b lbl_80183588
lbl_801834C4:
/* 801834C4  80 1C 01 04 */	lwz r0, 0x104(r28)
/* 801834C8  7C 00 F0 00 */	cmpw r0, r30
/* 801834CC  41 82 00 18 */	beq lbl_801834E4
/* 801834D0  38 00 00 00 */	li r0, 0
/* 801834D4  98 1C 00 FC */	stb r0, 0xfc(r28)
/* 801834D8  98 1C 00 FD */	stb r0, 0xfd(r28)
/* 801834DC  90 1C 01 08 */	stw r0, 0x108(r28)
/* 801834E0  93 DC 01 04 */	stw r30, 0x104(r28)
lbl_801834E4:
/* 801834E4  7F A3 EB 78 */	mr r3, r29
/* 801834E8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801834EC  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 801834F0  7D 89 03 A6 */	mtctr r12
/* 801834F4  4E 80 04 21 */	bctrl 
/* 801834F8  7C 64 1B 78 */	mr r4, r3
/* 801834FC  7F 83 E3 78 */	mr r3, r28
/* 80183500  38 BC 00 FC */	addi r5, r28, 0xfc
/* 80183504  38 C0 00 01 */	li r6, 1
/* 80183508  4B FF FA D1 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 8018350C  7F A3 EB 78 */	mr r3, r29
/* 80183510  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183514  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80183518  7D 89 03 A6 */	mtctr r12
/* 8018351C  4E 80 04 21 */	bctrl 
/* 80183520  7C 64 1B 78 */	mr r4, r3
/* 80183524  7F 83 E3 78 */	mr r3, r28
/* 80183528  38 BC 00 FD */	addi r5, r28, 0xfd
/* 8018352C  38 C0 00 01 */	li r6, 1
/* 80183530  4B FF FA A9 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 80183534  3B BF 4E 20 */	addi r29, r31, 0x4e20
/* 80183538  7F A3 EB 78 */	mr r3, r29
/* 8018353C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183540  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 80183544  7D 89 03 A6 */	mtctr r12
/* 80183548  4E 80 04 21 */	bctrl 
/* 8018354C  7C 64 1B 78 */	mr r4, r3
/* 80183550  7F 83 E3 78 */	mr r3, r28
/* 80183554  38 BC 00 FE */	addi r5, r28, 0xfe
/* 80183558  38 C0 00 00 */	li r6, 0
/* 8018355C  4B FF FA 7D */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
/* 80183560  7F A3 EB 78 */	mr r3, r29
/* 80183564  81 9D 00 00 */	lwz r12, 0(r29)
/* 80183568  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8018356C  7D 89 03 A6 */	mtctr r12
/* 80183570  4E 80 04 21 */	bctrl 
/* 80183574  7C 64 1B 78 */	mr r4, r3
/* 80183578  7F 83 E3 78 */	mr r3, r28
/* 8018357C  38 BC 00 FF */	addi r5, r28, 0xff
/* 80183580  38 C0 00 00 */	li r6, 0
/* 80183584  4B FF FA 55 */	bl execute_common__8dEnvSe_cFP18dStage_SoundInfo_cPScUc
lbl_80183588:
/* 80183588  39 61 00 20 */	addi r11, r1, 0x20
/* 8018358C  48 1D EC 99 */	bl _restgpr_28
/* 80183590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80183594  7C 08 03 A6 */	mtlr r0
/* 80183598  38 21 00 20 */	addi r1, r1, 0x20
/* 8018359C  4E 80 00 20 */	blr 
