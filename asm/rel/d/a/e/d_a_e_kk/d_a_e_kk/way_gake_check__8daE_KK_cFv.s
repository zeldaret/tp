lbl_806FB4F4:
/* 806FB4F4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806FB4F8  7C 08 02 A6 */	mflr r0
/* 806FB4FC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806FB500  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 806FB504  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 806FB508  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 806FB50C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 806FB510  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 806FB514  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 806FB518  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 806FB51C  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 806FB520  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 806FB524  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 806FB528  39 61 00 90 */	addi r11, r1, 0x90
/* 806FB52C  4B C6 6C 9C */	b _savegpr_24
/* 806FB530  7C 78 1B 78 */	mr r24, r3
/* 806FB534  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FB538  3B A3 F5 E8 */	addi r29, r3, lit_3792@l
/* 806FB53C  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB540  4B 97 C0 3C */	b __ct__11dBgS_GndChkFv
/* 806FB544  80 18 07 DC */	lwz r0, 0x7dc(r24)
/* 806FB548  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806FB54C  41 82 00 18 */	beq lbl_806FB564
/* 806FB550  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB554  38 80 FF FF */	li r4, -1
/* 806FB558  4B 97 C0 98 */	b __dt__11dBgS_GndChkFv
/* 806FB55C  38 60 00 00 */	li r3, 0
/* 806FB560  48 00 01 20 */	b lbl_806FB680
lbl_806FB564:
/* 806FB564  3B 40 E0 00 */	li r26, -8192
/* 806FB568  3B 20 00 00 */	li r25, 0
/* 806FB56C  3B E0 00 00 */	li r31, 0
/* 806FB570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FB574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FB578  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 806FB57C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806FB580  3B C3 07 68 */	addi r30, r3, calc_mtx@l
/* 806FB584  C3 7D 00 04 */	lfs f27, 4(r29)
/* 806FB588  C3 9D 00 50 */	lfs f28, 0x50(r29)
/* 806FB58C  C3 BD 00 48 */	lfs f29, 0x48(r29)
/* 806FB590  C3 DD 00 54 */	lfs f30, 0x54(r29)
/* 806FB594  C3 FD 00 00 */	lfs f31, 0(r29)
lbl_806FB598:
/* 806FB598  80 7E 00 00 */	lwz r3, 0(r30)
/* 806FB59C  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 806FB5A0  7C 00 D2 14 */	add r0, r0, r26
/* 806FB5A4  7C 04 07 34 */	extsh r4, r0
/* 806FB5A8  4B 91 0E 34 */	b mDoMtx_YrotS__FPA4_fs
/* 806FB5AC  D3 61 00 08 */	stfs f27, 8(r1)
/* 806FB5B0  D3 81 00 0C */	stfs f28, 0xc(r1)
/* 806FB5B4  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 806FB5B8  38 61 00 08 */	addi r3, r1, 8
/* 806FB5BC  7F 78 FA 14 */	add r27, r24, r31
/* 806FB5C0  3B BB 06 B0 */	addi r29, r27, 0x6b0
/* 806FB5C4  7F A4 EB 78 */	mr r4, r29
/* 806FB5C8  4B B7 59 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 806FB5CC  7F A3 EB 78 */	mr r3, r29
/* 806FB5D0  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 806FB5D4  7F A5 EB 78 */	mr r5, r29
/* 806FB5D8  4B C4 BA B8 */	b PSVECAdd
/* 806FB5DC  C0 1B 06 B0 */	lfs f0, 0x6b0(r27)
/* 806FB5E0  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 806FB5E4  C0 1B 06 B4 */	lfs f0, 0x6b4(r27)
/* 806FB5E8  D0 1B 06 D8 */	stfs f0, 0x6d8(r27)
/* 806FB5EC  C0 1B 06 B8 */	lfs f0, 0x6b8(r27)
/* 806FB5F0  D0 1B 06 DC */	stfs f0, 0x6dc(r27)
/* 806FB5F4  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB5F8  38 9B 06 D4 */	addi r4, r27, 0x6d4
/* 806FB5FC  4B B6 C7 2C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806FB600  7F 83 E3 78 */	mr r3, r28
/* 806FB604  38 81 00 14 */	addi r4, r1, 0x14
/* 806FB608  4B 97 8E 98 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806FB60C  D0 3B 06 D8 */	stfs f1, 0x6d8(r27)
/* 806FB610  C0 3B 06 D8 */	lfs f1, 0x6d8(r27)
/* 806FB614  FC 1E 08 00 */	fcmpu cr0, f30, f1
/* 806FB618  40 82 00 20 */	bne lbl_806FB638
/* 806FB61C  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 806FB620  D0 1B 06 D8 */	stfs f0, 0x6d8(r27)
/* 806FB624  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB628  38 80 FF FF */	li r4, -1
/* 806FB62C  4B 97 BF C4 */	b __dt__11dBgS_GndChkFv
/* 806FB630  38 60 00 01 */	li r3, 1
/* 806FB634  48 00 00 4C */	b lbl_806FB680
lbl_806FB638:
/* 806FB638  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 806FB63C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806FB640  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 806FB644  40 81 00 18 */	ble lbl_806FB65C
/* 806FB648  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB64C  38 80 FF FF */	li r4, -1
/* 806FB650  4B 97 BF A0 */	b __dt__11dBgS_GndChkFv
/* 806FB654  38 60 00 01 */	li r3, 1
/* 806FB658  48 00 00 28 */	b lbl_806FB680
lbl_806FB65C:
/* 806FB65C  3B 39 00 01 */	addi r25, r25, 1
/* 806FB660  2C 19 00 03 */	cmpwi r25, 3
/* 806FB664  3B FF 00 0C */	addi r31, r31, 0xc
/* 806FB668  3B 5A 20 00 */	addi r26, r26, 0x2000
/* 806FB66C  41 80 FF 2C */	blt lbl_806FB598
/* 806FB670  38 61 00 14 */	addi r3, r1, 0x14
/* 806FB674  38 80 FF FF */	li r4, -1
/* 806FB678  4B 97 BF 78 */	b __dt__11dBgS_GndChkFv
/* 806FB67C  38 60 00 00 */	li r3, 0
lbl_806FB680:
/* 806FB680  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 806FB684  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 806FB688  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 806FB68C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 806FB690  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 806FB694  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 806FB698  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 806FB69C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 806FB6A0  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 806FB6A4  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 806FB6A8  39 61 00 90 */	addi r11, r1, 0x90
/* 806FB6AC  4B C6 6B 68 */	b _restgpr_24
/* 806FB6B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806FB6B4  7C 08 03 A6 */	mtlr r0
/* 806FB6B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806FB6BC  4E 80 00 20 */	blr 
