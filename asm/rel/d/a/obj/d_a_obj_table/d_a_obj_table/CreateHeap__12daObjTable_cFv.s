lbl_80D06560:
/* 80D06560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06564  7C 08 02 A6 */	mflr r0
/* 80D06568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0656C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D06570  7C 7F 1B 78 */	mr r31, r3
/* 80D06574  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80D06C1C@ha */
/* 80D06578  38 63 6C 1C */	addi r3, r3, l_arcName@l /* 0x80D06C1C@l */
/* 80D0657C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D06580  38 80 00 05 */	li r4, 5
/* 80D06584  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D06588  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0658C  3C A5 00 02 */	addis r5, r5, 2
/* 80D06590  38 C0 00 80 */	li r6, 0x80
/* 80D06594  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D06598  4B 33 5D 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0659C  3C 80 00 08 */	lis r4, 8
/* 80D065A0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D065A4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D065A8  4B 30 E6 AD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D065AC  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 80D065B0  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D065B4  30 03 FF FF */	addic r0, r3, -1
/* 80D065B8  7C 60 19 10 */	subfe r3, r0, r3
/* 80D065BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D065C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D065C4  7C 08 03 A6 */	mtlr r0
/* 80D065C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D065CC  4E 80 00 20 */	blr 
