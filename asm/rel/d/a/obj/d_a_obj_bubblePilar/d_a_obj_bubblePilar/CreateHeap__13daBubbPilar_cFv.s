lbl_80BC3518:
/* 80BC3518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC351C  7C 08 02 A6 */	mflr r0
/* 80BC3520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3528  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC352C  7C 7E 1B 78 */	mr r30, r3
/* 80BC3530  3C 60 80 BC */	lis r3, d_a_obj_bubblePilar__stringBase0@ha /* 0x80BC40B4@ha */
/* 80BC3534  38 63 40 B4 */	addi r3, r3, d_a_obj_bubblePilar__stringBase0@l /* 0x80BC40B4@l */
/* 80BC3538  38 80 00 04 */	li r4, 4
/* 80BC353C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3540  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3544  3F E5 00 02 */	addis r31, r5, 2
/* 80BC3548  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BC354C  7F E5 FB 78 */	mr r5, r31
/* 80BC3550  38 C0 00 80 */	li r6, 0x80
/* 80BC3554  4B 47 8D 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC3558  3C 80 00 08 */	lis r4, 8
/* 80BC355C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC3560  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC3564  4B 45 16 F1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC3568  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80BC356C  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80BC3570  28 00 00 00 */	cmplwi r0, 0
/* 80BC3574  40 82 00 0C */	bne lbl_80BC3580
/* 80BC3578  38 60 00 00 */	li r3, 0
/* 80BC357C  48 00 00 3C */	b lbl_80BC35B8
lbl_80BC3580:
/* 80BC3580  3C 60 80 BC */	lis r3, d_a_obj_bubblePilar__stringBase0@ha /* 0x80BC40B4@ha */
/* 80BC3584  38 63 40 B4 */	addi r3, r3, d_a_obj_bubblePilar__stringBase0@l /* 0x80BC40B4@l */
/* 80BC3588  38 80 00 05 */	li r4, 5
/* 80BC358C  7F E5 FB 78 */	mr r5, r31
/* 80BC3590  38 C0 00 80 */	li r6, 0x80
/* 80BC3594  4B 47 8D 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC3598  3C 80 00 08 */	lis r4, 8
/* 80BC359C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC35A0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC35A4  4B 45 16 B1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC35A8  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80BC35AC  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BC35B0  30 03 FF FF */	addic r0, r3, -1
/* 80BC35B4  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BC35B8:
/* 80BC35B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC35BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC35C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC35C4  7C 08 03 A6 */	mtlr r0
/* 80BC35C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC35CC  4E 80 00 20 */	blr 
