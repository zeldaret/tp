lbl_800F7404:
/* 800F7404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7408  7C 08 02 A6 */	mflr r0
/* 800F740C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7414  93 C1 00 08 */	stw r30, 8(r1)
/* 800F7418  7C 7F 1B 78 */	mr r31, r3
/* 800F741C  7C 9E 23 78 */	mr r30, r4
/* 800F7420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7428  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800F742C  7F E4 FB 78 */	mr r4, r31
/* 800F7430  38 A0 00 00 */	li r5, 0
/* 800F7434  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F7438  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F743C  4B F4 BD 31 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F7440  2C 03 00 00 */	cmpwi r3, 0
/* 800F7444  40 82 00 0C */	bne lbl_800F7450
/* 800F7448  38 60 00 00 */	li r3, 0
/* 800F744C  48 00 00 EC */	b lbl_800F7538
lbl_800F7450:
/* 800F7450  38 00 00 05 */	li r0, 5
/* 800F7454  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800F7458  7F E3 FB 78 */	mr r3, r31
/* 800F745C  38 80 00 A0 */	li r4, 0xa0
/* 800F7460  4B FC AB 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F7464  7F E3 FB 78 */	mr r3, r31
/* 800F7468  4B FF D1 35 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F746C  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F7470  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F7474  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 800F7478  D0 03 14 68 */	stfs f0, 0x1468(r3)
/* 800F747C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F7480  B0 03 14 4C */	sth r0, 0x144c(r3)
/* 800F7484  38 00 00 01 */	li r0, 1
/* 800F7488  98 03 14 42 */	stb r0, 0x1442(r3)
/* 800F748C  7F E3 FB 78 */	mr r3, r31
/* 800F7490  38 80 01 00 */	li r4, 0x100
/* 800F7494  4B FB 4F BD */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F7498  A0 83 00 02 */	lhz r4, 2(r3)
/* 800F749C  7F E3 FB 78 */	mr r3, r31
/* 800F74A0  38 A0 00 02 */	li r5, 2
/* 800F74A4  3C C0 80 39 */	lis r6, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 800F74A8  38 C6 E9 0C */	addi r6, r6, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 800F74AC  4B FB 62 45 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F74B0  7F E3 FB 78 */	mr r3, r31
/* 800F74B4  38 80 01 00 */	li r4, 0x100
/* 800F74B8  4B FB 86 5D */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F74BC  7F E3 FB 78 */	mr r3, r31
/* 800F74C0  4B FC 83 95 */	bl keepItemData__9daAlink_cFv
/* 800F74C4  7F E3 FB 78 */	mr r3, r31
/* 800F74C8  7F C4 F3 78 */	mr r4, r30
/* 800F74CC  48 01 71 0D */	bl setBottleModel__9daAlink_cFUs
/* 800F74D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F74D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F74D8  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800F74DC  60 00 20 00 */	ori r0, r0, 0x2000
/* 800F74E0  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800F74E4  38 00 00 01 */	li r0, 1
/* 800F74E8  90 1F 31 9C */	stw r0, 0x319c(r31)
/* 800F74EC  28 1F 00 00 */	cmplwi r31, 0
/* 800F74F0  41 82 00 0C */	beq lbl_800F74FC
/* 800F74F4  83 DF 00 04 */	lwz r30, 4(r31)
/* 800F74F8  48 00 00 08 */	b lbl_800F7500
lbl_800F74FC:
/* 800F74FC  3B C0 FF FF */	li r30, -1
lbl_800F7500:
/* 800F7500  48 08 A1 41 */	bl dCam_getBody__Fv
/* 800F7504  38 80 00 12 */	li r4, 0x12
/* 800F7508  7F C5 F3 78 */	mr r5, r30
/* 800F750C  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800F7510  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800F7514  38 C6 00 43 */	addi r6, r6, 0x43
/* 800F7518  38 E0 00 01 */	li r7, 1
/* 800F751C  39 1F 31 9C */	addi r8, r31, 0x319c
/* 800F7520  39 20 00 00 */	li r9, 0
/* 800F7524  4C C6 31 82 */	crclr 6
/* 800F7528  4B F9 15 55 */	bl StartEventCamera__9dCamera_cFiie
/* 800F752C  38 00 00 00 */	li r0, 0
/* 800F7530  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F7534  38 60 00 01 */	li r3, 1
lbl_800F7538:
/* 800F7538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F753C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F7540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7544  7C 08 03 A6 */	mtlr r0
/* 800F7548  38 21 00 10 */	addi r1, r1, 0x10
/* 800F754C  4E 80 00 20 */	blr 
