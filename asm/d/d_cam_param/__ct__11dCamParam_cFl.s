lbl_800884F0:
/* 800884F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800884F4  7C 08 02 A6 */	mflr r0
/* 800884F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800884FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80088500  93 C1 00 08 */	stw r30, 8(r1)
/* 80088504  7C 7E 1B 78 */	mr r30, r3
/* 80088508  7C 9F 23 78 */	mr r31, r4
/* 8008850C  3C 60 80 3B */	lis r3, __vt__11dCamParam_c@ha /* 0x803AC50C@ha */
/* 80088510  38 03 C5 0C */	addi r0, r3, __vt__11dCamParam_c@l /* 0x803AC50C@l */
/* 80088514  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80088518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8008851C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80088520  80 65 5D 88 */	lwz r3, 0x5d88(r5)
/* 80088524  3C 80 80 38 */	lis r4, d_d_cam_param__stringBase0@ha /* 0x8037A7E0@ha */
/* 80088528  38 84 A7 E0 */	addi r4, r4, d_d_cam_param__stringBase0@l /* 0x8037A7E0@l */
/* 8008852C  3C A5 00 02 */	addis r5, r5, 2
/* 80088530  38 C0 00 80 */	li r6, 0x80
/* 80088534  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80088538  4B FB 3E 45 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8008853C  38 03 00 08 */	addi r0, r3, 8
/* 80088540  90 1E 00 08 */	stw r0, 8(r30)
/* 80088544  80 03 00 04 */	lwz r0, 4(r3)
/* 80088548  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8008854C  7F C3 F3 78 */	mr r3, r30
/* 80088550  7F E4 FB 78 */	mr r4, r31
/* 80088554  48 00 00 81 */	bl Change__11dCamParam_cFl
/* 80088558  38 00 00 FF */	li r0, 0xff
/* 8008855C  98 1E 00 00 */	stb r0, 0(r30)
/* 80088560  98 1E 00 01 */	stb r0, 1(r30)
/* 80088564  98 1E 00 02 */	stb r0, 2(r30)
/* 80088568  38 00 FF FF */	li r0, -1
/* 8008856C  90 1E 00 04 */	stw r0, 4(r30)
/* 80088570  7F C3 F3 78 */	mr r3, r30
/* 80088574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80088578  83 C1 00 08 */	lwz r30, 8(r1)
/* 8008857C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80088580  7C 08 03 A6 */	mtlr r0
/* 80088584  38 21 00 10 */	addi r1, r1, 0x10
/* 80088588  4E 80 00 20 */	blr 
