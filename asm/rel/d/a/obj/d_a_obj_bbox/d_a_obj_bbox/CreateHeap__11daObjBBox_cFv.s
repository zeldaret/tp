lbl_80BACE50:
/* 80BACE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACE54  7C 08 02 A6 */	mflr r0
/* 80BACE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BACE60  7C 7F 1B 78 */	mr r31, r3
/* 80BACE64  3C 60 80 BB */	lis r3, l_arcName@ha
/* 80BACE68  38 63 D4 D4 */	addi r3, r3, l_arcName@l
/* 80BACE6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BACE70  38 80 00 04 */	li r4, 4
/* 80BACE74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BACE78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BACE7C  3C A5 00 02 */	addis r5, r5, 2
/* 80BACE80  38 C0 00 80 */	li r6, 0x80
/* 80BACE84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BACE88  4B 48 F4 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BACE8C  3C 80 00 08 */	lis r4, 8
/* 80BACE90  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BACE94  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BACE98  4B 46 7D BC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BACE9C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BACEA0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BACEA4  30 03 FF FF */	addic r0, r3, -1
/* 80BACEA8  7C 60 19 10 */	subfe r3, r0, r3
/* 80BACEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BACEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACEB4  7C 08 03 A6 */	mtlr r0
/* 80BACEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACEBC  4E 80 00 20 */	blr 
