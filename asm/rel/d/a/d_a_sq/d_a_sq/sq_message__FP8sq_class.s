lbl_805A021C:
/* 805A021C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0220  7C 08 02 A6 */	mflr r0
/* 805A0224  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A022C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A0230  7C 7E 1B 78 */	mr r30, r3
/* 805A0234  3C 60 80 5A */	lis r3, lit_3769@ha
/* 805A0238  3B E3 11 58 */	addi r31, r3, lit_3769@l
/* 805A023C  A8 1E 05 FA */	lha r0, 0x5fa(r30)
/* 805A0240  2C 00 00 01 */	cmpwi r0, 1
/* 805A0244  41 82 00 B8 */	beq lbl_805A02FC
/* 805A0248  40 80 00 B4 */	bge lbl_805A02FC
/* 805A024C  2C 00 00 00 */	cmpwi r0, 0
/* 805A0250  40 80 00 08 */	bge lbl_805A0258
/* 805A0254  48 00 00 A8 */	b lbl_805A02FC
lbl_805A0258:
/* 805A0258  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805A025C  4B CC 76 F8 */	b cM_rndF__Ff
/* 805A0260  FC 00 08 1E */	fctiwz f0, f1
/* 805A0264  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A0268  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A026C  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 805A0270  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A0274  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0278  3C 00 43 30 */	lis r0, 0x4330
/* 805A027C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A0280  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805A0284  EC 20 08 28 */	fsubs f1, f0, f1
/* 805A0288  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805A028C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0290  40 80 00 0C */	bge lbl_805A029C
/* 805A0294  38 00 00 00 */	li r0, 0
/* 805A0298  48 00 00 30 */	b lbl_805A02C8
lbl_805A029C:
/* 805A029C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805A02A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A02A4  40 80 00 0C */	bge lbl_805A02B0
/* 805A02A8  38 00 00 01 */	li r0, 1
/* 805A02AC  48 00 00 1C */	b lbl_805A02C8
lbl_805A02B0:
/* 805A02B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 805A02B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A02B8  40 80 00 0C */	bge lbl_805A02C4
/* 805A02BC  38 00 00 02 */	li r0, 2
/* 805A02C0  48 00 00 08 */	b lbl_805A02C8
lbl_805A02C4:
/* 805A02C4  38 00 00 03 */	li r0, 3
lbl_805A02C8:
/* 805A02C8  7F C3 F3 78 */	mr r3, r30
/* 805A02CC  54 00 10 3A */	slwi r0, r0, 2
/* 805A02D0  3C 80 80 5A */	lis r4, wait_bck@ha
/* 805A02D4  38 84 11 E8 */	addi r4, r4, wait_bck@l
/* 805A02D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 805A02DC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805A02E0  38 A0 00 02 */	li r5, 2
/* 805A02E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805A02E8  38 C0 FF FF */	li r6, -1
/* 805A02EC  4B FF F3 ED */	bl anm_init__FP8sq_classifUcfi
/* 805A02F0  A8 7E 05 FA */	lha r3, 0x5fa(r30)
/* 805A02F4  38 03 00 01 */	addi r0, r3, 1
/* 805A02F8  B0 1E 05 FA */	sth r0, 0x5fa(r30)
lbl_805A02FC:
/* 805A02FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805A0300  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A0304  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805A0308  4B CC F7 78 */	b cLib_addCalc0__FPfff
/* 805A030C  7F C3 F3 78 */	mr r3, r30
/* 805A0310  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805A0314  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805A0318  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A031C  4B A7 A3 F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A0320  7C 64 1B 78 */	mr r4, r3
/* 805A0324  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805A0328  38 A0 00 02 */	li r5, 2
/* 805A032C  38 C0 10 00 */	li r6, 0x1000
/* 805A0330  4B CD 02 D8 */	b cLib_addCalcAngleS2__FPssss
/* 805A0334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A0338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A033C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805A0340  28 00 00 00 */	cmplwi r0, 0
/* 805A0344  40 82 00 20 */	bne lbl_805A0364
/* 805A0348  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 805A034C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A0350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0354  40 81 00 10 */	ble lbl_805A0364
/* 805A0358  38 00 00 00 */	li r0, 0
/* 805A035C  B0 1E 05 F8 */	sth r0, 0x5f8(r30)
/* 805A0360  B0 1E 05 FA */	sth r0, 0x5fa(r30)
lbl_805A0364:
/* 805A0364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A0368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A036C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0370  7C 08 03 A6 */	mtlr r0
/* 805A0374  38 21 00 20 */	addi r1, r1, 0x20
/* 805A0378  4E 80 00 20 */	blr 
