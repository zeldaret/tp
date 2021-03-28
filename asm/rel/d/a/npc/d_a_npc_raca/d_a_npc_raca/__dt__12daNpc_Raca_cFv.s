lbl_80AB5CAC:
/* 80AB5CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5CB0  7C 08 02 A6 */	mflr r0
/* 80AB5CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB5CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB5CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB5CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB5CC4  7C 9F 23 78 */	mr r31, r4
/* 80AB5CC8  41 82 01 18 */	beq lbl_80AB5DE0
/* 80AB5CCC  3C 60 80 AC */	lis r3, __vt__12daNpc_Raca_c@ha
/* 80AB5CD0  38 03 94 54 */	addi r0, r3, __vt__12daNpc_Raca_c@l
/* 80AB5CD4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AB5CD8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AB5CDC  28 00 00 00 */	cmplwi r0, 0
/* 80AB5CE0  41 82 00 0C */	beq lbl_80AB5CEC
/* 80AB5CE4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AB5CE8  4B 55 B6 28 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AB5CEC:
/* 80AB5CEC  7F C3 F3 78 */	mr r3, r30
/* 80AB5CF0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80AB5CF4  54 00 10 3A */	slwi r0, r0, 2
/* 80AB5CF8  3C 80 80 AC */	lis r4, l_loadResPtrnList@ha
/* 80AB5CFC  38 84 90 00 */	addi r4, r4, l_loadResPtrnList@l
/* 80AB5D00  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AB5D04  3C A0 80 AC */	lis r5, l_resNameList@ha
/* 80AB5D08  38 A5 8F F4 */	addi r5, r5, l_resNameList@l
/* 80AB5D0C  4B 69 27 A0 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80AB5D10  34 1E 0F A4 */	addic. r0, r30, 0xfa4
/* 80AB5D14  41 82 00 10 */	beq lbl_80AB5D24
/* 80AB5D18  3C 60 80 AC */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80AB5D1C  38 03 94 48 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80AB5D20  90 1E 0F C8 */	stw r0, 0xfc8(r30)
lbl_80AB5D24:
/* 80AB5D24  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80AB5D28  3C 80 80 AC */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80AB5D2C  38 84 80 40 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80AB5D30  38 A0 00 08 */	li r5, 8
/* 80AB5D34  38 C0 00 01 */	li r6, 1
/* 80AB5D38  4B 8A BF B0 */	b __destroy_arr
/* 80AB5D3C  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80AB5D40  41 82 00 84 */	beq lbl_80AB5DC4
/* 80AB5D44  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AB5D48  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AB5D4C  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80AB5D50  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB5D54  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AB5D58  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB5D5C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AB5D60  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AB5D64  41 82 00 54 */	beq lbl_80AB5DB8
/* 80AB5D68  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AB5D6C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AB5D70  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80AB5D74  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB5D78  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AB5D7C  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80AB5D80  41 82 00 10 */	beq lbl_80AB5D90
/* 80AB5D84  3C 60 80 AC */	lis r3, __vt__8cM3dGCyl@ha
/* 80AB5D88  38 03 94 3C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AB5D8C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80AB5D90:
/* 80AB5D90  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AB5D94  41 82 00 24 */	beq lbl_80AB5DB8
/* 80AB5D98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AB5D9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AB5DA0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AB5DA4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AB5DA8  41 82 00 10 */	beq lbl_80AB5DB8
/* 80AB5DAC  3C 60 80 AC */	lis r3, __vt__8cM3dGAab@ha
/* 80AB5DB0  38 03 94 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AB5DB4  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80AB5DB8:
/* 80AB5DB8  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80AB5DBC  38 80 00 00 */	li r4, 0
/* 80AB5DC0  4B 5C E3 24 */	b __dt__12dCcD_GObjInfFv
lbl_80AB5DC4:
/* 80AB5DC4  7F C3 F3 78 */	mr r3, r30
/* 80AB5DC8  38 80 00 00 */	li r4, 0
/* 80AB5DCC  48 00 1E 75 */	bl __dt__8daNpcT_cFv
/* 80AB5DD0  7F E0 07 35 */	extsh. r0, r31
/* 80AB5DD4  40 81 00 0C */	ble lbl_80AB5DE0
/* 80AB5DD8  7F C3 F3 78 */	mr r3, r30
/* 80AB5DDC  4B 81 8F 60 */	b __dl__FPv
lbl_80AB5DE0:
/* 80AB5DE0  7F C3 F3 78 */	mr r3, r30
/* 80AB5DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5DE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB5DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5DF0  7C 08 03 A6 */	mtlr r0
/* 80AB5DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5DF8  4E 80 00 20 */	blr 
