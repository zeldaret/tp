lbl_80D3F970:
/* 80D3F970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F974  7C 08 02 A6 */	mflr r0
/* 80D3F978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F97C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3F980  7C 7F 1B 78 */	mr r31, r3
/* 80D3F984  88 03 0E 30 */	lbz r0, 0xe30(r3)
/* 80D3F988  54 00 10 3A */	slwi r0, r0, 2
/* 80D3F98C  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3F990  38 63 03 98 */	addi r3, r3, l_arcName@l
/* 80D3F994  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3F998  3C 80 80 D4 */	lis r4, l_bmdName@ha
/* 80D3F99C  38 84 03 A4 */	addi r4, r4, l_bmdName@l
/* 80D3F9A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3F9A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3F9A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3F9AC  3C A5 00 02 */	addis r5, r5, 2
/* 80D3F9B0  38 C0 00 80 */	li r6, 0x80
/* 80D3F9B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D3F9B8  4B 2F C9 C4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D3F9BC  3C 80 00 08 */	lis r4, 8
/* 80D3F9C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D3F9C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D3F9C8  4B 2D 52 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D3F9CC  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D3F9D0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D3F9D4  30 03 FF FF */	addic r0, r3, -1
/* 80D3F9D8  7C 60 19 10 */	subfe r3, r0, r3
/* 80D3F9DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3F9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F9E4  7C 08 03 A6 */	mtlr r0
/* 80D3F9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F9EC  4E 80 00 20 */	blr 
