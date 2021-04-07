lbl_80A9C28C:
/* 80A9C28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9C290  7C 08 02 A6 */	mflr r0
/* 80A9C294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9C298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9C29C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9C2A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A9C2A4  7C 9F 23 78 */	mr r31, r4
/* 80A9C2A8  41 82 01 00 */	beq lbl_80A9C3A8
/* 80A9C2AC  3C 60 80 AA */	lis r3, __vt__18daNpc_Pachi_Taro_c@ha /* 0x80AA2AB0@ha */
/* 80A9C2B0  38 03 2A B0 */	addi r0, r3, __vt__18daNpc_Pachi_Taro_c@l /* 0x80AA2AB0@l */
/* 80A9C2B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A9C2B8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A9C2BC  28 03 00 00 */	cmplwi r3, 0
/* 80A9C2C0  41 82 00 08 */	beq lbl_80A9C2C8
/* 80A9C2C4  4B 57 50 4D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A9C2C8:
/* 80A9C2C8  7F C3 F3 78 */	mr r3, r30
/* 80A9C2CC  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A9C2D0  54 00 10 3A */	slwi r0, r0, 2
/* 80A9C2D4  3C 80 80 AA */	lis r4, l_loadResPtrnList@ha /* 0x80AA1A0C@ha */
/* 80A9C2D8  38 84 1A 0C */	addi r4, r4, l_loadResPtrnList@l /* 0x80AA1A0C@l */
/* 80A9C2DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A9C2E0  3C A0 80 AA */	lis r5, l_resNameList@ha /* 0x80AA19CC@ha */
/* 80A9C2E4  38 A5 19 CC */	addi r5, r5, l_resNameList@l /* 0x80AA19CC@l */
/* 80A9C2E8  4B 6A C1 C5 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80A9C2EC  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9C2F0  3C 80 80 AA */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AA0758@ha */
/* 80A9C2F4  38 84 07 58 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AA0758@l */
/* 80A9C2F8  38 A0 00 08 */	li r5, 8
/* 80A9C2FC  38 C0 00 06 */	li r6, 6
/* 80A9C300  4B 8C 59 E9 */	bl __destroy_arr
/* 80A9C304  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 80A9C308  41 82 00 84 */	beq lbl_80A9C38C
/* 80A9C30C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A9C310  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A9C314  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 80A9C318  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A9C31C  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80A9C320  38 03 00 84 */	addi r0, r3, 0x84
/* 80A9C324  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80A9C328  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A9C32C  41 82 00 54 */	beq lbl_80A9C380
/* 80A9C330  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A9C334  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A9C338  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 80A9C33C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A9C340  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80A9C344  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 80A9C348  41 82 00 10 */	beq lbl_80A9C358
/* 80A9C34C  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AA2AA4@ha */
/* 80A9C350  38 03 2A A4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AA2AA4@l */
/* 80A9C354  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_80A9C358:
/* 80A9C358  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A9C35C  41 82 00 24 */	beq lbl_80A9C380
/* 80A9C360  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A9C364  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A9C368  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80A9C36C  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80A9C370  41 82 00 10 */	beq lbl_80A9C380
/* 80A9C374  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha /* 0x80AA2A98@ha */
/* 80A9C378  38 03 2A 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AA2A98@l */
/* 80A9C37C  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80A9C380:
/* 80A9C380  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 80A9C384  38 80 00 00 */	li r4, 0
/* 80A9C388  4B 5E 7D 5D */	bl __dt__12dCcD_GObjInfFv
lbl_80A9C38C:
/* 80A9C38C  7F C3 F3 78 */	mr r3, r30
/* 80A9C390  38 80 00 00 */	li r4, 0
/* 80A9C394  48 00 3F C5 */	bl __dt__8daNpcT_cFv
/* 80A9C398  7F E0 07 35 */	extsh. r0, r31
/* 80A9C39C  40 81 00 0C */	ble lbl_80A9C3A8
/* 80A9C3A0  7F C3 F3 78 */	mr r3, r30
/* 80A9C3A4  4B 83 29 99 */	bl __dl__FPv
lbl_80A9C3A8:
/* 80A9C3A8  7F C3 F3 78 */	mr r3, r30
/* 80A9C3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9C3B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9C3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9C3B8  7C 08 03 A6 */	mtlr r0
/* 80A9C3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9C3C0  4E 80 00 20 */	blr 
