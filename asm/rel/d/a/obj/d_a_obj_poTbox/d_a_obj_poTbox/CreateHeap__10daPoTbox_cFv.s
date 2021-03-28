lbl_80CB43D0:
/* 80CB43D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB43D4  7C 08 02 A6 */	mflr r0
/* 80CB43D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB43DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB43E0  4B 6A DD FC */	b _savegpr_29
/* 80CB43E4  7C 7D 1B 78 */	mr r29, r3
/* 80CB43E8  88 03 06 06 */	lbz r0, 0x606(r3)
/* 80CB43EC  54 00 10 3A */	slwi r0, r0, 2
/* 80CB43F0  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB43F4  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB43F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB43FC  3C 80 80 CB */	lis r4, l_bmdIdx@ha
/* 80CB4400  38 84 50 14 */	addi r4, r4, l_bmdIdx@l
/* 80CB4404  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB4408  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CB440C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CB4410  3F C5 00 02 */	addis r30, r5, 2
/* 80CB4414  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CB4418  7F C5 F3 78 */	mr r5, r30
/* 80CB441C  38 C0 00 80 */	li r6, 0x80
/* 80CB4420  4B 38 7E CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4424  3C 80 00 08 */	lis r4, 8
/* 80CB4428  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB442C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB4430  4B 36 08 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB4434  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80CB4438  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80CB443C  28 00 00 00 */	cmplwi r0, 0
/* 80CB4440  40 82 00 0C */	bne lbl_80CB444C
/* 80CB4444  38 60 00 00 */	li r3, 0
/* 80CB4448  48 00 02 64 */	b lbl_80CB46AC
lbl_80CB444C:
/* 80CB444C  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB4450  28 00 00 00 */	cmplwi r0, 0
/* 80CB4454  40 82 01 F8 */	bne lbl_80CB464C
/* 80CB4458  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80CB445C  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB4460  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB4464  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB4468  38 80 00 0B */	li r4, 0xb
/* 80CB446C  7F C5 F3 78 */	mr r5, r30
/* 80CB4470  38 C0 00 80 */	li r6, 0x80
/* 80CB4474  4B 38 7E 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4478  3C 80 00 08 */	lis r4, 8
/* 80CB447C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB4480  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB4484  4B 36 07 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB4488  90 7D 05 AC */	stw r3, 0x5ac(r29)
/* 80CB448C  80 1D 05 AC */	lwz r0, 0x5ac(r29)
/* 80CB4490  28 00 00 00 */	cmplwi r0, 0
/* 80CB4494  40 82 00 0C */	bne lbl_80CB44A0
/* 80CB4498  38 60 00 00 */	li r3, 0
/* 80CB449C  48 00 02 10 */	b lbl_80CB46AC
lbl_80CB44A0:
/* 80CB44A0  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB44A4  54 00 10 3A */	slwi r0, r0, 2
/* 80CB44A8  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB44AC  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB44B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB44B4  38 80 00 07 */	li r4, 7
/* 80CB44B8  7F C5 F3 78 */	mr r5, r30
/* 80CB44BC  38 C0 00 80 */	li r6, 0x80
/* 80CB44C0  4B 38 7E 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB44C4  7C 64 1B 78 */	mr r4, r3
/* 80CB44C8  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80CB44CC  38 A0 00 01 */	li r5, 1
/* 80CB44D0  38 C0 00 00 */	li r6, 0
/* 80CB44D4  3C E0 80 CB */	lis r7, lit_3724@ha
/* 80CB44D8  C0 27 4F C8 */	lfs f1, lit_3724@l(r7)
/* 80CB44DC  38 E0 00 00 */	li r7, 0
/* 80CB44E0  39 00 FF FF */	li r8, -1
/* 80CB44E4  39 20 00 00 */	li r9, 0
/* 80CB44E8  4B 35 92 F4 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CB44EC  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB44F0  54 00 10 3A */	slwi r0, r0, 2
/* 80CB44F4  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB44F8  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB44FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB4500  38 80 00 0C */	li r4, 0xc
/* 80CB4504  7F C5 F3 78 */	mr r5, r30
/* 80CB4508  38 C0 00 80 */	li r6, 0x80
/* 80CB450C  4B 38 7D E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4510  7C 7F 1B 78 */	mr r31, r3
/* 80CB4514  3C 80 00 08 */	lis r4, 8
/* 80CB4518  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CB451C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CB4520  4B 36 07 34 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB4524  90 7D 05 B0 */	stw r3, 0x5b0(r29)
/* 80CB4528  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 80CB452C  28 00 00 00 */	cmplwi r0, 0
/* 80CB4530  40 82 00 0C */	bne lbl_80CB453C
/* 80CB4534  38 60 00 00 */	li r3, 0
/* 80CB4538  48 00 01 74 */	b lbl_80CB46AC
lbl_80CB453C:
/* 80CB453C  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB4540  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4544  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB4548  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB454C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB4550  38 80 00 12 */	li r4, 0x12
/* 80CB4554  7F C5 F3 78 */	mr r5, r30
/* 80CB4558  38 C0 00 80 */	li r6, 0x80
/* 80CB455C  4B 38 7D 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4560  7C 65 1B 78 */	mr r5, r3
/* 80CB4564  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80CB4568  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CB456C  38 C0 00 01 */	li r6, 1
/* 80CB4570  38 E0 00 02 */	li r7, 2
/* 80CB4574  3D 00 80 CB */	lis r8, lit_3724@ha
/* 80CB4578  C0 28 4F C8 */	lfs f1, lit_3724@l(r8)
/* 80CB457C  39 00 00 00 */	li r8, 0
/* 80CB4580  39 20 FF FF */	li r9, -1
/* 80CB4584  4B 35 90 B8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CB4588  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB458C  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4590  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB4594  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB4598  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB459C  38 80 00 0F */	li r4, 0xf
/* 80CB45A0  7F C5 F3 78 */	mr r5, r30
/* 80CB45A4  38 C0 00 80 */	li r6, 0x80
/* 80CB45A8  4B 38 7D 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB45AC  7C 65 1B 78 */	mr r5, r3
/* 80CB45B0  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80CB45B4  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CB45B8  38 C0 00 01 */	li r6, 1
/* 80CB45BC  38 E0 00 00 */	li r7, 0
/* 80CB45C0  3D 00 80 CB */	lis r8, lit_3724@ha
/* 80CB45C4  C0 28 4F C8 */	lfs f1, lit_3724@l(r8)
/* 80CB45C8  39 00 00 00 */	li r8, 0
/* 80CB45CC  39 20 FF FF */	li r9, -1
/* 80CB45D0  4B 35 91 3C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CB45D4  38 60 00 C0 */	li r3, 0xc0
/* 80CB45D8  4B 61 A6 74 */	b __nw__FUl
/* 80CB45DC  7C 60 1B 79 */	or. r0, r3, r3
/* 80CB45E0  41 82 00 0C */	beq lbl_80CB45EC
/* 80CB45E4  4B 3C 73 8C */	b __ct__4dBgWFv
/* 80CB45E8  7C 60 1B 78 */	mr r0, r3
lbl_80CB45EC:
/* 80CB45EC  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 80CB45F0  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 80CB45F4  28 00 00 00 */	cmplwi r0, 0
/* 80CB45F8  41 82 00 44 */	beq lbl_80CB463C
/* 80CB45FC  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB4600  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4604  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB4608  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB460C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB4610  38 80 00 16 */	li r4, 0x16
/* 80CB4614  7F C5 F3 78 */	mr r5, r30
/* 80CB4618  38 C0 00 80 */	li r6, 0x80
/* 80CB461C  4B 38 7C D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4620  7C 64 1B 78 */	mr r4, r3
/* 80CB4624  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CB4628  38 A0 00 01 */	li r5, 1
/* 80CB462C  38 DD 05 6C */	addi r6, r29, 0x56c
/* 80CB4630  4B 3C 59 08 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CB4634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB4638  41 82 00 70 */	beq lbl_80CB46A8
lbl_80CB463C:
/* 80CB463C  38 00 00 00 */	li r0, 0
/* 80CB4640  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 80CB4644  38 60 00 00 */	li r3, 0
/* 80CB4648  48 00 00 64 */	b lbl_80CB46AC
lbl_80CB464C:
/* 80CB464C  38 00 00 00 */	li r0, 0
/* 80CB4650  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 80CB4654  90 1D 05 AC */	stw r0, 0x5ac(r29)
/* 80CB4658  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 80CB465C  88 1D 06 06 */	lbz r0, 0x606(r29)
/* 80CB4660  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4664  3C 60 80 CB */	lis r3, l_type@ha
/* 80CB4668  38 63 50 0C */	addi r3, r3, l_type@l
/* 80CB466C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CB4670  38 80 00 05 */	li r4, 5
/* 80CB4674  7F C5 F3 78 */	mr r5, r30
/* 80CB4678  38 C0 00 80 */	li r6, 0x80
/* 80CB467C  4B 38 7C 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB4680  7C 64 1B 78 */	mr r4, r3
/* 80CB4684  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80CB4688  38 A0 00 01 */	li r5, 1
/* 80CB468C  38 C0 00 00 */	li r6, 0
/* 80CB4690  3C E0 80 CB */	lis r7, lit_3724@ha
/* 80CB4694  C0 27 4F C8 */	lfs f1, lit_3724@l(r7)
/* 80CB4698  38 E0 00 00 */	li r7, 0
/* 80CB469C  39 00 FF FF */	li r8, -1
/* 80CB46A0  39 20 00 00 */	li r9, 0
/* 80CB46A4  4B 35 91 38 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_80CB46A8:
/* 80CB46A8  38 60 00 01 */	li r3, 1
lbl_80CB46AC:
/* 80CB46AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB46B0  4B 6A DB 78 */	b _restgpr_29
/* 80CB46B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB46B8  7C 08 03 A6 */	mtlr r0
/* 80CB46BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB46C0  4E 80 00 20 */	blr 
