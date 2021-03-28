lbl_80C461E4:
/* 80C461E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C461E8  7C 08 02 A6 */	mflr r0
/* 80C461EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C461F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C461F4  7C 7F 1B 78 */	mr r31, r3
/* 80C461F8  3C 60 80 C4 */	lis r3, l_arcName@ha
/* 80C461FC  38 63 65 8C */	addi r3, r3, l_arcName@l
/* 80C46200  80 63 00 00 */	lwz r3, 0(r3)
/* 80C46204  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80C46208  54 00 10 3A */	slwi r0, r0, 2
/* 80C4620C  3C 80 80 C4 */	lis r4, l_bmdidx@ha
/* 80C46210  38 84 65 4C */	addi r4, r4, l_bmdidx@l
/* 80C46214  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C46218  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4621C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C46220  3C A5 00 02 */	addis r5, r5, 2
/* 80C46224  38 C0 00 80 */	li r6, 0x80
/* 80C46228  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4622C  4B 3F 60 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C46230  3C 80 00 08 */	lis r4, 8
/* 80C46234  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C46238  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C4623C  4B 3C EA 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C46240  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C46244  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80C46248  30 03 FF FF */	addic r0, r3, -1
/* 80C4624C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C46250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46258  7C 08 03 A6 */	mtlr r0
/* 80C4625C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46260  4E 80 00 20 */	blr 
