lbl_809661F0:
/* 809661F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 809661F4  7C 08 02 A6 */	mflr r0
/* 809661F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 809661FC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80966200  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80966204  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80966208  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8096620C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80966210  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80966214  39 61 00 50 */	addi r11, r1, 0x50
/* 80966218  4B 9F BF BC */	b _savegpr_27
/* 8096621C  7C 7F 1B 78 */	mr r31, r3
/* 80966220  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80966224  2C 00 00 02 */	cmpwi r0, 2
/* 80966228  41 82 01 78 */	beq lbl_809663A0
/* 8096622C  40 80 06 14 */	bge lbl_80966840
/* 80966230  2C 00 00 00 */	cmpwi r0, 0
/* 80966234  40 80 00 0C */	bge lbl_80966240
/* 80966238  48 00 06 08 */	b lbl_80966840
/* 8096623C  48 00 06 04 */	b lbl_80966840
lbl_80966240:
/* 80966240  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80966244  2C 00 00 00 */	cmpwi r0, 0
/* 80966248  40 82 01 58 */	bne lbl_809663A0
/* 8096624C  88 1F 12 6A */	lbz r0, 0x126a(r31)
/* 80966250  28 00 00 00 */	cmplwi r0, 0
/* 80966254  41 82 00 68 */	beq lbl_809662BC
/* 80966258  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8096625C  2C 00 00 02 */	cmpwi r0, 2
/* 80966260  41 82 00 28 */	beq lbl_80966288
/* 80966264  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80966268  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8096626C  4B 7D F6 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966270  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80966274  38 00 00 02 */	li r0, 2
/* 80966278  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8096627C  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966280  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 80966284  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80966288:
/* 80966288  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8096628C  2C 00 00 01 */	cmpwi r0, 1
/* 80966290  41 82 01 08 */	beq lbl_80966398
/* 80966294  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80966298  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8096629C  4B 7D F5 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809662A0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809662A4  38 00 00 01 */	li r0, 1
/* 809662A8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809662AC  3C 60 80 96 */	lis r3, lit_4761@ha
/* 809662B0  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 809662B4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 809662B8  48 00 00 E0 */	b lbl_80966398
lbl_809662BC:
/* 809662BC  38 60 00 39 */	li r3, 0x39
/* 809662C0  4B 7E 68 AC */	b daNpcT_chkTmpBit__FUl
/* 809662C4  2C 03 00 00 */	cmpwi r3, 0
/* 809662C8  41 82 00 68 */	beq lbl_80966330
/* 809662CC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809662D0  2C 00 00 02 */	cmpwi r0, 2
/* 809662D4  41 82 00 28 */	beq lbl_809662FC
/* 809662D8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809662DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809662E0  4B 7D F5 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809662E4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809662E8  38 00 00 02 */	li r0, 2
/* 809662EC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809662F0  3C 60 80 96 */	lis r3, lit_4761@ha
/* 809662F4  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 809662F8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809662FC:
/* 809662FC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80966300  2C 00 00 08 */	cmpwi r0, 8
/* 80966304  41 82 00 8C */	beq lbl_80966390
/* 80966308  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8096630C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80966310  4B 7D F5 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966314  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80966318  38 00 00 08 */	li r0, 8
/* 8096631C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80966320  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966324  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 80966328  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 8096632C  48 00 00 64 */	b lbl_80966390
lbl_80966330:
/* 80966330  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80966334  2C 00 00 03 */	cmpwi r0, 3
/* 80966338  41 82 00 28 */	beq lbl_80966360
/* 8096633C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80966340  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80966344  4B 7D F5 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966348  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8096634C  38 00 00 03 */	li r0, 3
/* 80966350  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80966354  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966358  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 8096635C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80966360:
/* 80966360  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80966364  2C 00 00 07 */	cmpwi r0, 7
/* 80966368  41 82 00 28 */	beq lbl_80966390
/* 8096636C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80966370  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80966374  4B 7D F5 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966378  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8096637C  38 00 00 07 */	li r0, 7
/* 80966380  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80966384  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966388  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 8096638C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80966390:
/* 80966390  38 00 00 14 */	li r0, 0x14
/* 80966394  90 1F 12 60 */	stw r0, 0x1260(r31)
lbl_80966398:
/* 80966398  38 00 00 02 */	li r0, 2
/* 8096639C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809663A0:
/* 809663A0  88 1F 12 65 */	lbz r0, 0x1265(r31)
/* 809663A4  28 00 00 00 */	cmplwi r0, 0
/* 809663A8  41 82 00 6C */	beq lbl_80966414
/* 809663AC  88 1F 12 66 */	lbz r0, 0x1266(r31)
/* 809663B0  28 00 00 00 */	cmplwi r0, 0
/* 809663B4  41 82 00 18 */	beq lbl_809663CC
/* 809663B8  38 00 00 08 */	li r0, 8
/* 809663BC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809663C0  38 00 00 01 */	li r0, 1
/* 809663C4  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 809663C8  48 00 00 54 */	b lbl_8096641C
lbl_809663CC:
/* 809663CC  38 60 00 39 */	li r3, 0x39
/* 809663D0  4B 7E 67 9C */	b daNpcT_chkTmpBit__FUl
/* 809663D4  2C 03 00 00 */	cmpwi r3, 0
/* 809663D8  41 82 00 14 */	beq lbl_809663EC
/* 809663DC  38 00 00 01 */	li r0, 1
/* 809663E0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 809663E4  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 809663E8  48 00 00 34 */	b lbl_8096641C
lbl_809663EC:
/* 809663EC  80 1F 12 5C */	lwz r0, 0x125c(r31)
/* 809663F0  2C 00 00 02 */	cmpwi r0, 2
/* 809663F4  40 82 00 14 */	bne lbl_80966408
/* 809663F8  38 00 00 01 */	li r0, 1
/* 809663FC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80966400  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80966404  48 00 00 18 */	b lbl_8096641C
lbl_80966408:
/* 80966408  7F E3 FB 78 */	mr r3, r31
/* 8096640C  4B FF E9 C5 */	bl orderAngerEvt__12daNpc_Bans_cFv
/* 80966410  48 00 00 0C */	b lbl_8096641C
lbl_80966414:
/* 80966414  7F E3 FB 78 */	mr r3, r31
/* 80966418  4B FF E9 B9 */	bl orderAngerEvt__12daNpc_Bans_cFv
lbl_8096641C:
/* 8096641C  88 1F 12 6A */	lbz r0, 0x126a(r31)
/* 80966420  28 00 00 00 */	cmplwi r0, 0
/* 80966424  41 82 00 44 */	beq lbl_80966468
/* 80966428  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8096642C  2C 00 00 00 */	cmpwi r0, 0
/* 80966430  41 82 00 28 */	beq lbl_80966458
/* 80966434  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966438  4B 7D F2 C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096643C  38 00 00 00 */	li r0, 0
/* 80966440  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966444  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966448  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 8096644C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966450  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966454  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966458:
/* 80966458  38 00 00 00 */	li r0, 0
/* 8096645C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966460  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80966464  48 00 03 DC */	b lbl_80966840
lbl_80966468:
/* 80966468  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8096646C  2C 00 00 00 */	cmpwi r0, 0
/* 80966470  40 82 03 D0 */	bne lbl_80966840
/* 80966474  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966478  2C 00 00 00 */	cmpwi r0, 0
/* 8096647C  41 82 00 28 */	beq lbl_809664A4
/* 80966480  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966484  4B 7D F2 78 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966488  38 00 00 00 */	li r0, 0
/* 8096648C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966490  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966494  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966498  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8096649C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809664A0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809664A4:
/* 809664A4  38 00 00 00 */	li r0, 0
/* 809664A8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809664AC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809664B0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809664B4  7C 04 00 00 */	cmpw r4, r0
/* 809664B8  41 82 00 58 */	beq lbl_80966510
/* 809664BC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 809664C0  28 00 00 00 */	cmplwi r0, 0
/* 809664C4  41 82 00 30 */	beq lbl_809664F4
/* 809664C8  7F E3 FB 78 */	mr r3, r31
/* 809664CC  38 A0 FF FF */	li r5, -1
/* 809664D0  38 C0 FF FF */	li r6, -1
/* 809664D4  38 E0 00 0F */	li r7, 0xf
/* 809664D8  39 00 00 00 */	li r8, 0
/* 809664DC  4B 7E 51 6C */	b step__8daNpcT_cFsiiii
/* 809664E0  2C 03 00 00 */	cmpwi r3, 0
/* 809664E4  41 82 00 20 */	beq lbl_80966504
/* 809664E8  38 00 00 01 */	li r0, 1
/* 809664EC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809664F0  48 00 00 14 */	b lbl_80966504
lbl_809664F4:
/* 809664F4  7F E3 FB 78 */	mr r3, r31
/* 809664F8  4B 7E 45 20 */	b setAngle__8daNpcT_cFs
/* 809664FC  38 00 00 01 */	li r0, 1
/* 80966500  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80966504:
/* 80966504  38 00 00 00 */	li r0, 0
/* 80966508  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8096650C  48 00 02 74 */	b lbl_80966780
lbl_80966510:
/* 80966510  3B A0 00 00 */	li r29, 0
/* 80966514  38 7F 12 3C */	addi r3, r31, 0x123c
/* 80966518  4B 7D F1 F0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096651C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80966520  41 82 01 34 */	beq lbl_80966654
/* 80966524  38 61 00 20 */	addi r3, r1, 0x20
/* 80966528  7F E4 FB 78 */	mr r4, r31
/* 8096652C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80966530  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80966534  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 80966538  4B 7E 4E B4 */	b getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 8096653C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80966540  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80966544  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80966548  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8096654C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80966550  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80966554  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80966558  4B 7D F1 B0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096655C  30 03 FF FF */	addic r0, r3, -1
/* 80966560  7C 00 19 10 */	subfe r0, r0, r3
/* 80966564  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80966568  8B 7E 05 47 */	lbz r27, 0x547(r30)
/* 8096656C  7F 63 DB 78 */	mr r3, r27
/* 80966570  48 00 03 05 */	bl getDistTable__12dAttention_cFi
/* 80966574  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80966578  7F 63 DB 78 */	mr r3, r27
/* 8096657C  48 00 02 F9 */	bl getDistTable__12dAttention_cFi
/* 80966580  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80966584  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966588  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 8096658C  EF C0 00 72 */	fmuls f30, f0, f1
/* 80966590  7F 63 DB 78 */	mr r3, r27
/* 80966594  48 00 02 E1 */	bl getDistTable__12dAttention_cFi
/* 80966598  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8096659C  3C 60 80 96 */	lis r3, lit_4761@ha
/* 809665A0  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 809665A4  EF A0 00 72 */	fmuls f29, f0, f1
/* 809665A8  2C 1C 00 00 */	cmpwi r28, 0
/* 809665AC  41 82 00 10 */	beq lbl_809665BC
/* 809665B0  88 7E 05 45 */	lbz r3, 0x545(r30)
/* 809665B4  48 00 02 C1 */	bl getDistTable__12dAttention_cFi
/* 809665B8  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_809665BC:
/* 809665BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809665C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809665C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809665C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809665CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809665D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809665D4  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 809665D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 809665DC  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 809665E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809665E4  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 809665E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809665EC  7F E3 FB 78 */	mr r3, r31
/* 809665F0  38 81 00 14 */	addi r4, r1, 0x14
/* 809665F4  38 A1 00 08 */	addi r5, r1, 8
/* 809665F8  FC 20 F8 90 */	fmr f1, f31
/* 809665FC  FC 40 F0 90 */	fmr f2, f30
/* 80966600  FC 60 E8 90 */	fmr f3, f29
/* 80966604  38 C0 00 00 */	li r6, 0
/* 80966608  4B 7E 46 E8 */	b chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 8096660C  2C 03 00 00 */	cmpwi r3, 0
/* 80966610  41 82 00 44 */	beq lbl_80966654
/* 80966614  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966618  2C 00 00 01 */	cmpwi r0, 1
/* 8096661C  41 82 00 2C */	beq lbl_80966648
/* 80966620  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966624  4B 7D F0 D8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966628  38 00 00 00 */	li r0, 0
/* 8096662C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966630  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966634  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966638  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8096663C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966640  38 00 00 01 */	li r0, 1
/* 80966644  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966648:
/* 80966648  38 00 00 00 */	li r0, 0
/* 8096664C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966650  3B A0 00 01 */	li r29, 1
lbl_80966654:
/* 80966654  2C 1D 00 00 */	cmpwi r29, 0
/* 80966658  40 82 01 28 */	bne lbl_80966780
/* 8096665C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80966660  4B 7D F0 A8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80966664  28 03 00 00 */	cmplwi r3, 0
/* 80966668  41 82 00 B8 */	beq lbl_80966720
/* 8096666C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966670  2C 00 00 01 */	cmpwi r0, 1
/* 80966674  41 82 00 2C */	beq lbl_809666A0
/* 80966678  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8096667C  4B 7D F0 80 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966680  38 00 00 00 */	li r0, 0
/* 80966684  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966688  3C 60 80 96 */	lis r3, lit_4103@ha
/* 8096668C  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966690  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966694  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966698  38 00 00 01 */	li r0, 1
/* 8096669C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809666A0:
/* 809666A0  38 00 00 00 */	li r0, 0
/* 809666A4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809666A8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809666AC  4B 7D F0 5C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809666B0  7C 64 1B 78 */	mr r4, r3
/* 809666B4  7F E3 FB 78 */	mr r3, r31
/* 809666B8  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 809666BC  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 809666C0  4B 7E 45 10 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809666C4  2C 03 00 00 */	cmpwi r3, 0
/* 809666C8  40 82 00 3C */	bne lbl_80966704
/* 809666CC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809666D0  2C 00 00 00 */	cmpwi r0, 0
/* 809666D4  41 82 00 28 */	beq lbl_809666FC
/* 809666D8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809666DC  4B 7D F0 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 809666E0  38 00 00 00 */	li r0, 0
/* 809666E4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809666E8  3C 60 80 96 */	lis r3, lit_4103@ha
/* 809666EC  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 809666F0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809666F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809666F8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809666FC:
/* 809666FC  38 00 00 00 */	li r0, 0
/* 80966700  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80966704:
/* 80966704  7F E3 FB 78 */	mr r3, r31
/* 80966708  4B 7E 4C 30 */	b srchPlayerActor__8daNpcT_cFv
/* 8096670C  2C 03 00 00 */	cmpwi r3, 0
/* 80966710  40 82 00 70 */	bne lbl_80966780
/* 80966714  38 00 00 01 */	li r0, 1
/* 80966718  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 8096671C  48 00 00 64 */	b lbl_80966780
lbl_80966720:
/* 80966720  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966724  2C 00 00 00 */	cmpwi r0, 0
/* 80966728  41 82 00 28 */	beq lbl_80966750
/* 8096672C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966730  4B 7D EF CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80966734  38 00 00 00 */	li r0, 0
/* 80966738  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8096673C  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966740  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966744  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966748  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8096674C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966750:
/* 80966750  38 00 00 00 */	li r0, 0
/* 80966754  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966758  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8096675C  28 00 00 00 */	cmplwi r0, 0
/* 80966760  40 82 00 20 */	bne lbl_80966780
/* 80966764  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 80966768  28 00 00 00 */	cmplwi r0, 0
/* 8096676C  41 82 00 14 */	beq lbl_80966780
/* 80966770  28 00 00 02 */	cmplwi r0, 2
/* 80966774  41 82 00 0C */	beq lbl_80966780
/* 80966778  7F E3 FB 78 */	mr r3, r31
/* 8096677C  4B 7E 4B BC */	b srchPlayerActor__8daNpcT_cFv
lbl_80966780:
/* 80966780  80 9F 0C E0 */	lwz r4, 0xce0(r31)
/* 80966784  2C 04 00 01 */	cmpwi r4, 1
/* 80966788  41 82 00 0C */	beq lbl_80966794
/* 8096678C  40 80 00 B4 */	bge lbl_80966840
/* 80966790  48 00 00 B0 */	b lbl_80966840
lbl_80966794:
/* 80966794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80966798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096679C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809667A0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809667A4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809667A8  41 82 00 98 */	beq lbl_80966840
/* 809667AC  88 1F 12 6A */	lbz r0, 0x126a(r31)
/* 809667B0  28 00 00 00 */	cmplwi r0, 0
/* 809667B4  41 82 00 3C */	beq lbl_809667F0
/* 809667B8  2C 04 00 00 */	cmpwi r4, 0
/* 809667BC  41 82 00 28 */	beq lbl_809667E4
/* 809667C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809667C4  4B 7D EF 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 809667C8  38 00 00 00 */	li r0, 0
/* 809667CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809667D0  3C 60 80 96 */	lis r3, lit_4103@ha
/* 809667D4  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 809667D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809667DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809667E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809667E4:
/* 809667E4  38 00 00 00 */	li r0, 0
/* 809667E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809667EC  48 00 00 4C */	b lbl_80966838
lbl_809667F0:
/* 809667F0  38 7F 12 60 */	addi r3, r31, 0x1260
/* 809667F4  48 00 11 E5 */	bl func_809679D8
/* 809667F8  2C 03 00 00 */	cmpwi r3, 0
/* 809667FC  40 82 00 3C */	bne lbl_80966838
/* 80966800  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80966804  2C 00 00 02 */	cmpwi r0, 2
/* 80966808  41 82 00 28 */	beq lbl_80966830
/* 8096680C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80966810  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80966814  4B 7D F0 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966818  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8096681C  38 00 00 02 */	li r0, 2
/* 80966820  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80966824  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966828  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 8096682C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80966830:
/* 80966830  38 00 00 01 */	li r0, 1
/* 80966834  98 1F 12 6A */	stb r0, 0x126a(r31)
lbl_80966838:
/* 80966838  38 00 00 00 */	li r0, 0
/* 8096683C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80966840:
/* 80966840  38 60 00 01 */	li r3, 1
/* 80966844  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80966848  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8096684C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80966850  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80966854  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80966858  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8096685C  39 61 00 50 */	addi r11, r1, 0x50
/* 80966860  4B 9F B9 C0 */	b _restgpr_27
/* 80966864  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80966868  7C 08 03 A6 */	mtlr r0
/* 8096686C  38 21 00 80 */	addi r1, r1, 0x80
/* 80966870  4E 80 00 20 */	blr 
