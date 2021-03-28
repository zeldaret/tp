lbl_80D419D4:
/* 80D419D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D419D8  7C 08 02 A6 */	mflr r0
/* 80D419DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D419E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D419E4  7C 7F 1B 78 */	mr r31, r3
/* 80D419E8  3C 60 80 D4 */	lis r3, stringBase0@ha
/* 80D419EC  38 63 24 34 */	addi r3, r3, stringBase0@l
/* 80D419F0  38 80 00 03 */	li r4, 3
/* 80D419F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D419F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D419FC  3C A5 00 02 */	addis r5, r5, 2
/* 80D41A00  38 C0 00 80 */	li r6, 0x80
/* 80D41A04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D41A08  4B 2F A8 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D41A0C  3C 80 00 08 */	lis r4, 8
/* 80D41A10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D41A14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D41A18  4B 2D 32 3C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D41A1C  90 7F 06 E4 */	stw r3, 0x6e4(r31)
/* 80D41A20  80 7F 06 E4 */	lwz r3, 0x6e4(r31)
/* 80D41A24  30 03 FF FF */	addic r0, r3, -1
/* 80D41A28  7C 60 19 10 */	subfe r3, r0, r3
/* 80D41A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41A34  7C 08 03 A6 */	mtlr r0
/* 80D41A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41A3C  4E 80 00 20 */	blr 
