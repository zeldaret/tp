lbl_80A6ABAC:
/* 80A6ABAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6ABB0  7C 08 02 A6 */	mflr r0
/* 80A6ABB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6ABB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6ABBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6ABC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A6ABC4  7C 9F 23 78 */	mr r31, r4
/* 80A6ABC8  41 82 01 10 */	beq lbl_80A6ACD8
/* 80A6ABCC  3C 60 80 A7 */	lis r3, __vt__11daNpc_Lud_c@ha /* 0x80A70A7C@ha */
/* 80A6ABD0  38 03 0A 7C */	addi r0, r3, __vt__11daNpc_Lud_c@l /* 0x80A70A7C@l */
/* 80A6ABD4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A6ABD8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6ABDC  28 03 00 00 */	cmplwi r3, 0
/* 80A6ABE0  41 82 00 08 */	beq lbl_80A6ABE8
/* 80A6ABE4  4B 5A 67 2D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A6ABE8:
/* 80A6ABE8  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80A6ABEC  28 03 00 00 */	cmplwi r3, 0
/* 80A6ABF0  41 82 00 08 */	beq lbl_80A6ABF8
/* 80A6ABF4  4B 5A 67 1D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A6ABF8:
/* 80A6ABF8  7F C3 F3 78 */	mr r3, r30
/* 80A6ABFC  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6AC00  54 00 10 3A */	slwi r0, r0, 2
/* 80A6AC04  3C 80 80 A7 */	lis r4, l_loadResPtrnList@ha /* 0x80A70070@ha */
/* 80A6AC08  38 84 00 70 */	addi r4, r4, l_loadResPtrnList@l /* 0x80A70070@l */
/* 80A6AC0C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A6AC10  3C A0 80 A7 */	lis r5, l_resNameList@ha /* 0x80A70044@ha */
/* 80A6AC14  38 A5 00 44 */	addi r5, r5, l_resNameList@l /* 0x80A70044@l */
/* 80A6AC18  4B 6D D8 95 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80A6AC1C  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80A6AC20  3C 80 80 A7 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A6EEFC@ha */
/* 80A6AC24  38 84 EE FC */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A6EEFC@l */
/* 80A6AC28  38 A0 00 08 */	li r5, 8
/* 80A6AC2C  38 C0 00 03 */	li r6, 3
/* 80A6AC30  4B 8F 70 B9 */	bl __destroy_arr
/* 80A6AC34  34 1E 0E 50 */	addic. r0, r30, 0xe50
/* 80A6AC38  41 82 00 84 */	beq lbl_80A6ACBC
/* 80A6AC3C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A6AC40  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A6AC44  90 7E 0E 8C */	stw r3, 0xe8c(r30)
/* 80A6AC48  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A6AC4C  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80A6AC50  38 03 00 84 */	addi r0, r3, 0x84
/* 80A6AC54  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80A6AC58  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80A6AC5C  41 82 00 54 */	beq lbl_80A6ACB0
/* 80A6AC60  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A6AC64  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A6AC68  90 7E 0F 70 */	stw r3, 0xf70(r30)
/* 80A6AC6C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A6AC70  90 1E 0F 88 */	stw r0, 0xf88(r30)
/* 80A6AC74  34 1E 0F 74 */	addic. r0, r30, 0xf74
/* 80A6AC78  41 82 00 10 */	beq lbl_80A6AC88
/* 80A6AC7C  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A70A70@ha */
/* 80A6AC80  38 03 0A 70 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A70A70@l */
/* 80A6AC84  90 1E 0F 88 */	stw r0, 0xf88(r30)
lbl_80A6AC88:
/* 80A6AC88  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80A6AC8C  41 82 00 24 */	beq lbl_80A6ACB0
/* 80A6AC90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A6AC94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A6AC98  90 1E 0F 70 */	stw r0, 0xf70(r30)
/* 80A6AC9C  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80A6ACA0  41 82 00 10 */	beq lbl_80A6ACB0
/* 80A6ACA4  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A70A64@ha */
/* 80A6ACA8  38 03 0A 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A70A64@l */
/* 80A6ACAC  90 1E 0F 6C */	stw r0, 0xf6c(r30)
lbl_80A6ACB0:
/* 80A6ACB0  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80A6ACB4  38 80 00 00 */	li r4, 0
/* 80A6ACB8  4B 61 94 2D */	bl __dt__12dCcD_GObjInfFv
lbl_80A6ACBC:
/* 80A6ACBC  7F C3 F3 78 */	mr r3, r30
/* 80A6ACC0  38 80 00 00 */	li r4, 0
/* 80A6ACC4  48 00 3E 39 */	bl __dt__8daNpcT_cFv
/* 80A6ACC8  7F E0 07 35 */	extsh. r0, r31
/* 80A6ACCC  40 81 00 0C */	ble lbl_80A6ACD8
/* 80A6ACD0  7F C3 F3 78 */	mr r3, r30
/* 80A6ACD4  4B 86 40 69 */	bl __dl__FPv
lbl_80A6ACD8:
/* 80A6ACD8  7F C3 F3 78 */	mr r3, r30
/* 80A6ACDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6ACE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6ACE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6ACE8  7C 08 03 A6 */	mtlr r0
/* 80A6ACEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6ACF0  4E 80 00 20 */	blr 
