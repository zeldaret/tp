lbl_8084A070:
/* 8084A070  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8084A074  7C 08 02 A6 */	mflr r0
/* 8084A078  90 01 00 94 */	stw r0, 0x94(r1)
/* 8084A07C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8084A080  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8084A084  39 61 00 80 */	addi r11, r1, 0x80
/* 8084A088  4B B1 81 51 */	bl _savegpr_28
/* 8084A08C  7C 7C 1B 78 */	mr r28, r3
/* 8084A090  7C 9E 23 78 */	mr r30, r4
/* 8084A094  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 8084A098  3B E3 4B 04 */	addi r31, r3, lit_3929@l /* 0x80854B04@l */
/* 8084A09C  3B A0 00 00 */	li r29, 0
/* 8084A0A0  38 00 00 00 */	li r0, 0
/* 8084A0A4  98 1C 06 E5 */	stb r0, 0x6e5(r28)
/* 8084A0A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8084A0AC  4B 82 EF 49 */	bl __ct__12dBgS_RoofChkFv
/* 8084A0B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8084A0B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8084A0B8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8084A0BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8084A0C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8084A0C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084A0C8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8084A0CC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8084A0D0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084A0D4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8084A0D8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8084A0DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084A0E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084A0E4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8084A0E8  7F C3 F3 78 */	mr r3, r30
/* 8084A0EC  38 81 00 14 */	addi r4, r1, 0x14
/* 8084A0F0  4B 82 B3 AD */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 8084A0F4  FF E0 08 90 */	fmr f31, f1
/* 8084A0F8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8084A0FC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8084A100  41 82 00 98 */	beq lbl_8084A198
/* 8084A104  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 8084A108  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 8084A10C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8084A110  EF FF 00 28 */	fsubs f31, f31, f0
/* 8084A114  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084A118  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8084A11C  40 81 00 0C */	ble lbl_8084A128
/* 8084A120  D0 1C 07 08 */	stfs f0, 0x708(r28)
/* 8084A124  48 00 00 08 */	b lbl_8084A12C
lbl_8084A128:
/* 8084A128  D3 FC 07 08 */	stfs f31, 0x708(r28)
lbl_8084A12C:
/* 8084A12C  7F C3 F3 78 */	mr r3, r30
/* 8084A130  38 81 00 14 */	addi r4, r1, 0x14
/* 8084A134  4B 82 AB 89 */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8084A138  2C 03 00 01 */	cmpwi r3, 1
/* 8084A13C  40 82 00 08 */	bne lbl_8084A144
/* 8084A140  3B A0 00 01 */	li r29, 1
lbl_8084A144:
/* 8084A144  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8084A148  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8084A14C  FC 00 02 10 */	fabs f0, f0
/* 8084A150  FC 20 00 18 */	frsp f1, f0
/* 8084A154  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8084A158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084A15C  40 80 00 40 */	bge lbl_8084A19C
/* 8084A160  7F C3 F3 78 */	mr r3, r30
/* 8084A164  A0 81 00 16 */	lhz r4, 0x16(r1)
/* 8084A168  4B 82 A4 B1 */	bl GetActorPointer__4cBgSCFi
/* 8084A16C  28 03 00 00 */	cmplwi r3, 0
/* 8084A170  41 82 00 2C */	beq lbl_8084A19C
/* 8084A174  A8 03 00 08 */	lha r0, 8(r3)
/* 8084A178  2C 00 00 75 */	cmpwi r0, 0x75
/* 8084A17C  40 82 00 20 */	bne lbl_8084A19C
/* 8084A180  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 8084A184  2C 00 00 01 */	cmpwi r0, 1
/* 8084A188  40 82 00 14 */	bne lbl_8084A19C
/* 8084A18C  38 00 00 01 */	li r0, 1
/* 8084A190  98 1C 06 E5 */	stb r0, 0x6e5(r28)
/* 8084A194  48 00 00 08 */	b lbl_8084A19C
lbl_8084A198:
/* 8084A198  D0 1C 07 08 */	stfs f0, 0x708(r28)
lbl_8084A19C:
/* 8084A19C  2C 1D 00 00 */	cmpwi r29, 0
/* 8084A1A0  40 82 00 38 */	bne lbl_8084A1D8
/* 8084A1A4  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8084A1A8  C0 3C 07 08 */	lfs f1, 0x708(r28)
/* 8084A1AC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8084A1B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8084A1B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084A1B8  4C 41 13 82 */	cror 2, 1, 2
/* 8084A1BC  40 82 00 1C */	bne lbl_8084A1D8
/* 8084A1C0  88 1C 06 E3 */	lbz r0, 0x6e3(r28)
/* 8084A1C4  28 00 00 00 */	cmplwi r0, 0
/* 8084A1C8  40 82 00 18 */	bne lbl_8084A1E0
/* 8084A1CC  38 00 00 01 */	li r0, 1
/* 8084A1D0  98 1C 06 E3 */	stb r0, 0x6e3(r28)
/* 8084A1D4  48 00 00 0C */	b lbl_8084A1E0
lbl_8084A1D8:
/* 8084A1D8  38 00 00 00 */	li r0, 0
/* 8084A1DC  98 1C 06 E3 */	stb r0, 0x6e3(r28)
lbl_8084A1E0:
/* 8084A1E0  38 61 00 14 */	addi r3, r1, 0x14
/* 8084A1E4  38 80 FF FF */	li r4, -1
/* 8084A1E8  4B 82 EE A9 */	bl __dt__12dBgS_RoofChkFv
/* 8084A1EC  FC 20 F8 90 */	fmr f1, f31
/* 8084A1F0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8084A1F4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8084A1F8  39 61 00 80 */	addi r11, r1, 0x80
/* 8084A1FC  4B B1 80 29 */	bl _restgpr_28
/* 8084A200  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8084A204  7C 08 03 A6 */	mtlr r0
/* 8084A208  38 21 00 90 */	addi r1, r1, 0x90
/* 8084A20C  4E 80 00 20 */	blr 
