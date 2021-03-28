lbl_80C68F20:
/* 80C68F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68F24  7C 08 02 A6 */	mflr r0
/* 80C68F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68F30  7C 7F 1B 78 */	mr r31, r3
/* 80C68F34  80 03 06 14 */	lwz r0, 0x614(r3)
/* 80C68F38  54 00 10 3A */	slwi r0, r0, 2
/* 80C68F3C  3C 60 80 C7 */	lis r3, l_arcName@ha
/* 80C68F40  38 63 99 90 */	addi r3, r3, l_arcName@l
/* 80C68F44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C68F48  3C 80 80 C7 */	lis r4, l_bmdidx@ha
/* 80C68F4C  38 84 98 F4 */	addi r4, r4, l_bmdidx@l
/* 80C68F50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C68F54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C68F58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C68F5C  3C A5 00 02 */	addis r5, r5, 2
/* 80C68F60  38 C0 00 80 */	li r6, 0x80
/* 80C68F64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C68F68  4B 3D 33 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C68F6C  3C 80 00 08 */	lis r4, 8
/* 80C68F70  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C68F74  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C68F78  4B 3A BC DC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C68F7C  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C68F80  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80C68F84  30 03 FF FF */	addic r0, r3, -1
/* 80C68F88  7C 60 19 10 */	subfe r3, r0, r3
/* 80C68F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68F94  7C 08 03 A6 */	mtlr r0
/* 80C68F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68F9C  4E 80 00 20 */	blr 
