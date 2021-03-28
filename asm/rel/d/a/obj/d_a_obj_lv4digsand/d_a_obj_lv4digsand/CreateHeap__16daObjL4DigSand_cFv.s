lbl_80C66C24:
/* 80C66C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66C28  7C 08 02 A6 */	mflr r0
/* 80C66C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66C34  7C 7F 1B 78 */	mr r31, r3
/* 80C66C38  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C66C3C  38 63 76 0C */	addi r3, r3, l_arcName@l
/* 80C66C40  80 63 00 00 */	lwz r3, 0(r3)
/* 80C66C44  38 80 00 04 */	li r4, 4
/* 80C66C48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C66C4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C66C50  3C A5 00 02 */	addis r5, r5, 2
/* 80C66C54  38 C0 00 80 */	li r6, 0x80
/* 80C66C58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C66C5C  4B 3D 56 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C66C60  3C 80 00 08 */	lis r4, 8
/* 80C66C64  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C66C68  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C66C6C  4B 3A DF E8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C66C70  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C66C74  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C66C78  30 03 FF FF */	addic r0, r3, -1
/* 80C66C7C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C66C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66C88  7C 08 03 A6 */	mtlr r0
/* 80C66C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66C90  4E 80 00 20 */	blr 
