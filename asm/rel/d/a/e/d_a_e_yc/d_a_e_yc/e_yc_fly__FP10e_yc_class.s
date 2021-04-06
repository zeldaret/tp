lbl_807F01AC:
/* 807F01AC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807F01B0  7C 08 02 A6 */	mflr r0
/* 807F01B4  90 01 00 94 */	stw r0, 0x94(r1)
/* 807F01B8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807F01BC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807F01C0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 807F01C4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 807F01C8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 807F01CC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 807F01D0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 807F01D4  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 807F01D8  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 807F01DC  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 807F01E0  39 61 00 40 */	addi r11, r1, 0x40
/* 807F01E4  4B B7 1F F1 */	bl _savegpr_27
/* 807F01E8  7C 7D 1B 78 */	mr r29, r3
/* 807F01EC  3C 60 80 7F */	lis r3, lit_3715@ha /* 0x807F2864@ha */
/* 807F01F0  3B C3 28 64 */	addi r30, r3, lit_3715@l /* 0x807F2864@l */
/* 807F01F4  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 807F01F8  90 01 00 08 */	stw r0, 8(r1)
/* 807F01FC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807F0200  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807F0204  38 81 00 08 */	addi r4, r1, 8
/* 807F0208  4B 82 95 F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F020C  7C 7F 1B 78 */	mr r31, r3
/* 807F0210  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F0214  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807F0218  FC 00 00 1E */	fctiwz f0, f0
/* 807F021C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F0220  80 61 00 14 */	lwz r3, 0x14(r1)
/* 807F0224  C3 FE 00 04 */	lfs f31, 4(r30)
/* 807F0228  C3 DE 00 00 */	lfs f30, 0(r30)
/* 807F022C  80 1D 06 64 */	lwz r0, 0x664(r29)
/* 807F0230  2C 00 00 01 */	cmpwi r0, 1
/* 807F0234  41 82 00 70 */	beq lbl_807F02A4
/* 807F0238  40 80 00 B8 */	bge lbl_807F02F0
/* 807F023C  2C 00 00 00 */	cmpwi r0, 0
/* 807F0240  40 80 00 0C */	bge lbl_807F024C
/* 807F0244  48 00 00 AC */	b lbl_807F02F0
/* 807F0248  48 00 00 A8 */	b lbl_807F02F0
lbl_807F024C:
/* 807F024C  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F0250  2C 00 00 00 */	cmpwi r0, 0
/* 807F0254  40 82 00 9C */	bne lbl_807F02F0
/* 807F0258  2C 03 00 0E */	cmpwi r3, 0xe
/* 807F025C  40 82 00 94 */	bne lbl_807F02F0
/* 807F0260  38 00 00 01 */	li r0, 1
/* 807F0264  90 1D 06 64 */	stw r0, 0x664(r29)
/* 807F0268  7F A3 EB 78 */	mr r3, r29
/* 807F026C  38 80 00 0C */	li r4, 0xc
/* 807F0270  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807F0274  38 A0 00 02 */	li r5, 2
/* 807F0278  FC 40 F0 90 */	fmr f2, f30
/* 807F027C  4B FF FC 75 */	bl anm_init__FP10e_yc_classifUcf
/* 807F0280  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 807F0284  4B A7 76 D1 */	bl cM_rndF__Ff
/* 807F0288  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 807F028C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F0290  FC 00 00 1E */	fctiwz f0, f0
/* 807F0294  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F0298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F029C  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F02A0  48 00 00 50 */	b lbl_807F02F0
lbl_807F02A4:
/* 807F02A4  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F02A8  2C 00 00 00 */	cmpwi r0, 0
/* 807F02AC  40 82 00 44 */	bne lbl_807F02F0
/* 807F02B0  38 00 00 00 */	li r0, 0
/* 807F02B4  90 1D 06 64 */	stw r0, 0x664(r29)
/* 807F02B8  7F A3 EB 78 */	mr r3, r29
/* 807F02BC  38 80 00 09 */	li r4, 9
/* 807F02C0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807F02C4  38 A0 00 02 */	li r5, 2
/* 807F02C8  FC 40 F0 90 */	fmr f2, f30
/* 807F02CC  4B FF FC 25 */	bl anm_init__FP10e_yc_classifUcf
/* 807F02D0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 807F02D4  4B A7 76 81 */	bl cM_rndF__Ff
/* 807F02D8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 807F02DC  EC 00 08 2A */	fadds f0, f0, f1
/* 807F02E0  FC 00 00 1E */	fctiwz f0, f0
/* 807F02E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F02E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F02EC  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_807F02F0:
/* 807F02F0  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F02F4  28 00 00 06 */	cmplwi r0, 6
/* 807F02F8  41 81 02 28 */	bgt lbl_807F0520
/* 807F02FC  3C 60 80 7F */	lis r3, lit_3878@ha /* 0x807F2954@ha */
/* 807F0300  38 63 29 54 */	addi r3, r3, lit_3878@l /* 0x807F2954@l */
/* 807F0304  54 00 10 3A */	slwi r0, r0, 2
/* 807F0308  7C 03 00 2E */	lwzx r0, r3, r0
/* 807F030C  7C 09 03 A6 */	mtctr r0
/* 807F0310  4E 80 04 20 */	bctr 
lbl_807F0314:
/* 807F0314  38 00 00 01 */	li r0, 1
/* 807F0318  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807F031C:
/* 807F031C  C3 FE 00 20 */	lfs f31, 0x20(r30)
/* 807F0320  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 807F0324  2C 00 00 00 */	cmpwi r0, 0
/* 807F0328  40 82 01 F8 */	bne lbl_807F0520
/* 807F032C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807F0330  4B A7 76 5D */	bl cM_rndFX__Ff
/* 807F0334  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807F0338  EC 20 08 2A */	fadds f1, f0, f1
/* 807F033C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807F0340  EF 81 00 28 */	fsubs f28, f1, f0
/* 807F0344  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807F0348  4B A7 76 45 */	bl cM_rndFX__Ff
/* 807F034C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807F0350  EC 20 08 2A */	fadds f1, f0, f1
/* 807F0354  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807F0358  EF 61 00 28 */	fsubs f27, f1, f0
/* 807F035C  EC 3C 07 32 */	fmuls f1, f28, f28
/* 807F0360  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 807F0364  EC 21 00 2A */	fadds f1, f1, f0
/* 807F0368  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F036C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0370  40 81 00 0C */	ble lbl_807F037C
/* 807F0374  FC 00 08 34 */	frsqrte f0, f1
/* 807F0378  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807F037C:
/* 807F037C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 807F0380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0384  40 81 01 9C */	ble lbl_807F0520
/* 807F0388  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807F038C  4B A7 75 C9 */	bl cM_rndF__Ff
/* 807F0390  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807F0394  EC 00 08 2A */	fadds f0, f0, f1
/* 807F0398  FC 00 00 1E */	fctiwz f0, f0
/* 807F039C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F03A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F03A4  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807F03A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807F03AC  EC 1C 00 2A */	fadds f0, f28, f0
/* 807F03B0  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 807F03B4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807F03B8  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F03BC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807F03C0  EC 1B 00 2A */	fadds f0, f27, f0
/* 807F03C4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F03C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F03CC  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 807F03D0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807F03D4  4B A7 75 81 */	bl cM_rndF__Ff
/* 807F03D8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 807F03DC  EC 00 08 2A */	fadds f0, f0, f1
/* 807F03E0  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F03E4  48 00 01 3C */	b lbl_807F0520
lbl_807F03E8:
/* 807F03E8  C3 FE 00 20 */	lfs f31, 0x20(r30)
/* 807F03EC  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807F03F0  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 807F03F4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807F03F8  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F03FC  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807F0400  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F0404  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 807F0408  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F040C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F0410  D0 3D 06 8C */	stfs f1, 0x68c(r29)
/* 807F0414  7F A3 EB 78 */	mr r3, r29
/* 807F0418  38 80 00 0C */	li r4, 0xc
/* 807F041C  38 A0 00 02 */	li r5, 2
/* 807F0420  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0424  4B FF FA CD */	bl anm_init__FP10e_yc_classifUcf
/* 807F0428  38 00 00 02 */	li r0, 2
/* 807F042C  90 1D 06 64 */	stw r0, 0x664(r29)
/* 807F0430  48 00 00 F0 */	b lbl_807F0520
lbl_807F0434:
/* 807F0434  C3 FE 00 20 */	lfs f31, 0x20(r30)
/* 807F0438  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807F043C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 807F0440  40 81 00 0C */	ble lbl_807F044C
/* 807F0444  C3 FE 00 34 */	lfs f31, 0x34(r30)
/* 807F0448  C3 DE 00 38 */	lfs f30, 0x38(r30)
lbl_807F044C:
/* 807F044C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807F0450  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 807F0454  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807F0458  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F045C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807F0460  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807F0464  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F0468  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807F046C  EC 01 00 2A */	fadds f0, f1, f0
/* 807F0470  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807F0474  48 00 00 AC */	b lbl_807F0520
lbl_807F0478:
/* 807F0478  C3 DE 00 3C */	lfs f30, 0x3c(r30)
/* 807F047C  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807F0480  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807F0484  40 82 00 1C */	bne lbl_807F04A0
/* 807F0488  7F A3 EB 78 */	mr r3, r29
/* 807F048C  38 80 00 0A */	li r4, 0xa
/* 807F0490  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807F0494  38 A0 00 02 */	li r5, 2
/* 807F0498  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F049C  4B FF FA 55 */	bl anm_init__FP10e_yc_classifUcf
lbl_807F04A0:
/* 807F04A0  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807F04A4  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807F04A8  40 82 00 1C */	bne lbl_807F04C4
/* 807F04AC  7F A3 EB 78 */	mr r3, r29
/* 807F04B0  38 80 00 15 */	li r4, 0x15
/* 807F04B4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807F04B8  38 A0 00 02 */	li r5, 2
/* 807F04BC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F04C0  4B FF FA 31 */	bl anm_init__FP10e_yc_classifUcf
lbl_807F04C4:
/* 807F04C4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807F04C8  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807F04CC  48 00 00 54 */	b lbl_807F0520
lbl_807F04D0:
/* 807F04D0  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 807F04D4  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807F04D8  EC 01 00 2A */	fadds f0, f1, f0
/* 807F04DC  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807F04E0  38 7D 06 98 */	addi r3, r29, 0x698
/* 807F04E4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F04E8  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 807F04EC  4B A7 F5 95 */	bl cLib_addCalc0__FPfff
/* 807F04F0  48 00 00 30 */	b lbl_807F0520
lbl_807F04F4:
/* 807F04F4  38 7D 06 94 */	addi r3, r29, 0x694
/* 807F04F8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F04FC  FC 40 08 90 */	fmr f2, f1
/* 807F0500  4B A7 F5 81 */	bl cLib_addCalc0__FPfff
/* 807F0504  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F0508  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 807F050C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 807F0510  EC 21 00 2A */	fadds f1, f1, f0
/* 807F0514  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 807F0518  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807F051C  4B A7 F5 21 */	bl cLib_addCalc2__FPffff
lbl_807F0520:
/* 807F0520  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 807F0524  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807F0528  EF A1 00 28 */	fsubs f29, f1, f0
/* 807F052C  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807F0530  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F0534  EF 61 00 28 */	fsubs f27, f1, f0
/* 807F0538  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807F053C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807F0540  EF 81 00 28 */	fsubs f28, f1, f0
/* 807F0544  FC 20 E8 90 */	fmr f1, f29
/* 807F0548  FC 40 E0 90 */	fmr f2, f28
/* 807F054C  4B A7 71 29 */	bl cM_atan2s__Fff
/* 807F0550  7C 7F 1B 78 */	mr r31, r3
/* 807F0554  EC 3D 07 72 */	fmuls f1, f29, f29
/* 807F0558  EC 1C 07 32 */	fmuls f0, f28, f28
/* 807F055C  EC 41 00 2A */	fadds f2, f1, f0
/* 807F0560  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F0564  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F0568  40 81 00 0C */	ble lbl_807F0574
/* 807F056C  FC 00 10 34 */	frsqrte f0, f2
/* 807F0570  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F0574:
/* 807F0574  FC 20 D8 90 */	fmr f1, f27
/* 807F0578  4B A7 70 FD */	bl cM_atan2s__Fff
/* 807F057C  7C 03 00 D0 */	neg r0, r3
/* 807F0580  7C 1C 07 34 */	extsh r28, r0
/* 807F0584  AB 7D 04 DE */	lha r27, 0x4de(r29)
/* 807F0588  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807F058C  7F E4 FB 78 */	mr r4, r31
/* 807F0590  38 A0 00 20 */	li r5, 0x20
/* 807F0594  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F0598  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 807F059C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F05A0  FC 00 00 1E */	fctiwz f0, f0
/* 807F05A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F05A8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 807F05AC  4B A8 00 5D */	bl cLib_addCalcAngleS2__FPssss
/* 807F05B0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807F05B4  7C 00 D8 50 */	subf r0, r0, r27
/* 807F05B8  54 00 28 34 */	slwi r0, r0, 5
/* 807F05BC  7C 04 07 34 */	extsh r4, r0
/* 807F05C0  2C 04 15 7C */	cmpwi r4, 0x157c
/* 807F05C4  40 81 00 0C */	ble lbl_807F05D0
/* 807F05C8  38 80 15 7C */	li r4, 0x157c
/* 807F05CC  48 00 00 10 */	b lbl_807F05DC
lbl_807F05D0:
/* 807F05D0  2C 04 EA 84 */	cmpwi r4, -5500
/* 807F05D4  40 80 00 08 */	bge lbl_807F05DC
/* 807F05D8  38 80 EA 84 */	li r4, -5500
lbl_807F05DC:
/* 807F05DC  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 807F05E0  38 A0 00 0A */	li r5, 0xa
/* 807F05E4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807F05E8  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F05EC  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 807F05F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F05F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F05F8  FC 00 00 1E */	fctiwz f0, f0
/* 807F05FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F0600  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 807F0604  4B A8 00 05 */	bl cLib_addCalcAngleS2__FPssss
/* 807F0608  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807F060C  7F 84 E3 78 */	mr r4, r28
/* 807F0610  38 A0 00 20 */	li r5, 0x20
/* 807F0614  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 807F0618  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 807F061C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F0620  FC 00 00 1E */	fctiwz f0, f0
/* 807F0624  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F0628  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 807F062C  4B A7 FF DD */	bl cLib_addCalcAngleS2__FPssss
/* 807F0630  38 7D 06 88 */	addi r3, r29, 0x688
/* 807F0634  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F0638  FC 40 08 90 */	fmr f2, f1
/* 807F063C  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 807F0640  4B A7 F3 FD */	bl cLib_addCalc2__FPffff
/* 807F0644  38 7D 06 8C */	addi r3, r29, 0x68c
/* 807F0648  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807F064C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0650  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807F0654  4B A7 F3 E9 */	bl cLib_addCalc2__FPffff
/* 807F0658  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807F065C  FC 20 F8 90 */	fmr f1, f31
/* 807F0660  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F0664  FC 60 F0 90 */	fmr f3, f30
/* 807F0668  4B A7 F3 D5 */	bl cLib_addCalc2__FPffff
/* 807F066C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807F0670  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807F0674  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 807F0678  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 807F067C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 807F0680  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 807F0684  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 807F0688  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 807F068C  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 807F0690  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 807F0694  39 61 00 40 */	addi r11, r1, 0x40
/* 807F0698  4B B7 1B 89 */	bl _restgpr_27
/* 807F069C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807F06A0  7C 08 03 A6 */	mtlr r0
/* 807F06A4  38 21 00 90 */	addi r1, r1, 0x90
/* 807F06A8  4E 80 00 20 */	blr 
