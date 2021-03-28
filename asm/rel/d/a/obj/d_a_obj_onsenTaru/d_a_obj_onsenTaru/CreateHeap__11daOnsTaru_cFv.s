lbl_80CA8748:
/* 80CA8748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA874C  7C 08 02 A6 */	mflr r0
/* 80CA8750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8758  7C 7F 1B 78 */	mr r31, r3
/* 80CA875C  3C 60 80 CB */	lis r3, stringBase0@ha
/* 80CA8760  38 63 9B F4 */	addi r3, r3, stringBase0@l
/* 80CA8764  38 80 00 03 */	li r4, 3
/* 80CA8768  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CA876C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CA8770  3C A5 00 02 */	addis r5, r5, 2
/* 80CA8774  38 C0 00 80 */	li r6, 0x80
/* 80CA8778  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CA877C  4B 39 3B 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA8780  3C 80 00 08 */	lis r4, 8
/* 80CA8784  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CA8788  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CA878C  4B 36 C4 C8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA8790  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80CA8794  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CA8798  30 03 FF FF */	addic r0, r3, -1
/* 80CA879C  7C 60 19 10 */	subfe r3, r0, r3
/* 80CA87A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA87A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA87A8  7C 08 03 A6 */	mtlr r0
/* 80CA87AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA87B0  4E 80 00 20 */	blr 
