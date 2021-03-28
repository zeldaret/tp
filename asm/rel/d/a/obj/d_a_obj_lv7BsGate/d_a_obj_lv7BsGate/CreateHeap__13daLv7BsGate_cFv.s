lbl_80C849CC:
/* 80C849CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C849D0  7C 08 02 A6 */	mflr r0
/* 80C849D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C849D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C849DC  7C 7F 1B 78 */	mr r31, r3
/* 80C849E0  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80C849E4  54 00 10 3A */	slwi r0, r0, 2
/* 80C849E8  3C 60 80 C8 */	lis r3, l_type@ha
/* 80C849EC  38 63 52 64 */	addi r3, r3, l_type@l
/* 80C849F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C849F4  3C 80 80 C8 */	lis r4, l_bmdIdx@ha
/* 80C849F8  38 84 52 6C */	addi r4, r4, l_bmdIdx@l
/* 80C849FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C84A00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C84A04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C84A08  3C A5 00 02 */	addis r5, r5, 2
/* 80C84A0C  38 C0 00 80 */	li r6, 0x80
/* 80C84A10  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C84A14  4B 3B 78 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C84A18  3C 80 00 08 */	lis r4, 8
/* 80C84A1C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C84A20  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C84A24  4B 39 02 30 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C84A28  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C84A2C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C84A30  30 03 FF FF */	addic r0, r3, -1
/* 80C84A34  7C 60 19 10 */	subfe r3, r0, r3
/* 80C84A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84A40  7C 08 03 A6 */	mtlr r0
/* 80C84A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84A48  4E 80 00 20 */	blr 
