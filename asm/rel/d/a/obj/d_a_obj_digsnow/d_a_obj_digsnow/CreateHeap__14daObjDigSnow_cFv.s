lbl_80BDCD64:
/* 80BDCD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCD68  7C 08 02 A6 */	mflr r0
/* 80BDCD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDCD74  7C 7F 1B 78 */	mr r31, r3
/* 80BDCD78  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BDD708@ha */
/* 80BDCD7C  38 63 D7 08 */	addi r3, r3, l_arcName@l /* 0x80BDD708@l */
/* 80BDCD80  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDCD84  38 80 00 04 */	li r4, 4
/* 80BDCD88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDCD8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDCD90  3C A5 00 02 */	addis r5, r5, 2
/* 80BDCD94  38 C0 00 80 */	li r6, 0x80
/* 80BDCD98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BDCD9C  4B 45 F5 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDCDA0  3C 80 00 08 */	lis r4, 8
/* 80BDCDA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BDCDA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BDCDAC  4B 43 7E A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BDCDB0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BDCDB4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BDCDB8  30 03 FF FF */	addic r0, r3, -1
/* 80BDCDBC  7C 60 19 10 */	subfe r3, r0, r3
/* 80BDCDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDCDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCDC8  7C 08 03 A6 */	mtlr r0
/* 80BDCDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCDD0  4E 80 00 20 */	blr 
