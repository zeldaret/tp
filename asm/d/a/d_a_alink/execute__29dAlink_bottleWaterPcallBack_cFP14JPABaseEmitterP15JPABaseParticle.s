lbl_80124A2C:
/* 80124A2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80124A30  7C 08 02 A6 */	mflr r0
/* 80124A34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80124A38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80124A3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80124A40  39 61 00 30 */	addi r11, r1, 0x30
/* 80124A44  48 23 D7 95 */	bl _savegpr_28
/* 80124A48  7C 7C 1B 78 */	mr r28, r3
/* 80124A4C  7C BD 2B 78 */	mr r29, r5
/* 80124A50  C0 25 00 00 */	lfs f1, 0(r5)
/* 80124A54  C3 E5 00 04 */	lfs f31, 4(r5)
/* 80124A58  C0 45 00 08 */	lfs f2, 8(r5)
/* 80124A5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80124A60  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80124A64  40 80 00 08 */	bge lbl_80124A6C
/* 80124A68  D3 FC 00 08 */	stfs f31, 8(r28)
lbl_80124A6C:
/* 80124A6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80124A70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80124A74  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80124A78  C0 03 05 A8 */	lfs f0, 0x5a8(r3)
/* 80124A7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80124A80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80124A84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80124A88  3B E0 00 00 */	li r31, 0
/* 80124A8C  3B C0 00 00 */	li r30, 0
/* 80124A90  38 61 00 08 */	addi r3, r1, 8
/* 80124A94  4B EF 92 29 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80124A98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80124A9C  41 82 00 38 */	beq lbl_80124AD4
/* 80124AA0  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 80124AA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80124AA8  40 80 00 2C */	bge lbl_80124AD4
/* 80124AAC  38 00 00 01 */	li r0, 1
/* 80124AB0  B0 1C 00 04 */	sth r0, 4(r28)
/* 80124AB4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80124AB8  C0 4D 87 50 */	lfs f2, mGroundY__11fopAcM_gc_c(r13)
/* 80124ABC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80124AC0  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80124AC4  D0 5C 00 10 */	stfs f2, 0x10(r28)
/* 80124AC8  D0 3C 00 14 */	stfs f1, 0x14(r28)
/* 80124ACC  3B E0 00 01 */	li r31, 1
/* 80124AD0  3B C0 00 01 */	li r30, 1
lbl_80124AD4:
/* 80124AD4  38 61 00 08 */	addi r3, r1, 8
/* 80124AD8  4B EF 92 AD */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80124ADC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80124AE0  41 82 00 48 */	beq lbl_80124B28
/* 80124AE4  C0 2D 87 58 */	lfs f1, mWaterY__11fopAcM_wt_c(r13)
/* 80124AE8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80124AEC  40 80 00 3C */	bge lbl_80124B28
/* 80124AF0  2C 1F 00 00 */	cmpwi r31, 0
/* 80124AF4  41 82 00 10 */	beq lbl_80124B04
/* 80124AF8  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80124AFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80124B00  40 80 00 28 */	bge lbl_80124B28
lbl_80124B04:
/* 80124B04  38 00 00 01 */	li r0, 1
/* 80124B08  B0 1C 00 04 */	sth r0, 4(r28)
/* 80124B0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80124B10  C0 4D 87 58 */	lfs f2, mWaterY__11fopAcM_wt_c(r13)
/* 80124B14  C0 01 00 08 */	lfs f0, 8(r1)
/* 80124B18  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80124B1C  D0 5C 00 10 */	stfs f2, 0x10(r28)
/* 80124B20  D0 3C 00 14 */	stfs f1, 0x14(r28)
/* 80124B24  3B C0 00 01 */	li r30, 1
lbl_80124B28:
/* 80124B28  2C 1E 00 00 */	cmpwi r30, 0
/* 80124B2C  41 82 00 1C */	beq lbl_80124B48
/* 80124B30  80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 80124B34  60 00 00 08 */	ori r0, r0, 8
/* 80124B38  90 1D 00 7C */	stw r0, 0x7c(r29)
/* 80124B3C  80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 80124B40  60 00 00 02 */	ori r0, r0, 2
/* 80124B44  90 1D 00 7C */	stw r0, 0x7c(r29)
lbl_80124B48:
/* 80124B48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80124B4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80124B50  39 61 00 30 */	addi r11, r1, 0x30
/* 80124B54  48 23 D6 D1 */	bl _restgpr_28
/* 80124B58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80124B5C  7C 08 03 A6 */	mtlr r0
/* 80124B60  38 21 00 40 */	addi r1, r1, 0x40
/* 80124B64  4E 80 00 20 */	blr 
