lbl_80AA8C8C:
/* 80AA8C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8C90  7C 08 02 A6 */	mflr r0
/* 80AA8C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA8CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA8CA4  7C 9F 23 78 */	mr r31, r4
/* 80AA8CA8  41 82 01 24 */	beq lbl_80AA8DCC
/* 80AA8CAC  3C 60 80 AB */	lis r3, __vt__12daNpc_Post_c@ha /* 0x80AADB14@ha */
/* 80AA8CB0  38 03 DB 14 */	addi r0, r3, __vt__12daNpc_Post_c@l /* 0x80AADB14@l */
/* 80AA8CB4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AA8CB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AA8CBC  28 03 00 00 */	cmplwi r3, 0
/* 80AA8CC0  41 82 00 08 */	beq lbl_80AA8CC8
/* 80AA8CC4  4B 56 86 4D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AA8CC8:
/* 80AA8CC8  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80AA8CCC  28 03 00 00 */	cmplwi r3, 0
/* 80AA8CD0  41 82 00 08 */	beq lbl_80AA8CD8
/* 80AA8CD4  4B 56 86 3D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AA8CD8:
/* 80AA8CD8  7F C3 F3 78 */	mr r3, r30
/* 80AA8CDC  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80AA8CE0  54 00 10 3A */	slwi r0, r0, 2
/* 80AA8CE4  3C 80 80 AB */	lis r4, l_loadResPtrnList@ha /* 0x80AAD430@ha */
/* 80AA8CE8  38 84 D4 30 */	addi r4, r4, l_loadResPtrnList@l /* 0x80AAD430@l */
/* 80AA8CEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AA8CF0  3C A0 80 AB */	lis r5, l_resNameList@ha /* 0x80AAD414@ha */
/* 80AA8CF4  38 A5 D4 14 */	addi r5, r5, l_resNameList@l /* 0x80AAD414@l */
/* 80AA8CF8  4B 69 F7 B5 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AA8CFC  34 1E 0F B0 */	addic. r0, r30, 0xfb0
/* 80AA8D00  41 82 00 10 */	beq lbl_80AA8D10
/* 80AA8D04  3C 60 80 AB */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80AADB08@ha */
/* 80AA8D08  38 03 DB 08 */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80AADB08@l */
/* 80AA8D0C  90 1E 0F D4 */	stw r0, 0xfd4(r30)
lbl_80AA8D10:
/* 80AA8D10  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AA8D14  3C 80 80 AB */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AAC304@ha */
/* 80AA8D18  38 84 C3 04 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AAC304@l */
/* 80AA8D1C  38 A0 00 08 */	li r5, 8
/* 80AA8D20  38 C0 00 04 */	li r6, 4
/* 80AA8D24  4B 8B 8F C5 */	bl __destroy_arr
/* 80AA8D28  34 1E 0E 50 */	addic. r0, r30, 0xe50
/* 80AA8D2C  41 82 00 84 */	beq lbl_80AA8DB0
/* 80AA8D30  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AA8D34  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AA8D38  90 7E 0E 8C */	stw r3, 0xe8c(r30)
/* 80AA8D3C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA8D40  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80AA8D44  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA8D48  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80AA8D4C  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80AA8D50  41 82 00 54 */	beq lbl_80AA8DA4
/* 80AA8D54  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AA8D58  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AA8D5C  90 7E 0F 70 */	stw r3, 0xf70(r30)
/* 80AA8D60  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA8D64  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80AA8D68  34 1E 0F 74 */	addic. r0, r30, 0xf74
/* 80AA8D6C  41 82 00 10 */	beq lbl_80AA8D7C
/* 80AA8D70  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AADAFC@ha */
/* 80AA8D74  38 03 DA FC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AADAFC@l */
/* 80AA8D78  90 1E 0F 88 */	stw r0, 0xf88(r30)
lbl_80AA8D7C:
/* 80AA8D7C  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80AA8D80  41 82 00 24 */	beq lbl_80AA8DA4
/* 80AA8D84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AA8D88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AA8D8C  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80AA8D90  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80AA8D94  41 82 00 10 */	beq lbl_80AA8DA4
/* 80AA8D98  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha /* 0x80AADAF0@ha */
/* 80AA8D9C  38 03 DA F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AADAF0@l */
/* 80AA8DA0  90 1E 0F 6C */	stw r0, 0xf6c(r30)
lbl_80AA8DA4:
/* 80AA8DA4  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80AA8DA8  38 80 00 00 */	li r4, 0
/* 80AA8DAC  4B 5D B3 39 */	bl __dt__12dCcD_GObjInfFv
lbl_80AA8DB0:
/* 80AA8DB0  7F C3 F3 78 */	mr r3, r30
/* 80AA8DB4  38 80 00 00 */	li r4, 0
/* 80AA8DB8  48 00 31 4D */	bl __dt__8daNpcT_cFv
/* 80AA8DBC  7F E0 07 35 */	extsh. r0, r31
/* 80AA8DC0  40 81 00 0C */	ble lbl_80AA8DCC
/* 80AA8DC4  7F C3 F3 78 */	mr r3, r30
/* 80AA8DC8  4B 82 5F 75 */	bl __dl__FPv
lbl_80AA8DCC:
/* 80AA8DCC  7F C3 F3 78 */	mr r3, r30
/* 80AA8DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA8DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA8DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8DDC  7C 08 03 A6 */	mtlr r0
/* 80AA8DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8DE4  4E 80 00 20 */	blr 
