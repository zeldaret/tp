lbl_80CC0EC4:
/* 80CC0EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0EC8  7C 08 02 A6 */	mflr r0
/* 80CC0ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0ED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC0ED8  7C 7E 1B 78 */	mr r30, r3
/* 80CC0EDC  3C 80 80 CC */	lis r4, l_bmdFileIdx@ha /* 0x80CC1450@ha */
/* 80CC0EE0  83 E4 14 50 */	lwz r31, l_bmdFileIdx@l(r4)  /* 0x80CC1450@l */
/* 80CC0EE4  48 00 04 01 */	bl getResName__13daObj_Roten_cFv
/* 80CC0EE8  7F E4 FB 78 */	mr r4, r31
/* 80CC0EEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC0EF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0EF4  3C A5 00 02 */	addis r5, r5, 2
/* 80CC0EF8  38 C0 00 80 */	li r6, 0x80
/* 80CC0EFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC0F00  4B 37 B3 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC0F04  3C 80 00 08 */	lis r4, 8
/* 80CC0F08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC0F0C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC0F10  4B 35 3D 45 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC0F14  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80CC0F18  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC0F1C  30 03 FF FF */	addic r0, r3, -1
/* 80CC0F20  7C 00 19 10 */	subfe r0, r0, r3
/* 80CC0F24  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80CC0F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0F2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC0F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0F34  7C 08 03 A6 */	mtlr r0
/* 80CC0F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0F3C  4E 80 00 20 */	blr 
