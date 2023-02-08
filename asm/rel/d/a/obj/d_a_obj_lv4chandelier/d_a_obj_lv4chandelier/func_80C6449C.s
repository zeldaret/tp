lbl_80C6449C:
/* 80C6449C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C644A0  7C 08 02 A6 */	mflr r0
/* 80C644A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C644A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C644AC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C644B0  39 61 00 70 */	addi r11, r1, 0x70
/* 80C644B4  4B 6F DD 11 */	bl _savegpr_23
/* 80C644B8  7C 7D 1B 78 */	mr r29, r3
/* 80C644BC  7C 9E 23 78 */	mr r30, r4
/* 80C644C0  7C BF 2B 78 */	mr r31, r5
/* 80C644C4  3C 60 80 C6 */	lis r3, l_bmdidx@ha /* 0x80C66860@ha */
/* 80C644C8  3B 43 68 60 */	addi r26, r3, l_bmdidx@l /* 0x80C66860@l */
/* 80C644CC  80 7D 24 18 */	lwz r3, 0x2418(r29)
/* 80C644D0  80 1D 24 84 */	lwz r0, 0x2484(r29)
/* 80C644D4  7C 03 00 50 */	subf r0, r3, r0
/* 80C644D8  7C 00 00 34 */	cntlzw r0, r0
/* 80C644DC  7C 77 1B 78 */	mr r23, r3
/* 80C644E0  C3 FA 00 68 */	lfs f31, 0x68(r26)
/* 80C644E4  54 1B DE 3E */	rlwinm r27, r0, 0x1b, 0x18, 0x1f
/* 80C644E8  1F 83 00 28 */	mulli r28, r3, 0x28
/* 80C644EC  48 00 01 54 */	b lbl_80C64640
lbl_80C644F0:
/* 80C644F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C644F4  7F 1E E2 14 */	add r24, r30, r28
/* 80C644F8  38 98 00 0C */	addi r4, r24, 0xc
/* 80C644FC  38 17 FF FF */	addi r0, r23, -1
/* 80C64500  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C64504  3B 25 00 0C */	addi r25, r5, 0xc
/* 80C64508  7F 3E CA 14 */	add r25, r30, r25
/* 80C6450C  7F 25 CB 78 */	mr r5, r25
/* 80C64510  4B 60 26 25 */	bl __mi__4cXyzCFRC3Vec
/* 80C64514  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C64518  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C6451C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C64520  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C64524  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C64528  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C6452C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C64530  4C 41 13 82 */	cror 2, 1, 2
/* 80C64534  40 82 00 08 */	bne lbl_80C6453C
/* 80C64538  D3 E1 00 3C */	stfs f31, 0x3c(r1)
lbl_80C6453C:
/* 80C6453C  28 1B 00 00 */	cmplwi r27, 0
/* 80C64540  40 82 00 10 */	bne lbl_80C64550
/* 80C64544  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 80C64548  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C6454C  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80C64550:
/* 80C64550  38 61 00 38 */	addi r3, r1, 0x38
/* 80C64554  4B 6E 2B E5 */	bl PSVECSquareMag
/* 80C64558  80 1D 24 18 */	lwz r0, 0x2418(r29)
/* 80C6455C  7C 17 00 00 */	cmpw r23, r0
/* 80C64560  40 82 00 64 */	bne lbl_80C645C4
/* 80C64564  FC 00 0A 10 */	fabs f0, f1
/* 80C64568  FC 40 00 18 */	frsp f2, f0
/* 80C6456C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C64570  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C64574  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C64578  41 80 00 34 */	blt lbl_80C645AC
/* 80C6457C  C0 1A 00 6C */	lfs f0, 0x6c(r26)
/* 80C64580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C64584  4C 41 13 82 */	cror 2, 1, 2
/* 80C64588  40 82 00 88 */	bne lbl_80C64610
/* 80C6458C  38 61 00 20 */	addi r3, r1, 0x20
/* 80C64590  38 81 00 38 */	addi r4, r1, 0x38
/* 80C64594  4B 60 29 61 */	bl normalize__4cXyzFv
/* 80C64598  38 61 00 38 */	addi r3, r1, 0x38
/* 80C6459C  7C 64 1B 78 */	mr r4, r3
/* 80C645A0  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80C645A4  4B 6E 2B 35 */	bl PSVECScale
/* 80C645A8  48 00 00 68 */	b lbl_80C64610
lbl_80C645AC:
/* 80C645AC  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 80C645B0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C645B4  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C645B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C645BC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C645C0  48 00 00 50 */	b lbl_80C64610
lbl_80C645C4:
/* 80C645C4  FC 00 0A 10 */	fabs f0, f1
/* 80C645C8  FC 20 00 18 */	frsp f1, f0
/* 80C645CC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C645D0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C645D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C645D8  41 80 00 14 */	blt lbl_80C645EC
/* 80C645DC  38 61 00 14 */	addi r3, r1, 0x14
/* 80C645E0  38 81 00 38 */	addi r4, r1, 0x38
/* 80C645E4  4B 60 29 11 */	bl normalize__4cXyzFv
/* 80C645E8  48 00 00 18 */	b lbl_80C64600
lbl_80C645EC:
/* 80C645EC  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 80C645F0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C645F4  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C645F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C645FC  D0 21 00 40 */	stfs f1, 0x40(r1)
lbl_80C64600:
/* 80C64600  38 61 00 38 */	addi r3, r1, 0x38
/* 80C64604  7C 64 1B 78 */	mr r4, r3
/* 80C64608  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80C6460C  4B 6E 2A CD */	bl PSVECScale
lbl_80C64610:
/* 80C64610  38 61 00 08 */	addi r3, r1, 8
/* 80C64614  38 81 00 38 */	addi r4, r1, 0x38
/* 80C64618  7F 25 CB 78 */	mr r5, r25
/* 80C6461C  4B 60 24 C9 */	bl __pl__4cXyzCFRC3Vec
/* 80C64620  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C64624  D0 18 00 0C */	stfs f0, 0xc(r24)
/* 80C64628  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C6462C  D0 18 00 10 */	stfs f0, 0x10(r24)
/* 80C64630  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C64634  D0 18 00 14 */	stfs f0, 0x14(r24)
/* 80C64638  3A F7 00 01 */	addi r23, r23, 1
/* 80C6463C  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_80C64640:
/* 80C64640  7C 17 F8 00 */	cmpw r23, r31
/* 80C64644  41 80 FE AC */	blt lbl_80C644F0
/* 80C64648  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C6464C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C64650  39 61 00 70 */	addi r11, r1, 0x70
/* 80C64654  4B 6F DB BD */	bl _restgpr_23
/* 80C64658  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C6465C  7C 08 03 A6 */	mtlr r0
/* 80C64660  38 21 00 80 */	addi r1, r1, 0x80
/* 80C64664  4E 80 00 20 */	blr 
