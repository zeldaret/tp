lbl_80D0BD30:
/* 80D0BD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BD34  7C 08 02 A6 */	mflr r0
/* 80D0BD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0BD40  7C 7F 1B 78 */	mr r31, r3
/* 80D0BD44  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0C144@ha */
/* 80D0BD48  38 63 C1 44 */	addi r3, r3, l_arcName@l /* 0x80D0C144@l */
/* 80D0BD4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0BD50  38 80 00 04 */	li r4, 4
/* 80D0BD54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0BD58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0BD5C  3C A5 00 02 */	addis r5, r5, 2
/* 80D0BD60  38 C0 00 80 */	li r6, 0x80
/* 80D0BD64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0BD68  4B 33 05 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0BD6C  3C 80 00 08 */	lis r4, 8
/* 80D0BD70  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0BD74  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D0BD78  4B 30 8E DD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0BD7C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D0BD80  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D0BD84  30 03 FF FF */	addic r0, r3, -1
/* 80D0BD88  7C 60 19 10 */	subfe r3, r0, r3
/* 80D0BD8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0BD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BD94  7C 08 03 A6 */	mtlr r0
/* 80D0BD98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BD9C  4E 80 00 20 */	blr 
