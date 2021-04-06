lbl_80C680A4:
/* 80C680A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C680A8  7C 08 02 A6 */	mflr r0
/* 80C680AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C680B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C680B4  7C 7F 1B 78 */	mr r31, r3
/* 80C680B8  3C 60 80 C7 */	lis r3, l_arcName@ha /* 0x80C6852C@ha */
/* 80C680BC  38 63 85 2C */	addi r3, r3, l_arcName@l /* 0x80C6852C@l */
/* 80C680C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C680C4  88 1F 05 82 */	lbz r0, 0x582(r31)
/* 80C680C8  54 00 10 3A */	slwi r0, r0, 2
/* 80C680CC  3C 80 80 C7 */	lis r4, l_bmd@ha /* 0x80C68500@ha */
/* 80C680D0  38 84 85 00 */	addi r4, r4, l_bmd@l /* 0x80C68500@l */
/* 80C680D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C680D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C680DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C680E0  3C A5 00 02 */	addis r5, r5, 2
/* 80C680E4  38 C0 00 80 */	li r6, 0x80
/* 80C680E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C680EC  4B 3D 42 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C680F0  3C 80 00 08 */	lis r4, 8
/* 80C680F4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C680F8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C680FC  4B 3A CB 59 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C68100  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C68104  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C68108  30 03 FF FF */	addic r0, r3, -1
/* 80C6810C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C68110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68118  7C 08 03 A6 */	mtlr r0
/* 80C6811C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68120  4E 80 00 20 */	blr 
