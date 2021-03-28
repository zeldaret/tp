lbl_8058D158:
/* 8058D158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D15C  7C 08 02 A6 */	mflr r0
/* 8058D160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D168  7C 7F 1B 78 */	mr r31, r3
/* 8058D16C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8058D170  54 00 18 38 */	slwi r0, r0, 3
/* 8058D174  3C 60 80 59 */	lis r3, data_8058DDCC@ha
/* 8058D178  38 83 DD CC */	addi r4, r3, data_8058DDCC@l
/* 8058D17C  3C 60 80 59 */	lis r3, M_arcname__Q211daObjLadder5Act_c@ha
/* 8058D180  38 63 DD 74 */	addi r3, r3, M_arcname__Q211daObjLadder5Act_c@l
/* 8058D184  7C 84 02 AE */	lhax r4, r4, r0
/* 8058D188  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8058D18C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8058D190  3C A5 00 02 */	addis r5, r5, 2
/* 8058D194  38 C0 00 80 */	li r6, 0x80
/* 8058D198  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8058D19C  4B AA F1 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058D1A0  3C 80 00 08 */	lis r4, 8
/* 8058D1A4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058D1A8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058D1AC  4B A8 7A A8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058D1B0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 8058D1B4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8058D1B8  30 03 FF FF */	addic r0, r3, -1
/* 8058D1BC  7C 00 19 10 */	subfe r0, r0, r3
/* 8058D1C0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8058D1C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D1CC  7C 08 03 A6 */	mtlr r0
/* 8058D1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D1D4  4E 80 00 20 */	blr 
