lbl_80699FC8:
/* 80699FC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80699FCC  7C 08 02 A6 */	mflr r0
/* 80699FD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80699FD4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80699FD8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80699FDC  7C 7E 1B 78 */	mr r30, r3
/* 80699FE0  3C 60 80 6A */	lis r3, lit_3657@ha /* 0x8069A8CC@ha */
/* 80699FE4  3B E3 A8 CC */	addi r31, r3, lit_3657@l /* 0x8069A8CC@l */
/* 80699FE8  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80699FEC  2C 00 00 00 */	cmpwi r0, 0
/* 80699FF0  41 82 00 14 */	beq lbl_8069A004
/* 80699FF4  41 80 02 4C */	blt lbl_8069A240
/* 80699FF8  2C 00 00 05 */	cmpwi r0, 5
/* 80699FFC  40 80 02 44 */	bge lbl_8069A240
/* 8069A000  48 00 00 48 */	b lbl_8069A048
lbl_8069A004:
/* 8069A004  38 00 00 01 */	li r0, 1
/* 8069A008  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 8069A00C  38 00 00 96 */	li r0, 0x96
/* 8069A010  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 8069A014  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8069A018  4B BC D9 3D */	bl cM_rndF__Ff
/* 8069A01C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8069A020  EC 00 08 2A */	fadds f0, f0, f1
/* 8069A024  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8069A028  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8069A02C  4B BC D9 61 */	bl cM_rndFX__Ff
/* 8069A030  FC 00 08 1E */	fctiwz f0, f1
/* 8069A034  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8069A038  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8069A03C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8069A040  7C 00 1A 14 */	add r0, r0, r3
/* 8069A044  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8069A048:
/* 8069A048  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 8069A04C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8069A050  41 82 00 28 */	beq lbl_8069A078
/* 8069A054  A8 1E 06 54 */	lha r0, 0x654(r30)
/* 8069A058  2C 00 00 00 */	cmpwi r0, 0
/* 8069A05C  40 82 00 1C */	bne lbl_8069A078
/* 8069A060  38 00 00 0A */	li r0, 0xa
/* 8069A064  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 8069A068  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8069A06C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8069A070  EC 01 00 32 */	fmuls f0, f1, f0
/* 8069A074  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8069A078:
/* 8069A078  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 8069A07C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8069A080  41 82 00 C8 */	beq lbl_8069A148
/* 8069A084  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 8069A088  2C 00 00 04 */	cmpwi r0, 4
/* 8069A08C  40 80 00 AC */	bge lbl_8069A138
/* 8069A090  3C 60 80 6A */	lis r3, spy@ha /* 0x8069A914@ha */
/* 8069A094  38 63 A9 14 */	addi r3, r3, spy@l /* 0x8069A914@l */
/* 8069A098  54 00 10 3A */	slwi r0, r0, 2
/* 8069A09C  7C 63 02 14 */	add r3, r3, r0
/* 8069A0A0  C0 03 FF FC */	lfs f0, -4(r3)
/* 8069A0A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069A0A8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8069A0AC  4B BC D8 E1 */	bl cM_rndFX__Ff
/* 8069A0B0  FC 00 08 1E */	fctiwz f0, f1
/* 8069A0B4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8069A0B8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8069A0BC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8069A0C0  7C 00 1A 14 */	add r0, r0, r3
/* 8069A0C4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8069A0C8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8069A0CC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8069A0D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 8069A0D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8069A0D8  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8069A0DC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8069A0E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070538@ha */
/* 8069A0E4  38 03 05 38 */	addi r0, r3, 0x0538 /* 0x00070538@l */
/* 8069A0E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8069A0EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8069A0F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8069A0F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8069A0F8  38 81 00 24 */	addi r4, r1, 0x24
/* 8069A0FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8069A100  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 8069A104  54 00 10 3A */	slwi r0, r0, 2
/* 8069A108  38 C1 00 40 */	addi r6, r1, 0x40
/* 8069A10C  7C C6 00 2E */	lwzx r6, r6, r0
/* 8069A110  38 E0 00 00 */	li r7, 0
/* 8069A114  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069A118  FC 40 08 90 */	fmr f2, f1
/* 8069A11C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 8069A120  FC 80 18 90 */	fmr f4, f3
/* 8069A124  39 00 00 00 */	li r8, 0
/* 8069A128  4B C1 18 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8069A12C  A8 7E 06 50 */	lha r3, 0x650(r30)
/* 8069A130  38 03 00 01 */	addi r0, r3, 1
/* 8069A134  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_8069A138:
/* 8069A138  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8069A13C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069A140  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8069A144  4B BD 59 3D */	bl cLib_addCalc0__FPfff
lbl_8069A148:
/* 8069A148  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 8069A14C  2C 00 00 00 */	cmpwi r0, 0
/* 8069A150  41 82 00 24 */	beq lbl_8069A174
/* 8069A154  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 8069A158  4B 9E A3 09 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8069A15C  28 03 00 00 */	cmplwi r3, 0
/* 8069A160  40 82 00 14 */	bne lbl_8069A174
/* 8069A164  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 8069A168  4B 9E A1 59 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8069A16C  28 03 00 00 */	cmplwi r3, 0
/* 8069A170  41 82 00 D0 */	beq lbl_8069A240
lbl_8069A174:
/* 8069A174  7F C3 F3 78 */	mr r3, r30
/* 8069A178  4B 97 FB 05 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8069A17C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8069A180  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8069A184  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8069A188  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8069A18C  38 A0 01 09 */	li r5, 0x109
/* 8069A190  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 8069A194  2C 00 00 00 */	cmpwi r0, 0
/* 8069A198  40 82 00 08 */	bne lbl_8069A1A0
/* 8069A19C  38 A0 01 08 */	li r5, 0x108
lbl_8069A1A0:
/* 8069A1A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8069A1A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069A1A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069A1AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8069A1B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8069A1B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069A1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069A1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069A1C0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8069A1C4  38 80 00 00 */	li r4, 0
/* 8069A1C8  90 81 00 08 */	stw r4, 8(r1)
/* 8069A1CC  38 00 FF FF */	li r0, -1
/* 8069A1D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069A1D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8069A1D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8069A1DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8069A1E0  38 80 00 00 */	li r4, 0
/* 8069A1E4  38 C1 00 28 */	addi r6, r1, 0x28
/* 8069A1E8  38 E0 00 00 */	li r7, 0
/* 8069A1EC  39 00 00 00 */	li r8, 0
/* 8069A1F0  39 21 00 34 */	addi r9, r1, 0x34
/* 8069A1F4  39 40 00 FF */	li r10, 0xff
/* 8069A1F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069A1FC  4B 9B 28 95 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8069A200  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070534@ha */
/* 8069A204  38 03 05 34 */	addi r0, r3, 0x0534 /* 0x00070534@l */
/* 8069A208  90 01 00 20 */	stw r0, 0x20(r1)
/* 8069A20C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8069A210  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8069A214  80 63 00 00 */	lwz r3, 0(r3)
/* 8069A218  38 81 00 20 */	addi r4, r1, 0x20
/* 8069A21C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8069A220  38 C0 00 00 */	li r6, 0
/* 8069A224  38 E0 00 00 */	li r7, 0
/* 8069A228  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069A22C  FC 40 08 90 */	fmr f2, f1
/* 8069A230  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 8069A234  FC 80 18 90 */	fmr f4, f3
/* 8069A238  39 00 00 00 */	li r8, 0
/* 8069A23C  4B C1 17 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8069A240:
/* 8069A240  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8069A244  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8069A248  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8069A24C  7C 08 03 A6 */	mtlr r0
/* 8069A250  38 21 00 60 */	addi r1, r1, 0x60
/* 8069A254  4E 80 00 20 */	blr 
