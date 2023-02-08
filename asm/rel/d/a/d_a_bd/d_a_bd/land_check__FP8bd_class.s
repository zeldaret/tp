lbl_804D75D0:
/* 804D75D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804D75D4  7C 08 02 A6 */	mflr r0
/* 804D75D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804D75DC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 804D75E0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 804D75E4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 804D75E8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 804D75EC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804D75F0  4B E8 AB CD */	bl _savegpr_21
/* 804D75F4  7C 7A 1B 79 */	or. r26, r3, r3
/* 804D75F8  3C 60 80 4E */	lis r3, lit_3942@ha /* 0x804D9E64@ha */
/* 804D75FC  3B C3 9E 64 */	addi r30, r3, lit_3942@l /* 0x804D9E64@l */
/* 804D7600  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 804D7604  38 63 0C D8 */	addi r3, r3, g_Counter@l /* 0x80430CD8@l */
/* 804D7608  80 63 00 00 */	lwz r3, 0(r3)
/* 804D760C  41 82 00 0C */	beq lbl_804D7618
/* 804D7610  80 1A 00 04 */	lwz r0, 4(r26)
/* 804D7614  48 00 00 08 */	b lbl_804D761C
lbl_804D7618:
/* 804D7618  38 00 FF FF */	li r0, -1
lbl_804D761C:
/* 804D761C  7C 03 02 14 */	add r0, r3, r0
/* 804D7620  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 804D7624  41 82 00 0C */	beq lbl_804D7630
/* 804D7628  38 60 FF FF */	li r3, -1
/* 804D762C  48 00 02 08 */	b lbl_804D7834
lbl_804D7630:
/* 804D7630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D7634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D7638  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 804D763C  38 61 00 08 */	addi r3, r1, 8
/* 804D7640  38 9D 00 E4 */	addi r4, r29, 0xe4
/* 804D7644  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 804D7648  4B D8 F4 ED */	bl __mi__4cXyzCFRC3Vec
/* 804D764C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D7650  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804D7654  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D7658  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D765C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804D7660  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804D7664  4B D9 00 11 */	bl cM_atan2s__Fff
/* 804D7668  7C 7F 1B 78 */	mr r31, r3
/* 804D766C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D7670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D7674  3B 03 4E 00 */	addi r24, r3, 0x4e00
/* 804D7678  7F 03 C3 78 */	mr r3, r24
/* 804D767C  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D7680  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D7684  38 84 00 03 */	addi r4, r4, 3
/* 804D7688  4B E9 13 0D */	bl strcmp
/* 804D768C  2C 03 00 00 */	cmpwi r3, 0
/* 804D7690  40 82 00 18 */	bne lbl_804D76A8
/* 804D7694  3B 80 00 14 */	li r28, 0x14
/* 804D7698  3C 60 80 4E */	lis r3, land_pos103@ha /* 0x804D9F88@ha */
/* 804D769C  38 03 9F 88 */	addi r0, r3, land_pos103@l /* 0x804D9F88@l */
/* 804D76A0  7C 1B 03 78 */	mr r27, r0
/* 804D76A4  48 00 00 30 */	b lbl_804D76D4
lbl_804D76A8:
/* 804D76A8  7F 03 C3 78 */	mr r3, r24
/* 804D76AC  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D76B0  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D76B4  38 84 00 0B */	addi r4, r4, 0xb
/* 804D76B8  4B E9 12 DD */	bl strcmp
/* 804D76BC  2C 03 00 00 */	cmpwi r3, 0
/* 804D76C0  40 82 00 14 */	bne lbl_804D76D4
/* 804D76C4  3B 80 00 14 */	li r28, 0x14
/* 804D76C8  3C 60 80 4E */	lis r3, land_pos127@ha /* 0x804DA0C8@ha */
/* 804D76CC  38 03 A0 C8 */	addi r0, r3, land_pos127@l /* 0x804DA0C8@l */
/* 804D76D0  7C 1B 03 78 */	mr r27, r0
lbl_804D76D4:
/* 804D76D4  38 00 00 00 */	li r0, 0
/* 804D76D8  38 61 00 20 */	addi r3, r1, 0x20
/* 804D76DC  7F 89 03 A6 */	mtctr r28
/* 804D76E0  2C 1C 00 00 */	cmpwi r28, 0
/* 804D76E4  40 81 00 10 */	ble lbl_804D76F4
lbl_804D76E8:
/* 804D76E8  98 03 00 00 */	stb r0, 0(r3)
/* 804D76EC  38 63 00 01 */	addi r3, r3, 1
/* 804D76F0  42 00 FF F8 */	bdnz lbl_804D76E8
lbl_804D76F4:
/* 804D76F4  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 804D76F8  3A C0 00 00 */	li r22, 0
/* 804D76FC  7F F8 07 34 */	extsh r24, r31
/* 804D7700  C3 DE 00 64 */	lfs f30, 0x64(r30)
lbl_804D7704:
/* 804D7704  3A A0 00 00 */	li r21, 0
/* 804D7708  3B 20 00 00 */	li r25, 0
/* 804D770C  3B E1 00 20 */	addi r31, r1, 0x20
/* 804D7710  48 00 01 08 */	b lbl_804D7818
lbl_804D7714:
/* 804D7714  7E FB CA 14 */	add r23, r27, r25
/* 804D7718  80 17 00 00 */	lwz r0, 0(r23)
/* 804D771C  2C 00 00 00 */	cmpwi r0, 0
/* 804D7720  41 80 01 00 */	blt lbl_804D7820
/* 804D7724  88 1F 00 00 */	lbz r0, 0(r31)
/* 804D7728  7C 00 07 75 */	extsb. r0, r0
/* 804D772C  40 82 00 E0 */	bne lbl_804D780C
/* 804D7730  C0 37 00 04 */	lfs f1, 4(r23)
/* 804D7734  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 804D7738  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D773C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804D7740  C0 57 00 0C */	lfs f2, 0xc(r23)
/* 804D7744  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 804D7748  EC 42 00 28 */	fsubs f2, f2, f0
/* 804D774C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804D7750  4B D8 FF 25 */	bl cM_atan2s__Fff
/* 804D7754  7C 18 18 50 */	subf r0, r24, r3
/* 804D7758  7C 00 07 34 */	extsh r0, r0
/* 804D775C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 804D7760  40 80 00 AC */	bge lbl_804D780C
/* 804D7764  2C 00 E0 00 */	cmpwi r0, -8192
/* 804D7768  40 81 00 A4 */	ble lbl_804D780C
/* 804D776C  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 804D7770  C0 17 00 04 */	lfs f0, 4(r23)
/* 804D7774  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D7778  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804D777C  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 804D7780  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 804D7784  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D7788  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D778C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 804D7790  EC 00 00 32 */	fmuls f0, f0, f0
/* 804D7794  EC 21 00 2A */	fadds f1, f1, f0
/* 804D7798  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804D779C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D77A0  40 81 00 0C */	ble lbl_804D77AC
/* 804D77A4  FC 00 08 34 */	frsqrte f0, f1
/* 804D77A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804D77AC:
/* 804D77AC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 804D77B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D77B4  4C 41 13 82 */	cror 2, 1, 2
/* 804D77B8  40 82 00 54 */	bne lbl_804D780C
/* 804D77BC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804D77C0  40 80 00 4C */	bge lbl_804D780C
/* 804D77C4  C0 17 00 04 */	lfs f0, 4(r23)
/* 804D77C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D77CC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804D77D0  C0 17 00 08 */	lfs f0, 8(r23)
/* 804D77D4  EC 01 00 2A */	fadds f0, f1, f0
/* 804D77D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D77DC  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 804D77E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D77E4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804D77E8  38 81 00 14 */	addi r4, r1, 0x14
/* 804D77EC  4B FF FD 2D */	bl pointBgCheck__FP4cXyzP4cXyz
/* 804D77F0  2C 03 00 00 */	cmpwi r3, 0
/* 804D77F4  41 82 00 10 */	beq lbl_804D7804
/* 804D77F8  38 00 00 01 */	li r0, 1
/* 804D77FC  98 1F 00 00 */	stb r0, 0(r31)
/* 804D7800  48 00 00 0C */	b lbl_804D780C
lbl_804D7804:
/* 804D7804  7E A3 AB 78 */	mr r3, r21
/* 804D7808  48 00 00 2C */	b lbl_804D7834
lbl_804D780C:
/* 804D780C  3A B5 00 01 */	addi r21, r21, 1
/* 804D7810  3B FF 00 01 */	addi r31, r31, 1
/* 804D7814  3B 39 00 10 */	addi r25, r25, 0x10
lbl_804D7818:
/* 804D7818  7C 15 E0 00 */	cmpw r21, r28
/* 804D781C  41 80 FE F8 */	blt lbl_804D7714
lbl_804D7820:
/* 804D7820  EF FF F0 2A */	fadds f31, f31, f30
/* 804D7824  3A D6 00 01 */	addi r22, r22, 1
/* 804D7828  2C 16 00 05 */	cmpwi r22, 5
/* 804D782C  41 80 FE D8 */	blt lbl_804D7704
/* 804D7830  38 60 FF FF */	li r3, -1
lbl_804D7834:
/* 804D7834  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 804D7838  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 804D783C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 804D7840  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 804D7844  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804D7848  4B E8 A9 C1 */	bl _restgpr_21
/* 804D784C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804D7850  7C 08 03 A6 */	mtlr r0
/* 804D7854  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804D7858  4E 80 00 20 */	blr 
