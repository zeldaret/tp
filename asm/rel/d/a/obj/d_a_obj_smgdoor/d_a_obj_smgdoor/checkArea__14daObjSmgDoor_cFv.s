lbl_80CDC7F8:
/* 80CDC7F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CDC7FC  7C 08 02 A6 */	mflr r0
/* 80CDC800  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CDC804  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CDC808  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CDC80C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDC810  4B 68 59 CC */	b _savegpr_29
/* 80CDC814  7C 7D 1B 78 */	mr r29, r3
/* 80CDC818  3C 60 80 CE */	lis r3, lit_3705@ha
/* 80CDC81C  3B E3 CB F4 */	addi r31, r3, lit_3705@l
/* 80CDC820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC828  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80CDC82C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80CDC830  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CDC834  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80CDC838  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CDC83C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80CDC840  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CDC844  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CDC848  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CDC84C  38 61 00 20 */	addi r3, r1, 0x20
/* 80CDC850  38 81 00 38 */	addi r4, r1, 0x38
/* 80CDC854  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CDC858  4B 58 A2 DC */	b __mi__4cXyzCFRC3Vec
/* 80CDC85C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80CDC860  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80CDC864  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CDC868  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CDC86C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80CDC870  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80CDC874  D0 41 00 08 */	stfs f2, 8(r1)
/* 80CDC878  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CDC87C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CDC880  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CDC884  38 61 00 08 */	addi r3, r1, 8
/* 80CDC888  4B 66 A8 B0 */	b PSVECSquareMag
/* 80CDC88C  FF E0 08 90 */	fmr f31, f1
/* 80CDC890  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CDC894  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80CDC898  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80CDC89C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CDC8A0  7C 64 02 14 */	add r3, r4, r0
/* 80CDC8A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CDC8A8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CDC8AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CDC8B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CDC8B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CDC8B8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80CDC8BC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CDC8C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80CDC8C4  40 81 00 0C */	ble lbl_80CDC8D0
/* 80CDC8C8  38 60 00 00 */	li r3, 0
/* 80CDC8CC  48 00 00 88 */	b lbl_80CDC954
lbl_80CDC8D0:
/* 80CDC8D0  38 61 00 14 */	addi r3, r1, 0x14
/* 80CDC8D4  38 81 00 44 */	addi r4, r1, 0x44
/* 80CDC8D8  4B 58 A6 1C */	b normalize__4cXyzFv
/* 80CDC8DC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80CDC8E0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CDC8E4  EC 41 00 32 */	fmuls f2, f1, f0
/* 80CDC8E8  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80CDC8EC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CDC8F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDC8F4  EC 22 00 2A */	fadds f1, f2, f0
/* 80CDC8F8  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80CDC8FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CDC900  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CDC904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDC908  40 81 00 0C */	ble lbl_80CDC914
/* 80CDC90C  38 60 00 00 */	li r3, 0
/* 80CDC910  48 00 00 44 */	b lbl_80CDC954
lbl_80CDC914:
/* 80CDC914  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80CDC918  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CDC91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDC920  40 81 00 0C */	ble lbl_80CDC92C
/* 80CDC924  38 60 00 00 */	li r3, 0
/* 80CDC928  48 00 00 2C */	b lbl_80CDC954
lbl_80CDC92C:
/* 80CDC92C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80CDC930  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80CDC934  7C 03 00 50 */	subf r0, r3, r0
/* 80CDC938  7C 03 07 34 */	extsh r3, r0
/* 80CDC93C  4B 68 87 94 */	b abs
/* 80CDC940  38 00 50 00 */	li r0, 0x5000
/* 80CDC944  7C 65 FE 70 */	srawi r5, r3, 0x1f
/* 80CDC948  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80CDC94C  7C 00 18 10 */	subfc r0, r0, r3
/* 80CDC950  7C 65 21 14 */	adde r3, r5, r4
lbl_80CDC954:
/* 80CDC954  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CDC958  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CDC95C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDC960  4B 68 58 C8 */	b _restgpr_29
/* 80CDC964  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CDC968  7C 08 03 A6 */	mtlr r0
/* 80CDC96C  38 21 00 70 */	addi r1, r1, 0x70
/* 80CDC970  4E 80 00 20 */	blr 
