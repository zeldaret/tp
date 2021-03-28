lbl_80B49BEC:
/* 80B49BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B49BF0  7C 08 02 A6 */	mflr r0
/* 80B49BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B49BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B49BFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B49C00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B49C04  7C 9F 23 78 */	mr r31, r4
/* 80B49C08  41 82 01 00 */	beq lbl_80B49D08
/* 80B49C0C  3C 60 80 B5 */	lis r3, __vt__13daNpc_yamiT_c@ha
/* 80B49C10  38 03 D1 1C */	addi r0, r3, __vt__13daNpc_yamiT_c@l
/* 80B49C14  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B49C18  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B49C1C  28 00 00 00 */	cmplwi r0, 0
/* 80B49C20  41 82 00 0C */	beq lbl_80B49C2C
/* 80B49C24  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B49C28  4B 4C 76 E8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B49C2C:
/* 80B49C2C  7F C3 F3 78 */	mr r3, r30
/* 80B49C30  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B49C34  54 00 10 3A */	slwi r0, r0, 2
/* 80B49C38  3C 80 80 B5 */	lis r4, l_loadResPtrnList@ha
/* 80B49C3C  38 84 CE E0 */	addi r4, r4, l_loadResPtrnList@l
/* 80B49C40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B49C44  3C A0 80 B5 */	lis r5, l_resNameList@ha
/* 80B49C48  38 A5 CE D4 */	addi r5, r5, l_resNameList@l
/* 80B49C4C  4B 5F E8 60 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B49C50  34 1E 0F A0 */	addic. r0, r30, 0xfa0
/* 80B49C54  41 82 00 10 */	beq lbl_80B49C64
/* 80B49C58  3C 60 80 B5 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B49C5C  38 03 D1 10 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B49C60  90 1E 0F C4 */	stw r0, 0xfc4(r30)
lbl_80B49C64:
/* 80B49C64  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B49C68  41 82 00 84 */	beq lbl_80B49CEC
/* 80B49C6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B49C70  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B49C74  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B49C78  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B49C7C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B49C80  38 03 00 84 */	addi r0, r3, 0x84
/* 80B49C84  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B49C88  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B49C8C  41 82 00 54 */	beq lbl_80B49CE0
/* 80B49C90  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B49C94  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B49C98  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B49C9C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B49CA0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B49CA4  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B49CA8  41 82 00 10 */	beq lbl_80B49CB8
/* 80B49CAC  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B49CB0  38 03 D1 04 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B49CB4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B49CB8:
/* 80B49CB8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B49CBC  41 82 00 24 */	beq lbl_80B49CE0
/* 80B49CC0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B49CC4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B49CC8  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B49CCC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B49CD0  41 82 00 10 */	beq lbl_80B49CE0
/* 80B49CD4  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha
/* 80B49CD8  38 03 D0 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B49CDC  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B49CE0:
/* 80B49CE0  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B49CE4  38 80 00 00 */	li r4, 0
/* 80B49CE8  4B 53 A3 FC */	b __dt__12dCcD_GObjInfFv
lbl_80B49CEC:
/* 80B49CEC  7F C3 F3 78 */	mr r3, r30
/* 80B49CF0  38 80 00 00 */	li r4, 0
/* 80B49CF4  48 00 1E D1 */	bl __dt__8daNpcT_cFv
/* 80B49CF8  7F E0 07 35 */	extsh. r0, r31
/* 80B49CFC  40 81 00 0C */	ble lbl_80B49D08
/* 80B49D00  7F C3 F3 78 */	mr r3, r30
/* 80B49D04  4B 78 50 38 */	b __dl__FPv
lbl_80B49D08:
/* 80B49D08  7F C3 F3 78 */	mr r3, r30
/* 80B49D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B49D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B49D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49D18  7C 08 03 A6 */	mtlr r0
/* 80B49D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B49D20  4E 80 00 20 */	blr 
