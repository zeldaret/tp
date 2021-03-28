lbl_800B444C:
/* 800B444C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B4450  7C 08 02 A6 */	mflr r0
/* 800B4454  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B4458  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800B445C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800B4460  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800B4464  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 800B4468  39 61 00 20 */	addi r11, r1, 0x20
/* 800B446C  48 2A DD 65 */	bl _savegpr_26
/* 800B4470  7C 7F 1B 78 */	mr r31, r3
/* 800B4474  88 83 2F 98 */	lbz r4, 0x2f98(r3)
/* 800B4478  C0 63 33 AC */	lfs f3, 0x33ac(r3)
/* 800B447C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B4480  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800B4484  40 81 00 B0 */	ble lbl_800B4534
/* 800B4488  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800B448C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B4490  7C 03 00 50 */	subf r0, r3, r0
/* 800B4494  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B4498  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800B449C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800B44A0  7C 23 04 2E */	lfsx f1, r3, r0
/* 800B44A4  7C 63 02 14 */	add r3, r3, r0
/* 800B44A8  C0 43 00 04 */	lfs f2, 4(r3)
/* 800B44AC  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B44B0  28 00 00 00 */	cmplwi r0, 0
/* 800B44B4  40 82 00 50 */	bne lbl_800B4504
/* 800B44B8  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800B44BC  28 00 00 2A */	cmplwi r0, 0x2a
/* 800B44C0  41 82 00 44 */	beq lbl_800B4504
/* 800B44C4  C0 02 98 80 */	lfs f0, lit_63332(r2)
/* 800B44C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B44CC  4C 40 13 82 */	cror 2, 0, 2
/* 800B44D0  41 82 00 14 */	beq lbl_800B44E4
/* 800B44D4  C0 02 93 70 */	lfs f0, lit_8501(r2)
/* 800B44D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B44DC  4C 41 13 82 */	cror 2, 1, 2
/* 800B44E0  40 82 00 24 */	bne lbl_800B4504
lbl_800B44E4:
/* 800B44E4  C0 02 98 80 */	lfs f0, lit_63332(r2)
/* 800B44E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B44EC  4C 40 13 82 */	cror 2, 0, 2
/* 800B44F0  40 82 00 0C */	bne lbl_800B44FC
/* 800B44F4  38 80 00 01 */	li r4, 1
/* 800B44F8  48 00 00 3C */	b lbl_800B4534
lbl_800B44FC:
/* 800B44FC  38 80 00 00 */	li r4, 0
/* 800B4500  48 00 00 34 */	b lbl_800B4534
lbl_800B4504:
/* 800B4504  C0 02 98 88 */	lfs f0, lit_63334(r2)
/* 800B4508  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B450C  40 80 00 0C */	bge lbl_800B4518
/* 800B4510  38 80 00 01 */	li r4, 1
/* 800B4514  48 00 00 20 */	b lbl_800B4534
lbl_800B4518:
/* 800B4518  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B451C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4520  40 81 00 0C */	ble lbl_800B452C
/* 800B4524  38 80 00 02 */	li r4, 2
/* 800B4528  48 00 00 0C */	b lbl_800B4534
lbl_800B452C:
/* 800B452C  40 80 00 08 */	bge lbl_800B4534
/* 800B4530  38 80 00 03 */	li r4, 3
lbl_800B4534:
/* 800B4534  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B4538  28 00 00 00 */	cmplwi r0, 0
/* 800B453C  41 82 00 38 */	beq lbl_800B4574
/* 800B4540  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800B4544  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800B4548  AB A3 00 04 */	lha r29, 4(r3)
/* 800B454C  AB 83 00 00 */	lha r28, 0(r3)
/* 800B4550  AB 63 00 02 */	lha r27, 2(r3)
/* 800B4554  2C 04 00 01 */	cmpwi r4, 1
/* 800B4558  40 82 00 10 */	bne lbl_800B4568
/* 800B455C  C3 C3 00 3C */	lfs f30, 0x3c(r3)
/* 800B4560  C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 800B4564  48 00 00 B4 */	b lbl_800B4618
lbl_800B4568:
/* 800B4568  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 800B456C  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 800B4570  48 00 00 A8 */	b lbl_800B4618
lbl_800B4574:
/* 800B4574  2C 04 00 00 */	cmpwi r4, 0
/* 800B4578  40 82 00 70 */	bne lbl_800B45E8
/* 800B457C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B4580  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800B4584  40 81 00 58 */	ble lbl_800B45DC
/* 800B4588  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800B458C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B4590  7C 03 00 50 */	subf r0, r3, r0
/* 800B4594  7C 03 07 34 */	extsh r3, r0
/* 800B4598  4B FF EE FD */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B459C  2C 03 00 01 */	cmpwi r3, 1
/* 800B45A0  40 82 00 24 */	bne lbl_800B45C4
/* 800B45A4  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800B45A8  3C 63 00 01 */	addis r3, r3, 1
/* 800B45AC  38 03 80 00 */	addi r0, r3, -32768
/* 800B45B0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800B45B4  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800B45B8  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800B45BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B45C0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800B45C4:
/* 800B45C4  7F E3 FB 78 */	mr r3, r31
/* 800B45C8  4B FF F3 3D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800B45CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B45D0  41 82 00 0C */	beq lbl_800B45DC
/* 800B45D4  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B45D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800B45DC:
/* 800B45DC  7F E3 FB 78 */	mr r3, r31
/* 800B45E0  4B FF F9 F5 */	bl setSpeedAndAngleNormal__9daAlink_cFv
/* 800B45E4  48 00 01 70 */	b lbl_800B4754
lbl_800B45E8:
/* 800B45E8  3C 60 80 39 */	lis r3, m__26daAlinkHIO_noActAtnMove_c0@ha
/* 800B45EC  38 63 D7 68 */	addi r3, r3, m__26daAlinkHIO_noActAtnMove_c0@l
/* 800B45F0  AB A3 00 04 */	lha r29, 4(r3)
/* 800B45F4  AB 83 00 00 */	lha r28, 0(r3)
/* 800B45F8  AB 63 00 02 */	lha r27, 2(r3)
/* 800B45FC  2C 04 00 01 */	cmpwi r4, 1
/* 800B4600  40 82 00 10 */	bne lbl_800B4610
/* 800B4604  C3 C3 00 3C */	lfs f30, 0x3c(r3)
/* 800B4608  C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 800B460C  48 00 00 0C */	b lbl_800B4618
lbl_800B4610:
/* 800B4610  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 800B4614  C3 E3 00 24 */	lfs f31, 0x24(r3)
lbl_800B4618:
/* 800B4618  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B461C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800B4620  40 81 00 FC */	ble lbl_800B471C
/* 800B4624  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800B4628  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B462C  7C 03 00 50 */	subf r0, r3, r0
/* 800B4630  7C 03 07 34 */	extsh r3, r0
/* 800B4634  4B FF EE 61 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B4638  2C 03 00 01 */	cmpwi r3, 1
/* 800B463C  40 82 00 24 */	bne lbl_800B4660
/* 800B4640  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800B4644  3C 63 00 01 */	addis r3, r3, 1
/* 800B4648  38 03 80 00 */	addi r0, r3, -32768
/* 800B464C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800B4650  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800B4654  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800B4658  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B465C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800B4660:
/* 800B4660  7F E3 FB 78 */	mr r3, r31
/* 800B4664  38 80 01 84 */	li r4, 0x184
/* 800B4668  4B FF 7E F1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B466C  2C 03 00 00 */	cmpwi r3, 0
/* 800B4670  41 82 00 18 */	beq lbl_800B4688
/* 800B4674  7F E3 FB 78 */	mr r3, r31
/* 800B4678  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800B467C  48 03 32 D1 */	bl getChainStickAngleY__9daAlink_cCFs
/* 800B4680  7C 7E 1B 78 */	mr r30, r3
/* 800B4684  48 00 00 08 */	b lbl_800B468C
lbl_800B4688:
/* 800B4688  AB DF 2F E2 */	lha r30, 0x2fe2(r31)
lbl_800B468C:
/* 800B468C  7F E3 FB 78 */	mr r3, r31
/* 800B4690  4B FF F2 75 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800B4694  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4698  41 82 00 08 */	beq lbl_800B46A0
/* 800B469C  B3 DF 04 DE */	sth r30, 0x4de(r31)
lbl_800B46A0:
/* 800B46A0  AB 5F 04 DE */	lha r26, 0x4de(r31)
/* 800B46A4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 800B46A8  7F C4 F3 78 */	mr r4, r30
/* 800B46AC  7F A5 EB 78 */	mr r5, r29
/* 800B46B0  7F 86 E3 78 */	mr r6, r28
/* 800B46B4  7F 67 DB 78 */	mr r7, r27
/* 800B46B8  48 1B BE 89 */	bl cLib_addCalcAngleS__FPsssss
/* 800B46BC  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800B46C0  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800B46C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 800B46C8  FC 00 02 10 */	fabs f0, f0
/* 800B46CC  FC 40 00 18 */	frsp f2, f0
/* 800B46D0  C0 7F 33 A8 */	lfs f3, 0x33a8(r31)
/* 800B46D4  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 800B46D8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B46DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800B46E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B46E4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800B46E8  40 81 00 2C */	ble lbl_800B4714
/* 800B46EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800B46F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800B46F4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800B46F8  7C 1A 00 50 */	subf r0, r26, r0
/* 800B46FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B4700  7C 63 02 14 */	add r3, r3, r0
/* 800B4704  C0 23 00 04 */	lfs f1, 4(r3)
/* 800B4708  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 800B470C  EF C0 00 72 */	fmuls f30, f0, f1
/* 800B4710  48 00 00 10 */	b lbl_800B4720
lbl_800B4714:
/* 800B4714  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800B4718  48 00 00 08 */	b lbl_800B4720
lbl_800B471C:
/* 800B471C  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
lbl_800B4720:
/* 800B4720  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B4724  28 00 00 00 */	cmplwi r0, 0
/* 800B4728  41 82 00 14 */	beq lbl_800B473C
/* 800B472C  7F E3 FB 78 */	mr r3, r31
/* 800B4730  38 80 00 00 */	li r4, 0
/* 800B4734  4B FF F0 01 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800B4738  48 00 00 0C */	b lbl_800B4744
lbl_800B473C:
/* 800B473C  A8 1F 2F E4 */	lha r0, 0x2fe4(r31)
/* 800B4740  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_800B4744:
/* 800B4744  7F E3 FB 78 */	mr r3, r31
/* 800B4748  FC 20 F0 90 */	fmr f1, f30
/* 800B474C  FC 40 F8 90 */	fmr f2, f31
/* 800B4750  4B FF F1 D5 */	bl setNormalSpeedF__9daAlink_cFff
lbl_800B4754:
/* 800B4754  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800B4758  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800B475C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 800B4760  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800B4764  39 61 00 20 */	addi r11, r1, 0x20
/* 800B4768  48 2A DA B5 */	bl _restgpr_26
/* 800B476C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B4770  7C 08 03 A6 */	mtlr r0
/* 800B4774  38 21 00 40 */	addi r1, r1, 0x40
/* 800B4778  4E 80 00 20 */	blr 
