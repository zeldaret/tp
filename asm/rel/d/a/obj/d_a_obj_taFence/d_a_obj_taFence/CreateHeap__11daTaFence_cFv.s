lbl_80D0503C:
/* 80D0503C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05040  7C 08 02 A6 */	mflr r0
/* 80D05044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0504C  7C 7F 1B 78 */	mr r31, r3
/* 80D05050  3C 60 80 D0 */	lis r3, stringBase0@ha
/* 80D05054  38 63 61 98 */	addi r3, r3, stringBase0@l
/* 80D05058  38 80 00 04 */	li r4, 4
/* 80D0505C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D05060  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D05064  3C A5 00 02 */	addis r5, r5, 2
/* 80D05068  38 C0 00 80 */	li r6, 0x80
/* 80D0506C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D05070  4B 33 72 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D05074  3C 80 00 08 */	lis r4, 8
/* 80D05078  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0507C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D05080  4B 30 FB D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D05084  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D05088  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D0508C  30 03 FF FF */	addic r0, r3, -1
/* 80D05090  7C 60 19 10 */	subfe r3, r0, r3
/* 80D05094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D05098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0509C  7C 08 03 A6 */	mtlr r0
/* 80D050A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D050A4  4E 80 00 20 */	blr 
