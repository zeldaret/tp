lbl_8054F3AC:
/* 8054F3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F3B0  7C 08 02 A6 */	mflr r0
/* 8054F3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F3B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F3BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8054F3C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054F3C4  7C 9F 23 78 */	mr r31, r4
/* 8054F3C8  41 82 01 14 */	beq lbl_8054F4DC
/* 8054F3CC  3C 60 80 55 */	lis r3, __vt__12daNpc_Kkri_c@ha /* 0x80553E08@ha */
/* 8054F3D0  38 03 3E 08 */	addi r0, r3, __vt__12daNpc_Kkri_c@l /* 0x80553E08@l */
/* 8054F3D4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8054F3D8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8054F3DC  28 03 00 00 */	cmplwi r3, 0
/* 8054F3E0  41 82 00 08 */	beq lbl_8054F3E8
/* 8054F3E4  4B AC 1F 2D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8054F3E8:
/* 8054F3E8  7F C3 F3 78 */	mr r3, r30
/* 8054F3EC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8054F3F0  54 00 10 3A */	slwi r0, r0, 2
/* 8054F3F4  3C 80 80 55 */	lis r4, l_loadResPtrnList@ha /* 0x80553664@ha */
/* 8054F3F8  38 84 36 64 */	addi r4, r4, l_loadResPtrnList@l /* 0x80553664@l */
/* 8054F3FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054F400  3C A0 80 55 */	lis r5, l_resNameList@ha /* 0x80553650@ha */
/* 8054F404  38 A5 36 50 */	addi r5, r5, l_resNameList@l /* 0x80553650@l */
/* 8054F408  4B BF 90 A5 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 8054F40C  34 1E 0F A4 */	addic. r0, r30, 0xfa4
/* 8054F410  41 82 00 10 */	beq lbl_8054F420
/* 8054F414  3C 60 80 55 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80553DFC@ha */
/* 8054F418  38 03 3D FC */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80553DFC@l */
/* 8054F41C  90 1E 0F C8 */	stw r0, 0xfc8(r30)
lbl_8054F420:
/* 8054F420  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 8054F424  3C 80 80 55 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x805525A0@ha */
/* 8054F428  38 84 25 A0 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x805525A0@l */
/* 8054F42C  38 A0 00 08 */	li r5, 8
/* 8054F430  38 C0 00 01 */	li r6, 1
/* 8054F434  4B E1 28 B5 */	bl __destroy_arr
/* 8054F438  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 8054F43C  41 82 00 84 */	beq lbl_8054F4C0
/* 8054F440  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8054F444  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8054F448  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 8054F44C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8054F450  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 8054F454  38 03 00 84 */	addi r0, r3, 0x84
/* 8054F458  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 8054F45C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8054F460  41 82 00 54 */	beq lbl_8054F4B4
/* 8054F464  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8054F468  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8054F46C  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 8054F470  38 03 00 58 */	addi r0, r3, 0x58
/* 8054F474  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 8054F478  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 8054F47C  41 82 00 10 */	beq lbl_8054F48C
/* 8054F480  3C 60 80 55 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80553DF0@ha */
/* 8054F484  38 03 3D F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80553DF0@l */
/* 8054F488  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_8054F48C:
/* 8054F48C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8054F490  41 82 00 24 */	beq lbl_8054F4B4
/* 8054F494  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054F498  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8054F49C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 8054F4A0  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8054F4A4  41 82 00 10 */	beq lbl_8054F4B4
/* 8054F4A8  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha /* 0x80553DE4@ha */
/* 8054F4AC  38 03 3D E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80553DE4@l */
/* 8054F4B0  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_8054F4B4:
/* 8054F4B4  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 8054F4B8  38 80 00 00 */	li r4, 0
/* 8054F4BC  4B B3 4C 29 */	bl __dt__12dCcD_GObjInfFv
lbl_8054F4C0:
/* 8054F4C0  7F C3 F3 78 */	mr r3, r30
/* 8054F4C4  38 80 00 00 */	li r4, 0
/* 8054F4C8  48 00 2C D9 */	bl __dt__8daNpcT_cFv
/* 8054F4CC  7F E0 07 35 */	extsh. r0, r31
/* 8054F4D0  40 81 00 0C */	ble lbl_8054F4DC
/* 8054F4D4  7F C3 F3 78 */	mr r3, r30
/* 8054F4D8  4B D7 F8 65 */	bl __dl__FPv
lbl_8054F4DC:
/* 8054F4DC  7F C3 F3 78 */	mr r3, r30
/* 8054F4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F4E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054F4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F4EC  7C 08 03 A6 */	mtlr r0
/* 8054F4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F4F4  4E 80 00 20 */	blr 
