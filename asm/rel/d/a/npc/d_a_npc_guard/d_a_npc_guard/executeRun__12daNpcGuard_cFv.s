lbl_809F01E8:
/* 809F01E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F01EC  7C 08 02 A6 */	mflr r0
/* 809F01F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F01F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809F01F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809F01FC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809F0200  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809F0204  39 61 00 20 */	addi r11, r1, 0x20
/* 809F0208  4B 97 1F D1 */	bl _savegpr_28
/* 809F020C  7C 7D 1B 78 */	mr r29, r3
/* 809F0210  3C 80 80 9F */	lis r4, lit_3900@ha /* 0x809F2C50@ha */
/* 809F0214  3B C4 2C 50 */	addi r30, r4, lit_3900@l /* 0x809F2C50@l */
/* 809F0218  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F021C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F0220  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F0224  4B 62 A4 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0228  B0 7D 0D A0 */	sth r3, 0xda0(r29)
/* 809F022C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 809F0230  A8 9D 0D A0 */	lha r4, 0xda0(r29)
/* 809F0234  38 A0 00 0D */	li r5, 0xd
/* 809F0238  38 C0 06 00 */	li r6, 0x600
/* 809F023C  4B 88 03 CD */	bl cLib_addCalcAngleS2__FPssss
/* 809F0240  7F A3 EB 78 */	mr r3, r29
/* 809F0244  48 00 0B 91 */	bl setAngle__12daNpcGuard_cFv
/* 809F0248  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 809F024C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F0250  40 80 00 1C */	bge lbl_809F026C
/* 809F0254  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0258  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F025C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F0260  7C 63 02 14 */	add r3, r3, r0
/* 809F0264  C3 E3 01 F8 */	lfs f31, 0x1f8(r3)
/* 809F0268  48 00 00 18 */	b lbl_809F0280
lbl_809F026C:
/* 809F026C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0270  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0274  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F0278  7C 63 02 14 */	add r3, r3, r0
/* 809F027C  C3 E3 FF 28 */	lfs f31, -0xd8(r3)
lbl_809F0280:
/* 809F0280  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F0284  40 80 00 1C */	bge lbl_809F02A0
/* 809F0288  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F028C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0290  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F0294  7C 63 02 14 */	add r3, r3, r0
/* 809F0298  C3 C3 01 F0 */	lfs f30, 0x1f0(r3)
/* 809F029C  48 00 00 18 */	b lbl_809F02B4
lbl_809F02A0:
/* 809F02A0  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F02A4  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F02A8  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F02AC  7C 63 02 14 */	add r3, r3, r0
/* 809F02B0  C3 C3 FF 20 */	lfs f30, -0xe0(r3)
lbl_809F02B4:
/* 809F02B4  38 7D 0D 8C */	addi r3, r29, 0xd8c
/* 809F02B8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809F02BC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 809F02C0  4B 88 04 81 */	bl cLib_chaseF__FPfff
/* 809F02C4  7F A3 EB 78 */	mr r3, r29
/* 809F02C8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 809F02CC  FC 40 F8 90 */	fmr f2, f31
/* 809F02D0  38 9D 0D 90 */	addi r4, r29, 0xd90
/* 809F02D4  38 A0 00 00 */	li r5, 0
/* 809F02D8  48 00 0B 09 */	bl setSpeed__12daNpcGuard_cFffPfi
/* 809F02DC  7F A3 EB 78 */	mr r3, r29
/* 809F02E0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 809F02E4  FC 40 F8 90 */	fmr f2, f31
/* 809F02E8  38 9D 05 2C */	addi r4, r29, 0x52c
/* 809F02EC  38 A0 00 01 */	li r5, 1
/* 809F02F0  48 00 0A F1 */	bl setSpeed__12daNpcGuard_cFffPfi
/* 809F02F4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 809F02F8  A8 9D 0D A0 */	lha r4, 0xda0(r29)
/* 809F02FC  4B 88 0B 29 */	bl cLib_distanceAngleS__Fss
/* 809F0300  2C 03 20 00 */	cmpwi r3, 0x2000
/* 809F0304  41 80 00 34 */	blt lbl_809F0338
/* 809F0308  38 7D 0D 8C */	addi r3, r29, 0xd8c
/* 809F030C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F0310  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 809F0314  4B 88 04 2D */	bl cLib_chaseF__FPfff
/* 809F0318  38 7D 0D 90 */	addi r3, r29, 0xd90
/* 809F031C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F0320  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 809F0324  4B 88 04 1D */	bl cLib_chaseF__FPfff
/* 809F0328  38 7D 05 2C */	addi r3, r29, 0x52c
/* 809F032C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F0330  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 809F0334  4B 88 04 0D */	bl cLib_chaseF__FPfff
lbl_809F0338:
/* 809F0338  37 9D 08 50 */	addic. r28, r29, 0x850
/* 809F033C  41 82 00 14 */	beq lbl_809F0350
/* 809F0340  7F 83 E3 78 */	mr r3, r28
/* 809F0344  7F 84 E3 78 */	mr r4, r28
/* 809F0348  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 809F034C  4B 95 6D 8D */	bl PSVECScale
lbl_809F0350:
/* 809F0350  7F A3 EB 78 */	mr r3, r29
/* 809F0354  7F 84 E3 78 */	mr r4, r28
/* 809F0358  4B 62 A3 75 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 809F035C  C0 1D 0D 90 */	lfs f0, 0xd90(r29)
/* 809F0360  EC 20 F8 24 */	fdivs f1, f0, f31
/* 809F0364  C0 1E 00 00 */	lfs f0, 0(r30)
/* 809F0368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F036C  40 81 00 08 */	ble lbl_809F0374
/* 809F0370  FC 20 00 90 */	fmr f1, f0
lbl_809F0374:
/* 809F0374  EC 3E 00 72 */	fmuls f1, f30, f1
/* 809F0378  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809F037C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F0380  40 80 00 08 */	bge lbl_809F0388
/* 809F0384  FC 20 00 90 */	fmr f1, f0
lbl_809F0388:
/* 809F0388  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 809F038C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 809F0390  38 7D 06 38 */	addi r3, r29, 0x638
/* 809F0394  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F0398  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F039C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F03A0  4B 68 67 0D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809F03A4  C8 3E 00 08 */	lfd f1, 8(r30)
/* 809F03A8  C8 5E 00 10 */	lfd f2, 0x10(r30)
/* 809F03AC  4B 97 C3 D5 */	bl pow
/* 809F03B0  FF C0 08 18 */	frsp f30, f1
/* 809F03B4  7F A3 EB 78 */	mr r3, r29
/* 809F03B8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F03BC  4B 62 A6 D9 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F03C0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 809F03C4  40 80 00 10 */	bge lbl_809F03D4
/* 809F03C8  7F A3 EB 78 */	mr r3, r29
/* 809F03CC  38 80 00 02 */	li r4, 2
/* 809F03D0  4B FF FA 51 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F03D4:
/* 809F03D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809F03D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809F03DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809F03E0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809F03E4  39 61 00 20 */	addi r11, r1, 0x20
/* 809F03E8  4B 97 1E 3D */	bl _restgpr_28
/* 809F03EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F03F0  7C 08 03 A6 */	mtlr r0
/* 809F03F4  38 21 00 40 */	addi r1, r1, 0x40
/* 809F03F8  4E 80 00 20 */	blr 
