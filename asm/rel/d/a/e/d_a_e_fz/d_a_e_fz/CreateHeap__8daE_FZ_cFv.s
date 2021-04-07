lbl_806C0C28:
/* 806C0C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C0C2C  7C 08 02 A6 */	mflr r0
/* 806C0C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C0C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C0C38  7C 7F 1B 78 */	mr r31, r3
/* 806C0C3C  3C 60 80 6C */	lis r3, d_a_e_fz__stringBase0@ha /* 0x806C19F4@ha */
/* 806C0C40  38 63 19 F4 */	addi r3, r3, d_a_e_fz__stringBase0@l /* 0x806C19F4@l */
/* 806C0C44  38 80 00 03 */	li r4, 3
/* 806C0C48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C0C4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C0C50  3C A5 00 02 */	addis r5, r5, 2
/* 806C0C54  38 C0 00 80 */	li r6, 0x80
/* 806C0C58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806C0C5C  4B 97 B6 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C0C60  38 80 00 00 */	li r4, 0
/* 806C0C64  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 806C0C68  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 806C0C6C  4B 95 3F E9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806C0C70  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 806C0C74  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 806C0C78  28 04 00 00 */	cmplwi r4, 0
/* 806C0C7C  40 82 00 0C */	bne lbl_806C0C88
/* 806C0C80  38 60 00 00 */	li r3, 0
/* 806C0C84  48 00 00 18 */	b lbl_806C0C9C
lbl_806C0C88:
/* 806C0C88  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806C0C8C  38 A0 00 01 */	li r5, 1
/* 806C0C90  4B 94 D8 AD */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 806C0C94  30 03 FF FF */	addic r0, r3, -1
/* 806C0C98  7C 60 19 10 */	subfe r3, r0, r3
lbl_806C0C9C:
/* 806C0C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C0CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0CA4  7C 08 03 A6 */	mtlr r0
/* 806C0CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 806C0CAC  4E 80 00 20 */	blr 
