lbl_80D36394:
/* 80D36394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36398  7C 08 02 A6 */	mflr r0
/* 80D3639C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D363A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D363A4  7C 7F 1B 78 */	mr r31, r3
/* 80D363A8  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D36A6C@ha */
/* 80D363AC  38 63 6A 6C */	addi r3, r3, l_arcName@l /* 0x80D36A6C@l */
/* 80D363B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D363B4  38 80 00 04 */	li r4, 4
/* 80D363B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D363BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D363C0  3C A5 00 02 */	addis r5, r5, 2
/* 80D363C4  38 C0 00 80 */	li r6, 0x80
/* 80D363C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D363CC  4B 30 5F 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D363D0  3C 80 00 08 */	lis r4, 8
/* 80D363D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D363D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D363DC  4B 2D E8 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D363E0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D363E4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D363E8  30 03 FF FF */	addic r0, r3, -1
/* 80D363EC  7C 60 19 10 */	subfe r3, r0, r3
/* 80D363F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D363F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D363F8  7C 08 03 A6 */	mtlr r0
/* 80D363FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36400  4E 80 00 20 */	blr 
