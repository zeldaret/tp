lbl_80D40714:
/* 80D40714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40718  7C 08 02 A6 */	mflr r0
/* 80D4071C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40724  93 C1 00 08 */	stw r30, 8(r1)
/* 80D40728  7C 7F 1B 78 */	mr r31, r3
/* 80D4072C  3C 60 80 D4 */	lis r3, d_a_obj_zrTurara__stringBase0@ha /* 0x80D415FC@ha */
/* 80D40730  38 63 15 FC */	addi r3, r3, d_a_obj_zrTurara__stringBase0@l /* 0x80D415FC@l */
/* 80D40734  38 80 00 05 */	li r4, 5
/* 80D40738  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4073C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D40740  3F C5 00 02 */	addis r30, r5, 2
/* 80D40744  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D40748  7F C5 F3 78 */	mr r5, r30
/* 80D4074C  38 C0 00 80 */	li r6, 0x80
/* 80D40750  4B 2F BB 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D40754  3C 80 00 08 */	lis r4, 8
/* 80D40758  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D4075C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D40760  4B 2D 44 F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D40764  90 7F 07 20 */	stw r3, 0x720(r31)
/* 80D40768  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 80D4076C  28 00 00 00 */	cmplwi r0, 0
/* 80D40770  40 82 00 0C */	bne lbl_80D4077C
/* 80D40774  38 60 00 00 */	li r3, 0
/* 80D40778  48 00 00 B4 */	b lbl_80D4082C
lbl_80D4077C:
/* 80D4077C  3C 60 80 D4 */	lis r3, d_a_obj_zrTurara__stringBase0@ha /* 0x80D415FC@ha */
/* 80D40780  38 63 15 FC */	addi r3, r3, d_a_obj_zrTurara__stringBase0@l /* 0x80D415FC@l */
/* 80D40784  38 80 00 04 */	li r4, 4
/* 80D40788  7F C5 F3 78 */	mr r5, r30
/* 80D4078C  38 C0 00 80 */	li r6, 0x80
/* 80D40790  4B 2F BB 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D40794  3C 80 00 08 */	lis r4, 8
/* 80D40798  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D4079C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D407A0  4B 2D 44 B5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D407A4  90 7F 07 24 */	stw r3, 0x724(r31)
/* 80D407A8  80 1F 07 24 */	lwz r0, 0x724(r31)
/* 80D407AC  28 00 00 00 */	cmplwi r0, 0
/* 80D407B0  40 82 00 0C */	bne lbl_80D407BC
/* 80D407B4  38 60 00 00 */	li r3, 0
/* 80D407B8  48 00 00 74 */	b lbl_80D4082C
lbl_80D407BC:
/* 80D407BC  38 60 00 C0 */	li r3, 0xc0
/* 80D407C0  4B 58 E4 8D */	bl __nw__FUl
/* 80D407C4  7C 60 1B 79 */	or. r0, r3, r3
/* 80D407C8  41 82 00 0C */	beq lbl_80D407D4
/* 80D407CC  4B 33 B1 A5 */	bl __ct__4dBgWFv
/* 80D407D0  7C 60 1B 78 */	mr r0, r3
lbl_80D407D4:
/* 80D407D4  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 80D407D8  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 80D407DC  28 00 00 00 */	cmplwi r0, 0
/* 80D407E0  41 82 00 38 */	beq lbl_80D40818
/* 80D407E4  3C 60 80 D4 */	lis r3, d_a_obj_zrTurara__stringBase0@ha /* 0x80D415FC@ha */
/* 80D407E8  38 63 15 FC */	addi r3, r3, d_a_obj_zrTurara__stringBase0@l /* 0x80D415FC@l */
/* 80D407EC  38 80 00 08 */	li r4, 8
/* 80D407F0  7F C5 F3 78 */	mr r5, r30
/* 80D407F4  38 C0 00 80 */	li r6, 0x80
/* 80D407F8  4B 2F BA F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D407FC  7C 64 1B 78 */	mr r4, r3
/* 80D40800  80 7F 07 2C */	lwz r3, 0x72c(r31)
/* 80D40804  38 A0 00 01 */	li r5, 1
/* 80D40808  38 DF 07 30 */	addi r6, r31, 0x730
/* 80D4080C  4B 33 97 2D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D40810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D40814  41 82 00 14 */	beq lbl_80D40828
lbl_80D40818:
/* 80D40818  38 00 00 00 */	li r0, 0
/* 80D4081C  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 80D40820  38 60 00 00 */	li r3, 0
/* 80D40824  48 00 00 08 */	b lbl_80D4082C
lbl_80D40828:
/* 80D40828  38 60 00 01 */	li r3, 1
lbl_80D4082C:
/* 80D4082C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40830  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D40834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40838  7C 08 03 A6 */	mtlr r0
/* 80D4083C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40840  4E 80 00 20 */	blr 
