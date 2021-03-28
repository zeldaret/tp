lbl_80C4D9B8:
/* 80C4D9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D9BC  7C 08 02 A6 */	mflr r0
/* 80C4D9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D9C8  7C 7F 1B 78 */	mr r31, r3
/* 80C4D9CC  80 03 06 20 */	lwz r0, 0x620(r3)
/* 80C4D9D0  54 00 10 3A */	slwi r0, r0, 2
/* 80C4D9D4  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C4D9D8  38 63 E8 70 */	addi r3, r3, l_arcName@l
/* 80C4D9DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C4D9E0  3C 80 80 C5 */	lis r4, l_bmdidx@ha
/* 80C4D9E4  38 84 E8 08 */	addi r4, r4, l_bmdidx@l
/* 80C4D9E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4D9EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4D9F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4D9F4  3C A5 00 02 */	addis r5, r5, 2
/* 80C4D9F8  38 C0 00 80 */	li r6, 0x80
/* 80C4D9FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4DA00  4B 3E E8 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4DA04  3C 80 00 08 */	lis r4, 8
/* 80C4DA08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C4DA0C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C4DA10  4B 3C 72 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C4DA14  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80C4DA18  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C4DA1C  30 03 FF FF */	addic r0, r3, -1
/* 80C4DA20  7C 60 19 10 */	subfe r3, r0, r3
/* 80C4DA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4DA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4DA2C  7C 08 03 A6 */	mtlr r0
/* 80C4DA30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4DA34  4E 80 00 20 */	blr 
