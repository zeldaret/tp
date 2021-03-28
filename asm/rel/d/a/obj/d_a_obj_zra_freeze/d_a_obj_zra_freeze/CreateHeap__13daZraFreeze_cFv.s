lbl_80D4443C:
/* 80D4443C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44440  7C 08 02 A6 */	mflr r0
/* 80D44444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4444C  7C 7F 1B 78 */	mr r31, r3
/* 80D44450  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D44454  38 63 4B C4 */	addi r3, r3, l_arcName@l
/* 80D44458  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4445C  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D44460  7C 00 07 74 */	extsb r0, r0
/* 80D44464  54 00 10 3A */	slwi r0, r0, 2
/* 80D44468  3C 80 80 D4 */	lis r4, l_bmdName@ha
/* 80D4446C  38 84 4B C8 */	addi r4, r4, l_bmdName@l
/* 80D44470  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D44474  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D44478  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D4447C  3C A5 00 02 */	addis r5, r5, 2
/* 80D44480  38 C0 00 80 */	li r6, 0x80
/* 80D44484  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D44488  4B 2F 7E F4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D4448C  3C 80 00 08 */	lis r4, 8
/* 80D44490  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D44494  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D44498  4B 2D 07 BC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4449C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D444A0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D444A4  30 03 FF FF */	addic r0, r3, -1
/* 80D444A8  7C 60 19 10 */	subfe r3, r0, r3
/* 80D444AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D444B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D444B4  7C 08 03 A6 */	mtlr r0
/* 80D444B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D444BC  4E 80 00 20 */	blr 
