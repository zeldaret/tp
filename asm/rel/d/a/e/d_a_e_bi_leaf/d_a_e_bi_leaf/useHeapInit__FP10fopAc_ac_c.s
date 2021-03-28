lbl_8068DEA0:
/* 8068DEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DEA4  7C 08 02 A6 */	mflr r0
/* 8068DEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DEAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068DEB0  7C 7F 1B 78 */	mr r31, r3
/* 8068DEB4  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 8068DEB8  28 00 00 01 */	cmplwi r0, 1
/* 8068DEBC  41 82 00 50 */	beq lbl_8068DF0C
/* 8068DEC0  3C 60 80 69 */	lis r3, stringBase0@ha
/* 8068DEC4  38 63 DF E0 */	addi r3, r3, stringBase0@l
/* 8068DEC8  38 80 00 0F */	li r4, 0xf
/* 8068DECC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8068DED0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8068DED4  3C A5 00 02 */	addis r5, r5, 2
/* 8068DED8  38 C0 00 80 */	li r6, 0x80
/* 8068DEDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8068DEE0  4B 9A E4 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068DEE4  3C 80 00 08 */	lis r4, 8
/* 8068DEE8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8068DEEC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8068DEF0  4B 98 6D 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8068DEF4  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8068DEF8  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8068DEFC  28 00 00 00 */	cmplwi r0, 0
/* 8068DF00  40 82 00 0C */	bne lbl_8068DF0C
/* 8068DF04  38 60 00 00 */	li r3, 0
/* 8068DF08  48 00 00 08 */	b lbl_8068DF10
lbl_8068DF0C:
/* 8068DF0C  38 60 00 01 */	li r3, 1
lbl_8068DF10:
/* 8068DF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068DF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DF18  7C 08 03 A6 */	mtlr r0
/* 8068DF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DF20  4E 80 00 20 */	blr 
