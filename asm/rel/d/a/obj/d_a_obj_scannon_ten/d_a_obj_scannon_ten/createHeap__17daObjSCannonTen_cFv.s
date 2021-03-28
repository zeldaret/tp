lbl_80CCB4EC:
/* 80CCB4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB4F0  7C 08 02 A6 */	mflr r0
/* 80CCB4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCB4FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCB500  7C 7E 1B 78 */	mr r30, r3
/* 80CCB504  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCB508  38 63 CC F0 */	addi r3, r3, l_arcName@l
/* 80CCB50C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCB510  38 80 00 09 */	li r4, 9
/* 80CCB514  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CCB518  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CCB51C  3F E5 00 02 */	addis r31, r5, 2
/* 80CCB520  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CCB524  7F E5 FB 78 */	mr r5, r31
/* 80CCB528  38 C0 00 80 */	li r6, 0x80
/* 80CCB52C  4B 37 0D C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCB530  3C 80 00 08 */	lis r4, 8
/* 80CCB534  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CCB538  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CCB53C  4B 34 97 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CCB540  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80CCB544  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80CCB548  28 00 00 00 */	cmplwi r0, 0
/* 80CCB54C  40 82 00 0C */	bne lbl_80CCB558
/* 80CCB550  38 60 00 00 */	li r3, 0
/* 80CCB554  48 00 01 00 */	b lbl_80CCB654
lbl_80CCB558:
/* 80CCB558  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCB55C  38 63 CC F0 */	addi r3, r3, l_arcName@l
/* 80CCB560  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCB564  38 80 00 06 */	li r4, 6
/* 80CCB568  7F E5 FB 78 */	mr r5, r31
/* 80CCB56C  38 C0 00 80 */	li r6, 0x80
/* 80CCB570  4B 37 0D 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCB574  7C 64 1B 78 */	mr r4, r3
/* 80CCB578  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCB57C  38 A0 00 01 */	li r5, 1
/* 80CCB580  38 C0 00 00 */	li r6, 0
/* 80CCB584  3C E0 80 CD */	lis r7, lit_3832@ha
/* 80CCB588  C0 27 CC 38 */	lfs f1, lit_3832@l(r7)
/* 80CCB58C  38 E0 00 00 */	li r7, 0
/* 80CCB590  39 00 FF FF */	li r8, -1
/* 80CCB594  39 20 00 00 */	li r9, 0
/* 80CCB598  4B 34 22 44 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CCB59C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCB5A0  40 82 00 0C */	bne lbl_80CCB5AC
/* 80CCB5A4  38 60 00 00 */	li r3, 0
/* 80CCB5A8  48 00 00 AC */	b lbl_80CCB654
lbl_80CCB5AC:
/* 80CCB5AC  38 60 00 C0 */	li r3, 0xc0
/* 80CCB5B0  4B 60 36 9C */	b __nw__FUl
/* 80CCB5B4  7C 60 1B 79 */	or. r0, r3, r3
/* 80CCB5B8  41 82 00 0C */	beq lbl_80CCB5C4
/* 80CCB5BC  4B 3B 03 B4 */	b __ct__4dBgWFv
/* 80CCB5C0  7C 60 1B 78 */	mr r0, r3
lbl_80CCB5C4:
/* 80CCB5C4  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80CCB5C8  80 1E 05 94 */	lwz r0, 0x594(r30)
/* 80CCB5CC  28 00 00 00 */	cmplwi r0, 0
/* 80CCB5D0  40 82 00 0C */	bne lbl_80CCB5DC
/* 80CCB5D4  38 60 00 00 */	li r3, 0
/* 80CCB5D8  48 00 00 7C */	b lbl_80CCB654
lbl_80CCB5DC:
/* 80CCB5DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCB5E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCB5E4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CCB5E8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CCB5EC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CCB5F0  4B 67 B2 F8 */	b PSMTXTrans
/* 80CCB5F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCB5F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCB5FC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CCB600  4B 34 0E 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80CCB604  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCB608  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCB60C  38 9E 05 A8 */	addi r4, r30, 0x5a8
/* 80CCB610  4B 67 AE A0 */	b PSMTXCopy
/* 80CCB614  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCB618  38 63 CC F0 */	addi r3, r3, l_arcName@l
/* 80CCB61C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCB620  38 80 00 0C */	li r4, 0xc
/* 80CCB624  7F E5 FB 78 */	mr r5, r31
/* 80CCB628  38 C0 00 80 */	li r6, 0x80
/* 80CCB62C  4B 37 0C C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCB630  7C 64 1B 78 */	mr r4, r3
/* 80CCB634  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 80CCB638  38 A0 00 01 */	li r5, 1
/* 80CCB63C  38 DE 05 A8 */	addi r6, r30, 0x5a8
/* 80CCB640  4B 3A E8 F8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CCB644  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CCB648  20 60 00 01 */	subfic r3, r0, 1
/* 80CCB64C  30 03 FF FF */	addic r0, r3, -1
/* 80CCB650  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CCB654:
/* 80CCB654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCB658  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCB65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB660  7C 08 03 A6 */	mtlr r0
/* 80CCB664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB668  4E 80 00 20 */	blr 
