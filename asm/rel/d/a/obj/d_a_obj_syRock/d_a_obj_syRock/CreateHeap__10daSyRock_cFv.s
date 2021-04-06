lbl_80D02454:
/* 80D02454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02458  7C 08 02 A6 */	mflr r0
/* 80D0245C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02464  93 C1 00 08 */	stw r30, 8(r1)
/* 80D02468  7C 7F 1B 78 */	mr r31, r3
/* 80D0246C  3C 60 80 D0 */	lis r3, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D02470  38 63 40 30 */	addi r3, r3, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D02474  38 80 00 04 */	li r4, 4
/* 80D02478  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0247C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D02480  3F C5 00 02 */	addis r30, r5, 2
/* 80D02484  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D02488  7F C5 F3 78 */	mr r5, r30
/* 80D0248C  38 C0 00 80 */	li r6, 0x80
/* 80D02490  4B 33 9E 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D02494  3C 80 00 08 */	lis r4, 8
/* 80D02498  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0249C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D024A0  4B 31 27 B5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D024A4  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80D024A8  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80D024AC  28 00 00 00 */	cmplwi r0, 0
/* 80D024B0  40 82 00 0C */	bne lbl_80D024BC
/* 80D024B4  38 60 00 00 */	li r3, 0
/* 80D024B8  48 00 00 B4 */	b lbl_80D0256C
lbl_80D024BC:
/* 80D024BC  3C 60 80 D0 */	lis r3, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D024C0  38 63 40 30 */	addi r3, r3, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D024C4  38 80 00 05 */	li r4, 5
/* 80D024C8  7F C5 F3 78 */	mr r5, r30
/* 80D024CC  38 C0 00 80 */	li r6, 0x80
/* 80D024D0  4B 33 9E 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D024D4  3C 80 00 08 */	lis r4, 8
/* 80D024D8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D024DC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D024E0  4B 31 27 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D024E4  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80D024E8  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80D024EC  28 00 00 00 */	cmplwi r0, 0
/* 80D024F0  40 82 00 0C */	bne lbl_80D024FC
/* 80D024F4  38 60 00 00 */	li r3, 0
/* 80D024F8  48 00 00 74 */	b lbl_80D0256C
lbl_80D024FC:
/* 80D024FC  38 60 00 C0 */	li r3, 0xc0
/* 80D02500  4B 5C C7 4D */	bl __nw__FUl
/* 80D02504  7C 60 1B 79 */	or. r0, r3, r3
/* 80D02508  41 82 00 0C */	beq lbl_80D02514
/* 80D0250C  4B 37 94 65 */	bl __ct__4dBgWFv
/* 80D02510  7C 60 1B 78 */	mr r0, r3
lbl_80D02514:
/* 80D02514  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80D02518  80 1F 09 98 */	lwz r0, 0x998(r31)
/* 80D0251C  28 00 00 00 */	cmplwi r0, 0
/* 80D02520  41 82 00 38 */	beq lbl_80D02558
/* 80D02524  3C 60 80 D0 */	lis r3, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D02528  38 63 40 30 */	addi r3, r3, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D0252C  38 80 00 09 */	li r4, 9
/* 80D02530  7F C5 F3 78 */	mr r5, r30
/* 80D02534  38 C0 00 80 */	li r6, 0x80
/* 80D02538  4B 33 9D B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0253C  7C 64 1B 78 */	mr r4, r3
/* 80D02540  80 7F 09 98 */	lwz r3, 0x998(r31)
/* 80D02544  38 A0 00 01 */	li r5, 1
/* 80D02548  38 DF 05 6C */	addi r6, r31, 0x56c
/* 80D0254C  4B 37 79 ED */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D02550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D02554  41 82 00 14 */	beq lbl_80D02568
lbl_80D02558:
/* 80D02558  38 00 00 00 */	li r0, 0
/* 80D0255C  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80D02560  38 60 00 00 */	li r3, 0
/* 80D02564  48 00 00 08 */	b lbl_80D0256C
lbl_80D02568:
/* 80D02568  38 60 00 01 */	li r3, 1
lbl_80D0256C:
/* 80D0256C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D02574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02578  7C 08 03 A6 */	mtlr r0
/* 80D0257C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02580  4E 80 00 20 */	blr 
