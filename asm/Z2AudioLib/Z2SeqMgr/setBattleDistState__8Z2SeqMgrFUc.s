lbl_802B4498:
/* 802B4498  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B449C  7C 08 02 A6 */	mflr r0
/* 802B44A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B44A4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802B44A8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802B44AC  7C 7E 1B 78 */	mr r30, r3
/* 802B44B0  7C 9F 23 78 */	mr r31, r4
/* 802B44B4  88 83 00 D0 */	lbz r4, 0xd0(r3)
/* 802B44B8  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 802B44BC  40 82 03 70 */	bne lbl_802B482C
/* 802B44C0  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B44C4  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B44C8  28 00 00 00 */	cmplwi r0, 0
/* 802B44CC  41 82 03 60 */	beq lbl_802B482C
/* 802B44D0  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 802B44D4  40 82 03 54 */	bne lbl_802B4828
/* 802B44D8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B44DC  28 00 00 02 */	cmplwi r0, 2
/* 802B44E0  40 80 00 D0 */	bge lbl_802B45B0
/* 802B44E4  88 1E 00 C0 */	lbz r0, 0xc0(r30)
/* 802B44E8  28 00 00 00 */	cmplwi r0, 0
/* 802B44EC  41 82 00 C4 */	beq lbl_802B45B0
/* 802B44F0  38 00 00 00 */	li r0, 0
/* 802B44F4  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 802B44F8  80 BE 00 04 */	lwz r5, 4(r30)
/* 802B44FC  28 05 00 00 */	cmplwi r5, 0
/* 802B4500  41 82 00 10 */	beq lbl_802B4510
/* 802B4504  80 65 00 18 */	lwz r3, 0x18(r5)
/* 802B4508  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802B450C  48 00 00 08 */	b lbl_802B4514
lbl_802B4510:
/* 802B4510  38 60 FF FF */	li r3, -1
lbl_802B4514:
/* 802B4514  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4518  28 00 00 1B */	cmplwi r0, 0x1b
/* 802B451C  41 82 00 28 */	beq lbl_802B4544
/* 802B4520  28 05 00 00 */	cmplwi r5, 0
/* 802B4524  41 82 00 10 */	beq lbl_802B4534
/* 802B4528  80 65 00 18 */	lwz r3, 0x18(r5)
/* 802B452C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802B4530  48 00 00 08 */	b lbl_802B4538
lbl_802B4534:
/* 802B4534  38 60 FF FF */	li r3, -1
lbl_802B4538:
/* 802B4538  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B453C  28 00 00 0F */	cmplwi r0, 0xf
/* 802B4540  40 82 00 70 */	bne lbl_802B45B0
lbl_802B4544:
/* 802B4544  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 802B4548  38 80 00 0A */	li r4, 0xa
/* 802B454C  90 85 00 30 */	stw r4, 0x30(r5)
/* 802B4550  C0 42 BF 98 */	lfs f2, lit_3372(r2)
/* 802B4554  EC 22 00 28 */	fsubs f1, f2, f0
/* 802B4558  80 05 00 30 */	lwz r0, 0x30(r5)
/* 802B455C  C8 62 BF A8 */	lfd f3, lit_3561(r2)
/* 802B4560  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B4564  3C 60 43 30 */	lis r3, 0x4330
/* 802B4568  90 61 00 20 */	stw r3, 0x20(r1)
/* 802B456C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802B4570  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B4574  EC 01 00 24 */	fdivs f0, f1, f0
/* 802B4578  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 802B457C  D0 45 00 2C */	stfs f2, 0x2c(r5)
/* 802B4580  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 802B4584  90 9E 00 20 */	stw r4, 0x20(r30)
/* 802B4588  C0 42 BF 9C */	lfs f2, lit_3373(r2)
/* 802B458C  EC 22 00 28 */	fsubs f1, f2, f0
/* 802B4590  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802B4594  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B4598  90 61 00 28 */	stw r3, 0x28(r1)
/* 802B459C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802B45A0  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B45A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802B45A8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802B45AC  D0 5E 00 1C */	stfs f2, 0x1c(r30)
lbl_802B45B0:
/* 802B45B0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B45B4  48 00 BC 31 */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B45B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B45BC  41 82 00 2C */	beq lbl_802B45E8
/* 802B45C0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B45C4  28 03 00 00 */	cmplwi r3, 0
/* 802B45C8  41 82 00 10 */	beq lbl_802B45D8
/* 802B45CC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B45D0  90 61 00 14 */	stw r3, 0x14(r1)
/* 802B45D4  48 00 00 08 */	b lbl_802B45DC
lbl_802B45D8:
/* 802B45D8  38 60 FF FF */	li r3, -1
lbl_802B45DC:
/* 802B45DC  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B45E0  28 00 00 0F */	cmplwi r0, 0xf
/* 802B45E4  41 82 00 3C */	beq lbl_802B4620
lbl_802B45E8:
/* 802B45E8  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B45EC  48 00 BB F9 */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B45F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B45F4  40 82 00 40 */	bne lbl_802B4634
/* 802B45F8  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B45FC  28 03 00 00 */	cmplwi r3, 0
/* 802B4600  41 82 00 10 */	beq lbl_802B4610
/* 802B4604  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B4608  90 61 00 10 */	stw r3, 0x10(r1)
/* 802B460C  48 00 00 08 */	b lbl_802B4614
lbl_802B4610:
/* 802B4610  38 60 FF FF */	li r3, -1
lbl_802B4614:
/* 802B4614  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4618  28 00 00 1B */	cmplwi r0, 0x1b
/* 802B461C  40 82 00 18 */	bne lbl_802B4634
lbl_802B4620:
/* 802B4620  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B4624  38 80 00 1E */	li r4, 0x1e
/* 802B4628  4B FE DE B5 */	bl stop__8JAISoundFUl
/* 802B462C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B4630  4B FE DB 71 */	bl releaseHandle__8JAISoundFv
lbl_802B4634:
/* 802B4634  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B4638  48 00 BB AD */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B463C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4640  40 82 00 2C */	bne lbl_802B466C
/* 802B4644  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B4648  28 03 00 00 */	cmplwi r3, 0
/* 802B464C  41 82 00 10 */	beq lbl_802B465C
/* 802B4650  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B4654  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B4658  48 00 00 08 */	b lbl_802B4660
lbl_802B465C:
/* 802B465C  38 60 FF FF */	li r3, -1
lbl_802B4660:
/* 802B4660  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4664  28 00 00 1B */	cmplwi r0, 0x1b
/* 802B4668  40 82 00 88 */	bne lbl_802B46F0
lbl_802B466C:
/* 802B466C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B4670  2C 00 00 02 */	cmpwi r0, 2
/* 802B4674  41 82 01 B4 */	beq lbl_802B4828
/* 802B4678  40 80 00 14 */	bge lbl_802B468C
/* 802B467C  2C 00 00 00 */	cmpwi r0, 0
/* 802B4680  41 82 00 18 */	beq lbl_802B4698
/* 802B4684  40 80 00 30 */	bge lbl_802B46B4
/* 802B4688  48 00 01 A0 */	b lbl_802B4828
lbl_802B468C:
/* 802B468C  2C 00 00 04 */	cmpwi r0, 4
/* 802B4690  40 80 01 98 */	bge lbl_802B4828
/* 802B4694  48 00 00 3C */	b lbl_802B46D0
lbl_802B4698:
/* 802B4698  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B469C  28 00 00 00 */	cmplwi r0, 0
/* 802B46A0  40 82 01 88 */	bne lbl_802B4828
/* 802B46A4  7F C3 F3 78 */	mr r3, r30
/* 802B46A8  38 80 00 01 */	li r4, 1
/* 802B46AC  48 00 08 05 */	bl startBattleBgm__8Z2SeqMgrFb
/* 802B46B0  48 00 01 78 */	b lbl_802B4828
lbl_802B46B4:
/* 802B46B4  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B46B8  28 00 00 00 */	cmplwi r0, 0
/* 802B46BC  40 82 01 6C */	bne lbl_802B4828
/* 802B46C0  7F C3 F3 78 */	mr r3, r30
/* 802B46C4  38 80 00 01 */	li r4, 1
/* 802B46C8  48 00 07 E9 */	bl startBattleBgm__8Z2SeqMgrFb
/* 802B46CC  48 00 01 5C */	b lbl_802B4828
lbl_802B46D0:
/* 802B46D0  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B46D4  28 00 00 00 */	cmplwi r0, 0
/* 802B46D8  41 82 01 50 */	beq lbl_802B4828
/* 802B46DC  7F C3 F3 78 */	mr r3, r30
/* 802B46E0  38 80 00 19 */	li r4, 0x19
/* 802B46E4  38 A0 00 19 */	li r5, 0x19
/* 802B46E8  48 00 0B 1D */	bl stopBattleBgm__8Z2SeqMgrFUcUc
/* 802B46EC  48 00 01 3C */	b lbl_802B4828
lbl_802B46F0:
/* 802B46F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802B46F4  28 03 00 00 */	cmplwi r3, 0
/* 802B46F8  41 82 00 10 */	beq lbl_802B4708
/* 802B46FC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B4700  90 61 00 08 */	stw r3, 8(r1)
/* 802B4704  48 00 00 08 */	b lbl_802B470C
lbl_802B4708:
/* 802B4708  38 60 FF FF */	li r3, -1
lbl_802B470C:
/* 802B470C  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4710  28 00 00 00 */	cmplwi r0, 0
/* 802B4714  41 82 01 14 */	beq lbl_802B4828
/* 802B4718  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B471C  2C 00 00 02 */	cmpwi r0, 2
/* 802B4720  41 82 00 B4 */	beq lbl_802B47D4
/* 802B4724  40 80 00 14 */	bge lbl_802B4738
/* 802B4728  2C 00 00 00 */	cmpwi r0, 0
/* 802B472C  41 82 00 18 */	beq lbl_802B4744
/* 802B4730  40 80 00 5C */	bge lbl_802B478C
/* 802B4734  48 00 00 F4 */	b lbl_802B4828
lbl_802B4738:
/* 802B4738  2C 00 00 04 */	cmpwi r0, 4
/* 802B473C  40 80 00 EC */	bge lbl_802B4828
/* 802B4740  48 00 00 C4 */	b lbl_802B4804
lbl_802B4744:
/* 802B4744  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B4748  28 00 00 00 */	cmplwi r0, 0
/* 802B474C  40 82 00 14 */	bne lbl_802B4760
/* 802B4750  7F C3 F3 78 */	mr r3, r30
/* 802B4754  38 80 00 01 */	li r4, 1
/* 802B4758  48 00 07 59 */	bl startBattleBgm__8Z2SeqMgrFb
/* 802B475C  48 00 00 CC */	b lbl_802B4828
lbl_802B4760:
/* 802B4760  28 00 00 01 */	cmplwi r0, 1
/* 802B4764  40 82 00 C4 */	bne lbl_802B4828
/* 802B4768  7F C3 F3 78 */	mr r3, r30
/* 802B476C  38 9E 00 04 */	addi r4, r30, 4
/* 802B4770  88 AD 82 EC */	lbz r5, data_8045086C(r13)
/* 802B4774  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4778  88 CD 82 E6 */	lbz r6, struct_80450864+0x2(r13)
/* 802B477C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4780  FC 60 10 90 */	fmr f3, f2
/* 802B4784  4B FF F8 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4788  48 00 00 A0 */	b lbl_802B4828
lbl_802B478C:
/* 802B478C  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B4790  28 00 00 00 */	cmplwi r0, 0
/* 802B4794  40 82 00 14 */	bne lbl_802B47A8
/* 802B4798  7F C3 F3 78 */	mr r3, r30
/* 802B479C  38 80 00 01 */	li r4, 1
/* 802B47A0  48 00 07 11 */	bl startBattleBgm__8Z2SeqMgrFb
/* 802B47A4  48 00 00 84 */	b lbl_802B4828
lbl_802B47A8:
/* 802B47A8  28 00 00 01 */	cmplwi r0, 1
/* 802B47AC  40 82 00 7C */	bne lbl_802B4828
/* 802B47B0  7F C3 F3 78 */	mr r3, r30
/* 802B47B4  38 9E 00 04 */	addi r4, r30, 4
/* 802B47B8  88 AD 82 EC */	lbz r5, data_8045086C(r13)
/* 802B47BC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B47C0  88 CD 82 E7 */	lbz r6, struct_80450864+0x3(r13)
/* 802B47C4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B47C8  FC 60 10 90 */	fmr f3, f2
/* 802B47CC  4B FF F8 21 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B47D0  48 00 00 58 */	b lbl_802B4828
lbl_802B47D4:
/* 802B47D4  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B47D8  28 00 00 01 */	cmplwi r0, 1
/* 802B47DC  40 82 00 4C */	bne lbl_802B4828
/* 802B47E0  7F C3 F3 78 */	mr r3, r30
/* 802B47E4  38 9E 00 04 */	addi r4, r30, 4
/* 802B47E8  88 AD 82 EC */	lbz r5, data_8045086C(r13)
/* 802B47EC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B47F0  88 CD 82 E7 */	lbz r6, struct_80450864+0x3(r13)
/* 802B47F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B47F8  FC 60 10 90 */	fmr f3, f2
/* 802B47FC  4B FF F7 F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4800  48 00 00 28 */	b lbl_802B4828
lbl_802B4804:
/* 802B4804  88 1E 00 BF */	lbz r0, 0xbf(r30)
/* 802B4808  28 00 00 01 */	cmplwi r0, 1
/* 802B480C  41 82 00 0C */	beq lbl_802B4818
/* 802B4810  28 00 00 02 */	cmplwi r0, 2
/* 802B4814  40 82 00 14 */	bne lbl_802B4828
lbl_802B4818:
/* 802B4818  7F C3 F3 78 */	mr r3, r30
/* 802B481C  88 8D 82 E2 */	lbz r4, struct_80450860+0x2(r13)
/* 802B4820  88 AD 82 E1 */	lbz r5, struct_80450860+0x1(r13)
/* 802B4824  48 00 09 E1 */	bl stopBattleBgm__8Z2SeqMgrFUcUc
lbl_802B4828:
/* 802B4828  9B FE 00 BE */	stb r31, 0xbe(r30)
lbl_802B482C:
/* 802B482C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802B4830  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802B4834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B4838  7C 08 03 A6 */	mtlr r0
/* 802B483C  38 21 00 40 */	addi r1, r1, 0x40
/* 802B4840  4E 80 00 20 */	blr 
