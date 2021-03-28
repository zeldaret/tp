lbl_809A6C8C:
/* 809A6C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6C90  7C 08 02 A6 */	mflr r0
/* 809A6C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A6C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A6C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 809A6CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A6CA4  7C 9F 23 78 */	mr r31, r4
/* 809A6CA8  41 82 00 FC */	beq lbl_809A6DA4
/* 809A6CAC  3C 60 80 9B */	lis r3, __vt__11daNpc_Doc_c@ha
/* 809A6CB0  38 03 A9 F4 */	addi r0, r3, __vt__11daNpc_Doc_c@l
/* 809A6CB4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809A6CB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809A6CBC  28 03 00 00 */	cmplwi r3, 0
/* 809A6CC0  41 82 00 08 */	beq lbl_809A6CC8
/* 809A6CC4  4B 66 A6 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809A6CC8:
/* 809A6CC8  7F C3 F3 78 */	mr r3, r30
/* 809A6CCC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809A6CD0  54 00 10 3A */	slwi r0, r0, 2
/* 809A6CD4  3C 80 80 9B */	lis r4, l_loadResPtrnList@ha
/* 809A6CD8  38 84 A4 88 */	addi r4, r4, l_loadResPtrnList@l
/* 809A6CDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809A6CE0  3C A0 80 9B */	lis r5, l_resNameList@ha
/* 809A6CE4  38 A5 A4 78 */	addi r5, r5, l_resNameList@l
/* 809A6CE8  4B 7A 17 C4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 809A6CEC  34 1E 0F 84 */	addic. r0, r30, 0xf84
/* 809A6CF0  41 82 00 10 */	beq lbl_809A6D00
/* 809A6CF4  3C 60 80 9B */	lis r3, __vt__13daNpcT_Path_c@ha
/* 809A6CF8  38 03 A9 E8 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 809A6CFC  90 1E 0F A8 */	stw r0, 0xfa8(r30)
lbl_809A6D00:
/* 809A6D00  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 809A6D04  41 82 00 84 */	beq lbl_809A6D88
/* 809A6D08  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809A6D0C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809A6D10  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 809A6D14  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A6D18  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809A6D1C  38 03 00 84 */	addi r0, r3, 0x84
/* 809A6D20  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809A6D24  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809A6D28  41 82 00 54 */	beq lbl_809A6D7C
/* 809A6D2C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809A6D30  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809A6D34  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 809A6D38  38 03 00 58 */	addi r0, r3, 0x58
/* 809A6D3C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809A6D40  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 809A6D44  41 82 00 10 */	beq lbl_809A6D54
/* 809A6D48  3C 60 80 9B */	lis r3, __vt__8cM3dGCyl@ha
/* 809A6D4C  38 03 A9 DC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809A6D50  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_809A6D54:
/* 809A6D54  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809A6D58  41 82 00 24 */	beq lbl_809A6D7C
/* 809A6D5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A6D60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A6D64  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809A6D68  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809A6D6C  41 82 00 10 */	beq lbl_809A6D7C
/* 809A6D70  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha
/* 809A6D74  38 03 A9 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A6D78  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_809A6D7C:
/* 809A6D7C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 809A6D80  38 80 00 00 */	li r4, 0
/* 809A6D84  4B 6D D3 60 */	b __dt__12dCcD_GObjInfFv
lbl_809A6D88:
/* 809A6D88  7F C3 F3 78 */	mr r3, r30
/* 809A6D8C  38 80 00 00 */	li r4, 0
/* 809A6D90  48 00 23 BD */	bl __dt__8daNpcT_cFv
/* 809A6D94  7F E0 07 35 */	extsh. r0, r31
/* 809A6D98  40 81 00 0C */	ble lbl_809A6DA4
/* 809A6D9C  7F C3 F3 78 */	mr r3, r30
/* 809A6DA0  4B 92 7F 9C */	b __dl__FPv
lbl_809A6DA4:
/* 809A6DA4  7F C3 F3 78 */	mr r3, r30
/* 809A6DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A6DAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A6DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A6DB4  7C 08 03 A6 */	mtlr r0
/* 809A6DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809A6DBC  4E 80 00 20 */	blr 
