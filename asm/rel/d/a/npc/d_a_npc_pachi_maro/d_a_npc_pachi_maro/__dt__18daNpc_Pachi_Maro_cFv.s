lbl_80A97C8C:
/* 80A97C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A97C90  7C 08 02 A6 */	mflr r0
/* 80A97C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A97C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A97C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A97CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A97CA4  7C 9F 23 78 */	mr r31, r4
/* 80A97CA8  41 82 01 00 */	beq lbl_80A97DA8
/* 80A97CAC  3C 60 80 AA */	lis r3, __vt__18daNpc_Pachi_Maro_c@ha
/* 80A97CB0  38 03 C0 A8 */	addi r0, r3, __vt__18daNpc_Pachi_Maro_c@l
/* 80A97CB4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A97CB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A97CBC  28 03 00 00 */	cmplwi r3, 0
/* 80A97CC0  41 82 00 08 */	beq lbl_80A97CC8
/* 80A97CC4  4B 57 96 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A97CC8:
/* 80A97CC8  7F C3 F3 78 */	mr r3, r30
/* 80A97CCC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A97CD0  54 00 10 3A */	slwi r0, r0, 2
/* 80A97CD4  3C 80 80 AA */	lis r4, l_loadResPtrnList@ha
/* 80A97CD8  38 84 BA FC */	addi r4, r4, l_loadResPtrnList@l
/* 80A97CDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A97CE0  3C A0 80 AA */	lis r5, l_resNameList@ha
/* 80A97CE4  38 A5 BA B8 */	addi r5, r5, l_resNameList@l
/* 80A97CE8  4B 6B 07 C4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80A97CEC  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A97CF0  3C 80 80 AA */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80A97CF4  38 84 AA 38 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80A97CF8  38 A0 00 08 */	li r5, 8
/* 80A97CFC  38 C0 00 02 */	li r6, 2
/* 80A97D00  4B 8C 9F E8 */	b __destroy_arr
/* 80A97D04  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A97D08  41 82 00 84 */	beq lbl_80A97D8C
/* 80A97D0C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A97D10  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A97D14  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A97D18  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A97D1C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A97D20  38 03 00 84 */	addi r0, r3, 0x84
/* 80A97D24  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A97D28  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A97D2C  41 82 00 54 */	beq lbl_80A97D80
/* 80A97D30  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A97D34  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A97D38  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A97D3C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A97D40  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A97D44  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A97D48  41 82 00 10 */	beq lbl_80A97D58
/* 80A97D4C  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha
/* 80A97D50  38 03 C0 9C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A97D54  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A97D58:
/* 80A97D58  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A97D5C  41 82 00 24 */	beq lbl_80A97D80
/* 80A97D60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A97D64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A97D68  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A97D6C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A97D70  41 82 00 10 */	beq lbl_80A97D80
/* 80A97D74  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha
/* 80A97D78  38 03 C0 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A97D7C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A97D80:
/* 80A97D80  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A97D84  38 80 00 00 */	li r4, 0
/* 80A97D88  4B 5E C3 5C */	b __dt__12dCcD_GObjInfFv
lbl_80A97D8C:
/* 80A97D8C  7F C3 F3 78 */	mr r3, r30
/* 80A97D90  38 80 00 00 */	li r4, 0
/* 80A97D94  48 00 28 A5 */	bl __dt__8daNpcT_cFv
/* 80A97D98  7F E0 07 35 */	extsh. r0, r31
/* 80A97D9C  40 81 00 0C */	ble lbl_80A97DA8
/* 80A97DA0  7F C3 F3 78 */	mr r3, r30
/* 80A97DA4  4B 83 6F 98 */	b __dl__FPv
lbl_80A97DA8:
/* 80A97DA8  7F C3 F3 78 */	mr r3, r30
/* 80A97DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A97DB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A97DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A97DB8  7C 08 03 A6 */	mtlr r0
/* 80A97DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A97DC0  4E 80 00 20 */	blr 
