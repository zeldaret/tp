lbl_8080C374:
/* 8080C374  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8080C378  7C 08 02 A6 */	mflr r0
/* 8080C37C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8080C380  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8080C384  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8080C388  39 61 00 80 */	addi r11, r1, 0x80
/* 8080C38C  4B B5 5E 49 */	bl _savegpr_27
/* 8080C390  7C 7C 1B 78 */	mr r28, r3
/* 8080C394  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080C398  3B C3 59 94 */	addi r30, r3, lit_3925@l /* 0x80815994@l */
/* 8080C39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080C3A0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080C3A4  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 8080C3A8  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 8080C3AC  28 00 00 01 */	cmplwi r0, 1
/* 8080C3B0  41 82 00 14 */	beq lbl_8080C3C4
/* 8080C3B4  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8080C3B8  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8080C3BC  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8080C3C0  4B A6 43 81 */	bl cLib_chaseF__FPfff
lbl_8080C3C4:
/* 8080C3C4  38 61 00 38 */	addi r3, r1, 0x38
/* 8080C3C8  38 9C 06 70 */	addi r4, r28, 0x670
/* 8080C3CC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8080C3D0  4B A5 A7 65 */	bl __mi__4cXyzCFRC3Vec
/* 8080C3D4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8080C3D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080C3DC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8080C3E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8080C3E4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8080C3E8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8080C3EC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8080C3F0  7F 84 E3 78 */	mr r4, r28
/* 8080C3F4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8080C3F8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8080C3FC  7D 89 03 A6 */	mtctr r12
/* 8080C400  4E 80 04 21 */	bctrl 
/* 8080C404  2C 03 00 00 */	cmpwi r3, 0
/* 8080C408  41 82 00 34 */	beq lbl_8080C43C
/* 8080C40C  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 8080C410  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080C414  41 82 00 28 */	beq lbl_8080C43C
/* 8080C418  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8080C41C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080C420  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8080C424  4B A6 43 1D */	bl cLib_chaseF__FPfff
/* 8080C428  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8080C42C  A8 9C 06 EA */	lha r4, 0x6ea(r28)
/* 8080C430  38 A0 04 00 */	li r5, 0x400
/* 8080C434  4B A6 47 5D */	bl cLib_chaseAngleS__FPsss
/* 8080C438  48 00 0A 88 */	b lbl_8080CEC0
lbl_8080C43C:
/* 8080C43C  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 8080C440  28 00 00 07 */	cmplwi r0, 7
/* 8080C444  41 81 0A 74 */	bgt lbl_8080CEB8
/* 8080C448  3C 60 80 81 */	lis r3, lit_6063@ha /* 0x80815B84@ha */
/* 8080C44C  38 63 5B 84 */	addi r3, r3, lit_6063@l /* 0x80815B84@l */
/* 8080C450  54 00 10 3A */	slwi r0, r0, 2
/* 8080C454  7C 03 00 2E */	lwzx r0, r3, r0
/* 8080C458  7C 09 03 A6 */	mtctr r0
/* 8080C45C  4E 80 04 20 */	bctr 
lbl_8080C460:
/* 8080C460  88 1C 06 A1 */	lbz r0, 0x6a1(r28)
/* 8080C464  28 00 00 01 */	cmplwi r0, 1
/* 8080C468  40 82 00 24 */	bne lbl_8080C48C
/* 8080C46C  A8 1C 07 08 */	lha r0, 0x708(r28)
/* 8080C470  2C 00 00 00 */	cmpwi r0, 0
/* 8080C474  40 82 00 18 */	bne lbl_8080C48C
/* 8080C478  88 1C 06 C9 */	lbz r0, 0x6c9(r28)
/* 8080C47C  28 00 00 00 */	cmplwi r0, 0
/* 8080C480  40 82 00 0C */	bne lbl_8080C48C
/* 8080C484  38 00 00 78 */	li r0, 0x78
/* 8080C488  B0 1C 07 08 */	sth r0, 0x708(r28)
lbl_8080C48C:
/* 8080C48C  7F 83 E3 78 */	mr r3, r28
/* 8080C490  4B FF FB CD */	bl getSurpriseType__8daE_YM_cFv
/* 8080C494  2C 03 00 02 */	cmpwi r3, 2
/* 8080C498  40 82 00 1C */	bne lbl_8080C4B4
/* 8080C49C  88 1C 06 A9 */	lbz r0, 0x6a9(r28)
/* 8080C4A0  28 00 00 00 */	cmplwi r0, 0
/* 8080C4A4  41 82 00 10 */	beq lbl_8080C4B4
/* 8080C4A8  7F 83 E3 78 */	mr r3, r28
/* 8080C4AC  4B FF FD A1 */	bl setGoHomeType__8daE_YM_cFv
/* 8080C4B0  48 00 0A 08 */	b lbl_8080CEB8
lbl_8080C4B4:
/* 8080C4B4  38 00 00 00 */	li r0, 0
/* 8080C4B8  98 1C 06 A5 */	stb r0, 0x6a5(r28)
/* 8080C4BC  A8 7C 06 EA */	lha r3, 0x6ea(r28)
/* 8080C4C0  3C 63 00 01 */	addis r3, r3, 1
/* 8080C4C4  38 03 80 00 */	addi r0, r3, -32768
/* 8080C4C8  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8080C4CC  AB BD 04 E6 */	lha r29, 0x4e6(r29)
/* 8080C4D0  A8 7C 06 E4 */	lha r3, 0x6e4(r28)
/* 8080C4D4  7F A4 EB 78 */	mr r4, r29
/* 8080C4D8  4B A6 49 4D */	bl cLib_distanceAngleS__Fss
/* 8080C4DC  7C 60 07 34 */	extsh r0, r3
/* 8080C4E0  A8 7C 06 E4 */	lha r3, 0x6e4(r28)
/* 8080C4E4  7C 1D 02 14 */	add r0, r29, r0
/* 8080C4E8  7C 03 00 00 */	cmpw r3, r0
/* 8080C4EC  40 82 00 10 */	bne lbl_8080C4FC
/* 8080C4F0  38 00 00 00 */	li r0, 0
/* 8080C4F4  98 1C 06 A5 */	stb r0, 0x6a5(r28)
/* 8080C4F8  48 00 00 0C */	b lbl_8080C504
lbl_8080C4FC:
/* 8080C4FC  38 00 00 01 */	li r0, 1
/* 8080C500  98 1C 06 A5 */	stb r0, 0x6a5(r28)
lbl_8080C504:
/* 8080C504  88 1C 06 CB */	lbz r0, 0x6cb(r28)
/* 8080C508  28 00 00 00 */	cmplwi r0, 0
/* 8080C50C  41 82 00 2C */	beq lbl_8080C538
/* 8080C510  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8080C514  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080C518  88 1C 06 A9 */	lbz r0, 0x6a9(r28)
/* 8080C51C  28 00 00 00 */	cmplwi r0, 0
/* 8080C520  40 82 00 3C */	bne lbl_8080C55C
/* 8080C524  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8080C528  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080C52C  38 00 00 01 */	li r0, 1
/* 8080C530  98 1C 06 A9 */	stb r0, 0x6a9(r28)
/* 8080C534  48 00 00 28 */	b lbl_8080C55C
lbl_8080C538:
/* 8080C538  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8080C53C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080C540  88 1C 06 A9 */	lbz r0, 0x6a9(r28)
/* 8080C544  28 00 00 00 */	cmplwi r0, 0
/* 8080C548  40 82 00 14 */	bne lbl_8080C55C
/* 8080C54C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8080C550  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080C554  38 00 00 01 */	li r0, 1
/* 8080C558  98 1C 06 A9 */	stb r0, 0x6a9(r28)
lbl_8080C55C:
/* 8080C55C  7F 83 E3 78 */	mr r3, r28
/* 8080C560  4B FF FC 9D */	bl setSurpriseAway__8daE_YM_cFv
/* 8080C564  48 00 09 54 */	b lbl_8080CEB8
lbl_8080C568:
/* 8080C568  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 8080C56C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8080C570  41 82 00 1C */	beq lbl_8080C58C
/* 8080C574  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 8080C578  28 00 00 02 */	cmplwi r0, 2
/* 8080C57C  40 80 00 10 */	bge lbl_8080C58C
/* 8080C580  7F 83 E3 78 */	mr r3, r28
/* 8080C584  4B FF FC C9 */	bl setGoHomeType__8daE_YM_cFv
/* 8080C588  48 00 09 38 */	b lbl_8080CEC0
lbl_8080C58C:
/* 8080C58C  7F 83 E3 78 */	mr r3, r28
/* 8080C590  38 80 00 00 */	li r4, 0
/* 8080C594  4B FF D8 15 */	bl setMoveSound__8daE_YM_cFi
/* 8080C598  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 8080C59C  28 00 00 00 */	cmplwi r0, 0
/* 8080C5A0  40 82 00 14 */	bne lbl_8080C5B4
/* 8080C5A4  A8 7C 06 EA */	lha r3, 0x6ea(r28)
/* 8080C5A8  38 03 A0 00 */	addi r0, r3, -24576
/* 8080C5AC  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8080C5B0  48 00 01 D4 */	b lbl_8080C784
lbl_8080C5B4:
/* 8080C5B4  28 00 00 01 */	cmplwi r0, 1
/* 8080C5B8  40 82 00 14 */	bne lbl_8080C5CC
/* 8080C5BC  A8 7C 06 EA */	lha r3, 0x6ea(r28)
/* 8080C5C0  38 03 60 00 */	addi r0, r3, 0x6000
/* 8080C5C4  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8080C5C8  48 00 01 BC */	b lbl_8080C784
lbl_8080C5CC:
/* 8080C5CC  3B A0 E0 00 */	li r29, -8192
/* 8080C5D0  28 00 00 02 */	cmplwi r0, 2
/* 8080C5D4  40 82 00 08 */	bne lbl_8080C5DC
/* 8080C5D8  3B A0 20 00 */	li r29, 0x2000
lbl_8080C5DC:
/* 8080C5DC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8080C5E0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8080C5E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8080C5E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080C5EC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8080C5F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8080C5F4  C0 5C 06 78 */	lfs f2, 0x678(r28)
/* 8080C5F8  C0 1C 06 70 */	lfs f0, 0x670(r28)
/* 8080C5FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8080C600  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8080C604  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8080C608  38 61 00 20 */	addi r3, r1, 0x20
/* 8080C60C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8080C610  4B B3 AD 8D */	bl PSVECSquareDistance
/* 8080C614  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080C618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C61C  40 81 00 58 */	ble lbl_8080C674
/* 8080C620  FC 00 08 34 */	frsqrte f0, f1
/* 8080C624  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080C628  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C62C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080C630  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C634  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C638  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C63C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C640  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C644  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C648  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C64C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C650  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C654  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C658  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C65C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C660  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C664  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C668  FC 21 00 32 */	fmul f1, f1, f0
/* 8080C66C  FC 20 08 18 */	frsp f1, f1
/* 8080C670  48 00 00 88 */	b lbl_8080C6F8
lbl_8080C674:
/* 8080C674  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080C678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C67C  40 80 00 10 */	bge lbl_8080C68C
/* 8080C680  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C684  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080C688  48 00 00 70 */	b lbl_8080C6F8
lbl_8080C68C:
/* 8080C68C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8080C690  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8080C694  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080C698  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080C69C  7C 03 00 00 */	cmpw r3, r0
/* 8080C6A0  41 82 00 14 */	beq lbl_8080C6B4
/* 8080C6A4  40 80 00 40 */	bge lbl_8080C6E4
/* 8080C6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8080C6AC  41 82 00 20 */	beq lbl_8080C6CC
/* 8080C6B0  48 00 00 34 */	b lbl_8080C6E4
lbl_8080C6B4:
/* 8080C6B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C6B8  41 82 00 0C */	beq lbl_8080C6C4
/* 8080C6BC  38 00 00 01 */	li r0, 1
/* 8080C6C0  48 00 00 28 */	b lbl_8080C6E8
lbl_8080C6C4:
/* 8080C6C4  38 00 00 02 */	li r0, 2
/* 8080C6C8  48 00 00 20 */	b lbl_8080C6E8
lbl_8080C6CC:
/* 8080C6CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C6D0  41 82 00 0C */	beq lbl_8080C6DC
/* 8080C6D4  38 00 00 05 */	li r0, 5
/* 8080C6D8  48 00 00 10 */	b lbl_8080C6E8
lbl_8080C6DC:
/* 8080C6DC  38 00 00 03 */	li r0, 3
/* 8080C6E0  48 00 00 08 */	b lbl_8080C6E8
lbl_8080C6E4:
/* 8080C6E4  38 00 00 04 */	li r0, 4
lbl_8080C6E8:
/* 8080C6E8  2C 00 00 01 */	cmpwi r0, 1
/* 8080C6EC  40 82 00 0C */	bne lbl_8080C6F8
/* 8080C6F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C6F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080C6F8:
/* 8080C6F8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8080C6FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C700  40 80 00 1C */	bge lbl_8080C71C
/* 8080C704  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8080C708  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 8080C70C  4B A6 44 F9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080C710  7C 1D 1A 14 */	add r0, r29, r3
/* 8080C714  B0 1C 06 E4 */	sth r0, 0x6e4(r28)
/* 8080C718  48 00 00 6C */	b lbl_8080C784
lbl_8080C71C:
/* 8080C71C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8080C720  38 9C 06 70 */	addi r4, r28, 0x670
/* 8080C724  4B A6 44 E1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080C728  7C 1D 1A 14 */	add r0, r29, r3
/* 8080C72C  7C 1B 07 34 */	extsh r27, r0
/* 8080C730  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 8080C734  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8080C738  41 82 00 48 */	beq lbl_8080C780
/* 8080C73C  AB BC 07 5C */	lha r29, 0x75c(r28)
/* 8080C740  7C 1D D8 50 */	subf r0, r29, r27
/* 8080C744  7C 03 07 34 */	extsh r3, r0
/* 8080C748  4B B5 89 89 */	bl abs
/* 8080C74C  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8080C750  40 81 00 30 */	ble lbl_8080C780
/* 8080C754  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8080C758  38 9C 06 70 */	addi r4, r28, 0x670
/* 8080C75C  4B A6 44 A9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080C760  7C 1D 18 50 */	subf r0, r29, r3
/* 8080C764  7C 00 07 35 */	extsh. r0, r0
/* 8080C768  40 81 00 10 */	ble lbl_8080C778
/* 8080C76C  38 1D 40 00 */	addi r0, r29, 0x4000
/* 8080C770  7C 1B 07 34 */	extsh r27, r0
/* 8080C774  48 00 00 0C */	b lbl_8080C780
lbl_8080C778:
/* 8080C778  38 1D C0 00 */	addi r0, r29, -16384
/* 8080C77C  7C 1B 07 34 */	extsh r27, r0
lbl_8080C780:
/* 8080C780  B3 7C 06 E4 */	sth r27, 0x6e4(r28)
lbl_8080C784:
/* 8080C784  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 8080C788  28 00 00 01 */	cmplwi r0, 1
/* 8080C78C  41 81 01 18 */	bgt lbl_8080C8A4
/* 8080C790  38 61 00 44 */	addi r3, r1, 0x44
/* 8080C794  4B B3 A9 A5 */	bl PSVECSquareMag
/* 8080C798  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080C79C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C7A0  40 81 00 58 */	ble lbl_8080C7F8
/* 8080C7A4  FC 00 08 34 */	frsqrte f0, f1
/* 8080C7A8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080C7AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C7B0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080C7B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C7B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C7BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C7C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C7C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C7C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C7CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C7D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C7D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C7D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C7DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C7E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C7E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C7E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C7EC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080C7F0  FC 20 08 18 */	frsp f1, f1
/* 8080C7F4  48 00 00 88 */	b lbl_8080C87C
lbl_8080C7F8:
/* 8080C7F8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080C7FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C800  40 80 00 10 */	bge lbl_8080C810
/* 8080C804  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C808  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080C80C  48 00 00 70 */	b lbl_8080C87C
lbl_8080C810:
/* 8080C810  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8080C814  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8080C818  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080C81C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080C820  7C 03 00 00 */	cmpw r3, r0
/* 8080C824  41 82 00 14 */	beq lbl_8080C838
/* 8080C828  40 80 00 40 */	bge lbl_8080C868
/* 8080C82C  2C 03 00 00 */	cmpwi r3, 0
/* 8080C830  41 82 00 20 */	beq lbl_8080C850
/* 8080C834  48 00 00 34 */	b lbl_8080C868
lbl_8080C838:
/* 8080C838  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C83C  41 82 00 0C */	beq lbl_8080C848
/* 8080C840  38 00 00 01 */	li r0, 1
/* 8080C844  48 00 00 28 */	b lbl_8080C86C
lbl_8080C848:
/* 8080C848  38 00 00 02 */	li r0, 2
/* 8080C84C  48 00 00 20 */	b lbl_8080C86C
lbl_8080C850:
/* 8080C850  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C854  41 82 00 0C */	beq lbl_8080C860
/* 8080C858  38 00 00 05 */	li r0, 5
/* 8080C85C  48 00 00 10 */	b lbl_8080C86C
lbl_8080C860:
/* 8080C860  38 00 00 03 */	li r0, 3
/* 8080C864  48 00 00 08 */	b lbl_8080C86C
lbl_8080C868:
/* 8080C868  38 00 00 04 */	li r0, 4
lbl_8080C86C:
/* 8080C86C  2C 00 00 01 */	cmpwi r0, 1
/* 8080C870  40 82 00 0C */	bne lbl_8080C87C
/* 8080C874  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C878  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080C87C:
/* 8080C87C  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 8080C880  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080C884  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080C888  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080C88C  EC 02 00 2A */	fadds f0, f2, f0
/* 8080C890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C894  4C 41 13 82 */	cror 2, 1, 2
/* 8080C898  40 82 00 0C */	bne lbl_8080C8A4
/* 8080C89C  38 00 00 00 */	li r0, 0
/* 8080C8A0  B0 1C 06 F0 */	sth r0, 0x6f0(r28)
lbl_8080C8A4:
/* 8080C8A4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8080C8A8  A8 9C 06 E4 */	lha r4, 0x6e4(r28)
/* 8080C8AC  38 A0 00 08 */	li r5, 8
/* 8080C8B0  38 C0 10 00 */	li r6, 0x1000
/* 8080C8B4  38 E0 01 00 */	li r7, 0x100
/* 8080C8B8  4B A6 3C 89 */	bl cLib_addCalcAngleS__FPsssss
/* 8080C8BC  A8 1C 06 F0 */	lha r0, 0x6f0(r28)
/* 8080C8C0  2C 00 00 00 */	cmpwi r0, 0
/* 8080C8C4  40 82 05 F4 */	bne lbl_8080CEB8
/* 8080C8C8  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 8080C8CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080C8D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080C8D4  40 82 01 5C */	bne lbl_8080CA30
/* 8080C8D8  4B A5 AF 95 */	bl cM_rnd__Fv
/* 8080C8DC  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8080C8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C8E4  40 80 01 4C */	bge lbl_8080CA30
/* 8080C8E8  88 1C 06 A1 */	lbz r0, 0x6a1(r28)
/* 8080C8EC  28 00 00 01 */	cmplwi r0, 1
/* 8080C8F0  40 82 00 14 */	bne lbl_8080C904
/* 8080C8F4  7F 83 E3 78 */	mr r3, r28
/* 8080C8F8  38 80 00 0F */	li r4, 0xf
/* 8080C8FC  4B FF D6 A1 */	bl setActionMode__8daE_YM_cFi
/* 8080C900  48 00 05 C0 */	b lbl_8080CEC0
lbl_8080C904:
/* 8080C904  28 00 00 00 */	cmplwi r0, 0
/* 8080C908  40 82 05 B8 */	bne lbl_8080CEC0
/* 8080C90C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8080C910  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8080C914  38 9C 06 70 */	addi r4, r28, 0x670
/* 8080C918  4B B3 AA 85 */	bl PSVECSquareDistance
/* 8080C91C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080C920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C924  40 81 00 58 */	ble lbl_8080C97C
/* 8080C928  FC 00 08 34 */	frsqrte f0, f1
/* 8080C92C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080C930  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C934  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080C938  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C93C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C940  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C944  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C948  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C94C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C950  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C954  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C958  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C95C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C960  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C964  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C968  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C96C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C970  FC 21 00 32 */	fmul f1, f1, f0
/* 8080C974  FC 20 08 18 */	frsp f1, f1
/* 8080C978  48 00 00 88 */	b lbl_8080CA00
lbl_8080C97C:
/* 8080C97C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080C980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C984  40 80 00 10 */	bge lbl_8080C994
/* 8080C988  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C98C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080C990  48 00 00 70 */	b lbl_8080CA00
lbl_8080C994:
/* 8080C994  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080C998  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080C99C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080C9A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080C9A4  7C 03 00 00 */	cmpw r3, r0
/* 8080C9A8  41 82 00 14 */	beq lbl_8080C9BC
/* 8080C9AC  40 80 00 40 */	bge lbl_8080C9EC
/* 8080C9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8080C9B4  41 82 00 20 */	beq lbl_8080C9D4
/* 8080C9B8  48 00 00 34 */	b lbl_8080C9EC
lbl_8080C9BC:
/* 8080C9BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C9C0  41 82 00 0C */	beq lbl_8080C9CC
/* 8080C9C4  38 00 00 01 */	li r0, 1
/* 8080C9C8  48 00 00 28 */	b lbl_8080C9F0
lbl_8080C9CC:
/* 8080C9CC  38 00 00 02 */	li r0, 2
/* 8080C9D0  48 00 00 20 */	b lbl_8080C9F0
lbl_8080C9D4:
/* 8080C9D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C9D8  41 82 00 0C */	beq lbl_8080C9E4
/* 8080C9DC  38 00 00 05 */	li r0, 5
/* 8080C9E0  48 00 00 10 */	b lbl_8080C9F0
lbl_8080C9E4:
/* 8080C9E4  38 00 00 03 */	li r0, 3
/* 8080C9E8  48 00 00 08 */	b lbl_8080C9F0
lbl_8080C9EC:
/* 8080C9EC  38 00 00 04 */	li r0, 4
lbl_8080C9F0:
/* 8080C9F0  2C 00 00 01 */	cmpwi r0, 1
/* 8080C9F4  40 82 00 0C */	bne lbl_8080CA00
/* 8080C9F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080C9FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080CA00:
/* 8080CA00  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 8080CA04  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080CA08  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080CA0C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080CA10  EC 02 00 2A */	fadds f0, f2, f0
/* 8080CA14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CA18  4C 40 13 82 */	cror 2, 0, 2
/* 8080CA1C  40 82 04 A4 */	bne lbl_8080CEC0
/* 8080CA20  7F 83 E3 78 */	mr r3, r28
/* 8080CA24  38 80 00 08 */	li r4, 8
/* 8080CA28  4B FF D5 75 */	bl setActionMode__8daE_YM_cFi
/* 8080CA2C  48 00 04 94 */	b lbl_8080CEC0
lbl_8080CA30:
/* 8080CA30  88 1C 06 C9 */	lbz r0, 0x6c9(r28)
/* 8080CA34  28 00 00 00 */	cmplwi r0, 0
/* 8080CA38  41 82 00 24 */	beq lbl_8080CA5C
/* 8080CA3C  C0 3C 06 D8 */	lfs f1, 0x6d8(r28)
/* 8080CA40  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8080CA44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CA48  40 80 00 14 */	bge lbl_8080CA5C
/* 8080CA4C  7F 83 E3 78 */	mr r3, r28
/* 8080CA50  38 80 00 0F */	li r4, 0xf
/* 8080CA54  4B FF D5 49 */	bl setActionMode__8daE_YM_cFi
/* 8080CA58  48 00 04 60 */	b lbl_8080CEB8
lbl_8080CA5C:
/* 8080CA5C  7F 83 E3 78 */	mr r3, r28
/* 8080CA60  38 80 00 00 */	li r4, 0
/* 8080CA64  4B FF D5 39 */	bl setActionMode__8daE_YM_cFi
/* 8080CA68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080CA6C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CA70  38 00 00 05 */	li r0, 5
/* 8080CA74  B0 1C 06 F6 */	sth r0, 0x6f6(r28)
/* 8080CA78  48 00 04 40 */	b lbl_8080CEB8
lbl_8080CA7C:
/* 8080CA7C  7F 83 E3 78 */	mr r3, r28
/* 8080CA80  4B FF F5 DD */	bl getSurpriseType__8daE_YM_cFv
/* 8080CA84  98 7C 06 A5 */	stb r3, 0x6a5(r28)
/* 8080CA88  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 8080CA8C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8080CA90  41 82 00 0C */	beq lbl_8080CA9C
/* 8080CA94  38 00 00 02 */	li r0, 2
/* 8080CA98  98 1C 06 A5 */	stb r0, 0x6a5(r28)
lbl_8080CA9C:
/* 8080CA9C  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 8080CAA0  28 00 00 00 */	cmplwi r0, 0
/* 8080CAA4  40 82 00 44 */	bne lbl_8080CAE8
/* 8080CAA8  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8080CAAC  4B A5 AE E1 */	bl cM_rndFX__Ff
/* 8080CAB0  A8 1C 06 EA */	lha r0, 0x6ea(r28)
/* 8080CAB4  C8 5E 00 A8 */	lfd f2, 0xa8(r30)
/* 8080CAB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080CABC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8080CAC0  3C 00 43 30 */	lis r0, 0x4330
/* 8080CAC4  90 01 00 50 */	stw r0, 0x50(r1)
/* 8080CAC8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8080CACC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080CAD0  EC 00 08 2A */	fadds f0, f0, f1
/* 8080CAD4  FC 00 00 1E */	fctiwz f0, f0
/* 8080CAD8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8080CADC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8080CAE0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8080CAE4  48 00 00 A0 */	b lbl_8080CB84
lbl_8080CAE8:
/* 8080CAE8  28 00 00 01 */	cmplwi r0, 1
/* 8080CAEC  40 82 00 4C */	bne lbl_8080CB38
/* 8080CAF0  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8080CAF4  4B A5 AE 99 */	bl cM_rndFX__Ff
/* 8080CAF8  A8 7C 06 EA */	lha r3, 0x6ea(r28)
/* 8080CAFC  3C 63 00 01 */	addis r3, r3, 1
/* 8080CB00  38 03 80 00 */	addi r0, r3, -32768
/* 8080CB04  C8 5E 00 A8 */	lfd f2, 0xa8(r30)
/* 8080CB08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080CB0C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8080CB10  3C 00 43 30 */	lis r0, 0x4330
/* 8080CB14  90 01 00 58 */	stw r0, 0x58(r1)
/* 8080CB18  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8080CB1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080CB20  EC 00 08 2A */	fadds f0, f0, f1
/* 8080CB24  FC 00 00 1E */	fctiwz f0, f0
/* 8080CB28  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8080CB2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8080CB30  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8080CB34  48 00 00 50 */	b lbl_8080CB84
lbl_8080CB38:
/* 8080CB38  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8080CB3C  4B A5 AE 51 */	bl cM_rndFX__Ff
/* 8080CB40  FF E0 08 90 */	fmr f31, f1
/* 8080CB44  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8080CB48  38 9C 06 70 */	addi r4, r28, 0x670
/* 8080CB4C  4B A6 40 B9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080CB50  7C 60 07 34 */	extsh r0, r3
/* 8080CB54  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 8080CB58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080CB5C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8080CB60  3C 00 43 30 */	lis r0, 0x4330
/* 8080CB64  90 01 00 58 */	stw r0, 0x58(r1)
/* 8080CB68  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8080CB6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8080CB70  EC 00 F8 2A */	fadds f0, f0, f31
/* 8080CB74  FC 00 00 1E */	fctiwz f0, f0
/* 8080CB78  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8080CB7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8080CB80  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_8080CB84:
/* 8080CB84  38 00 00 05 */	li r0, 5
/* 8080CB88  90 1C 06 98 */	stw r0, 0x698(r28)
/* 8080CB8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080CB90  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CB94  7F 83 E3 78 */	mr r3, r28
/* 8080CB98  38 80 00 0A */	li r4, 0xa
/* 8080CB9C  38 A0 00 00 */	li r5, 0
/* 8080CBA0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080CBA4  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8080CBA8  4B FF B6 39 */	bl bckSet__8daE_YM_cFiUcff
/* 8080CBAC  48 00 03 0C */	b lbl_8080CEB8
lbl_8080CBB0:
/* 8080CBB0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8080CBB4  38 80 00 01 */	li r4, 1
/* 8080CBB8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080CBBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080CBC0  40 82 00 18 */	bne lbl_8080CBD8
/* 8080CBC4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080CBC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080CBCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080CBD0  41 82 00 08 */	beq lbl_8080CBD8
/* 8080CBD4  38 80 00 00 */	li r4, 0
lbl_8080CBD8:
/* 8080CBD8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080CBDC  41 82 02 DC */	beq lbl_8080CEB8
/* 8080CBE0  7F 83 E3 78 */	mr r3, r28
/* 8080CBE4  38 80 00 0B */	li r4, 0xb
/* 8080CBE8  38 A0 00 00 */	li r5, 0
/* 8080CBEC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080CBF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080CBF4  4B FF B5 ED */	bl bckSet__8daE_YM_cFiUcff
/* 8080CBF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F0@ha */
/* 8080CBFC  38 03 00 F0 */	addi r0, r3, 0x00F0 /* 0x000700F0@l */
/* 8080CC00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8080CC04  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8080CC08  38 81 00 1C */	addi r4, r1, 0x1c
/* 8080CC0C  38 A0 00 00 */	li r5, 0
/* 8080CC10  38 C0 FF FF */	li r6, -1
/* 8080CC14  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8080CC18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080CC1C  7D 89 03 A6 */	mtctr r12
/* 8080CC20  4E 80 04 21 */	bctrl 
/* 8080CC24  38 00 00 06 */	li r0, 6
/* 8080CC28  90 1C 06 98 */	stw r0, 0x698(r28)
/* 8080CC2C  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 8080CC30  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8080CC34  2C 00 00 01 */	cmpwi r0, 1
/* 8080CC38  41 82 00 44 */	beq lbl_8080CC7C
/* 8080CC3C  40 80 00 10 */	bge lbl_8080CC4C
/* 8080CC40  2C 00 00 00 */	cmpwi r0, 0
/* 8080CC44  40 80 00 14 */	bge lbl_8080CC58
/* 8080CC48  48 00 01 58 */	b lbl_8080CDA0
lbl_8080CC4C:
/* 8080CC4C  2C 00 00 03 */	cmpwi r0, 3
/* 8080CC50  40 80 01 50 */	bge lbl_8080CDA0
/* 8080CC54  48 00 00 4C */	b lbl_8080CCA0
lbl_8080CC58:
/* 8080CC58  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8080CC5C  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 8080CC60  EC 21 00 2A */	fadds f1, f1, f0
/* 8080CC64  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8080CC68  EC 01 00 24 */	fdivs f0, f1, f0
/* 8080CC6C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CC70  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8080CC74  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8080CC78  48 00 01 28 */	b lbl_8080CDA0
lbl_8080CC7C:
/* 8080CC7C  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8080CC80  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 8080CC84  EC 21 00 28 */	fsubs f1, f1, f0
/* 8080CC88  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8080CC8C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8080CC90  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CC94  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8080CC98  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8080CC9C  48 00 01 04 */	b lbl_8080CDA0
lbl_8080CCA0:
/* 8080CCA0  38 61 00 44 */	addi r3, r1, 0x44
/* 8080CCA4  4B B3 A4 95 */	bl PSVECSquareMag
/* 8080CCA8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080CCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CCB0  40 81 00 58 */	ble lbl_8080CD08
/* 8080CCB4  FC 00 08 34 */	frsqrte f0, f1
/* 8080CCB8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080CCBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080CCC0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080CCC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080CCC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080CCCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080CCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080CCD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080CCD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080CCDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080CCE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080CCE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080CCE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080CCEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080CCF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080CCF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080CCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080CCFC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080CD00  FC 20 08 18 */	frsp f1, f1
/* 8080CD04  48 00 00 88 */	b lbl_8080CD8C
lbl_8080CD08:
/* 8080CD08  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080CD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CD10  40 80 00 10 */	bge lbl_8080CD20
/* 8080CD14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080CD18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080CD1C  48 00 00 70 */	b lbl_8080CD8C
lbl_8080CD20:
/* 8080CD20  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080CD24  80 81 00 08 */	lwz r4, 8(r1)
/* 8080CD28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080CD2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080CD30  7C 03 00 00 */	cmpw r3, r0
/* 8080CD34  41 82 00 14 */	beq lbl_8080CD48
/* 8080CD38  40 80 00 40 */	bge lbl_8080CD78
/* 8080CD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8080CD40  41 82 00 20 */	beq lbl_8080CD60
/* 8080CD44  48 00 00 34 */	b lbl_8080CD78
lbl_8080CD48:
/* 8080CD48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080CD4C  41 82 00 0C */	beq lbl_8080CD58
/* 8080CD50  38 00 00 01 */	li r0, 1
/* 8080CD54  48 00 00 28 */	b lbl_8080CD7C
lbl_8080CD58:
/* 8080CD58  38 00 00 02 */	li r0, 2
/* 8080CD5C  48 00 00 20 */	b lbl_8080CD7C
lbl_8080CD60:
/* 8080CD60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080CD64  41 82 00 0C */	beq lbl_8080CD70
/* 8080CD68  38 00 00 05 */	li r0, 5
/* 8080CD6C  48 00 00 10 */	b lbl_8080CD7C
lbl_8080CD70:
/* 8080CD70  38 00 00 03 */	li r0, 3
/* 8080CD74  48 00 00 08 */	b lbl_8080CD7C
lbl_8080CD78:
/* 8080CD78  38 00 00 04 */	li r0, 4
lbl_8080CD7C:
/* 8080CD7C  2C 00 00 01 */	cmpwi r0, 1
/* 8080CD80  40 82 00 0C */	bne lbl_8080CD8C
/* 8080CD84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080CD88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080CD8C:
/* 8080CD8C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8080CD90  EC 01 00 24 */	fdivs f0, f1, f0
/* 8080CD94  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CD98  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8080CD9C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_8080CDA0:
/* 8080CDA0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8080CDA4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8080CDA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CDAC  40 80 00 0C */	bge lbl_8080CDB8
/* 8080CDB0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CDB4  48 00 00 18 */	b lbl_8080CDCC
lbl_8080CDB8:
/* 8080CDB8  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8080CDBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CDC0  4C 41 13 82 */	cror 2, 1, 2
/* 8080CDC4  40 82 00 08 */	bne lbl_8080CDCC
/* 8080CDC8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_8080CDCC:
/* 8080CDCC  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8080CDD0  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8080CDD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CDD8  40 80 00 0C */	bge lbl_8080CDE4
/* 8080CDDC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8080CDE0  48 00 00 D8 */	b lbl_8080CEB8
lbl_8080CDE4:
/* 8080CDE4  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8080CDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080CDEC  4C 41 13 82 */	cror 2, 1, 2
/* 8080CDF0  40 82 00 C8 */	bne lbl_8080CEB8
/* 8080CDF4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8080CDF8  48 00 00 C0 */	b lbl_8080CEB8
lbl_8080CDFC:
/* 8080CDFC  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 8080CE00  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080CE04  41 82 00 B4 */	beq lbl_8080CEB8
/* 8080CE08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080CE0C  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080CE10  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080CE14  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8080CE18  38 81 00 18 */	addi r4, r1, 0x18
/* 8080CE1C  38 A0 00 00 */	li r5, 0
/* 8080CE20  38 C0 FF FF */	li r6, -1
/* 8080CE24  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8080CE28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080CE2C  7D 89 03 A6 */	mtctr r12
/* 8080CE30  4E 80 04 21 */	bctrl 
/* 8080CE34  7F 83 E3 78 */	mr r3, r28
/* 8080CE38  38 80 00 0C */	li r4, 0xc
/* 8080CE3C  38 A0 00 00 */	li r5, 0
/* 8080CE40  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080CE44  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080CE48  4B FF B3 99 */	bl bckSet__8daE_YM_cFiUcff
/* 8080CE4C  38 00 00 07 */	li r0, 7
/* 8080CE50  90 1C 06 98 */	stw r0, 0x698(r28)
/* 8080CE54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080CE58  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8080CE5C  48 00 00 5C */	b lbl_8080CEB8
lbl_8080CE60:
/* 8080CE60  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8080CE64  38 80 00 01 */	li r4, 1
/* 8080CE68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080CE6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080CE70  40 82 00 18 */	bne lbl_8080CE88
/* 8080CE74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080CE78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080CE7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080CE80  41 82 00 08 */	beq lbl_8080CE88
/* 8080CE84  38 80 00 00 */	li r4, 0
lbl_8080CE88:
/* 8080CE88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080CE8C  41 82 00 2C */	beq lbl_8080CEB8
/* 8080CE90  A8 1C 06 F0 */	lha r0, 0x6f0(r28)
/* 8080CE94  2C 00 00 00 */	cmpwi r0, 0
/* 8080CE98  40 82 00 20 */	bne lbl_8080CEB8
/* 8080CE9C  7F 83 E3 78 */	mr r3, r28
/* 8080CEA0  38 80 00 00 */	li r4, 0
/* 8080CEA4  4B FF D0 F9 */	bl setActionMode__8daE_YM_cFi
/* 8080CEA8  38 00 00 0F */	li r0, 0xf
/* 8080CEAC  B0 1C 06 F6 */	sth r0, 0x6f6(r28)
/* 8080CEB0  38 00 00 00 */	li r0, 0
/* 8080CEB4  98 1C 06 A7 */	stb r0, 0x6a7(r28)
lbl_8080CEB8:
/* 8080CEB8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8080CEBC  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_8080CEC0:
/* 8080CEC0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8080CEC4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8080CEC8  39 61 00 80 */	addi r11, r1, 0x80
/* 8080CECC  4B B5 53 55 */	bl _restgpr_27
/* 8080CED0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8080CED4  7C 08 03 A6 */	mtlr r0
/* 8080CED8  38 21 00 90 */	addi r1, r1, 0x90
/* 8080CEDC  4E 80 00 20 */	blr 
