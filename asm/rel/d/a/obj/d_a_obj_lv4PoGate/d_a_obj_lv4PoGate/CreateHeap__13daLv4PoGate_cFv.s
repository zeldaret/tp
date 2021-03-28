lbl_80C5FD40:
/* 80C5FD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FD44  7C 08 02 A6 */	mflr r0
/* 80C5FD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FD50  7C 7F 1B 78 */	mr r31, r3
/* 80C5FD54  3C 60 80 C6 */	lis r3, stringBase0@ha
/* 80C5FD58  38 63 08 48 */	addi r3, r3, stringBase0@l
/* 80C5FD5C  38 80 00 04 */	li r4, 4
/* 80C5FD60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C5FD64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C5FD68  3C A5 00 02 */	addis r5, r5, 2
/* 80C5FD6C  38 C0 00 80 */	li r6, 0x80
/* 80C5FD70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C5FD74  4B 3D C5 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C5FD78  3C 80 00 08 */	lis r4, 8
/* 80C5FD7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C5FD80  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C5FD84  4B 3B 4E D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5FD88  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C5FD8C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5FD90  30 03 FF FF */	addic r0, r3, -1
/* 80C5FD94  7C 60 19 10 */	subfe r3, r0, r3
/* 80C5FD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FDA0  7C 08 03 A6 */	mtlr r0
/* 80C5FDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FDA8  4E 80 00 20 */	blr 
