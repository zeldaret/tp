lbl_80D46EEC:
/* 80D46EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D46EF0  7C 08 02 A6 */	mflr r0
/* 80D46EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D46EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D46F00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D46F04  7C 9E 23 78 */	mr r30, r4
/* 80D46F08  41 82 00 A8 */	beq lbl_80D46FB0
/* 80D46F0C  3C 60 80 D5 */	lis r3, __vt__8daPeru_c@ha
/* 80D46F10  38 03 C7 14 */	addi r0, r3, __vt__8daPeru_c@l
/* 80D46F14  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80D46F18  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80D46F1C  28 00 00 00 */	cmplwi r0, 0
/* 80D46F20  41 82 00 0C */	beq lbl_80D46F2C
/* 80D46F24  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D46F28  4B 2C A3 E8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80D46F2C:
/* 80D46F2C  7F E3 FB 78 */	mr r3, r31
/* 80D46F30  88 1F 11 28 */	lbz r0, 0x1128(r31)
/* 80D46F34  54 00 10 3A */	slwi r0, r0, 2
/* 80D46F38  3C 80 80 D5 */	lis r4, l_loadResPtrnList@ha
/* 80D46F3C  38 84 C2 28 */	addi r4, r4, l_loadResPtrnList@l
/* 80D46F40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D46F44  3C A0 80 D5 */	lis r5, l_resNameList@ha
/* 80D46F48  38 A5 C2 1C */	addi r5, r5, l_resNameList@l
/* 80D46F4C  4B 40 15 60 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80D46F50  34 1F 11 00 */	addic. r0, r31, 0x1100
/* 80D46F54  41 82 00 10 */	beq lbl_80D46F64
/* 80D46F58  3C 60 80 D5 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80D46F5C  38 03 C7 08 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80D46F60  90 1F 11 24 */	stw r0, 0x1124(r31)
lbl_80D46F64:
/* 80D46F64  38 7F 0E 88 */	addi r3, r31, 0xe88
/* 80D46F68  3C 80 80 D5 */	lis r4, __dt__8dCcD_CylFv@ha
/* 80D46F6C  38 84 B0 50 */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 80D46F70  38 A0 01 3C */	li r5, 0x13c
/* 80D46F74  38 C0 00 02 */	li r6, 2
/* 80D46F78  4B 61 AD 70 */	b __destroy_arr
/* 80D46F7C  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D46F80  3C 80 80 D5 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80D46F84  38 84 B0 08 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80D46F88  38 A0 00 08 */	li r5, 8
/* 80D46F8C  38 C0 00 03 */	li r6, 3
/* 80D46F90  4B 61 AD 58 */	b __destroy_arr
/* 80D46F94  7F E3 FB 78 */	mr r3, r31
/* 80D46F98  38 80 00 00 */	li r4, 0
/* 80D46F9C  48 00 3C 6D */	bl __dt__8daNpcT_cFv
/* 80D46FA0  7F C0 07 35 */	extsh. r0, r30
/* 80D46FA4  40 81 00 0C */	ble lbl_80D46FB0
/* 80D46FA8  7F E3 FB 78 */	mr r3, r31
/* 80D46FAC  4B 58 7D 90 */	b __dl__FPv
lbl_80D46FB0:
/* 80D46FB0  7F E3 FB 78 */	mr r3, r31
/* 80D46FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D46FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D46FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D46FC0  7C 08 03 A6 */	mtlr r0
/* 80D46FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46FC8  4E 80 00 20 */	blr 
