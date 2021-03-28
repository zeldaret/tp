lbl_805D002C:
/* 805D002C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D0030  7C 08 02 A6 */	mflr r0
/* 805D0034  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D0038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D003C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D0040  7C 7F 1B 78 */	mr r31, r3
/* 805D0044  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D0048  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805D004C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D0050  2C 00 00 01 */	cmpwi r0, 1
/* 805D0054  41 82 00 A8 */	beq lbl_805D00FC
/* 805D0058  40 80 01 1C */	bge lbl_805D0174
/* 805D005C  2C 00 00 00 */	cmpwi r0, 0
/* 805D0060  40 80 00 08 */	bge lbl_805D0068
/* 805D0064  48 00 01 10 */	b lbl_805D0174
lbl_805D0068:
/* 805D0068  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D006C  2C 00 00 00 */	cmpwi r0, 0
/* 805D0070  40 82 00 50 */	bne lbl_805D00C0
/* 805D0074  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 805D0078  4B C9 78 DC */	b cM_rndF__Ff
/* 805D007C  FC 00 08 1E */	fctiwz f0, f1
/* 805D0080  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D0084  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805D0088  38 03 00 78 */	addi r0, r3, 0x78
/* 805D008C  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D0090  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D0094  28 00 00 01 */	cmplwi r0, 1
/* 805D0098  40 82 00 14 */	bne lbl_805D00AC
/* 805D009C  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D00A0  7C 00 0E 70 */	srawi r0, r0, 1
/* 805D00A4  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D00A8  48 00 00 18 */	b lbl_805D00C0
lbl_805D00AC:
/* 805D00AC  28 00 00 02 */	cmplwi r0, 2
/* 805D00B0  40 82 00 10 */	bne lbl_805D00C0
/* 805D00B4  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D00B8  7C 00 16 70 */	srawi r0, r0, 2
/* 805D00BC  90 1F 08 1C */	stw r0, 0x81c(r31)
lbl_805D00C0:
/* 805D00C0  80 BF 06 8C */	lwz r5, 0x68c(r31)
/* 805D00C4  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805D00C8  54 00 10 3A */	slwi r0, r0, 2
/* 805D00CC  3C 60 80 5E */	lis r3, Ds_wait_id@ha
/* 805D00D0  38 63 D5 70 */	addi r3, r3, Ds_wait_id@l
/* 805D00D4  7C 83 00 2E */	lwzx r4, r3, r0
/* 805D00D8  7C 05 20 00 */	cmpw r5, r4
/* 805D00DC  41 82 00 18 */	beq lbl_805D00F4
/* 805D00E0  7F E3 FB 78 */	mr r3, r31
/* 805D00E4  38 A0 00 02 */	li r5, 2
/* 805D00E8  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 805D00EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D00F0  4B FF B9 D9 */	bl setBck__8daB_DS_cFiUcff
lbl_805D00F4:
/* 805D00F4  38 00 00 01 */	li r0, 1
/* 805D00F8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D00FC:
/* 805D00FC  7F E3 FB 78 */	mr r3, r31
/* 805D0100  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805D0104  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 805D0108  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805D010C  4B A4 A6 D4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D0110  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D0114  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D0118  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D011C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D0120  41 81 00 20 */	bgt lbl_805D0140
/* 805D0124  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D0128  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D012C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D0130  7D 89 03 A6 */	mtctr r12
/* 805D0134  4E 80 04 21 */	bctrl 
/* 805D0138  28 03 00 00 */	cmplwi r3, 0
/* 805D013C  41 82 00 38 */	beq lbl_805D0174
lbl_805D0140:
/* 805D0140  7F E3 FB 78 */	mr r3, r31
/* 805D0144  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805D0148  4B A4 A5 C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D014C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D0150  7C 03 00 50 */	subf r0, r3, r0
/* 805D0154  7C 03 07 34 */	extsh r3, r0
/* 805D0158  4B D9 4F 78 */	b abs
/* 805D015C  2C 03 18 00 */	cmpwi r3, 0x1800
/* 805D0160  40 81 00 14 */	ble lbl_805D0174
/* 805D0164  7F E3 FB 78 */	mr r3, r31
/* 805D0168  38 80 00 02 */	li r4, 2
/* 805D016C  38 A0 00 00 */	li r5, 0
/* 805D0170  4B FF BA 05 */	bl setActionMode__8daB_DS_cFii
lbl_805D0174:
/* 805D0174  7F E3 FB 78 */	mr r3, r31
/* 805D0178  4B FF FB 15 */	bl mHandBreathChk__8daB_DS_cFv
/* 805D017C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D0180  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D0184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D0188  7C 08 03 A6 */	mtlr r0
/* 805D018C  38 21 00 20 */	addi r1, r1, 0x20
/* 805D0190  4E 80 00 20 */	blr 
