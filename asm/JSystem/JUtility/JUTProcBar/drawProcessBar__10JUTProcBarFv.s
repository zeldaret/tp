lbl_802E5E3C:
/* 802E5E3C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 802E5E40  7C 08 02 A6 */	mflr r0
/* 802E5E44  90 01 01 74 */	stw r0, 0x174(r1)
/* 802E5E48  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 802E5E4C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 802E5E50  39 61 01 60 */	addi r11, r1, 0x160
/* 802E5E54  48 07 C3 69 */	bl _savegpr_21
/* 802E5E58  7C 7F 1B 78 */	mr r31, r3
/* 802E5E5C  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 802E5E60  28 00 00 00 */	cmplwi r0, 0
/* 802E5E64  41 82 0E B8 */	beq lbl_802E6D1C
/* 802E5E68  3B A0 41 1A */	li r29, 0x411a
/* 802E5E6C  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E5E70  28 03 00 00 */	cmplwi r3, 0
/* 802E5E74  41 82 00 1C */	beq lbl_802E5E90
/* 802E5E78  80 63 00 04 */	lwz r3, 4(r3)
/* 802E5E7C  80 03 00 00 */	lwz r0, 0(r3)
/* 802E5E80  54 00 F7 3E */	rlwinm r0, r0, 0x1e, 0x1c, 0x1f
/* 802E5E84  2C 00 00 01 */	cmpwi r0, 1
/* 802E5E88  40 82 00 08 */	bne lbl_802E5E90
/* 802E5E8C  3B A0 4E 20 */	li r29, 0x4e20
lbl_802E5E90:
/* 802E5E90  88 0D 8F E0 */	lbz r0, data_80451560(r13)
/* 802E5E94  7C 00 07 75 */	extsb. r0, r0
/* 802E5E98  40 82 00 14 */	bne lbl_802E5EAC
/* 802E5E9C  38 00 00 00 */	li r0, 0
/* 802E5EA0  90 0D 8F DC */	stw r0, cnt(r13)
/* 802E5EA4  38 00 00 01 */	li r0, 1
/* 802E5EA8  98 0D 8F E0 */	stb r0, data_80451560(r13)
lbl_802E5EAC:
/* 802E5EAC  7F E3 FB 78 */	mr r3, r31
/* 802E5EB0  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 802E5EB4  38 AD 83 80 */	la r5, oneFrameRate(r13) /* 80450900-_SDA_BASE_ */
/* 802E5EB8  C0 22 C7 10 */	lfs f1, lit_2580(r2)
/* 802E5EBC  C0 42 C6 DC */	lfs f2, lit_2259(r2)
/* 802E5EC0  38 CD 8F DC */	la r6, cnt(r13) /* 8045155C-_SDA_BASE_ */
/* 802E5EC4  4B FF FE 01 */	bl adjustMeterLength__10JUTProcBarFUlPfffPi
/* 802E5EC8  C0 22 C6 F0 */	lfs f1, lit_2308(r2)
/* 802E5ECC  C0 0D 83 80 */	lfs f0, oneFrameRate(r13)
/* 802E5ED0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802E5ED4  FC 00 00 1E */	fctiwz f0, f0
/* 802E5ED8  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 802E5EDC  83 81 00 EC */	lwz r28, 0xec(r1)
/* 802E5EE0  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E5EE4  54 1B 18 38 */	slwi r27, r0, 3
/* 802E5EE8  54 1A 08 3C */	slwi r26, r0, 1
/* 802E5EEC  1F 20 00 0A */	mulli r25, r0, 0xa
/* 802E5EF0  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E5EF4  7C 60 E2 14 */	add r3, r0, r28
/* 802E5EF8  38 03 FF FC */	addi r0, r3, -4
/* 802E5EFC  7F 00 E3 D6 */	divw r24, r0, r28
/* 802E5F00  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802E5F04  38 03 00 01 */	addi r0, r3, 1
/* 802E5F08  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802E5F0C  28 00 00 10 */	cmplwi r0, 0x10
/* 802E5F10  40 80 00 14 */	bge lbl_802E5F24
/* 802E5F14  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E5F18  80 1F 00 08 */	lwz r0, 8(r31)
/* 802E5F1C  7C 03 00 40 */	cmplw r3, r0
/* 802E5F20  41 80 00 14 */	blt lbl_802E5F34
lbl_802E5F24:
/* 802E5F24  80 1F 00 04 */	lwz r0, 4(r31)
/* 802E5F28  90 1F 00 08 */	stw r0, 8(r31)
/* 802E5F2C  38 00 00 00 */	li r0, 0
/* 802E5F30  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_802E5F34:
/* 802E5F34  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802E5F38  38 03 00 01 */	addi r0, r3, 1
/* 802E5F3C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802E5F40  28 00 00 10 */	cmplwi r0, 0x10
/* 802E5F44  40 80 00 14 */	bge lbl_802E5F58
/* 802E5F48  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802E5F4C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802E5F50  7C 03 00 40 */	cmplw r3, r0
/* 802E5F54  41 80 00 14 */	blt lbl_802E5F68
lbl_802E5F58:
/* 802E5F58  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E5F5C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802E5F60  38 00 00 00 */	li r0, 0
/* 802E5F64  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_802E5F68:
/* 802E5F68  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802E5F6C  38 03 00 01 */	addi r0, r3, 1
/* 802E5F70  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802E5F74  28 00 00 10 */	cmplwi r0, 0x10
/* 802E5F78  40 80 00 14 */	bge lbl_802E5F8C
/* 802E5F7C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802E5F80  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802E5F84  7C 03 00 40 */	cmplw r3, r0
/* 802E5F88  41 80 00 14 */	blt lbl_802E5F9C
lbl_802E5F8C:
/* 802E5F8C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802E5F90  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802E5F94  38 00 00 00 */	li r0, 0
/* 802E5F98  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_802E5F9C:
/* 802E5F9C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802E5FA0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802E5FA4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E5FA8  7F C3 00 50 */	subf r30, r3, r0
/* 802E5FAC  7E E4 F0 50 */	subf r23, r4, r30
/* 802E5FB0  38 00 00 00 */	li r0, 0
/* 802E5FB4  98 01 00 E0 */	stb r0, 0xe0(r1)
/* 802E5FB8  98 01 00 E1 */	stb r0, 0xe1(r1)
/* 802E5FBC  38 00 00 32 */	li r0, 0x32
/* 802E5FC0  98 01 00 E2 */	stb r0, 0xe2(r1)
/* 802E5FC4  38 00 00 C8 */	li r0, 0xc8
/* 802E5FC8  98 01 00 E3 */	stb r0, 0xe3(r1)
/* 802E5FCC  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 802E5FD0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802E5FD4  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E5FD8  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E5FDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5FE0  90 01 00 EC */	stw r0, 0xec(r1)
/* 802E5FE4  3C 60 43 30 */	lis r3, 0x4330
/* 802E5FE8  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 802E5FEC  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802E5FF0  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E5FF4  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 802E5FF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E5FFC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802E6000  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 802E6004  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 802E6008  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E600C  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E6010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6014  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802E6018  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 802E601C  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802E6020  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E6024  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 802E6028  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E602C  90 61 01 00 */	stw r3, 0x100(r1)
/* 802E6030  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 802E6034  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6038  38 61 00 E4 */	addi r3, r1, 0xe4
/* 802E603C  48 00 3A 89 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6040  38 00 00 32 */	li r0, 0x32
/* 802E6044  98 01 00 D8 */	stb r0, 0xd8(r1)
/* 802E6048  98 01 00 D9 */	stb r0, 0xd9(r1)
/* 802E604C  38 00 00 96 */	li r0, 0x96
/* 802E6050  98 01 00 DA */	stb r0, 0xda(r1)
/* 802E6054  38 00 00 FF */	li r0, 0xff
/* 802E6058  98 01 00 DB */	stb r0, 0xdb(r1)
/* 802E605C  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 802E6060  90 01 00 DC */	stw r0, 0xdc(r1)
/* 802E6064  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6068  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E606C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6070  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802E6074  3C 60 43 30 */	lis r3, 0x4330
/* 802E6078  90 61 01 08 */	stw r3, 0x108(r1)
/* 802E607C  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802E6080  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6084  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 802E6088  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E608C  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6090  90 61 01 10 */	stw r3, 0x110(r1)
/* 802E6094  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6098  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E609C  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E60A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E60A4  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E60A8  90 61 01 18 */	stw r3, 0x118(r1)
/* 802E60AC  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E60B0  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E60B4  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 802E60B8  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E60BC  90 61 01 20 */	stw r3, 0x120(r1)
/* 802E60C0  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E60C4  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E60C8  38 61 00 DC */	addi r3, r1, 0xdc
/* 802E60CC  38 80 00 06 */	li r4, 6
/* 802E60D0  48 00 3A CD */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 802E60D4  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 802E60D8  7C 00 C0 00 */	cmpw r0, r24
/* 802E60DC  40 81 00 90 */	ble lbl_802E616C
/* 802E60E0  38 00 00 FA */	li r0, 0xfa
/* 802E60E4  98 01 00 D0 */	stb r0, 0xd0(r1)
/* 802E60E8  38 00 00 00 */	li r0, 0
/* 802E60EC  98 01 00 D1 */	stb r0, 0xd1(r1)
/* 802E60F0  98 01 00 D2 */	stb r0, 0xd2(r1)
/* 802E60F4  38 00 00 C8 */	li r0, 0xc8
/* 802E60F8  98 01 00 D3 */	stb r0, 0xd3(r1)
/* 802E60FC  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 802E6100  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802E6104  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6108  C8 62 C6 E8 */	lfd f3, lit_2281(r2)
/* 802E610C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6110  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6114  3C 80 43 30 */	lis r4, 0x4330
/* 802E6118  90 81 01 20 */	stw r4, 0x120(r1)
/* 802E611C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6120  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E6124  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 802E6128  38 1B 00 01 */	addi r0, r27, 1
/* 802E612C  7C 03 02 14 */	add r0, r3, r0
/* 802E6130  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6134  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6138  90 81 01 18 */	stw r4, 0x118(r1)
/* 802E613C  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6140  EC 40 18 28 */	fsubs f2, f0, f3
/* 802E6144  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E6148  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E614C  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6150  90 81 01 10 */	stw r4, 0x110(r1)
/* 802E6154  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6158  EC 60 18 28 */	fsubs f3, f0, f3
/* 802E615C  C0 82 C7 10 */	lfs f4, lit_2580(r2)
/* 802E6160  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802E6164  48 00 39 61 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6168  48 00 00 94 */	b lbl_802E61FC
lbl_802E616C:
/* 802E616C  38 00 00 00 */	li r0, 0
/* 802E6170  98 01 00 C8 */	stb r0, 0xc8(r1)
/* 802E6174  38 00 00 FA */	li r0, 0xfa
/* 802E6178  98 01 00 C9 */	stb r0, 0xc9(r1)
/* 802E617C  98 01 00 CA */	stb r0, 0xca(r1)
/* 802E6180  38 00 00 C8 */	li r0, 0xc8
/* 802E6184  98 01 00 CB */	stb r0, 0xcb(r1)
/* 802E6188  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 802E618C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 802E6190  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6194  C8 62 C6 E8 */	lfd f3, lit_2281(r2)
/* 802E6198  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E619C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E61A0  3C 80 43 30 */	lis r4, 0x4330
/* 802E61A4  90 81 01 20 */	stw r4, 0x120(r1)
/* 802E61A8  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E61AC  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E61B0  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 802E61B4  38 1B 00 01 */	addi r0, r27, 1
/* 802E61B8  7C 03 02 14 */	add r0, r3, r0
/* 802E61BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E61C0  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E61C4  90 81 01 18 */	stw r4, 0x118(r1)
/* 802E61C8  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E61CC  EC 40 18 28 */	fsubs f2, f0, f3
/* 802E61D0  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 802E61D4  7C 60 E1 D6 */	mullw r3, r0, r28
/* 802E61D8  38 03 00 02 */	addi r0, r3, 2
/* 802E61DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E61E0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E61E4  90 81 01 10 */	stw r4, 0x110(r1)
/* 802E61E8  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E61EC  EC 60 18 28 */	fsubs f3, f0, f3
/* 802E61F0  C0 82 C7 10 */	lfs f4, lit_2580(r2)
/* 802E61F4  38 61 00 CC */	addi r3, r1, 0xcc
/* 802E61F8  48 00 38 CD */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_802E61FC:
/* 802E61FC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 802E6200  7C 00 E1 D6 */	mullw r0, r0, r28
/* 802E6204  7C 80 EB 96 */	divwu r4, r0, r29
/* 802E6208  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E620C  7C 04 00 00 */	cmpw r4, r0
/* 802E6210  40 81 00 88 */	ble lbl_802E6298
/* 802E6214  38 60 00 FF */	li r3, 0xff
/* 802E6218  98 61 00 C0 */	stb r3, 0xc0(r1)
/* 802E621C  38 00 00 64 */	li r0, 0x64
/* 802E6220  98 01 00 C1 */	stb r0, 0xc1(r1)
/* 802E6224  38 00 00 00 */	li r0, 0
/* 802E6228  98 01 00 C2 */	stb r0, 0xc2(r1)
/* 802E622C  98 61 00 C3 */	stb r3, 0xc3(r1)
/* 802E6230  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 802E6234  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802E6238  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E623C  C8 62 C6 E8 */	lfd f3, lit_2281(r2)
/* 802E6240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6244  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6248  3C 60 43 30 */	lis r3, 0x4330
/* 802E624C  90 61 01 20 */	stw r3, 0x120(r1)
/* 802E6250  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6254  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E6258  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 802E625C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6260  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6264  90 61 01 18 */	stw r3, 0x118(r1)
/* 802E6268  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E626C  EC 40 18 28 */	fsubs f2, f0, f3
/* 802E6270  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E6274  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6278  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E627C  90 61 01 10 */	stw r3, 0x110(r1)
/* 802E6280  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6284  EC 60 18 28 */	fsubs f3, f0, f3
/* 802E6288  C0 82 C7 10 */	lfs f4, lit_2580(r2)
/* 802E628C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 802E6290  48 00 38 35 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6294  48 00 00 80 */	b lbl_802E6314
lbl_802E6298:
/* 802E6298  38 00 00 32 */	li r0, 0x32
/* 802E629C  98 01 00 B8 */	stb r0, 0xb8(r1)
/* 802E62A0  38 60 00 FF */	li r3, 0xff
/* 802E62A4  98 61 00 B9 */	stb r3, 0xb9(r1)
/* 802E62A8  38 00 00 00 */	li r0, 0
/* 802E62AC  98 01 00 BA */	stb r0, 0xba(r1)
/* 802E62B0  98 61 00 BB */	stb r3, 0xbb(r1)
/* 802E62B4  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 802E62B8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 802E62BC  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E62C0  C8 62 C6 E8 */	lfd f3, lit_2281(r2)
/* 802E62C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E62C8  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E62CC  3C 60 43 30 */	lis r3, 0x4330
/* 802E62D0  90 61 01 20 */	stw r3, 0x120(r1)
/* 802E62D4  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E62D8  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E62DC  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 802E62E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E62E4  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E62E8  90 61 01 18 */	stw r3, 0x118(r1)
/* 802E62EC  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E62F0  EC 40 18 28 */	fsubs f2, f0, f3
/* 802E62F4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802E62F8  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E62FC  90 61 01 10 */	stw r3, 0x110(r1)
/* 802E6300  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6304  EC 60 18 28 */	fsubs f3, f0, f3
/* 802E6308  C0 82 C7 10 */	lfs f4, lit_2580(r2)
/* 802E630C  38 61 00 BC */	addi r3, r1, 0xbc
/* 802E6310  48 00 37 B5 */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_802E6314:
/* 802E6314  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 802E6318  2C 00 00 00 */	cmpwi r0, 0
/* 802E631C  40 82 01 90 */	bne lbl_802E64AC
/* 802E6320  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 802E6324  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E6328  7E E3 02 14 */	add r23, r3, r0
/* 802E632C  38 00 00 64 */	li r0, 0x64
/* 802E6330  98 01 00 A8 */	stb r0, 0xa8(r1)
/* 802E6334  38 60 00 FF */	li r3, 0xff
/* 802E6338  98 61 00 A9 */	stb r3, 0xa9(r1)
/* 802E633C  38 00 00 78 */	li r0, 0x78
/* 802E6340  98 01 00 AA */	stb r0, 0xaa(r1)
/* 802E6344  98 61 00 AB */	stb r3, 0xab(r1)
/* 802E6348  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 802E634C  90 01 00 AC */	stw r0, 0xac(r1)
/* 802E6350  38 00 00 50 */	li r0, 0x50
/* 802E6354  98 01 00 B0 */	stb r0, 0xb0(r1)
/* 802E6358  98 61 00 B1 */	stb r3, 0xb1(r1)
/* 802E635C  98 01 00 B2 */	stb r0, 0xb2(r1)
/* 802E6360  98 61 00 B3 */	stb r3, 0xb3(r1)
/* 802E6364  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 802E6368  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802E636C  38 01 00 B4 */	addi r0, r1, 0xb4
/* 802E6370  90 01 00 08 */	stw r0, 8(r1)
/* 802E6374  38 01 00 AC */	addi r0, r1, 0xac
/* 802E6378  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E637C  7F E3 FB 78 */	mr r3, r31
/* 802E6380  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 802E6384  38 84 00 01 */	addi r4, r4, 1
/* 802E6388  7E E5 BB 78 */	mr r5, r23
/* 802E638C  7F 46 D3 78 */	mr r6, r26
/* 802E6390  7F 87 E3 78 */	mr r7, r28
/* 802E6394  7F A8 EB 78 */	mr r8, r29
/* 802E6398  81 3F 00 18 */	lwz r9, 0x18(r31)
/* 802E639C  81 5F 00 1C */	lwz r10, 0x1c(r31)
/* 802E63A0  4B FF F7 91 */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
/* 802E63A4  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E63A8  54 00 08 3C */	slwi r0, r0, 1
/* 802E63AC  7E F7 02 14 */	add r23, r23, r0
/* 802E63B0  38 60 00 FF */	li r3, 0xff
/* 802E63B4  98 61 00 98 */	stb r3, 0x98(r1)
/* 802E63B8  38 00 00 64 */	li r0, 0x64
/* 802E63BC  98 01 00 99 */	stb r0, 0x99(r1)
/* 802E63C0  98 01 00 9A */	stb r0, 0x9a(r1)
/* 802E63C4  98 61 00 9B */	stb r3, 0x9b(r1)
/* 802E63C8  80 01 00 98 */	lwz r0, 0x98(r1)
/* 802E63CC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 802E63D0  98 61 00 A0 */	stb r3, 0xa0(r1)
/* 802E63D4  38 00 00 50 */	li r0, 0x50
/* 802E63D8  98 01 00 A1 */	stb r0, 0xa1(r1)
/* 802E63DC  98 01 00 A2 */	stb r0, 0xa2(r1)
/* 802E63E0  98 61 00 A3 */	stb r3, 0xa3(r1)
/* 802E63E4  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 802E63E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802E63EC  38 01 00 A4 */	addi r0, r1, 0xa4
/* 802E63F0  90 01 00 08 */	stw r0, 8(r1)
/* 802E63F4  38 01 00 9C */	addi r0, r1, 0x9c
/* 802E63F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E63FC  7F E3 FB 78 */	mr r3, r31
/* 802E6400  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 802E6404  38 84 00 01 */	addi r4, r4, 1
/* 802E6408  7E E5 BB 78 */	mr r5, r23
/* 802E640C  7F 46 D3 78 */	mr r6, r26
/* 802E6410  7F 87 E3 78 */	mr r7, r28
/* 802E6414  7F A8 EB 78 */	mr r8, r29
/* 802E6418  81 3F 00 2C */	lwz r9, 0x2c(r31)
/* 802E641C  81 5F 00 30 */	lwz r10, 0x30(r31)
/* 802E6420  4B FF F7 11 */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
/* 802E6424  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E6428  54 00 08 3C */	slwi r0, r0, 1
/* 802E642C  7E F7 02 14 */	add r23, r23, r0
/* 802E6430  38 00 00 C8 */	li r0, 0xc8
/* 802E6434  98 01 00 88 */	stb r0, 0x88(r1)
/* 802E6438  98 01 00 89 */	stb r0, 0x89(r1)
/* 802E643C  98 01 00 8A */	stb r0, 0x8a(r1)
/* 802E6440  38 60 00 FF */	li r3, 0xff
/* 802E6444  98 61 00 8B */	stb r3, 0x8b(r1)
/* 802E6448  80 01 00 88 */	lwz r0, 0x88(r1)
/* 802E644C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802E6450  38 00 00 B4 */	li r0, 0xb4
/* 802E6454  98 01 00 90 */	stb r0, 0x90(r1)
/* 802E6458  98 01 00 91 */	stb r0, 0x91(r1)
/* 802E645C  38 00 00 A0 */	li r0, 0xa0
/* 802E6460  98 01 00 92 */	stb r0, 0x92(r1)
/* 802E6464  98 61 00 93 */	stb r3, 0x93(r1)
/* 802E6468  80 01 00 90 */	lwz r0, 0x90(r1)
/* 802E646C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802E6470  38 01 00 94 */	addi r0, r1, 0x94
/* 802E6474  90 01 00 08 */	stw r0, 8(r1)
/* 802E6478  38 01 00 8C */	addi r0, r1, 0x8c
/* 802E647C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6480  7F E3 FB 78 */	mr r3, r31
/* 802E6484  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 802E6488  38 84 00 01 */	addi r4, r4, 1
/* 802E648C  7E E5 BB 78 */	mr r5, r23
/* 802E6490  7F 46 D3 78 */	mr r6, r26
/* 802E6494  7F 87 E3 78 */	mr r7, r28
/* 802E6498  7F A8 EB 78 */	mr r8, r29
/* 802E649C  81 3F 00 04 */	lwz r9, 4(r31)
/* 802E64A0  81 5F 00 08 */	lwz r10, 8(r31)
/* 802E64A4  4B FF F6 8D */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
/* 802E64A8  48 00 02 2C */	b lbl_802E66D4
lbl_802E64AC:
/* 802E64AC  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 802E64B0  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E64B4  7E C3 02 14 */	add r22, r3, r0
/* 802E64B8  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 802E64BC  3A A3 00 01 */	addi r21, r3, 1
/* 802E64C0  38 80 00 50 */	li r4, 0x50
/* 802E64C4  98 81 00 78 */	stb r4, 0x78(r1)
/* 802E64C8  38 60 00 FF */	li r3, 0xff
/* 802E64CC  98 61 00 79 */	stb r3, 0x79(r1)
/* 802E64D0  98 81 00 7A */	stb r4, 0x7a(r1)
/* 802E64D4  98 61 00 7B */	stb r3, 0x7b(r1)
/* 802E64D8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 802E64DC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 802E64E0  98 81 00 80 */	stb r4, 0x80(r1)
/* 802E64E4  98 61 00 81 */	stb r3, 0x81(r1)
/* 802E64E8  98 81 00 82 */	stb r4, 0x82(r1)
/* 802E64EC  98 61 00 83 */	stb r3, 0x83(r1)
/* 802E64F0  80 01 00 80 */	lwz r0, 0x80(r1)
/* 802E64F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 802E64F8  38 01 00 84 */	addi r0, r1, 0x84
/* 802E64FC  90 01 00 08 */	stw r0, 8(r1)
/* 802E6500  38 01 00 7C */	addi r0, r1, 0x7c
/* 802E6504  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6508  7F E3 FB 78 */	mr r3, r31
/* 802E650C  7E A4 AB 78 */	mr r4, r21
/* 802E6510  7E C5 B3 78 */	mr r5, r22
/* 802E6514  7F 46 D3 78 */	mr r6, r26
/* 802E6518  7F 87 E3 78 */	mr r7, r28
/* 802E651C  7F A8 EB 78 */	mr r8, r29
/* 802E6520  7F C9 F3 78 */	mr r9, r30
/* 802E6524  39 40 FF FF */	li r10, -1
/* 802E6528  4B FF F6 09 */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
/* 802E652C  38 60 00 00 */	li r3, 0
/* 802E6530  98 61 00 70 */	stb r3, 0x70(r1)
/* 802E6534  38 00 00 FF */	li r0, 0xff
/* 802E6538  98 01 00 71 */	stb r0, 0x71(r1)
/* 802E653C  98 61 00 72 */	stb r3, 0x72(r1)
/* 802E6540  98 01 00 73 */	stb r0, 0x73(r1)
/* 802E6544  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802E6548  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E654C  7C 1E E1 D6 */	mullw r0, r30, r28
/* 802E6550  7C 00 EB 96 */	divwu r0, r0, r29
/* 802E6554  7C 15 02 14 */	add r0, r21, r0
/* 802E6558  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E655C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6560  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6564  3C 60 43 30 */	lis r3, 0x4330
/* 802E6568  90 61 01 20 */	stw r3, 0x120(r1)
/* 802E656C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6570  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6574  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 802E6578  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E657C  90 61 01 18 */	stw r3, 0x118(r1)
/* 802E6580  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6584  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6588  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 802E658C  7C 00 E1 D6 */	mullw r0, r0, r28
/* 802E6590  7C 00 EB 96 */	divwu r0, r0, r29
/* 802E6594  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6598  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E659C  90 61 01 10 */	stw r3, 0x110(r1)
/* 802E65A0  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E65A4  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E65A8  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 802E65AC  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802E65B0  90 61 01 08 */	stw r3, 0x108(r1)
/* 802E65B4  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802E65B8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E65BC  38 61 00 74 */	addi r3, r1, 0x74
/* 802E65C0  48 00 35 05 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E65C4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E65C8  7C 00 E1 D6 */	mullw r0, r0, r28
/* 802E65CC  7C 00 EB 96 */	divwu r0, r0, r29
/* 802E65D0  7F D5 02 14 */	add r30, r21, r0
/* 802E65D4  7C 17 E1 D6 */	mullw r0, r23, r28
/* 802E65D8  7C 00 EB 96 */	divwu r0, r0, r29
/* 802E65DC  7E B5 02 14 */	add r21, r21, r0
/* 802E65E0  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E65E4  54 00 08 3C */	slwi r0, r0, 1
/* 802E65E8  7E D6 02 14 */	add r22, r22, r0
/* 802E65EC  38 80 00 FF */	li r4, 0xff
/* 802E65F0  98 81 00 60 */	stb r4, 0x60(r1)
/* 802E65F4  38 60 00 50 */	li r3, 0x50
/* 802E65F8  98 61 00 61 */	stb r3, 0x61(r1)
/* 802E65FC  98 61 00 62 */	stb r3, 0x62(r1)
/* 802E6600  98 81 00 63 */	stb r4, 0x63(r1)
/* 802E6604  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802E6608  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E660C  98 81 00 68 */	stb r4, 0x68(r1)
/* 802E6610  98 61 00 69 */	stb r3, 0x69(r1)
/* 802E6614  98 61 00 6A */	stb r3, 0x6a(r1)
/* 802E6618  98 81 00 6B */	stb r4, 0x6b(r1)
/* 802E661C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802E6620  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E6624  38 01 00 6C */	addi r0, r1, 0x6c
/* 802E6628  90 01 00 08 */	stw r0, 8(r1)
/* 802E662C  38 01 00 64 */	addi r0, r1, 0x64
/* 802E6630  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6634  7F E3 FB 78 */	mr r3, r31
/* 802E6638  7E A4 AB 78 */	mr r4, r21
/* 802E663C  7E C5 B3 78 */	mr r5, r22
/* 802E6640  7F 46 D3 78 */	mr r6, r26
/* 802E6644  7F 87 E3 78 */	mr r7, r28
/* 802E6648  7F A8 EB 78 */	mr r8, r29
/* 802E664C  81 3F 00 2C */	lwz r9, 0x2c(r31)
/* 802E6650  39 40 FF FF */	li r10, -1
/* 802E6654  4B FF F4 DD */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
/* 802E6658  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 802E665C  54 00 08 3C */	slwi r0, r0, 1
/* 802E6660  7E D6 02 14 */	add r22, r22, r0
/* 802E6664  38 A0 00 B4 */	li r5, 0xb4
/* 802E6668  98 A1 00 50 */	stb r5, 0x50(r1)
/* 802E666C  98 A1 00 51 */	stb r5, 0x51(r1)
/* 802E6670  38 80 00 A0 */	li r4, 0xa0
/* 802E6674  98 81 00 52 */	stb r4, 0x52(r1)
/* 802E6678  38 60 00 FF */	li r3, 0xff
/* 802E667C  98 61 00 53 */	stb r3, 0x53(r1)
/* 802E6680  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802E6684  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E6688  98 A1 00 58 */	stb r5, 0x58(r1)
/* 802E668C  98 A1 00 59 */	stb r5, 0x59(r1)
/* 802E6690  98 81 00 5A */	stb r4, 0x5a(r1)
/* 802E6694  98 61 00 5B */	stb r3, 0x5b(r1)
/* 802E6698  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802E669C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802E66A0  38 01 00 5C */	addi r0, r1, 0x5c
/* 802E66A4  90 01 00 08 */	stw r0, 8(r1)
/* 802E66A8  38 01 00 54 */	addi r0, r1, 0x54
/* 802E66AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E66B0  7F E3 FB 78 */	mr r3, r31
/* 802E66B4  7F C4 F3 78 */	mr r4, r30
/* 802E66B8  7E C5 B3 78 */	mr r5, r22
/* 802E66BC  7F 46 D3 78 */	mr r6, r26
/* 802E66C0  7F 87 E3 78 */	mr r7, r28
/* 802E66C4  7F A8 EB 78 */	mr r8, r29
/* 802E66C8  81 3F 00 04 */	lwz r9, 4(r31)
/* 802E66CC  39 40 FF FF */	li r10, -1
/* 802E66D0  4B FF F4 61 */	bl bar_subroutine__10JUTProcBarFiiiiiiiQ28JUtility6TColorQ28JUtility6TColor
lbl_802E66D4:
/* 802E66D4  3A A0 00 01 */	li r21, 1
/* 802E66D8  CB E2 C6 E8 */	lfd f31, lit_2281(r2)
/* 802E66DC  3E C0 43 30 */	lis r22, 0x4330
/* 802E66E0  48 00 00 DC */	b lbl_802E67BC
lbl_802E66E4:
/* 802E66E4  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E66E8  7C 75 E1 D6 */	mullw r3, r21, r28
/* 802E66EC  38 C3 00 01 */	addi r6, r3, 1
/* 802E66F0  7C C0 32 14 */	add r6, r0, r6
/* 802E66F4  38 60 00 05 */	li r3, 5
/* 802E66F8  7C 15 1B D6 */	divw r0, r21, r3
/* 802E66FC  7C 00 19 D6 */	mullw r0, r0, r3
/* 802E6700  7C 00 A8 51 */	subf. r0, r0, r21
/* 802E6704  41 82 00 24 */	beq lbl_802E6728
/* 802E6708  38 00 00 64 */	li r0, 0x64
/* 802E670C  98 01 00 48 */	stb r0, 0x48(r1)
/* 802E6710  98 01 00 49 */	stb r0, 0x49(r1)
/* 802E6714  38 00 00 FF */	li r0, 0xff
/* 802E6718  98 01 00 4A */	stb r0, 0x4a(r1)
/* 802E671C  98 01 00 4B */	stb r0, 0x4b(r1)
/* 802E6720  38 61 00 48 */	addi r3, r1, 0x48
/* 802E6724  48 00 00 20 */	b lbl_802E6744
lbl_802E6728:
/* 802E6728  38 00 00 B4 */	li r0, 0xb4
/* 802E672C  98 01 00 44 */	stb r0, 0x44(r1)
/* 802E6730  38 00 00 FF */	li r0, 0xff
/* 802E6734  98 01 00 45 */	stb r0, 0x45(r1)
/* 802E6738  98 01 00 46 */	stb r0, 0x46(r1)
/* 802E673C  98 01 00 47 */	stb r0, 0x47(r1)
/* 802E6740  38 61 00 44 */	addi r3, r1, 0x44
lbl_802E6744:
/* 802E6744  80 03 00 00 */	lwz r0, 0(r3)
/* 802E6748  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802E674C  80 9F 01 14 */	lwz r4, 0x114(r31)
/* 802E6750  80 BF 01 1C */	lwz r5, 0x11c(r31)
/* 802E6754  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 802E6758  90 61 01 24 */	stw r3, 0x124(r1)
/* 802E675C  92 C1 01 20 */	stw r22, 0x120(r1)
/* 802E6760  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6764  EC 20 F8 28 */	fsubs f1, f0, f31
/* 802E6768  7C 05 22 14 */	add r0, r5, r4
/* 802E676C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6770  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6774  92 C1 01 18 */	stw r22, 0x118(r1)
/* 802E6778  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E677C  EC 40 F8 28 */	fsubs f2, f0, f31
/* 802E6780  90 61 01 14 */	stw r3, 0x114(r1)
/* 802E6784  92 C1 01 10 */	stw r22, 0x110(r1)
/* 802E6788  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E678C  EC 60 F8 28 */	fsubs f3, f0, f31
/* 802E6790  7C 05 DA 14 */	add r0, r5, r27
/* 802E6794  7C 04 00 50 */	subf r0, r4, r0
/* 802E6798  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E679C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802E67A0  92 C1 01 08 */	stw r22, 0x108(r1)
/* 802E67A4  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802E67A8  EC 80 F8 28 */	fsubs f4, f0, f31
/* 802E67AC  38 61 00 4C */	addi r3, r1, 0x4c
/* 802E67B0  38 80 00 0C */	li r4, 0xc
/* 802E67B4  48 00 31 E5 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 802E67B8  3A B5 00 01 */	addi r21, r21, 1
lbl_802E67BC:
/* 802E67BC  7C 15 C0 00 */	cmpw r21, r24
/* 802E67C0  41 80 FF 24 */	blt lbl_802E66E4
/* 802E67C4  38 80 00 00 */	li r4, 0
/* 802E67C8  38 60 00 00 */	li r3, 0
/* 802E67CC  7C 65 1B 78 */	mr r5, r3
/* 802E67D0  38 00 00 08 */	li r0, 8
/* 802E67D4  7C 09 03 A6 */	mtctr r0
lbl_802E67D8:
/* 802E67D8  38 E3 00 64 */	addi r7, r3, 0x64
/* 802E67DC  7C FF 3A 14 */	add r7, r31, r7
/* 802E67E0  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 802E67E4  38 06 00 01 */	addi r0, r6, 1
/* 802E67E8  90 07 00 0C */	stw r0, 0xc(r7)
/* 802E67EC  28 00 00 10 */	cmplwi r0, 0x10
/* 802E67F0  40 80 00 14 */	bge lbl_802E6804
/* 802E67F4  80 C7 00 04 */	lwz r6, 4(r7)
/* 802E67F8  80 07 00 08 */	lwz r0, 8(r7)
/* 802E67FC  7C 06 00 40 */	cmplw r6, r0
/* 802E6800  40 81 00 10 */	ble lbl_802E6810
lbl_802E6804:
/* 802E6804  80 07 00 04 */	lwz r0, 4(r7)
/* 802E6808  90 07 00 08 */	stw r0, 8(r7)
/* 802E680C  90 A7 00 0C */	stw r5, 0xc(r7)
lbl_802E6810:
/* 802E6810  80 07 00 08 */	lwz r0, 8(r7)
/* 802E6814  7C 00 20 40 */	cmplw r0, r4
/* 802E6818  40 81 00 08 */	ble lbl_802E6820
/* 802E681C  7C 04 03 78 */	mr r4, r0
lbl_802E6820:
/* 802E6820  38 63 00 14 */	addi r3, r3, 0x14
/* 802E6824  42 00 FF B4 */	bdnz lbl_802E67D8
/* 802E6828  30 04 FF FF */	addic r0, r4, -1
/* 802E682C  7C 00 21 10 */	subfe r0, r0, r4
/* 802E6830  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802E6834  28 00 00 01 */	cmplwi r0, 1
/* 802E6838  40 82 04 DC */	bne lbl_802E6D14
/* 802E683C  88 0D 8F E8 */	lbz r0, data_80451568(r13)
/* 802E6840  7C 00 07 75 */	extsb. r0, r0
/* 802E6844  40 82 00 14 */	bne lbl_802E6858
/* 802E6848  38 00 00 00 */	li r0, 0
/* 802E684C  90 0D 8F E4 */	stw r0, cntUser(r13)
/* 802E6850  38 00 00 01 */	li r0, 1
/* 802E6854  98 0D 8F E8 */	stb r0, data_80451568(r13)
lbl_802E6858:
/* 802E6858  7F E3 FB 78 */	mr r3, r31
/* 802E685C  38 AD 83 84 */	la r5, oneFrameRateUser(r13) /* 80450904-_SDA_BASE_ */
/* 802E6860  C0 22 C7 10 */	lfs f1, lit_2580(r2)
/* 802E6864  C0 42 C6 DC */	lfs f2, lit_2259(r2)
/* 802E6868  38 CD 8F E4 */	la r6, cntUser(r13) /* 80451564-_SDA_BASE_ */
/* 802E686C  4B FF F4 59 */	bl adjustMeterLength__10JUTProcBarFUlPfffPi
/* 802E6870  C0 22 C6 F0 */	lfs f1, lit_2308(r2)
/* 802E6874  C0 0D 83 84 */	lfs f0, oneFrameRateUser(r13)
/* 802E6878  EC 01 00 32 */	fmuls f0, f1, f0
/* 802E687C  FC 00 00 1E */	fctiwz f0, f0
/* 802E6880  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 802E6884  82 A1 01 24 */	lwz r21, 0x124(r1)
/* 802E6888  38 00 00 00 */	li r0, 0
/* 802E688C  98 01 00 3C */	stb r0, 0x3c(r1)
/* 802E6890  98 01 00 3D */	stb r0, 0x3d(r1)
/* 802E6894  38 00 00 32 */	li r0, 0x32
/* 802E6898  98 01 00 3E */	stb r0, 0x3e(r1)
/* 802E689C  38 00 00 C8 */	li r0, 0xc8
/* 802E68A0  98 01 00 3F */	stb r0, 0x3f(r1)
/* 802E68A4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802E68A8  90 01 00 40 */	stw r0, 0x40(r1)
/* 802E68AC  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E68B0  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E68B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E68B8  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E68BC  3C 60 43 30 */	lis r3, 0x4330
/* 802E68C0  90 61 01 18 */	stw r3, 0x118(r1)
/* 802E68C4  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E68C8  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E68CC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 802E68D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E68D4  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E68D8  90 61 01 10 */	stw r3, 0x110(r1)
/* 802E68DC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E68E0  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E68E4  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E68E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E68EC  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802E68F0  90 61 01 08 */	stw r3, 0x108(r1)
/* 802E68F4  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802E68F8  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E68FC  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 802E6900  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E6904  90 61 01 00 */	stw r3, 0x100(r1)
/* 802E6908  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 802E690C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6910  38 61 00 40 */	addi r3, r1, 0x40
/* 802E6914  48 00 31 B1 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6918  38 00 00 32 */	li r0, 0x32
/* 802E691C  98 01 00 34 */	stb r0, 0x34(r1)
/* 802E6920  98 01 00 35 */	stb r0, 0x35(r1)
/* 802E6924  38 00 00 96 */	li r0, 0x96
/* 802E6928  98 01 00 36 */	stb r0, 0x36(r1)
/* 802E692C  38 00 00 FF */	li r0, 0xff
/* 802E6930  98 01 00 37 */	stb r0, 0x37(r1)
/* 802E6934  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E6938  90 01 00 38 */	stw r0, 0x38(r1)
/* 802E693C  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6940  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6944  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6948  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802E694C  3C 60 43 30 */	lis r3, 0x4330
/* 802E6950  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 802E6954  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802E6958  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E695C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 802E6960  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6964  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802E6968  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 802E696C  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 802E6970  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6974  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E6978  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E697C  90 01 00 EC */	stw r0, 0xec(r1)
/* 802E6980  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 802E6984  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802E6988  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E698C  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 802E6990  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802E6994  90 61 01 28 */	stw r3, 0x128(r1)
/* 802E6998  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802E699C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E69A0  38 61 00 38 */	addi r3, r1, 0x38
/* 802E69A4  38 80 00 06 */	li r4, 6
/* 802E69A8  48 00 31 F5 */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 802E69AC  3A C0 00 00 */	li r22, 0
/* 802E69B0  3B 00 00 00 */	li r24, 0
lbl_802E69B4:
/* 802E69B4  38 B8 00 64 */	addi r5, r24, 0x64
/* 802E69B8  7C BF 2A 14 */	add r5, r31, r5
/* 802E69BC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802E69C0  38 03 00 01 */	addi r0, r3, 1
/* 802E69C4  90 05 00 0C */	stw r0, 0xc(r5)
/* 802E69C8  28 00 00 10 */	cmplwi r0, 0x10
/* 802E69CC  40 80 00 14 */	bge lbl_802E69E0
/* 802E69D0  80 65 00 04 */	lwz r3, 4(r5)
/* 802E69D4  80 05 00 08 */	lwz r0, 8(r5)
/* 802E69D8  7C 03 00 40 */	cmplw r3, r0
/* 802E69DC  40 81 00 14 */	ble lbl_802E69F0
lbl_802E69E0:
/* 802E69E0  80 05 00 04 */	lwz r0, 4(r5)
/* 802E69E4  90 05 00 08 */	stw r0, 8(r5)
/* 802E69E8  38 00 00 00 */	li r0, 0
/* 802E69EC  90 05 00 0C */	stw r0, 0xc(r5)
lbl_802E69F0:
/* 802E69F0  80 65 00 04 */	lwz r3, 4(r5)
/* 802E69F4  28 03 00 00 */	cmplwi r3, 0
/* 802E69F8  40 82 00 10 */	bne lbl_802E6A08
/* 802E69FC  80 05 00 08 */	lwz r0, 8(r5)
/* 802E6A00  28 00 00 00 */	cmplwi r0, 0
/* 802E6A04  41 82 02 00 */	beq lbl_802E6C04
lbl_802E6A08:
/* 802E6A08  7C 03 A9 D6 */	mullw r0, r3, r21
/* 802E6A0C  7C C0 EB 96 */	divwu r6, r0, r29
/* 802E6A10  80 05 00 08 */	lwz r0, 8(r5)
/* 802E6A14  7C 00 A9 D6 */	mullw r0, r0, r21
/* 802E6A18  7E E0 EB 96 */	divwu r23, r0, r29
/* 802E6A1C  38 00 00 00 */	li r0, 0
/* 802E6A20  90 05 00 04 */	stw r0, 4(r5)
/* 802E6A24  88 85 00 12 */	lbz r4, 0x12(r5)
/* 802E6A28  88 65 00 11 */	lbz r3, 0x11(r5)
/* 802E6A2C  88 05 00 10 */	lbz r0, 0x10(r5)
/* 802E6A30  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802E6A34  98 61 00 2D */	stb r3, 0x2d(r1)
/* 802E6A38  98 81 00 2E */	stb r4, 0x2e(r1)
/* 802E6A3C  38 00 00 FF */	li r0, 0xff
/* 802E6A40  98 01 00 2F */	stb r0, 0x2f(r1)
/* 802E6A44  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802E6A48  90 01 00 30 */	stw r0, 0x30(r1)
/* 802E6A4C  80 BF 01 14 */	lwz r5, 0x114(r31)
/* 802E6A50  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 802E6A54  38 03 00 01 */	addi r0, r3, 1
/* 802E6A58  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6A5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6A60  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802E6A64  3C 80 43 30 */	lis r4, 0x4330
/* 802E6A68  90 81 01 28 */	stw r4, 0x128(r1)
/* 802E6A6C  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802E6A70  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6A74  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 802E6A78  7C 16 29 D6 */	mullw r0, r22, r5
/* 802E6A7C  7C 05 02 14 */	add r0, r5, r0
/* 802E6A80  7C 03 02 14 */	add r0, r3, r0
/* 802E6A84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6A88  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6A8C  90 81 01 20 */	stw r4, 0x120(r1)
/* 802E6A90  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6A94  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6A98  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 802E6A9C  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6AA0  90 81 01 18 */	stw r4, 0x118(r1)
/* 802E6AA4  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6AA8  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E6AAC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802E6AB0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6AB4  90 81 01 10 */	stw r4, 0x110(r1)
/* 802E6AB8  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6ABC  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6AC0  38 61 00 30 */	addi r3, r1, 0x30
/* 802E6AC4  48 00 30 01 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6AC8  28 17 00 03 */	cmplwi r23, 3
/* 802E6ACC  40 80 00 A4 */	bge lbl_802E6B70
/* 802E6AD0  38 60 00 FF */	li r3, 0xff
/* 802E6AD4  98 61 00 24 */	stb r3, 0x24(r1)
/* 802E6AD8  38 00 00 C8 */	li r0, 0xc8
/* 802E6ADC  98 01 00 25 */	stb r0, 0x25(r1)
/* 802E6AE0  38 00 00 32 */	li r0, 0x32
/* 802E6AE4  98 01 00 26 */	stb r0, 0x26(r1)
/* 802E6AE8  98 61 00 27 */	stb r3, 0x27(r1)
/* 802E6AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E6AF0  90 01 00 28 */	stw r0, 0x28(r1)
/* 802E6AF4  80 BF 01 14 */	lwz r5, 0x114(r31)
/* 802E6AF8  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6AFC  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6B00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6B04  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802E6B08  3C 80 43 30 */	lis r4, 0x4330
/* 802E6B0C  90 81 01 28 */	stw r4, 0x128(r1)
/* 802E6B10  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802E6B14  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6B18  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 802E6B1C  7C 16 29 D6 */	mullw r0, r22, r5
/* 802E6B20  7C 05 02 14 */	add r0, r5, r0
/* 802E6B24  7C 03 02 14 */	add r0, r3, r0
/* 802E6B28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6B2C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6B30  90 81 01 20 */	stw r4, 0x120(r1)
/* 802E6B34  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6B38  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6B3C  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 802E6B40  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6B44  90 81 01 18 */	stw r4, 0x118(r1)
/* 802E6B48  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6B4C  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E6B50  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802E6B54  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6B58  90 81 01 10 */	stw r4, 0x110(r1)
/* 802E6B5C  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6B60  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6B64  38 61 00 28 */	addi r3, r1, 0x28
/* 802E6B68  48 00 2F 5D */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6B6C  48 00 00 98 */	b lbl_802E6C04
lbl_802E6B70:
/* 802E6B70  38 60 00 FF */	li r3, 0xff
/* 802E6B74  98 61 00 1C */	stb r3, 0x1c(r1)
/* 802E6B78  38 00 00 C8 */	li r0, 0xc8
/* 802E6B7C  98 01 00 1D */	stb r0, 0x1d(r1)
/* 802E6B80  38 00 00 32 */	li r0, 0x32
/* 802E6B84  98 01 00 1E */	stb r0, 0x1e(r1)
/* 802E6B88  98 61 00 1F */	stb r3, 0x1f(r1)
/* 802E6B8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E6B90  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E6B94  80 BF 01 14 */	lwz r5, 0x114(r31)
/* 802E6B98  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 802E6B9C  38 17 FF FD */	addi r0, r23, -3
/* 802E6BA0  7C 03 02 14 */	add r0, r3, r0
/* 802E6BA4  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6BA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6BAC  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802E6BB0  3C 80 43 30 */	lis r4, 0x4330
/* 802E6BB4  90 81 01 28 */	stw r4, 0x128(r1)
/* 802E6BB8  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802E6BBC  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6BC0  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 802E6BC4  7C 16 29 D6 */	mullw r0, r22, r5
/* 802E6BC8  7C 05 02 14 */	add r0, r5, r0
/* 802E6BCC  7C 03 02 14 */	add r0, r3, r0
/* 802E6BD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6BD4  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6BD8  90 81 01 20 */	stw r4, 0x120(r1)
/* 802E6BDC  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6BE0  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6BE4  C0 62 C7 14 */	lfs f3, lit_2581(r2)
/* 802E6BE8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802E6BEC  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802E6BF0  90 81 01 18 */	stw r4, 0x118(r1)
/* 802E6BF4  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6BF8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6BFC  38 61 00 20 */	addi r3, r1, 0x20
/* 802E6C00  48 00 2E C5 */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_802E6C04:
/* 802E6C04  3A D6 00 01 */	addi r22, r22, 1
/* 802E6C08  2C 16 00 08 */	cmpwi r22, 8
/* 802E6C0C  3B 18 00 14 */	addi r24, r24, 0x14
/* 802E6C10  41 80 FD A4 */	blt lbl_802E69B4
/* 802E6C14  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 802E6C18  7C 60 AA 14 */	add r3, r0, r21
/* 802E6C1C  38 03 FF FC */	addi r0, r3, -4
/* 802E6C20  7E C0 AB D6 */	divw r22, r0, r21
/* 802E6C24  3A E0 00 01 */	li r23, 1
/* 802E6C28  CB E2 C6 E8 */	lfd f31, lit_2281(r2)
/* 802E6C2C  3F 00 43 30 */	lis r24, 0x4330
/* 802E6C30  48 00 00 DC */	b lbl_802E6D0C
lbl_802E6C34:
/* 802E6C34  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 802E6C38  7C 77 A9 D6 */	mullw r3, r23, r21
/* 802E6C3C  38 C3 00 01 */	addi r6, r3, 1
/* 802E6C40  7C C0 32 14 */	add r6, r0, r6
/* 802E6C44  38 60 00 05 */	li r3, 5
/* 802E6C48  7C 17 1B D6 */	divw r0, r23, r3
/* 802E6C4C  7C 00 19 D6 */	mullw r0, r0, r3
/* 802E6C50  7C 00 B8 51 */	subf. r0, r0, r23
/* 802E6C54  41 82 00 24 */	beq lbl_802E6C78
/* 802E6C58  38 00 00 64 */	li r0, 0x64
/* 802E6C5C  98 01 00 14 */	stb r0, 0x14(r1)
/* 802E6C60  98 01 00 15 */	stb r0, 0x15(r1)
/* 802E6C64  38 00 00 FF */	li r0, 0xff
/* 802E6C68  98 01 00 16 */	stb r0, 0x16(r1)
/* 802E6C6C  98 01 00 17 */	stb r0, 0x17(r1)
/* 802E6C70  38 61 00 14 */	addi r3, r1, 0x14
/* 802E6C74  48 00 00 20 */	b lbl_802E6C94
lbl_802E6C78:
/* 802E6C78  38 00 00 B4 */	li r0, 0xb4
/* 802E6C7C  98 01 00 10 */	stb r0, 0x10(r1)
/* 802E6C80  38 00 00 FF */	li r0, 0xff
/* 802E6C84  98 01 00 11 */	stb r0, 0x11(r1)
/* 802E6C88  98 01 00 12 */	stb r0, 0x12(r1)
/* 802E6C8C  98 01 00 13 */	stb r0, 0x13(r1)
/* 802E6C90  38 61 00 10 */	addi r3, r1, 0x10
lbl_802E6C94:
/* 802E6C94  80 03 00 00 */	lwz r0, 0(r3)
/* 802E6C98  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E6C9C  80 9F 01 14 */	lwz r4, 0x114(r31)
/* 802E6CA0  80 BF 01 24 */	lwz r5, 0x124(r31)
/* 802E6CA4  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 802E6CA8  90 61 01 2C */	stw r3, 0x12c(r1)
/* 802E6CAC  93 01 01 28 */	stw r24, 0x128(r1)
/* 802E6CB0  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802E6CB4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 802E6CB8  7C 05 22 14 */	add r0, r5, r4
/* 802E6CBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6CC0  90 01 01 24 */	stw r0, 0x124(r1)
/* 802E6CC4  93 01 01 20 */	stw r24, 0x120(r1)
/* 802E6CC8  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802E6CCC  EC 40 F8 28 */	fsubs f2, f0, f31
/* 802E6CD0  90 61 01 1C */	stw r3, 0x11c(r1)
/* 802E6CD4  93 01 01 18 */	stw r24, 0x118(r1)
/* 802E6CD8  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802E6CDC  EC 60 F8 28 */	fsubs f3, f0, f31
/* 802E6CE0  7C 05 CA 14 */	add r0, r5, r25
/* 802E6CE4  7C 04 00 50 */	subf r0, r4, r0
/* 802E6CE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6CEC  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6CF0  93 01 01 10 */	stw r24, 0x110(r1)
/* 802E6CF4  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802E6CF8  EC 80 F8 28 */	fsubs f4, f0, f31
/* 802E6CFC  38 61 00 18 */	addi r3, r1, 0x18
/* 802E6D00  38 80 00 0C */	li r4, 0xc
/* 802E6D04  48 00 2C 95 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 802E6D08  3A F7 00 01 */	addi r23, r23, 1
lbl_802E6D0C:
/* 802E6D0C  7C 17 B0 00 */	cmpw r23, r22
/* 802E6D10  41 80 FF 24 */	blt lbl_802E6C34
lbl_802E6D14:
/* 802E6D14  38 00 00 00 */	li r0, 0
/* 802E6D18  90 1F 01 08 */	stw r0, 0x108(r31)
lbl_802E6D1C:
/* 802E6D1C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 802E6D20  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 802E6D24  39 61 01 60 */	addi r11, r1, 0x160
/* 802E6D28  48 07 B4 E1 */	bl _restgpr_21
/* 802E6D2C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 802E6D30  7C 08 03 A6 */	mtlr r0
/* 802E6D34  38 21 01 70 */	addi r1, r1, 0x170
/* 802E6D38  4E 80 00 20 */	blr 
