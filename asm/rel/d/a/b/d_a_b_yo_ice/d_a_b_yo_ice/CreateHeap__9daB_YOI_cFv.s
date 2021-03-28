lbl_8063D4F8:
/* 8063D4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D4FC  7C 08 02 A6 */	mflr r0
/* 8063D500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D508  93 C1 00 08 */	stw r30, 8(r1)
/* 8063D50C  7C 7E 1B 78 */	mr r30, r3
/* 8063D510  3C 60 80 64 */	lis r3, stringBase0@ha
/* 8063D514  38 63 DD 9C */	addi r3, r3, stringBase0@l
/* 8063D518  38 80 00 21 */	li r4, 0x21
/* 8063D51C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8063D520  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8063D524  3F E5 00 02 */	addis r31, r5, 2
/* 8063D528  3B FF C2 F8 */	addi r31, r31, -15624
/* 8063D52C  7F E5 FB 78 */	mr r5, r31
/* 8063D530  38 C0 00 80 */	li r6, 0x80
/* 8063D534  4B 9F ED B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063D538  38 80 00 00 */	li r4, 0
/* 8063D53C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8063D540  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8063D544  4B 9D 77 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8063D548  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 8063D54C  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 8063D550  28 00 00 00 */	cmplwi r0, 0
/* 8063D554  40 82 00 0C */	bne lbl_8063D560
/* 8063D558  38 60 00 00 */	li r3, 0
/* 8063D55C  48 00 00 3C */	b lbl_8063D598
lbl_8063D560:
/* 8063D560  3C 60 80 64 */	lis r3, stringBase0@ha
/* 8063D564  38 63 DD 9C */	addi r3, r3, stringBase0@l
/* 8063D568  38 80 00 20 */	li r4, 0x20
/* 8063D56C  7F E5 FB 78 */	mr r5, r31
/* 8063D570  38 C0 00 80 */	li r6, 0x80
/* 8063D574  4B 9F ED 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063D578  38 80 00 00 */	li r4, 0
/* 8063D57C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8063D580  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8063D584  4B 9D 76 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8063D588  90 7E 06 B0 */	stw r3, 0x6b0(r30)
/* 8063D58C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 8063D590  30 03 FF FF */	addic r0, r3, -1
/* 8063D594  7C 60 19 10 */	subfe r3, r0, r3
lbl_8063D598:
/* 8063D598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D59C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063D5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D5A4  7C 08 03 A6 */	mtlr r0
/* 8063D5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D5AC  4E 80 00 20 */	blr 
