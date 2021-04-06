lbl_80742768:
/* 80742768  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8074276C  7C 08 02 A6 */	mflr r0
/* 80742770  90 01 00 94 */	stw r0, 0x94(r1)
/* 80742774  39 61 00 90 */	addi r11, r1, 0x90
/* 80742778  4B C1 FA 65 */	bl _savegpr_29
/* 8074277C  7C 7D 1B 78 */	mr r29, r3
/* 80742780  7C 9E 23 78 */	mr r30, r4
/* 80742784  7C BF 2B 78 */	mr r31, r5
/* 80742788  38 61 00 08 */	addi r3, r1, 8
/* 8074278C  4B 93 54 DD */	bl __ct__11dBgS_LinChkFv
/* 80742790  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80742794  3C 60 80 75 */	lis r3, lit_4153@ha /* 0x8074BFD4@ha */
/* 80742798  C0 03 BF D4 */	lfs f0, lit_4153@l(r3)  /* 0x8074BFD4@l */
/* 8074279C  EC 01 00 2A */	fadds f0, f1, f0
/* 807427A0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 807427A4  38 61 00 08 */	addi r3, r1, 8
/* 807427A8  7F C4 F3 78 */	mr r4, r30
/* 807427AC  7F E5 FB 78 */	mr r5, r31
/* 807427B0  7F A6 EB 78 */	mr r6, r29
/* 807427B4  4B 93 55 B1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807427B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807427BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807427C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807427C4  38 81 00 08 */	addi r4, r1, 8
/* 807427C8  4B 93 1B ED */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807427CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807427D0  41 82 00 18 */	beq lbl_807427E8
/* 807427D4  38 61 00 08 */	addi r3, r1, 8
/* 807427D8  38 80 FF FF */	li r4, -1
/* 807427DC  4B 93 55 01 */	bl __dt__11dBgS_LinChkFv
/* 807427E0  38 60 00 01 */	li r3, 1
/* 807427E4  48 00 00 14 */	b lbl_807427F8
lbl_807427E8:
/* 807427E8  38 61 00 08 */	addi r3, r1, 8
/* 807427EC  38 80 FF FF */	li r4, -1
/* 807427F0  4B 93 54 ED */	bl __dt__11dBgS_LinChkFv
/* 807427F4  38 60 00 00 */	li r3, 0
lbl_807427F8:
/* 807427F8  39 61 00 90 */	addi r11, r1, 0x90
/* 807427FC  4B C1 FA 2D */	bl _restgpr_29
/* 80742800  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80742804  7C 08 03 A6 */	mtlr r0
/* 80742808  38 21 00 90 */	addi r1, r1, 0x90
/* 8074280C  4E 80 00 20 */	blr 
