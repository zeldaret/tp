lbl_80A825A0:
/* 80A825A0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80A825A4  7C 08 02 A6 */	mflr r0
/* 80A825A8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A825AC  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80A825B0  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80A825B4  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80A825B8  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80A825BC  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80A825C0  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80A825C4  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80A825C8  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80A825CC  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80A825D0  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80A825D4  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 80A825D8  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 80A825DC  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 80A825E0  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 80A825E4  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 80A825E8  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 80A825EC  39 61 00 70 */	addi r11, r1, 0x70
/* 80A825F0  4B 8D FB D9 */	bl _savegpr_24
/* 80A825F4  7C 7A 1B 78 */	mr r26, r3
/* 80A825F8  3C 60 80 A8 */	lis r3, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A825FC  3B E3 32 AC */	addi r31, r3, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A82600  3B A0 00 00 */	li r29, 0
/* 80A82604  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80A82608  83 C3 00 04 */	lwz r30, 4(r3)
/* 80A8260C  3B 80 00 00 */	li r28, 0
/* 80A82610  38 7F 00 00 */	addi r3, r31, 0
/* 80A82614  C3 E3 00 24 */	lfs f31, 0x24(r3)
/* 80A82618  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 80A8261C  C3 A3 00 2C */	lfs f29, 0x2c(r3)
/* 80A82620  C3 83 00 28 */	lfs f28, 0x28(r3)
/* 80A82624  C3 63 00 34 */	lfs f27, 0x34(r3)
/* 80A82628  C3 43 00 30 */	lfs f26, 0x30(r3)
/* 80A8262C  C3 23 00 3C */	lfs f25, 0x3c(r3)
/* 80A82630  C3 03 00 38 */	lfs f24, 0x38(r3)
/* 80A82634  A8 7A 08 F8 */	lha r3, 0x8f8(r26)
/* 80A82638  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80A8263C  7C 03 00 50 */	subf r0, r3, r0
/* 80A82640  7C 1B 07 34 */	extsh r27, r0
/* 80A82644  C0 1A 08 54 */	lfs f0, 0x854(r26)
/* 80A82648  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8264C  C0 1A 08 58 */	lfs f0, 0x858(r26)
/* 80A82650  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A82654  C0 1A 08 5C */	lfs f0, 0x85c(r26)
/* 80A82658  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8265C  C0 1A 08 60 */	lfs f0, 0x860(r26)
/* 80A82660  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A82664  C0 1A 08 64 */	lfs f0, 0x864(r26)
/* 80A82668  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A8266C  C0 1A 08 68 */	lfs f0, 0x868(r26)
/* 80A82670  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A82674  C0 1A 08 6C */	lfs f0, 0x86c(r26)
/* 80A82678  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A8267C  C0 1A 08 70 */	lfs f0, 0x870(r26)
/* 80A82680  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A82684  C0 1A 08 74 */	lfs f0, 0x874(r26)
/* 80A82688  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8268C  80 7F 04 D8 */	lwz r3, 0x4d8(r31)
/* 80A82690  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80A82694  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A82698  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A8269C  80 1F 04 E0 */	lwz r0, 0x4e0(r31)
/* 80A826A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A826A4  38 1A 09 1A */	addi r0, r26, 0x91a
/* 80A826A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A826AC  38 1A 09 20 */	addi r0, r26, 0x920
/* 80A826B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A826B4  38 1A 09 26 */	addi r0, r26, 0x926
/* 80A826B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A826BC  A8 1A 0E 06 */	lha r0, 0xe06(r26)
/* 80A826C0  2C 00 00 01 */	cmpwi r0, 1
/* 80A826C4  41 82 00 18 */	beq lbl_80A826DC
/* 80A826C8  40 80 00 08 */	bge lbl_80A826D0
/* 80A826CC  48 00 00 9C */	b lbl_80A82768
lbl_80A826D0:
/* 80A826D0  2C 00 00 04 */	cmpwi r0, 4
/* 80A826D4  40 80 00 94 */	bge lbl_80A82768
/* 80A826D8  48 00 00 0C */	b lbl_80A826E4
lbl_80A826DC:
/* 80A826DC  3B 80 00 01 */	li r28, 1
/* 80A826E0  48 00 00 88 */	b lbl_80A82768
lbl_80A826E4:
/* 80A826E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A826E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A826EC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A826F0  88 7A 0E 0B */	lbz r3, 0xe0b(r26)
/* 80A826F4  28 03 00 01 */	cmplwi r3, 1
/* 80A826F8  40 82 00 14 */	bne lbl_80A8270C
/* 80A826FC  2C 00 00 03 */	cmpwi r0, 3
/* 80A82700  40 82 00 0C */	bne lbl_80A8270C
/* 80A82704  C3 3F 05 8C */	lfs f25, 0x58c(r31)
/* 80A82708  C3 1F 05 90 */	lfs f24, 0x590(r31)
lbl_80A8270C:
/* 80A8270C  28 03 00 00 */	cmplwi r3, 0
/* 80A82710  40 82 00 58 */	bne lbl_80A82768
/* 80A82714  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80A82718  83 03 00 08 */	lwz r24, 8(r3)
/* 80A8271C  7F 43 D3 78 */	mr r3, r26
/* 80A82720  3C 80 80 A8 */	lis r4, l_arcNames@ha /* 0x80A83AF8@ha */
/* 80A82724  3B 24 3A F8 */	addi r25, r4, l_arcNames@l /* 0x80A83AF8@l */
/* 80A82728  80 99 00 04 */	lwz r4, 4(r25)
/* 80A8272C  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha /* 0x80A838D0@ha */
/* 80A82730  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l /* 0x80A838D0@l */
/* 80A82734  80 A5 01 68 */	lwz r5, 0x168(r5)
/* 80A82738  4B 6D 03 F5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A8273C  7C 18 18 40 */	cmplw r24, r3
/* 80A82740  41 82 00 24 */	beq lbl_80A82764
/* 80A82744  7F 43 D3 78 */	mr r3, r26
/* 80A82748  80 99 00 04 */	lwz r4, 4(r25)
/* 80A8274C  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha /* 0x80A838D0@ha */
/* 80A82750  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l /* 0x80A838D0@l */
/* 80A82754  80 A5 01 8C */	lwz r5, 0x18c(r5)
/* 80A82758  4B 6D 03 D5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A8275C  7C 18 18 40 */	cmplw r24, r3
/* 80A82760  40 82 00 08 */	bne lbl_80A82768
lbl_80A82764:
/* 80A82764  3B A0 00 00 */	li r29, 0
lbl_80A82768:
/* 80A82768  28 1D 00 00 */	cmplwi r29, 0
/* 80A8276C  41 82 00 4C */	beq lbl_80A827B8
/* 80A82770  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80A82774  D0 1A 08 78 */	stfs f0, 0x878(r26)
/* 80A82778  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80A8277C  D0 1A 08 7C */	stfs f0, 0x87c(r26)
/* 80A82780  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80A82784  D0 1A 08 80 */	stfs f0, 0x880(r26)
/* 80A82788  A8 1A 0E 06 */	lha r0, 0xe06(r26)
/* 80A8278C  2C 00 00 02 */	cmpwi r0, 2
/* 80A82790  41 82 00 1C */	beq lbl_80A827AC
/* 80A82794  2C 00 00 03 */	cmpwi r0, 3
/* 80A82798  41 82 00 14 */	beq lbl_80A827AC
/* 80A8279C  C0 3A 08 7C */	lfs f1, 0x87c(r26)
/* 80A827A0  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80A827A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A827A8  D0 1A 08 7C */	stfs f0, 0x87c(r26)
lbl_80A827AC:
/* 80A827AC  38 1A 08 78 */	addi r0, r26, 0x878
/* 80A827B0  90 1A 0C 10 */	stw r0, 0xc10(r26)
/* 80A827B4  48 00 00 0C */	b lbl_80A827C0
lbl_80A827B8:
/* 80A827B8  38 00 00 00 */	li r0, 0
/* 80A827BC  90 1A 0C 10 */	stw r0, 0xc10(r26)
lbl_80A827C0:
/* 80A827C0  D3 61 00 08 */	stfs f27, 8(r1)
/* 80A827C4  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80A827C8  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80A827CC  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80A827D0  38 7A 0B E0 */	addi r3, r26, 0xbe0
/* 80A827D4  FC 20 F8 90 */	fmr f1, f31
/* 80A827D8  FC 40 F0 90 */	fmr f2, f30
/* 80A827DC  FC 60 E8 90 */	fmr f3, f29
/* 80A827E0  FC 80 E0 90 */	fmr f4, f28
/* 80A827E4  C0 BF 00 88 */	lfs f5, 0x88(r31)
/* 80A827E8  FC C0 28 90 */	fmr f6, f5
/* 80A827EC  FC E0 28 90 */	fmr f7, f5
/* 80A827F0  FD 00 28 90 */	fmr f8, f5
/* 80A827F4  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 80A827F8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A827FC  4B 6C E8 BD */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A82800  38 7A 0B E0 */	addi r3, r26, 0xbe0
/* 80A82804  7F 44 D3 78 */	mr r4, r26
/* 80A82808  38 BE 00 24 */	addi r5, r30, 0x24
/* 80A8280C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A82810  7F 87 E3 78 */	mr r7, r28
/* 80A82814  7F 68 DB 78 */	mr r8, r27
/* 80A82818  39 20 00 00 */	li r9, 0
/* 80A8281C  4B 6C EB 35 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A82820  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80A82824  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80A82828  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80A8282C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80A82830  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80A82834  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80A82838  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80A8283C  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80A82840  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 80A82844  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80A82848  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 80A8284C  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80A82850  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 80A82854  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80A82858  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 80A8285C  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 80A82860  39 61 00 70 */	addi r11, r1, 0x70
/* 80A82864  4B 8D F9 B1 */	bl _restgpr_24
/* 80A82868  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80A8286C  7C 08 03 A6 */	mtlr r0
/* 80A82870  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80A82874  4E 80 00 20 */	blr 
