lbl_80BFF064:
/* 80BFF064  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFF068  7C 08 02 A6 */	mflr r0
/* 80BFF06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFF070  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFF074  4B 76 31 61 */	bl _savegpr_27
/* 80BFF078  7C 7F 1B 78 */	mr r31, r3
/* 80BFF07C  3C 60 80 C0 */	lis r3, l_arcName@ha /* 0x80BFFD30@ha */
/* 80BFF080  38 63 FD 30 */	addi r3, r3, l_arcName@l /* 0x80BFFD30@l */
/* 80BFF084  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFF088  3C 80 80 C0 */	lis r4, d_a_obj_gomikabe__stringBase0@ha /* 0x80BFFCF4@ha */
/* 80BFF08C  38 84 FC F4 */	addi r4, r4, d_a_obj_gomikabe__stringBase0@l /* 0x80BFFCF4@l */
/* 80BFF090  38 84 00 09 */	addi r4, r4, 9
/* 80BFF094  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFF098  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFF09C  3F A5 00 02 */	addis r29, r5, 2
/* 80BFF0A0  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BFF0A4  7F A5 EB 78 */	mr r5, r29
/* 80BFF0A8  38 C0 00 80 */	li r6, 0x80
/* 80BFF0AC  4B 43 D2 D1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BFF0B0  3C 80 00 08 */	lis r4, 8
/* 80BFF0B4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BFF0B8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BFF0BC  4B 41 5B 99 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BFF0C0  90 7F 0F 9C */	stw r3, 0xf9c(r31)
/* 80BFF0C4  80 1F 0F 9C */	lwz r0, 0xf9c(r31)
/* 80BFF0C8  28 00 00 00 */	cmplwi r0, 0
/* 80BFF0CC  40 82 00 0C */	bne lbl_80BFF0D8
/* 80BFF0D0  38 60 00 00 */	li r3, 0
/* 80BFF0D4  48 00 00 78 */	b lbl_80BFF14C
lbl_80BFF0D8:
/* 80BFF0D8  3C 60 80 C0 */	lis r3, l_arcName@ha /* 0x80BFFD30@ha */
/* 80BFF0DC  38 63 FD 30 */	addi r3, r3, l_arcName@l /* 0x80BFFD30@l */
/* 80BFF0E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFF0E4  3C 80 80 C0 */	lis r4, d_a_obj_gomikabe__stringBase0@ha /* 0x80BFFCF4@ha */
/* 80BFF0E8  38 84 FC F4 */	addi r4, r4, d_a_obj_gomikabe__stringBase0@l /* 0x80BFFCF4@l */
/* 80BFF0EC  38 84 00 18 */	addi r4, r4, 0x18
/* 80BFF0F0  7F A5 EB 78 */	mr r5, r29
/* 80BFF0F4  38 C0 00 80 */	li r6, 0x80
/* 80BFF0F8  4B 43 D2 85 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BFF0FC  7C 7C 1B 78 */	mr r28, r3
/* 80BFF100  3B 60 00 00 */	li r27, 0
/* 80BFF104  3B C0 00 00 */	li r30, 0
/* 80BFF108  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_80BFF10C:
/* 80BFF10C  7F 83 E3 78 */	mr r3, r28
/* 80BFF110  3C 80 00 08 */	lis r4, 8
/* 80BFF114  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 80BFF118  4B 41 5B 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BFF11C  38 1E 0F A0 */	addi r0, r30, 0xfa0
/* 80BFF120  7C 7F 01 2E */	stwx r3, r31, r0
/* 80BFF124  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80BFF128  28 00 00 00 */	cmplwi r0, 0
/* 80BFF12C  40 82 00 0C */	bne lbl_80BFF138
/* 80BFF130  38 60 00 00 */	li r3, 0
/* 80BFF134  48 00 00 18 */	b lbl_80BFF14C
lbl_80BFF138:
/* 80BFF138  3B 7B 00 01 */	addi r27, r27, 1
/* 80BFF13C  2C 1B 00 04 */	cmpwi r27, 4
/* 80BFF140  3B DE 00 04 */	addi r30, r30, 4
/* 80BFF144  41 80 FF C8 */	blt lbl_80BFF10C
/* 80BFF148  38 60 00 01 */	li r3, 1
lbl_80BFF14C:
/* 80BFF14C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFF150  4B 76 30 D1 */	bl _restgpr_27
/* 80BFF154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFF158  7C 08 03 A6 */	mtlr r0
/* 80BFF15C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFF160  4E 80 00 20 */	blr 
