lbl_80D3BAB8:
/* 80D3BAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BABC  7C 08 02 A6 */	mflr r0
/* 80D3BAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BAC8  7C 7F 1B 78 */	mr r31, r3
/* 80D3BACC  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3BAD0  38 63 BF 2C */	addi r3, r3, l_arcName@l
/* 80D3BAD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3BAD8  38 80 00 03 */	li r4, 3
/* 80D3BADC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3BAE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3BAE4  3C A5 00 02 */	addis r5, r5, 2
/* 80D3BAE8  38 C0 00 80 */	li r6, 0x80
/* 80D3BAEC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D3BAF0  4B 30 07 FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3BAF4  3C 80 00 08 */	lis r4, 8
/* 80D3BAF8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D3BAFC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D3BB00  4B 2D 91 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D3BB04  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D3BB08  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D3BB0C  30 03 FF FF */	addic r0, r3, -1
/* 80D3BB10  7C 60 19 10 */	subfe r3, r0, r3
/* 80D3BB14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BB1C  7C 08 03 A6 */	mtlr r0
/* 80D3BB20  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BB24  4E 80 00 20 */	blr 
