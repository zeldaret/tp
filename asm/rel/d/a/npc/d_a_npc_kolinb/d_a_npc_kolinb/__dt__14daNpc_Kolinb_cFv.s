lbl_80A4598C:
/* 80A4598C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A45990  7C 08 02 A6 */	mflr r0
/* 80A45994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4599C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A459A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A459A4  7C 9F 23 78 */	mr r31, r4
/* 80A459A8  41 82 01 18 */	beq lbl_80A45AC0
/* 80A459AC  3C 60 80 A5 */	lis r3, __vt__14daNpc_Kolinb_c@ha
/* 80A459B0  38 03 8D B0 */	addi r0, r3, __vt__14daNpc_Kolinb_c@l
/* 80A459B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A459B8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A459BC  28 03 00 00 */	cmplwi r3, 0
/* 80A459C0  41 82 00 08 */	beq lbl_80A459C8
/* 80A459C4  4B 5C B9 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A459C8:
/* 80A459C8  80 9E 0F B0 */	lwz r4, 0xfb0(r30)
/* 80A459CC  28 04 00 00 */	cmplwi r4, 0
/* 80A459D0  41 82 00 14 */	beq lbl_80A459E4
/* 80A459D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A459D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A459DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A459E0  4B 62 E8 70 */	b Release__4cBgSFP9dBgW_Base
lbl_80A459E4:
/* 80A459E4  7F C3 F3 78 */	mr r3, r30
/* 80A459E8  88 1E 0F B4 */	lbz r0, 0xfb4(r30)
/* 80A459EC  54 00 10 3A */	slwi r0, r0, 2
/* 80A459F0  3C 80 80 A5 */	lis r4, l_loadResPtrnList@ha
/* 80A459F4  38 84 88 A8 */	addi r4, r4, l_loadResPtrnList@l
/* 80A459F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A459FC  3C A0 80 A5 */	lis r5, l_resNameList@ha
/* 80A45A00  38 A5 88 94 */	addi r5, r5, l_resNameList@l
/* 80A45A04  4B 70 2A A8 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80A45A08  34 1E 0F D0 */	addic. r0, r30, 0xfd0
/* 80A45A0C  41 82 00 10 */	beq lbl_80A45A1C
/* 80A45A10  3C 60 80 A5 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80A45A14  38 03 8D A4 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80A45A18  90 1E 0F F4 */	stw r0, 0xff4(r30)
lbl_80A45A1C:
/* 80A45A1C  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A45A20  41 82 00 84 */	beq lbl_80A45AA4
/* 80A45A24  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A45A28  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A45A2C  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A45A30  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A45A34  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A45A38  38 03 00 84 */	addi r0, r3, 0x84
/* 80A45A3C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A45A40  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A45A44  41 82 00 54 */	beq lbl_80A45A98
/* 80A45A48  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A45A4C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A45A50  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A45A54  38 03 00 58 */	addi r0, r3, 0x58
/* 80A45A58  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A45A5C  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A45A60  41 82 00 10 */	beq lbl_80A45A70
/* 80A45A64  3C 60 80 A5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A45A68  38 03 8D 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A45A6C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A45A70:
/* 80A45A70  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A45A74  41 82 00 24 */	beq lbl_80A45A98
/* 80A45A78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A45A7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A45A80  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A45A84  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A45A88  41 82 00 10 */	beq lbl_80A45A98
/* 80A45A8C  3C 60 80 A5 */	lis r3, __vt__8cM3dGAab@ha
/* 80A45A90  38 03 8D 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A45A94  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A45A98:
/* 80A45A98  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A45A9C  38 80 00 00 */	li r4, 0
/* 80A45AA0  4B 63 E6 44 */	b __dt__12dCcD_GObjInfFv
lbl_80A45AA4:
/* 80A45AA4  7F C3 F3 78 */	mr r3, r30
/* 80A45AA8  38 80 00 00 */	li r4, 0
/* 80A45AAC  48 00 1C B1 */	bl __dt__8daNpcT_cFv
/* 80A45AB0  7F E0 07 35 */	extsh. r0, r31
/* 80A45AB4  40 81 00 0C */	ble lbl_80A45AC0
/* 80A45AB8  7F C3 F3 78 */	mr r3, r30
/* 80A45ABC  4B 88 92 80 */	b __dl__FPv
lbl_80A45AC0:
/* 80A45AC0  7F C3 F3 78 */	mr r3, r30
/* 80A45AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A45AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A45ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45AD0  7C 08 03 A6 */	mtlr r0
/* 80A45AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A45AD8  4E 80 00 20 */	blr 
