lbl_80BB9C50:
/* 80BB9C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9C54  7C 08 02 A6 */	mflr r0
/* 80BB9C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9C60  7C 7F 1B 78 */	mr r31, r3
/* 80BB9C64  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BBA84C@ha */
/* 80BB9C68  38 63 A8 4C */	addi r3, r3, l_arcName@l /* 0x80BBA84C@l */
/* 80BB9C6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB9C70  38 80 00 04 */	li r4, 4
/* 80BB9C74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9C78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9C7C  3C A5 00 02 */	addis r5, r5, 2
/* 80BB9C80  38 C0 00 80 */	li r6, 0x80
/* 80BB9C84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB9C88  4B 48 26 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB9C8C  3C 80 00 08 */	lis r4, 8
/* 80BB9C90  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BB9C94  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BB9C98  4B 45 AF BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BB9C9C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BB9CA0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB9CA4  30 03 FF FF */	addic r0, r3, -1
/* 80BB9CA8  7C 60 19 10 */	subfe r3, r0, r3
/* 80BB9CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9CB4  7C 08 03 A6 */	mtlr r0
/* 80BB9CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9CBC  4E 80 00 20 */	blr 
