lbl_80C79FE8:
/* 80C79FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79FEC  7C 08 02 A6 */	mflr r0
/* 80C79FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C79FF8  7C 7F 1B 78 */	mr r31, r3
/* 80C79FFC  88 03 06 0C */	lbz r0, 0x60c(r3)
/* 80C7A000  54 00 10 3A */	slwi r0, r0, 2
/* 80C7A004  3C 60 80 C8 */	lis r3, l_resNameIdx@ha /* 0x80C7C81C@ha */
/* 80C7A008  38 63 C8 1C */	addi r3, r3, l_resNameIdx@l /* 0x80C7C81C@l */
/* 80C7A00C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C7A010  3C 80 80 C8 */	lis r4, l_bmdIdx@ha /* 0x80C7C6D0@ha */
/* 80C7A014  38 84 C6 D0 */	addi r4, r4, l_bmdIdx@l /* 0x80C7C6D0@l */
/* 80C7A018  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C7A01C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7A020  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7A024  3C A5 00 02 */	addis r5, r5, 2
/* 80C7A028  38 C0 00 80 */	li r6, 0x80
/* 80C7A02C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C7A030  4B 3C 22 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7A034  3C 80 00 08 */	lis r4, 8
/* 80C7A038  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C7A03C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C7A040  4B 39 AC 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C7A044  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C7A048  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7A04C  30 03 FF FF */	addic r0, r3, -1
/* 80C7A050  7C 60 19 10 */	subfe r3, r0, r3
/* 80C7A054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A05C  7C 08 03 A6 */	mtlr r0
/* 80C7A060  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A064  4E 80 00 20 */	blr 
