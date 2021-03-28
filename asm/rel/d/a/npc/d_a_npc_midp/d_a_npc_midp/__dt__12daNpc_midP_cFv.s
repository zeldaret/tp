lbl_80A70C6C:
/* 80A70C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A70C70  7C 08 02 A6 */	mflr r0
/* 80A70C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A70C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A70C7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A70C80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A70C84  7C 9F 23 78 */	mr r31, r4
/* 80A70C88  41 82 00 EC */	beq lbl_80A70D74
/* 80A70C8C  3C 60 80 A7 */	lis r3, __vt__12daNpc_midP_c@ha
/* 80A70C90  38 03 3C 78 */	addi r0, r3, __vt__12daNpc_midP_c@l
/* 80A70C94  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A70C98  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A70C9C  28 00 00 00 */	cmplwi r0, 0
/* 80A70CA0  41 82 00 0C */	beq lbl_80A70CAC
/* 80A70CA4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A70CA8  4B 5A 06 68 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A70CAC:
/* 80A70CAC  7F C3 F3 78 */	mr r3, r30
/* 80A70CB0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A70CB4  54 00 10 3A */	slwi r0, r0, 2
/* 80A70CB8  3C 80 80 A7 */	lis r4, l_loadResPtrnList@ha
/* 80A70CBC  38 84 3A F8 */	addi r4, r4, l_loadResPtrnList@l
/* 80A70CC0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A70CC4  3C A0 80 A7 */	lis r5, l_resNameList@ha
/* 80A70CC8  38 A5 3A EC */	addi r5, r5, l_resNameList@l
/* 80A70CCC  4B 6D 77 E0 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80A70CD0  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A70CD4  41 82 00 84 */	beq lbl_80A70D58
/* 80A70CD8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A70CDC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A70CE0  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A70CE4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A70CE8  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A70CEC  38 03 00 84 */	addi r0, r3, 0x84
/* 80A70CF0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A70CF4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A70CF8  41 82 00 54 */	beq lbl_80A70D4C
/* 80A70CFC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A70D00  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A70D04  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A70D08  38 03 00 58 */	addi r0, r3, 0x58
/* 80A70D0C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A70D10  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A70D14  41 82 00 10 */	beq lbl_80A70D24
/* 80A70D18  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A70D1C  38 03 3C 6C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A70D20  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A70D24:
/* 80A70D24  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A70D28  41 82 00 24 */	beq lbl_80A70D4C
/* 80A70D2C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A70D30  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A70D34  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A70D38  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A70D3C  41 82 00 10 */	beq lbl_80A70D4C
/* 80A70D40  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha
/* 80A70D44  38 03 3C 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A70D48  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A70D4C:
/* 80A70D4C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A70D50  38 80 00 00 */	li r4, 0
/* 80A70D54  4B 61 33 90 */	b __dt__12dCcD_GObjInfFv
lbl_80A70D58:
/* 80A70D58  7F C3 F3 78 */	mr r3, r30
/* 80A70D5C  38 80 00 00 */	li r4, 0
/* 80A70D60  48 00 1A F5 */	bl __dt__8daNpcT_cFv
/* 80A70D64  7F E0 07 35 */	extsh. r0, r31
/* 80A70D68  40 81 00 0C */	ble lbl_80A70D74
/* 80A70D6C  7F C3 F3 78 */	mr r3, r30
/* 80A70D70  4B 85 DF CC */	b __dl__FPv
lbl_80A70D74:
/* 80A70D74  7F C3 F3 78 */	mr r3, r30
/* 80A70D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A70D7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A70D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A70D84  7C 08 03 A6 */	mtlr r0
/* 80A70D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A70D8C  4E 80 00 20 */	blr 
