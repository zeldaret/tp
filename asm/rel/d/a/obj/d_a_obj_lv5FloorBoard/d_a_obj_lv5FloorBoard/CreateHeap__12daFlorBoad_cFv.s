lbl_80C6A784:
/* 80C6A784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A788  7C 08 02 A6 */	mflr r0
/* 80C6A78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A794  7C 7F 1B 78 */	mr r31, r3
/* 80C6A798  3C 60 80 C7 */	lis r3, stringBase0@ha
/* 80C6A79C  38 63 B1 8C */	addi r3, r3, stringBase0@l
/* 80C6A7A0  38 80 00 04 */	li r4, 4
/* 80C6A7A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C6A7A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C6A7AC  3C A5 00 02 */	addis r5, r5, 2
/* 80C6A7B0  38 C0 00 80 */	li r6, 0x80
/* 80C6A7B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C6A7B8  4B 3D 1B 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C6A7BC  3C 80 00 08 */	lis r4, 8
/* 80C6A7C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C6A7C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C6A7C8  4B 3A A4 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C6A7CC  90 7F 07 20 */	stw r3, 0x720(r31)
/* 80C6A7D0  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6A7D4  30 03 FF FF */	addic r0, r3, -1
/* 80C6A7D8  7C 60 19 10 */	subfe r3, r0, r3
/* 80C6A7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A7E4  7C 08 03 A6 */	mtlr r0
/* 80C6A7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A7EC  4E 80 00 20 */	blr 
