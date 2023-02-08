lbl_80AA44A4:
/* 80AA44A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AA44A8  7C 08 02 A6 */	mflr r0
/* 80AA44AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AA44B0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80AA44B4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80AA44B8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80AA44BC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80AA44C0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA44C4  4B 8B DD 19 */	bl _savegpr_29
/* 80AA44C8  7C 7D 1B 78 */	mr r29, r3
/* 80AA44CC  3C 60 80 AA */	lis r3, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA44D0  3B E3 69 8C */	addi r31, r3, lit_4109@l /* 0x80AA698C@l */
/* 80AA44D4  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 80AA44D8  FF C0 F8 90 */	fmr f30, f31
/* 80AA44DC  3B DD 08 50 */	addi r30, r29, 0x850
/* 80AA44E0  80 1D 0B 1C */	lwz r0, 0xb1c(r29)
/* 80AA44E4  28 00 00 02 */	cmplwi r0, 2
/* 80AA44E8  40 82 00 B8 */	bne lbl_80AA45A0
/* 80AA44EC  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 80AA44F0  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA44F4  40 80 00 1C */	bge lbl_80AA4510
/* 80AA44F8  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA44FC  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4500  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 80AA4504  7C 63 02 14 */	add r3, r3, r0
/* 80AA4508  C3 E3 01 FC */	lfs f31, 0x1fc(r3)
/* 80AA450C  48 00 00 18 */	b lbl_80AA4524
lbl_80AA4510:
/* 80AA4510  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4514  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4518  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 80AA451C  7C 63 02 14 */	add r3, r3, r0
/* 80AA4520  C3 E3 FF 2C */	lfs f31, -0xd4(r3)
lbl_80AA4524:
/* 80AA4524  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA4528  40 80 00 1C */	bge lbl_80AA4544
/* 80AA452C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4530  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4534  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 80AA4538  7C 63 02 14 */	add r3, r3, r0
/* 80AA453C  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 80AA4540  48 00 00 18 */	b lbl_80AA4558
lbl_80AA4544:
/* 80AA4544  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4548  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA454C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 80AA4550  7C 63 02 14 */	add r3, r3, r0
/* 80AA4554  C0 03 FF 24 */	lfs f0, -0xdc(r3)
lbl_80AA4558:
/* 80AA4558  FF C0 00 90 */	fmr f30, f0
/* 80AA455C  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 80AA4560  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80AA4564  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80AA4568  4B 7C C1 D9 */	bl cLib_chaseF__FPfff
/* 80AA456C  7F A3 EB 78 */	mr r3, r29
/* 80AA4570  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80AA4574  FC 40 F8 90 */	fmr f2, f31
/* 80AA4578  38 9D 0B 14 */	addi r4, r29, 0xb14
/* 80AA457C  38 A0 00 00 */	li r5, 0
/* 80AA4580  4B FF FE 31 */	bl setSpeed__13daNpcPasser_cFffPfi
/* 80AA4584  7F A3 EB 78 */	mr r3, r29
/* 80AA4588  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80AA458C  FC 40 F8 90 */	fmr f2, f31
/* 80AA4590  38 9D 05 2C */	addi r4, r29, 0x52c
/* 80AA4594  38 A0 00 01 */	li r5, 1
/* 80AA4598  4B FF FE 19 */	bl setSpeed__13daNpcPasser_cFffPfi
/* 80AA459C  48 00 01 14 */	b lbl_80AA46B0
lbl_80AA45A0:
/* 80AA45A0  28 00 00 01 */	cmplwi r0, 1
/* 80AA45A4  40 82 00 D4 */	bne lbl_80AA4678
/* 80AA45A8  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 80AA45AC  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA45B0  40 80 00 1C */	bge lbl_80AA45CC
/* 80AA45B4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA45B8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA45BC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 80AA45C0  7C 63 02 14 */	add r3, r3, r0
/* 80AA45C4  C0 03 01 F8 */	lfs f0, 0x1f8(r3)
/* 80AA45C8  48 00 00 18 */	b lbl_80AA45E0
lbl_80AA45CC:
/* 80AA45CC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA45D0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA45D4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 80AA45D8  7C 63 02 14 */	add r3, r3, r0
/* 80AA45DC  C0 03 FF 28 */	lfs f0, -0xd8(r3)
lbl_80AA45E0:
/* 80AA45E0  FF E0 00 90 */	fmr f31, f0
/* 80AA45E4  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA45E8  40 80 00 1C */	bge lbl_80AA4604
/* 80AA45EC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA45F0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA45F4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 80AA45F8  7C 63 02 14 */	add r3, r3, r0
/* 80AA45FC  C0 23 01 F0 */	lfs f1, 0x1f0(r3)
/* 80AA4600  48 00 00 18 */	b lbl_80AA4618
lbl_80AA4604:
/* 80AA4604  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4608  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA460C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 80AA4610  7C 63 02 14 */	add r3, r3, r0
/* 80AA4614  C0 23 FF 20 */	lfs f1, -0xe0(r3)
lbl_80AA4618:
/* 80AA4618  FF C0 08 90 */	fmr f30, f1
/* 80AA461C  80 1D 0A F8 */	lwz r0, 0xaf8(r29)
/* 80AA4620  2C 00 00 01 */	cmpwi r0, 1
/* 80AA4624  40 82 00 10 */	bne lbl_80AA4634
/* 80AA4628  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80AA462C  EF FF 00 32 */	fmuls f31, f31, f0
/* 80AA4630  EF C1 00 32 */	fmuls f30, f1, f0
lbl_80AA4634:
/* 80AA4634  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 80AA4638  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA463C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80AA4640  4B 7C C1 01 */	bl cLib_chaseF__FPfff
/* 80AA4644  7F A3 EB 78 */	mr r3, r29
/* 80AA4648  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80AA464C  FC 40 F8 90 */	fmr f2, f31
/* 80AA4650  38 9D 0B 14 */	addi r4, r29, 0xb14
/* 80AA4654  38 A0 00 00 */	li r5, 0
/* 80AA4658  4B FF FD 59 */	bl setSpeed__13daNpcPasser_cFffPfi
/* 80AA465C  7F A3 EB 78 */	mr r3, r29
/* 80AA4660  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80AA4664  FC 40 F8 90 */	fmr f2, f31
/* 80AA4668  38 9D 05 2C */	addi r4, r29, 0x52c
/* 80AA466C  38 A0 00 01 */	li r5, 1
/* 80AA4670  4B FF FD 41 */	bl setSpeed__13daNpcPasser_cFffPfi
/* 80AA4674  48 00 00 3C */	b lbl_80AA46B0
lbl_80AA4678:
/* 80AA4678  28 00 00 00 */	cmplwi r0, 0
/* 80AA467C  40 82 00 34 */	bne lbl_80AA46B0
/* 80AA4680  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 80AA4684  FC 20 F8 90 */	fmr f1, f31
/* 80AA4688  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80AA468C  4B 7C C0 B5 */	bl cLib_chaseF__FPfff
/* 80AA4690  38 7D 0B 14 */	addi r3, r29, 0xb14
/* 80AA4694  FC 20 F8 90 */	fmr f1, f31
/* 80AA4698  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80AA469C  4B 7C C0 A5 */	bl cLib_chaseF__FPfff
/* 80AA46A0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AA46A4  FC 20 F8 90 */	fmr f1, f31
/* 80AA46A8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80AA46AC  4B 7C C0 95 */	bl cLib_chaseF__FPfff
lbl_80AA46B0:
/* 80AA46B0  38 7D 0A CC */	addi r3, r29, 0xacc
/* 80AA46B4  38 81 00 08 */	addi r4, r1, 8
/* 80AA46B8  4B 6B 57 9D */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 80AA46BC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AA46C0  38 81 00 08 */	addi r4, r1, 8
/* 80AA46C4  4B 7C C5 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA46C8  7C 64 1B 78 */	mr r4, r3
/* 80AA46CC  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80AA46D0  4B 7C C7 55 */	bl cLib_distanceAngleS__Fss
/* 80AA46D4  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80AA46D8  41 80 00 34 */	blt lbl_80AA470C
/* 80AA46DC  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 80AA46E0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA46E4  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80AA46E8  4B 7C C0 59 */	bl cLib_chaseF__FPfff
/* 80AA46EC  38 7D 0B 14 */	addi r3, r29, 0xb14
/* 80AA46F0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA46F4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80AA46F8  4B 7C C0 49 */	bl cLib_chaseF__FPfff
/* 80AA46FC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AA4700  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA4704  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80AA4708  4B 7C C0 39 */	bl cLib_chaseF__FPfff
lbl_80AA470C:
/* 80AA470C  7F A3 EB 78 */	mr r3, r29
/* 80AA4710  7F C4 F3 78 */	mr r4, r30
/* 80AA4714  4B 57 5F B9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80AA4718  80 1D 0B 1C */	lwz r0, 0xb1c(r29)
/* 80AA471C  28 00 00 00 */	cmplwi r0, 0
/* 80AA4720  41 82 00 38 */	beq lbl_80AA4758
/* 80AA4724  C0 1D 0B 14 */	lfs f0, 0xb14(r29)
/* 80AA4728  EC 20 F8 24 */	fdivs f1, f0, f31
/* 80AA472C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AA4730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA4734  40 81 00 08 */	ble lbl_80AA473C
/* 80AA4738  FC 20 00 90 */	fmr f1, f0
lbl_80AA473C:
/* 80AA473C  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80AA4740  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80AA4744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA4748  40 80 00 08 */	bge lbl_80AA4750
/* 80AA474C  FC 20 00 90 */	fmr f1, f0
lbl_80AA4750:
/* 80AA4750  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA4754  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_80AA4758:
/* 80AA4758  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80AA475C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80AA4760  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80AA4764  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80AA4768  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA476C  4B 8B DA BD */	bl _restgpr_29
/* 80AA4770  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AA4774  7C 08 03 A6 */	mtlr r0
/* 80AA4778  38 21 00 50 */	addi r1, r1, 0x50
/* 80AA477C  4E 80 00 20 */	blr 
