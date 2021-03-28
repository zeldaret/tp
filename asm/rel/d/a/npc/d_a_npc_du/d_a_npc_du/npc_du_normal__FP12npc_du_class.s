lbl_809B0114:
/* 809B0114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809B0118  7C 08 02 A6 */	mflr r0
/* 809B011C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809B0120  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809B0124  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809B0128  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809B012C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 809B0130  7C 7E 1B 78 */	mr r30, r3
/* 809B0134  3C 80 80 9B */	lis r4, lit_3762@ha
/* 809B0138  3B E4 18 48 */	addi r31, r4, lit_3762@l
/* 809B013C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 809B0140  A8 03 05 D0 */	lha r0, 0x5d0(r3)
/* 809B0144  2C 00 00 01 */	cmpwi r0, 1
/* 809B0148  41 82 00 68 */	beq lbl_809B01B0
/* 809B014C  40 80 00 10 */	bge lbl_809B015C
/* 809B0150  2C 00 00 00 */	cmpwi r0, 0
/* 809B0154  40 80 00 14 */	bge lbl_809B0168
/* 809B0158  48 00 01 9C */	b lbl_809B02F4
lbl_809B015C:
/* 809B015C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B0160  41 82 01 44 */	beq lbl_809B02A4
/* 809B0164  48 00 01 90 */	b lbl_809B02F4
lbl_809B0168:
/* 809B0168  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 809B016C  4B 8B 77 E8 */	b cM_rndF__Ff
/* 809B0170  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 809B0174  EC 00 08 2A */	fadds f0, f0, f1
/* 809B0178  FC 00 00 1E */	fctiwz f0, f0
/* 809B017C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B0180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B0184  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 809B0188  7F C3 F3 78 */	mr r3, r30
/* 809B018C  38 80 00 06 */	li r4, 6
/* 809B0190  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809B0194  38 A0 00 02 */	li r5, 2
/* 809B0198  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B019C  4B FF FB D5 */	bl anm_init__FP12npc_du_classifUcf
/* 809B01A0  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 809B01A4  38 03 00 01 */	addi r0, r3, 1
/* 809B01A8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B01AC  48 00 01 48 */	b lbl_809B02F4
lbl_809B01B0:
/* 809B01B0  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 809B01B4  2C 00 00 00 */	cmpwi r0, 0
/* 809B01B8  40 82 01 3C */	bne lbl_809B02F4
/* 809B01BC  38 00 00 0A */	li r0, 0xa
/* 809B01C0  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B01C4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809B01C8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809B01CC  4B 66 CD 04 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 809B01D0  2C 03 00 00 */	cmpwi r3, 0
/* 809B01D4  41 82 00 38 */	beq lbl_809B020C
/* 809B01D8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809B01DC  4B 8B 77 B0 */	b cM_rndFX__Ff
/* 809B01E0  FC 00 08 1E */	fctiwz f0, f1
/* 809B01E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B01E8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 809B01EC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 809B01F0  3C 03 00 01 */	addis r0, r3, 1
/* 809B01F4  7C 60 22 14 */	add r3, r0, r4
/* 809B01F8  38 03 80 00 */	addi r0, r3, -32768
/* 809B01FC  B0 1E 09 7A */	sth r0, 0x97a(r30)
/* 809B0200  38 00 00 1E */	li r0, 0x1e
/* 809B0204  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 809B0208  48 00 00 60 */	b lbl_809B0268
lbl_809B020C:
/* 809B020C  38 61 00 08 */	addi r3, r1, 8
/* 809B0210  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 809B0214  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 809B0218  4B 8B 69 1C */	b __mi__4cXyzCFRC3Vec
/* 809B021C  C0 01 00 08 */	lfs f0, 8(r1)
/* 809B0220  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B0224  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809B0228  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B022C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809B0230  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809B0234  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 809B0238  4B 8B 77 54 */	b cM_rndFX__Ff
/* 809B023C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809B0240  EC 00 08 2A */	fadds f0, f0, f1
/* 809B0244  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B0248  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 809B024C  4B 8B 77 40 */	b cM_rndFX__Ff
/* 809B0250  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809B0254  EC 40 08 2A */	fadds f2, f0, f1
/* 809B0258  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809B025C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 809B0260  4B 8B 74 14 */	b cM_atan2s__Fff
/* 809B0264  B0 7E 09 7A */	sth r3, 0x97a(r30)
lbl_809B0268:
/* 809B0268  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 809B026C  4B 8B 76 E8 */	b cM_rndF__Ff
/* 809B0270  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 809B0274  EC 00 08 2A */	fadds f0, f0, f1
/* 809B0278  FC 00 00 1E */	fctiwz f0, f0
/* 809B027C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B0280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B0284  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 809B0288  7F C3 F3 78 */	mr r3, r30
/* 809B028C  38 80 00 07 */	li r4, 7
/* 809B0290  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809B0294  38 A0 00 02 */	li r5, 2
/* 809B0298  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B029C  4B FF FA D5 */	bl anm_init__FP12npc_du_classifUcf
/* 809B02A0  48 00 00 54 */	b lbl_809B02F4
lbl_809B02A4:
/* 809B02A4  C3 FF 00 34 */	lfs f31, 0x34(r31)
/* 809B02A8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 809B02AC  A8 9E 09 7A */	lha r4, 0x97a(r30)
/* 809B02B0  38 A0 00 04 */	li r5, 4
/* 809B02B4  38 C0 01 00 */	li r6, 0x100
/* 809B02B8  4B 8C 03 50 */	b cLib_addCalcAngleS2__FPssss
/* 809B02BC  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 809B02C0  2C 00 00 00 */	cmpwi r0, 0
/* 809B02C4  41 82 00 28 */	beq lbl_809B02EC
/* 809B02C8  7F C3 F3 78 */	mr r3, r30
/* 809B02CC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809B02D0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809B02D4  4B 66 CB FC */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 809B02D8  2C 03 00 00 */	cmpwi r3, 0
/* 809B02DC  41 82 00 18 */	beq lbl_809B02F4
/* 809B02E0  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 809B02E4  2C 00 00 00 */	cmpwi r0, 0
/* 809B02E8  40 82 00 0C */	bne lbl_809B02F4
lbl_809B02EC:
/* 809B02EC  38 00 00 00 */	li r0, 0
/* 809B02F0  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B02F4:
/* 809B02F4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809B02F8  FC 20 F8 90 */	fmr f1, f31
/* 809B02FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B0300  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 809B0304  4B 8B F7 38 */	b cLib_addCalc2__FPffff
/* 809B0308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B030C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B0310  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809B0314  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809B0318  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809B031C  40 82 00 24 */	bne lbl_809B0340
/* 809B0320  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809B0324  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 809B0328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B032C  40 80 00 14 */	bge lbl_809B0340
/* 809B0330  38 00 00 01 */	li r0, 1
/* 809B0334  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B0338  38 00 00 00 */	li r0, 0
/* 809B033C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B0340:
/* 809B0340  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809B0344  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809B0348  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809B034C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 809B0350  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809B0354  7C 08 03 A6 */	mtlr r0
/* 809B0358  38 21 00 40 */	addi r1, r1, 0x40
/* 809B035C  4E 80 00 20 */	blr 
