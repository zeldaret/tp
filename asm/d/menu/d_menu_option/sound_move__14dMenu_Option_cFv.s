lbl_801E44E0:
/* 801E44E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E44E4  7C 08 02 A6 */	mflr r0
/* 801E44E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E44EC  39 61 00 40 */	addi r11, r1, 0x40
/* 801E44F0  48 17 DC ED */	bl _savegpr_29
/* 801E44F4  7C 7F 1B 78 */	mr r31, r3
/* 801E44F8  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801E44FC  4B E4 E0 29 */	bl checkUpTrigger__9STControlFv
/* 801E4500  7C 7D 1B 78 */	mr r29, r3
/* 801E4504  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801E4508  4B E4 E0 99 */	bl checkDownTrigger__9STControlFv
/* 801E450C  7F E3 FB 78 */	mr r3, r31
/* 801E4510  4B FF F5 95 */	bl checkLeftTrigger__14dMenu_Option_cFv
/* 801E4514  7C 7E 1B 78 */	mr r30, r3
/* 801E4518  7F E3 FB 78 */	mr r3, r31
/* 801E451C  4B FF F5 AD */	bl checkRightTrigger__14dMenu_Option_cFv
/* 801E4520  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E4524  28 00 00 05 */	cmplwi r0, 5
/* 801E4528  41 82 00 24 */	beq lbl_801E454C
/* 801E452C  7F E3 FB 78 */	mr r3, r31
/* 801E4530  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E4534  3C 80 80 3C */	lis r4, tv_process@ha
/* 801E4538  38 04 DD 70 */	addi r0, r4, tv_process@l
/* 801E453C  7D 80 2A 14 */	add r12, r0, r5
/* 801E4540  48 17 DB 45 */	bl __ptmf_scall
/* 801E4544  60 00 00 00 */	nop 
/* 801E4548  48 00 03 4C */	b lbl_801E4894
lbl_801E454C:
/* 801E454C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801E4550  41 82 00 44 */	beq lbl_801E4594
/* 801E4554  38 00 00 01 */	li r0, 1
/* 801E4558  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E455C  38 00 00 4C */	li r0, 0x4c
/* 801E4560  90 01 00 28 */	stw r0, 0x28(r1)
/* 801E4564  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4568  38 81 00 28 */	addi r4, r1, 0x28
/* 801E456C  38 A0 00 00 */	li r5, 0
/* 801E4570  38 C0 00 00 */	li r6, 0
/* 801E4574  38 E0 00 00 */	li r7, 0
/* 801E4578  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E457C  FC 40 08 90 */	fmr f2, f1
/* 801E4580  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4584  FC 80 18 90 */	fmr f4, f3
/* 801E4588  39 00 00 00 */	li r8, 0
/* 801E458C  48 0C 73 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4590  48 00 03 04 */	b lbl_801E4894
lbl_801E4594:
/* 801E4594  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E4598  41 82 01 78 */	beq lbl_801E4710
/* 801E459C  88 7F 03 E9 */	lbz r3, 0x3e9(r31)
/* 801E45A0  28 03 00 02 */	cmplwi r3, 2
/* 801E45A4  40 82 00 10 */	bne lbl_801E45B4
/* 801E45A8  38 00 00 00 */	li r0, 0
/* 801E45AC  98 1F 03 E9 */	stb r0, 0x3e9(r31)
/* 801E45B0  48 00 00 0C */	b lbl_801E45BC
lbl_801E45B4:
/* 801E45B4  38 03 00 01 */	addi r0, r3, 1
/* 801E45B8  98 1F 03 E9 */	stb r0, 0x3e9(r31)
lbl_801E45BC:
/* 801E45BC  38 00 FF FB */	li r0, -5
/* 801E45C0  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E45C4  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E45C8  2C 00 00 01 */	cmpwi r0, 1
/* 801E45CC  41 82 00 58 */	beq lbl_801E4624
/* 801E45D0  40 80 00 10 */	bge lbl_801E45E0
/* 801E45D4  2C 00 00 00 */	cmpwi r0, 0
/* 801E45D8  40 80 00 14 */	bge lbl_801E45EC
/* 801E45DC  48 00 00 B4 */	b lbl_801E4690
lbl_801E45E0:
/* 801E45E0  2C 00 00 03 */	cmpwi r0, 3
/* 801E45E4  40 80 00 AC */	bge lbl_801E4690
/* 801E45E8  48 00 00 74 */	b lbl_801E465C
lbl_801E45EC:
/* 801E45EC  38 00 00 C9 */	li r0, 0xc9
/* 801E45F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E45F4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E45F8  38 81 00 24 */	addi r4, r1, 0x24
/* 801E45FC  38 A0 00 00 */	li r5, 0
/* 801E4600  38 C0 00 00 */	li r6, 0
/* 801E4604  38 E0 00 00 */	li r7, 0
/* 801E4608  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E460C  FC 40 08 90 */	fmr f2, f1
/* 801E4610  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4614  FC 80 18 90 */	fmr f4, f3
/* 801E4618  39 00 00 00 */	li r8, 0
/* 801E461C  48 0C 73 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4620  48 00 00 70 */	b lbl_801E4690
lbl_801E4624:
/* 801E4624  38 00 00 CA */	li r0, 0xca
/* 801E4628  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E462C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4630  38 81 00 20 */	addi r4, r1, 0x20
/* 801E4634  38 A0 00 00 */	li r5, 0
/* 801E4638  38 C0 00 00 */	li r6, 0
/* 801E463C  38 E0 00 00 */	li r7, 0
/* 801E4640  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4644  FC 40 08 90 */	fmr f2, f1
/* 801E4648  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E464C  FC 80 18 90 */	fmr f4, f3
/* 801E4650  39 00 00 00 */	li r8, 0
/* 801E4654  48 0C 73 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4658  48 00 00 38 */	b lbl_801E4690
lbl_801E465C:
/* 801E465C  38 00 00 CB */	li r0, 0xcb
/* 801E4660  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E4664  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4668  38 81 00 1C */	addi r4, r1, 0x1c
/* 801E466C  38 A0 00 00 */	li r5, 0
/* 801E4670  38 C0 00 00 */	li r6, 0
/* 801E4674  38 E0 00 00 */	li r7, 0
/* 801E4678  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E467C  FC 40 08 90 */	fmr f2, f1
/* 801E4680  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4684  FC 80 18 90 */	fmr f4, f3
/* 801E4688  39 00 00 00 */	li r8, 0
/* 801E468C  48 0C 72 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801E4690:
/* 801E4690  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4694  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E4698  54 00 10 3A */	slwi r0, r0, 2
/* 801E469C  3C 80 80 39 */	lis r4, dMo_soundMode@ha
/* 801E46A0  38 84 6E A8 */	addi r4, r4, dMo_soundMode@l
/* 801E46A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 801E46A8  48 0E 91 E1 */	bl setOutputMode__10Z2AudioMgrFUl
/* 801E46AC  7F E3 FB 78 */	mr r3, r31
/* 801E46B0  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E46B4  54 00 10 3A */	slwi r0, r0, 2
/* 801E46B8  3C 80 80 39 */	lis r4, dMo_soundMode@ha
/* 801E46BC  38 84 6E A8 */	addi r4, r4, dMo_soundMode@l
/* 801E46C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 801E46C4  48 00 28 F9 */	bl setSoundMode__14dMenu_Option_cFUl
/* 801E46C8  38 00 00 03 */	li r0, 3
/* 801E46CC  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E46D0  38 00 00 02 */	li r0, 2
/* 801E46D4  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E46D8  38 00 00 C8 */	li r0, 0xc8
/* 801E46DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E46E0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E46E4  38 81 00 18 */	addi r4, r1, 0x18
/* 801E46E8  38 A0 00 00 */	li r5, 0
/* 801E46EC  38 C0 00 00 */	li r6, 0
/* 801E46F0  38 E0 00 00 */	li r7, 0
/* 801E46F4  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E46F8  FC 40 08 90 */	fmr f2, f1
/* 801E46FC  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4700  FC 80 18 90 */	fmr f4, f3
/* 801E4704  39 00 00 00 */	li r8, 0
/* 801E4708  48 0C 72 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E470C  48 00 01 88 */	b lbl_801E4894
lbl_801E4710:
/* 801E4710  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E4714  41 82 01 78 */	beq lbl_801E488C
/* 801E4718  88 7F 03 E9 */	lbz r3, 0x3e9(r31)
/* 801E471C  28 03 00 00 */	cmplwi r3, 0
/* 801E4720  40 82 00 10 */	bne lbl_801E4730
/* 801E4724  38 00 00 02 */	li r0, 2
/* 801E4728  98 1F 03 E9 */	stb r0, 0x3e9(r31)
/* 801E472C  48 00 00 0C */	b lbl_801E4738
lbl_801E4730:
/* 801E4730  38 03 FF FF */	addi r0, r3, -1
/* 801E4734  98 1F 03 E9 */	stb r0, 0x3e9(r31)
lbl_801E4738:
/* 801E4738  38 00 00 05 */	li r0, 5
/* 801E473C  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E4740  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E4744  2C 00 00 01 */	cmpwi r0, 1
/* 801E4748  41 82 00 58 */	beq lbl_801E47A0
/* 801E474C  40 80 00 10 */	bge lbl_801E475C
/* 801E4750  2C 00 00 00 */	cmpwi r0, 0
/* 801E4754  40 80 00 14 */	bge lbl_801E4768
/* 801E4758  48 00 00 B4 */	b lbl_801E480C
lbl_801E475C:
/* 801E475C  2C 00 00 03 */	cmpwi r0, 3
/* 801E4760  40 80 00 AC */	bge lbl_801E480C
/* 801E4764  48 00 00 74 */	b lbl_801E47D8
lbl_801E4768:
/* 801E4768  38 00 00 C9 */	li r0, 0xc9
/* 801E476C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4770  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4774  38 81 00 14 */	addi r4, r1, 0x14
/* 801E4778  38 A0 00 00 */	li r5, 0
/* 801E477C  38 C0 00 00 */	li r6, 0
/* 801E4780  38 E0 00 00 */	li r7, 0
/* 801E4784  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4788  FC 40 08 90 */	fmr f2, f1
/* 801E478C  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4790  FC 80 18 90 */	fmr f4, f3
/* 801E4794  39 00 00 00 */	li r8, 0
/* 801E4798  48 0C 71 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E479C  48 00 00 70 */	b lbl_801E480C
lbl_801E47A0:
/* 801E47A0  38 00 00 CA */	li r0, 0xca
/* 801E47A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E47A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E47AC  38 81 00 10 */	addi r4, r1, 0x10
/* 801E47B0  38 A0 00 00 */	li r5, 0
/* 801E47B4  38 C0 00 00 */	li r6, 0
/* 801E47B8  38 E0 00 00 */	li r7, 0
/* 801E47BC  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E47C0  FC 40 08 90 */	fmr f2, f1
/* 801E47C4  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E47C8  FC 80 18 90 */	fmr f4, f3
/* 801E47CC  39 00 00 00 */	li r8, 0
/* 801E47D0  48 0C 71 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E47D4  48 00 00 38 */	b lbl_801E480C
lbl_801E47D8:
/* 801E47D8  38 00 00 CB */	li r0, 0xcb
/* 801E47DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E47E0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E47E4  38 81 00 0C */	addi r4, r1, 0xc
/* 801E47E8  38 A0 00 00 */	li r5, 0
/* 801E47EC  38 C0 00 00 */	li r6, 0
/* 801E47F0  38 E0 00 00 */	li r7, 0
/* 801E47F4  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E47F8  FC 40 08 90 */	fmr f2, f1
/* 801E47FC  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4800  FC 80 18 90 */	fmr f4, f3
/* 801E4804  39 00 00 00 */	li r8, 0
/* 801E4808  48 0C 71 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801E480C:
/* 801E480C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4810  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E4814  54 00 10 3A */	slwi r0, r0, 2
/* 801E4818  3C 80 80 39 */	lis r4, dMo_soundMode@ha
/* 801E481C  38 84 6E A8 */	addi r4, r4, dMo_soundMode@l
/* 801E4820  7C 84 00 2E */	lwzx r4, r4, r0
/* 801E4824  48 0E 90 65 */	bl setOutputMode__10Z2AudioMgrFUl
/* 801E4828  7F E3 FB 78 */	mr r3, r31
/* 801E482C  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 801E4830  54 00 10 3A */	slwi r0, r0, 2
/* 801E4834  3C 80 80 39 */	lis r4, dMo_soundMode@ha
/* 801E4838  38 84 6E A8 */	addi r4, r4, dMo_soundMode@l
/* 801E483C  7C 84 00 2E */	lwzx r4, r4, r0
/* 801E4840  48 00 27 7D */	bl setSoundMode__14dMenu_Option_cFUl
/* 801E4844  38 00 00 03 */	li r0, 3
/* 801E4848  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E484C  38 00 00 02 */	li r0, 2
/* 801E4850  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E4854  38 00 00 C8 */	li r0, 0xc8
/* 801E4858  90 01 00 08 */	stw r0, 8(r1)
/* 801E485C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4860  38 81 00 08 */	addi r4, r1, 8
/* 801E4864  38 A0 00 00 */	li r5, 0
/* 801E4868  38 C0 00 00 */	li r6, 0
/* 801E486C  38 E0 00 00 */	li r7, 0
/* 801E4870  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4874  FC 40 08 90 */	fmr f2, f1
/* 801E4878  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E487C  FC 80 18 90 */	fmr f4, f3
/* 801E4880  39 00 00 00 */	li r8, 0
/* 801E4884  48 0C 71 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4888  48 00 00 0C */	b lbl_801E4894
lbl_801E488C:
/* 801E488C  7F E3 FB 78 */	mr r3, r31
/* 801E4890  48 00 35 65 */	bl changeTVCheck__14dMenu_Option_cFv
lbl_801E4894:
/* 801E4894  39 61 00 40 */	addi r11, r1, 0x40
/* 801E4898  48 17 D9 91 */	bl _restgpr_29
/* 801E489C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E48A0  7C 08 03 A6 */	mtlr r0
/* 801E48A4  38 21 00 40 */	addi r1, r1, 0x40
/* 801E48A8  4E 80 00 20 */	blr 
