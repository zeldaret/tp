lbl_805A3AB8:
/* 805A3AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3ABC  7C 08 02 A6 */	mflr r0
/* 805A3AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3AC8  7C 7F 1B 78 */	mr r31, r3
/* 805A3ACC  3C 60 80 5A */	lis r3, l_arcName@ha /* 0x805A4238@ha */
/* 805A3AD0  38 63 42 38 */	addi r3, r3, l_arcName@l /* 0x805A4238@l */
/* 805A3AD4  38 80 00 04 */	li r4, 4
/* 805A3AD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A3ADC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A3AE0  3C A5 00 02 */	addis r5, r5, 2
/* 805A3AE4  38 C0 00 80 */	li r6, 0x80
/* 805A3AE8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805A3AEC  4B A9 88 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A3AF0  3C 80 00 08 */	lis r4, 8
/* 805A3AF4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805A3AF8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805A3AFC  4B A7 11 59 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805A3B00  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 805A3B04  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 805A3B08  30 03 FF FF */	addic r0, r3, -1
/* 805A3B0C  7C 60 19 10 */	subfe r3, r0, r3
/* 805A3B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3B18  7C 08 03 A6 */	mtlr r0
/* 805A3B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3B20  4E 80 00 20 */	blr 
