lbl_80C161E8:
/* 80C161E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C161EC  7C 08 02 A6 */	mflr r0
/* 80C161F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C161F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C161F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C161FC  7C 7E 1B 78 */	mr r30, r3
/* 80C16200  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C16204  38 63 65 40 */	addi r3, r3, l_arcName@l
/* 80C16208  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1620C  3C 80 80 C1 */	lis r4, stringBase0@ha
/* 80C16210  38 84 65 20 */	addi r4, r4, stringBase0@l
/* 80C16214  38 84 00 12 */	addi r4, r4, 0x12
/* 80C16218  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C1621C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C16220  3C A5 00 02 */	addis r5, r5, 2
/* 80C16224  38 C0 00 80 */	li r6, 0x80
/* 80C16228  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C1622C  4B 42 61 50 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C16230  7C 60 1B 78 */	mr r0, r3
/* 80C16234  7C 1F 03 78 */	mr r31, r0
/* 80C16238  3C 80 00 08 */	lis r4, 8
/* 80C1623C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C16240  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C16244  4B 3F EA 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C16248  90 7E 06 28 */	stw r3, 0x628(r30)
/* 80C1624C  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80C16250  28 00 00 00 */	cmplwi r0, 0
/* 80C16254  40 82 00 0C */	bne lbl_80C16260
/* 80C16258  38 60 00 00 */	li r3, 0
/* 80C1625C  48 00 00 28 */	b lbl_80C16284
lbl_80C16260:
/* 80C16260  7F E3 FB 78 */	mr r3, r31
/* 80C16264  3C 80 00 08 */	lis r4, 8
/* 80C16268  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C1626C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C16270  4B 3F E9 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C16274  90 7E 06 2C */	stw r3, 0x62c(r30)
/* 80C16278  80 7E 06 2C */	lwz r3, 0x62c(r30)
/* 80C1627C  30 03 FF FF */	addic r0, r3, -1
/* 80C16280  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C16284:
/* 80C16284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16288  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1628C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16290  7C 08 03 A6 */	mtlr r0
/* 80C16294  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16298  4E 80 00 20 */	blr 
