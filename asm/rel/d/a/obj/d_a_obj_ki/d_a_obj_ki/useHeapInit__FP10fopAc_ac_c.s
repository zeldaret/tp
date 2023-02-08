lbl_80C4448C:
/* 80C4448C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C44490  7C 08 02 A6 */	mflr r0
/* 80C44494  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C44498  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4449C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C444A0  7C 7F 1B 78 */	mr r31, r3
/* 80C444A4  38 60 00 54 */	li r3, 0x54
/* 80C444A8  4B 68 A7 A5 */	bl __nw__FUl
/* 80C444AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C444B0  41 82 00 8C */	beq lbl_80C4453C
/* 80C444B4  3C 60 80 C4 */	lis r3, d_a_obj_ki__stringBase0@ha /* 0x80C44B88@ha */
/* 80C444B8  38 63 4B 88 */	addi r3, r3, d_a_obj_ki__stringBase0@l /* 0x80C44B88@l */
/* 80C444BC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80C444C0  54 00 10 3A */	slwi r0, r0, 2
/* 80C444C4  3C 80 80 C4 */	lis r4, ki_bmd@ha /* 0x80C44B90@ha */
/* 80C444C8  38 84 4B 90 */	addi r4, r4, ki_bmd@l /* 0x80C44B90@l */
/* 80C444CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C444D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C444D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C444D8  3C A5 00 02 */	addis r5, r5, 2
/* 80C444DC  38 C0 00 80 */	li r6, 0x80
/* 80C444E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C444E4  4B 3F 7E 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C444E8  7C 64 1B 78 */	mr r4, r3
/* 80C444EC  38 00 00 01 */	li r0, 1
/* 80C444F0  90 01 00 08 */	stw r0, 8(r1)
/* 80C444F4  38 00 00 00 */	li r0, 0
/* 80C444F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C444FC  3C 00 00 08 */	lis r0, 8
/* 80C44500  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C44504  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80C44508  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80C4450C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44510  7F C3 F3 78 */	mr r3, r30
/* 80C44514  38 A0 00 00 */	li r5, 0
/* 80C44518  38 C0 00 00 */	li r6, 0
/* 80C4451C  38 E0 00 00 */	li r7, 0
/* 80C44520  39 00 00 00 */	li r8, 0
/* 80C44524  3D 20 80 C4 */	lis r9, lit_3873@ha /* 0x80C44B50@ha */
/* 80C44528  C0 29 4B 50 */	lfs f1, lit_3873@l(r9)  /* 0x80C44B50@l */
/* 80C4452C  39 20 00 00 */	li r9, 0
/* 80C44530  39 40 FF FF */	li r10, -1
/* 80C44534  4B 3C B7 19 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80C44538  7C 7E 1B 78 */	mr r30, r3
lbl_80C4453C:
/* 80C4453C  93 DF 05 74 */	stw r30, 0x574(r31)
/* 80C44540  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C44544  28 03 00 00 */	cmplwi r3, 0
/* 80C44548  41 82 00 10 */	beq lbl_80C44558
/* 80C4454C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C44550  28 05 00 00 */	cmplwi r5, 0
/* 80C44554  40 82 00 0C */	bne lbl_80C44560
lbl_80C44558:
/* 80C44558  38 60 00 00 */	li r3, 0
/* 80C4455C  48 00 00 F8 */	b lbl_80C44654
lbl_80C44560:
/* 80C44560  28 03 00 00 */	cmplwi r3, 0
/* 80C44564  41 82 00 0C */	beq lbl_80C44570
/* 80C44568  28 05 00 00 */	cmplwi r5, 0
/* 80C4456C  40 82 00 0C */	bne lbl_80C44578
lbl_80C44570:
/* 80C44570  38 60 00 00 */	li r3, 0
/* 80C44574  48 00 00 E0 */	b lbl_80C44654
lbl_80C44578:
/* 80C44578  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80C4457C  38 E0 00 00 */	li r7, 0
/* 80C44580  3C 60 80 C4 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80C43F0C@ha */
/* 80C44584  38 83 3F 0C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80C43F0C@l */
/* 80C44588  48 00 00 18 */	b lbl_80C445A0
lbl_80C4458C:
/* 80C4458C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80C44590  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80C44594  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C44598  90 83 00 04 */	stw r4, 4(r3)
/* 80C4459C  38 E7 00 01 */	addi r7, r7, 1
lbl_80C445A0:
/* 80C445A0  80 C5 00 04 */	lwz r6, 4(r5)
/* 80C445A4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80C445A8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80C445AC  7C 00 18 40 */	cmplw r0, r3
/* 80C445B0  41 80 FF DC */	blt lbl_80C4458C
/* 80C445B4  38 60 00 C0 */	li r3, 0xc0
/* 80C445B8  4B 68 A6 95 */	bl __nw__FUl
/* 80C445BC  7C 60 1B 79 */	or. r0, r3, r3
/* 80C445C0  41 82 00 0C */	beq lbl_80C445CC
/* 80C445C4  4B 43 73 AD */	bl __ct__4dBgWFv
/* 80C445C8  7C 60 1B 78 */	mr r0, r3
lbl_80C445CC:
/* 80C445CC  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80C445D0  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80C445D4  28 00 00 00 */	cmplwi r0, 0
/* 80C445D8  40 82 00 0C */	bne lbl_80C445E4
/* 80C445DC  38 60 00 00 */	li r3, 0
/* 80C445E0  48 00 00 74 */	b lbl_80C44654
lbl_80C445E4:
/* 80C445E4  3C 60 80 C4 */	lis r3, d_a_obj_ki__stringBase0@ha /* 0x80C44B88@ha */
/* 80C445E8  38 63 4B 88 */	addi r3, r3, d_a_obj_ki__stringBase0@l /* 0x80C44B88@l */
/* 80C445EC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80C445F0  54 00 10 3A */	slwi r0, r0, 2
/* 80C445F4  3C 80 80 C4 */	lis r4, ki_dzb@ha /* 0x80C44B98@ha */
/* 80C445F8  38 84 4B 98 */	addi r4, r4, ki_dzb@l /* 0x80C44B98@l */
/* 80C445FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C44600  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C44604  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C44608  3C A5 00 02 */	addis r5, r5, 2
/* 80C4460C  38 C0 00 80 */	li r6, 0x80
/* 80C44610  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C44614  4B 3F 7C D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C44618  7C 64 1B 78 */	mr r4, r3
/* 80C4461C  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 80C44620  38 A0 00 01 */	li r5, 1
/* 80C44624  38 DF 06 38 */	addi r6, r31, 0x638
/* 80C44628  4B 43 59 11 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C4462C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C44630  28 00 00 01 */	cmplwi r0, 1
/* 80C44634  40 82 00 0C */	bne lbl_80C44640
/* 80C44638  38 60 00 00 */	li r3, 0
/* 80C4463C  48 00 00 18 */	b lbl_80C44654
lbl_80C44640:
/* 80C44640  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C44644  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C44648  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 80C4464C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C44650  38 60 00 01 */	li r3, 1
lbl_80C44654:
/* 80C44654  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C44658  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C4465C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C44660  7C 08 03 A6 */	mtlr r0
/* 80C44664  38 21 00 20 */	addi r1, r1, 0x20
/* 80C44668  4E 80 00 20 */	blr 
