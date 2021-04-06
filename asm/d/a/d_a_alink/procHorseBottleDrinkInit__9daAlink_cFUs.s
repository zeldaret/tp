lbl_800F2934:
/* 800F2934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2938  7C 08 02 A6 */	mflr r0
/* 800F293C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2944  93 C1 00 08 */	stw r30, 8(r1)
/* 800F2948  7C 7F 1B 78 */	mr r31, r3
/* 800F294C  7C 9E 23 78 */	mr r30, r4
/* 800F2950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F2954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F2958  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800F295C  7F E4 FB 78 */	mr r4, r31
/* 800F2960  38 A0 00 00 */	li r5, 0
/* 800F2964  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F2968  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F296C  4B F5 08 01 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F2970  2C 03 00 00 */	cmpwi r3, 0
/* 800F2974  40 82 00 0C */	bne lbl_800F2980
/* 800F2978  38 60 00 00 */	li r3, 0
/* 800F297C  48 00 01 44 */	b lbl_800F2AC0
lbl_800F2980:
/* 800F2980  38 00 00 05 */	li r0, 5
/* 800F2984  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800F2988  7F E3 FB 78 */	mr r3, r31
/* 800F298C  38 80 00 4C */	li r4, 0x4c
/* 800F2990  4B FC F5 DD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2994  A0 1F 1F 80 */	lhz r0, 0x1f80(r31)
/* 800F2998  28 00 00 19 */	cmplwi r0, 0x19
/* 800F299C  40 82 00 14 */	bne lbl_800F29B0
/* 800F29A0  7F E3 FB 78 */	mr r3, r31
/* 800F29A4  38 80 00 02 */	li r4, 2
/* 800F29A8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F29AC  4B FB B1 41 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F29B0:
/* 800F29B0  7F E3 FB 78 */	mr r3, r31
/* 800F29B4  4B FF B0 71 */	bl setSyncRidePos__9daAlink_cFv
/* 800F29B8  7F E3 FB 78 */	mr r3, r31
/* 800F29BC  4B FF C3 DD */	bl setBaseRideAnime__9daAlink_cFv
/* 800F29C0  7F E3 FB 78 */	mr r3, r31
/* 800F29C4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F29C8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F29CC  7D 89 03 A6 */	mtctr r12
/* 800F29D0  4E 80 04 21 */	bctrl 
/* 800F29D4  28 03 00 00 */	cmplwi r3, 0
/* 800F29D8  41 82 00 30 */	beq lbl_800F2A08
/* 800F29DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F29E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F29E4  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 800F29E8  38 00 00 03 */	li r0, 3
/* 800F29EC  98 04 16 B8 */	stb r0, 0x16b8(r4)
/* 800F29F0  38 60 00 00 */	li r3, 0
/* 800F29F4  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800F29F8  38 00 00 0E */	li r0, 0xe
/* 800F29FC  90 04 17 40 */	stw r0, 0x1740(r4)
/* 800F2A00  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800F2A04  48 00 00 10 */	b lbl_800F2A14
lbl_800F2A08:
/* 800F2A08  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F2A0C  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F2A10  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_800F2A14:
/* 800F2A14  7F E3 FB 78 */	mr r3, r31
/* 800F2A18  38 80 01 00 */	li r4, 0x100
/* 800F2A1C  4B FB 9A 35 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F2A20  A0 83 00 02 */	lhz r4, 2(r3)
/* 800F2A24  7F E3 FB 78 */	mr r3, r31
/* 800F2A28  38 A0 00 02 */	li r5, 2
/* 800F2A2C  3C C0 80 39 */	lis r6, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 800F2A30  38 C6 E9 0C */	addi r6, r6, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 800F2A34  4B FB AC BD */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F2A38  7F E3 FB 78 */	mr r3, r31
/* 800F2A3C  38 80 01 00 */	li r4, 0x100
/* 800F2A40  4B FB D0 D5 */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F2A44  7F E3 FB 78 */	mr r3, r31
/* 800F2A48  4B FC CE 0D */	bl keepItemData__9daAlink_cFv
/* 800F2A4C  7F E3 FB 78 */	mr r3, r31
/* 800F2A50  7F C4 F3 78 */	mr r4, r30
/* 800F2A54  48 01 BB 85 */	bl setBottleModel__9daAlink_cFUs
/* 800F2A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F2A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F2A60  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800F2A64  60 00 20 00 */	ori r0, r0, 0x2000
/* 800F2A68  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800F2A6C  38 00 00 01 */	li r0, 1
/* 800F2A70  90 1F 31 9C */	stw r0, 0x319c(r31)
/* 800F2A74  28 1F 00 00 */	cmplwi r31, 0
/* 800F2A78  41 82 00 0C */	beq lbl_800F2A84
/* 800F2A7C  83 DF 00 04 */	lwz r30, 4(r31)
/* 800F2A80  48 00 00 08 */	b lbl_800F2A88
lbl_800F2A84:
/* 800F2A84  3B C0 FF FF */	li r30, -1
lbl_800F2A88:
/* 800F2A88  48 08 EB B9 */	bl dCam_getBody__Fv
/* 800F2A8C  38 80 00 12 */	li r4, 0x12
/* 800F2A90  7F C5 F3 78 */	mr r5, r30
/* 800F2A94  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800F2A98  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800F2A9C  38 C6 00 43 */	addi r6, r6, 0x43
/* 800F2AA0  38 E0 00 01 */	li r7, 1
/* 800F2AA4  39 1F 31 9C */	addi r8, r31, 0x319c
/* 800F2AA8  39 20 00 00 */	li r9, 0
/* 800F2AAC  4C C6 31 82 */	crclr 6
/* 800F2AB0  4B F9 5F CD */	bl StartEventCamera__9dCamera_cFiie
/* 800F2AB4  38 00 00 00 */	li r0, 0
/* 800F2AB8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F2ABC  38 60 00 01 */	li r3, 1
lbl_800F2AC0:
/* 800F2AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2AC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F2AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2ACC  7C 08 03 A6 */	mtlr r0
/* 800F2AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2AD4  4E 80 00 20 */	blr 
