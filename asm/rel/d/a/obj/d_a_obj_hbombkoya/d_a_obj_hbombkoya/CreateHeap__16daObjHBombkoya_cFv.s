lbl_80C1B938:
/* 80C1B938  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C1B93C  7C 08 02 A6 */	mflr r0
/* 80C1B940  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C1B944  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C1B948  7C 7F 1B 78 */	mr r31, r3
/* 80C1B94C  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C1C734@ha */
/* 80C1B950  38 63 C7 34 */	addi r3, r3, l_arcName@l /* 0x80C1C734@l */
/* 80C1B954  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1B958  38 80 00 04 */	li r4, 4
/* 80C1B95C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1B960  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1B964  3C A5 00 02 */	addis r5, r5, 2
/* 80C1B968  38 C0 00 80 */	li r6, 0x80
/* 80C1B96C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C1B970  4B 42 09 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1B974  3C 80 00 08 */	lis r4, 8
/* 80C1B978  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C1B97C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C1B980  4B 3F 92 D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1B984  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80C1B988  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80C1B98C  28 00 00 00 */	cmplwi r0, 0
/* 80C1B990  40 82 00 0C */	bne lbl_80C1B99C
/* 80C1B994  38 60 00 00 */	li r3, 0
/* 80C1B998  48 00 00 20 */	b lbl_80C1B9B8
lbl_80C1B99C:
/* 80C1B99C  38 61 00 08 */	addi r3, r1, 8
/* 80C1B9A0  4B 72 AA E5 */	bl PSMTXIdentity
/* 80C1B9A4  38 61 00 08 */	addi r3, r1, 8
/* 80C1B9A8  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C1B9AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1B9B0  4B 72 AB 01 */	bl PSMTXCopy
/* 80C1B9B4  38 60 00 01 */	li r3, 1
lbl_80C1B9B8:
/* 80C1B9B8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C1B9BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C1B9C0  7C 08 03 A6 */	mtlr r0
/* 80C1B9C4  38 21 00 40 */	addi r1, r1, 0x40
/* 80C1B9C8  4E 80 00 20 */	blr 
