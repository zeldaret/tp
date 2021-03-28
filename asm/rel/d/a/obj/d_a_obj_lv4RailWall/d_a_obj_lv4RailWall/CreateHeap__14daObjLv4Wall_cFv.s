lbl_80C60CD0:
/* 80C60CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60CD4  7C 08 02 A6 */	mflr r0
/* 80C60CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60CE0  7C 7F 1B 78 */	mr r31, r3
/* 80C60CE4  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C60CE8  38 63 1B DC */	addi r3, r3, l_arcName@l
/* 80C60CEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C60CF0  38 80 00 04 */	li r4, 4
/* 80C60CF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C60CF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C60CFC  3C A5 00 02 */	addis r5, r5, 2
/* 80C60D00  38 C0 00 80 */	li r6, 0x80
/* 80C60D04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C60D08  4B 3D B5 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C60D0C  3C 80 00 08 */	lis r4, 8
/* 80C60D10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C60D14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C60D18  4B 3B 3F 3C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C60D1C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80C60D20  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C60D24  30 03 FF FF */	addic r0, r3, -1
/* 80C60D28  7C 60 19 10 */	subfe r3, r0, r3
/* 80C60D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60D34  7C 08 03 A6 */	mtlr r0
/* 80C60D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60D3C  4E 80 00 20 */	blr 
