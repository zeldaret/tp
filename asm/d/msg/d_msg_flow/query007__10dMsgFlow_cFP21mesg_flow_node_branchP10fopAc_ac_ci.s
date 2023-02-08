lbl_8024B32C:
/* 8024B32C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8024B330  7C 08 02 A6 */	mflr r0
/* 8024B334  90 01 00 64 */	stw r0, 0x64(r1)
/* 8024B338  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8024B33C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8024B340  39 61 00 50 */	addi r11, r1, 0x50
/* 8024B344  48 11 6E 91 */	bl _savegpr_27
/* 8024B348  7C BF 2B 78 */	mr r31, r5
/* 8024B34C  A3 C4 00 04 */	lhz r30, 4(r4)
/* 8024B350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B354  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B358  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8024B35C  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 8024B360  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8024B364  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 8024B368  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8024B36C  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 8024B370  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8024B374  4B F1 40 89 */	bl getAttentionOffsetY__9daPy_py_cFv
/* 8024B378  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8024B37C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024B380  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8024B384  38 61 00 14 */	addi r3, r1, 0x14
/* 8024B388  38 9F 05 50 */	addi r4, r31, 0x550
/* 8024B38C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8024B390  48 01 B7 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8024B394  38 61 00 0C */	addi r3, r1, 0xc
/* 8024B398  38 81 00 14 */	addi r4, r1, 0x14
/* 8024B39C  48 02 64 E5 */	bl __ct__7cSGlobeFRC4cXyz
/* 8024B3A0  80 BD 5D AC */	lwz r5, 0x5dac(r29)
/* 8024B3A4  38 61 00 08 */	addi r3, r1, 8
/* 8024B3A8  38 81 00 12 */	addi r4, r1, 0x12
/* 8024B3AC  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8024B3B0  48 02 5E 79 */	bl __mi__7cSAngleCFs
/* 8024B3B4  AB 81 00 08 */	lha r28, 8(r1)
/* 8024B3B8  88 7F 05 47 */	lbz r3, 0x547(r31)
/* 8024B3BC  7C 7B 1B 78 */	mr r27, r3
/* 8024B3C0  4B EF FC 51 */	bl getDistTable__12dAttention_cFi
/* 8024B3C4  C3 E3 00 04 */	lfs f31, 4(r3)
/* 8024B3C8  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8024B3CC  41 82 00 1C */	beq lbl_8024B3E8
/* 8024B3D0  C8 22 B3 90 */	lfd f1, lit_5116(r2)
/* 8024B3D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024B3D8  3C 00 43 30 */	lis r0, 0x4330
/* 8024B3DC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8024B3E0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8024B3E4  EF E0 08 28 */	fsubs f31, f0, f1
lbl_8024B3E8:
/* 8024B3E8  7F 63 DB 78 */	mr r3, r27
/* 8024B3EC  4B EF FC 25 */	bl getDistTable__12dAttention_cFi
/* 8024B3F0  7C 7D 1B 78 */	mr r29, r3
/* 8024B3F4  7F 63 DB 78 */	mr r3, r27
/* 8024B3F8  4B EF FC 19 */	bl getDistTable__12dAttention_cFi
/* 8024B3FC  7C 7E 1B 78 */	mr r30, r3
/* 8024B400  7F 63 DB 78 */	mr r3, r27
/* 8024B404  4B EF FC 0D */	bl getDistTable__12dAttention_cFi
/* 8024B408  7C 67 1B 78 */	mr r7, r3
/* 8024B40C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B414  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 8024B418  38 81 00 20 */	addi r4, r1, 0x20
/* 8024B41C  7F 85 E3 78 */	mr r5, r28
/* 8024B420  38 DF 05 50 */	addi r6, r31, 0x550
/* 8024B424  FC 20 F8 90 */	fmr f1, f31
/* 8024B428  C0 47 00 08 */	lfs f2, 8(r7)
/* 8024B42C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 8024B430  C0 9D 00 10 */	lfs f4, 0x10(r29)
/* 8024B434  4B E2 84 05 */	bl checkDistance__12dAttention_cFP4cXyzsP4cXyzffff
/* 8024B438  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8024B43C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8024B440  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8024B444  39 61 00 50 */	addi r11, r1, 0x50
/* 8024B448  48 11 6D D9 */	bl _restgpr_27
/* 8024B44C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8024B450  7C 08 03 A6 */	mtlr r0
/* 8024B454  38 21 00 60 */	addi r1, r1, 0x60
/* 8024B458  4E 80 00 20 */	blr 
