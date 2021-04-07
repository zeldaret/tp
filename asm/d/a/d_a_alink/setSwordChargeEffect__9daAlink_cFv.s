lbl_801228F4:
/* 801228F4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801228F8  7C 08 02 A6 */	mflr r0
/* 801228FC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80122900  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80122904  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80122908  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8012290C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80122910  39 61 00 80 */	addi r11, r1, 0x80
/* 80122914  48 23 F8 C1 */	bl _savegpr_27
/* 80122918  7C 7F 1B 78 */	mr r31, r3
/* 8012291C  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 80122920  3B 63 D6 58 */	addi r27, r3, lit_3757@l /* 0x8038D658@l */
/* 80122924  48 03 CA 75 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 80122928  7C 7C 1B 79 */	or. r28, r3, r3
/* 8012292C  41 82 00 0C */	beq lbl_80122938
/* 80122930  C3 DB 24 E0 */	lfs f30, 0x24e0(r27)
/* 80122934  48 00 00 08 */	b lbl_8012293C
lbl_80122938:
/* 80122938  C3 DB 24 D4 */	lfs f30, 0x24d4(r27)
lbl_8012293C:
/* 8012293C  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 80122940  C3 E3 00 08 */	lfs f31, 8(r3)
/* 80122944  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80122948  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8012294C  40 81 01 BC */	ble lbl_80122B08
/* 80122950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80122954  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80122958  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 8012295C  28 00 00 3F */	cmplwi r0, 0x3f
/* 80122960  41 82 00 8C */	beq lbl_801229EC
/* 80122964  7F E3 FB 78 */	mr r3, r31
/* 80122968  38 9F 32 1C */	addi r4, r31, 0x321c
/* 8012296C  38 A0 03 68 */	li r5, 0x368
/* 80122970  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80122974  38 E0 00 00 */	li r7, 0
/* 80122978  4B FF DC 09 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 8012297C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80122980  41 82 00 6C */	beq lbl_801229EC
/* 80122984  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 80122988  38 63 00 24 */	addi r3, r3, 0x24
/* 8012298C  38 9E 00 68 */	addi r4, r30, 0x68
/* 80122990  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80122994  48 15 DE 4D */	bl func_802807E0
/* 80122998  2C 1C 00 00 */	cmpwi r28, 0
/* 8012299C  41 82 00 50 */	beq lbl_801229EC
/* 801229A0  38 7B 45 E4 */	addi r3, r27, 0x45e4
/* 801229A4  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 801229A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801229AC  F0 21 00 38 */	psq_st f1, 56(r1), 0, 0 /* qr0 */
/* 801229B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801229B4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801229B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801229BC  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 801229C0  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
/* 801229C4  38 7B 45 F0 */	addi r3, r27, 0x45f0
/* 801229C8  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 801229CC  C0 23 00 08 */	lfs f1, 8(r3)
/* 801229D0  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 801229D4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801229D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801229DC  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 801229E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801229E4  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 801229E8  D0 3E 00 14 */	stfs f1, 0x14(r30)
lbl_801229EC:
/* 801229EC  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 801229F0  38 63 00 24 */	addi r3, r3, 0x24
/* 801229F4  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 801229F8  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l /* 0x80430D0C@l */
/* 801229FC  38 A1 00 50 */	addi r5, r1, 0x50
/* 80122A00  48 22 44 4D */	bl PSMTXMultVecSR
/* 80122A04  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 80122A08  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80122A0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80122A10  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80122A14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80122A18  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80122A1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80122A20  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 80122A24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80122A28  4C 41 13 82 */	cror 2, 1, 2
/* 80122A2C  40 82 00 08 */	bne lbl_80122A34
/* 80122A30  FF E0 00 90 */	fmr f31, f0
lbl_80122A34:
/* 80122A34  38 61 00 20 */	addi r3, r1, 0x20
/* 80122A38  38 81 00 50 */	addi r4, r1, 0x50
/* 80122A3C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80122A40  EC 20 F8 2A */	fadds f1, f0, f31
/* 80122A44  48 14 41 41 */	bl __ml__4cXyzCFf
/* 80122A48  38 61 00 14 */	addi r3, r1, 0x14
/* 80122A4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80122A50  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80122A54  EC 3E 00 24 */	fdivs f1, f30, f0
/* 80122A58  48 14 41 2D */	bl __ml__4cXyzCFf
/* 80122A5C  38 61 00 08 */	addi r3, r1, 8
/* 80122A60  38 81 00 44 */	addi r4, r1, 0x44
/* 80122A64  38 A1 00 14 */	addi r5, r1, 0x14
/* 80122A68  48 14 40 7D */	bl __pl__4cXyzCFRC3Vec
/* 80122A6C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80122A70  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80122A74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80122A78  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80122A7C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80122A80  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80122A84  7F E3 FB 78 */	mr r3, r31
/* 80122A88  38 9F 32 20 */	addi r4, r31, 0x3220
/* 80122A8C  38 A0 03 6A */	li r5, 0x36a
/* 80122A90  38 C1 00 50 */	addi r6, r1, 0x50
/* 80122A94  38 E0 00 00 */	li r7, 0
/* 80122A98  4B FF DA E9 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122A9C  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 80122AA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80122AA4  4C 41 13 82 */	cror 2, 1, 2
/* 80122AA8  40 82 00 20 */	bne lbl_80122AC8
/* 80122AAC  7F E3 FB 78 */	mr r3, r31
/* 80122AB0  38 9F 32 24 */	addi r4, r31, 0x3224
/* 80122AB4  38 A0 03 6B */	li r5, 0x36b
/* 80122AB8  38 C1 00 50 */	addi r6, r1, 0x50
/* 80122ABC  38 E0 00 00 */	li r7, 0
/* 80122AC0  4B FF DA C1 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122AC4  48 00 00 D0 */	b lbl_80122B94
lbl_80122AC8:
/* 80122AC8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80122ACC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80122AD0  40 82 00 10 */	bne lbl_80122AE0
/* 80122AD4  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 80122AD8  28 00 00 3F */	cmplwi r0, 0x3f
/* 80122ADC  40 82 00 18 */	bne lbl_80122AF4
lbl_80122AE0:
/* 80122AE0  7F E3 FB 78 */	mr r3, r31
/* 80122AE4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020044@ha */
/* 80122AE8  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x00020044@l */
/* 80122AEC  4B F9 C6 01 */	bl seStartSwordCut__9daAlink_cFUl
/* 80122AF0  48 00 00 A4 */	b lbl_80122B94
lbl_80122AF4:
/* 80122AF4  7F E3 FB 78 */	mr r3, r31
/* 80122AF8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020025@ha */
/* 80122AFC  38 84 00 25 */	addi r4, r4, 0x0025 /* 0x00020025@l */
/* 80122B00  4B F9 C5 ED */	bl seStartSwordCut__9daAlink_cFUl
/* 80122B04  48 00 00 90 */	b lbl_80122B94
lbl_80122B08:
/* 80122B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80122B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80122B10  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80122B14  38 63 02 10 */	addi r3, r3, 0x210
/* 80122B18  80 9F 32 1C */	lwz r4, 0x321c(r31)
/* 80122B1C  4B F2 8D FD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80122B20  28 03 00 00 */	cmplwi r3, 0
/* 80122B24  41 82 00 58 */	beq lbl_80122B7C
/* 80122B28  8B 63 00 BB */	lbz r27, 0xbb(r3)
/* 80122B2C  28 1B 00 11 */	cmplwi r27, 0x11
/* 80122B30  40 81 00 44 */	ble lbl_80122B74
/* 80122B34  7F E3 FB 78 */	mr r3, r31
/* 80122B38  38 9F 32 1C */	addi r4, r31, 0x321c
/* 80122B3C  38 A0 03 68 */	li r5, 0x368
/* 80122B40  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80122B44  38 E0 00 00 */	li r7, 0
/* 80122B48  4B FF DA 39 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122B4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80122B50  41 82 00 2C */	beq lbl_80122B7C
/* 80122B54  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 80122B58  38 63 00 24 */	addi r3, r3, 0x24
/* 80122B5C  38 9E 00 68 */	addi r4, r30, 0x68
/* 80122B60  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80122B64  48 15 DC 7D */	bl func_802807E0
/* 80122B68  38 1B FF EF */	addi r0, r27, -17
/* 80122B6C  98 1E 00 BB */	stb r0, 0xbb(r30)
/* 80122B70  48 00 00 0C */	b lbl_80122B7C
lbl_80122B74:
/* 80122B74  38 00 00 00 */	li r0, 0
/* 80122B78  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80122B7C:
/* 80122B7C  7F E3 FB 78 */	mr r3, r31
/* 80122B80  80 9F 32 20 */	lwz r4, 0x3220(r31)
/* 80122B84  4B FF DB F5 */	bl stopDrawParticle__9daAlink_cFUl
/* 80122B88  7F E3 FB 78 */	mr r3, r31
/* 80122B8C  80 9F 32 24 */	lwz r4, 0x3224(r31)
/* 80122B90  4B FF DB E9 */	bl stopDrawParticle__9daAlink_cFUl
lbl_80122B94:
/* 80122B94  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80122B98  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80122B9C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80122BA0  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80122BA4  39 61 00 80 */	addi r11, r1, 0x80
/* 80122BA8  48 23 F6 79 */	bl _restgpr_27
/* 80122BAC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80122BB0  7C 08 03 A6 */	mtlr r0
/* 80122BB4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80122BB8  4E 80 00 20 */	blr 
