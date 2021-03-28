lbl_802F60C4:
/* 802F60C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802F60C8  7C 08 02 A6 */	mflr r0
/* 802F60CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 802F60D0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802F60D4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802F60D8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802F60DC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802F60E0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802F60E4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802F60E8  39 61 00 50 */	addi r11, r1, 0x50
/* 802F60EC  48 06 C0 F1 */	bl _savegpr_29
/* 802F60F0  7C 7D 1B 78 */	mr r29, r3
/* 802F60F4  7C 9E 23 78 */	mr r30, r4
/* 802F60F8  7C BF 2B 78 */	mr r31, r5
/* 802F60FC  7F E3 FB 78 */	mr r3, r31
/* 802F6100  38 81 00 0B */	addi r4, r1, 0xb
/* 802F6104  38 A0 00 01 */	li r5, 1
/* 802F6108  4B FE 61 91 */	bl read__14JSUInputStreamFPvl
/* 802F610C  7F E3 FB 78 */	mr r3, r31
/* 802F6110  38 9D 00 B0 */	addi r4, r29, 0xb0
/* 802F6114  38 A0 00 01 */	li r5, 1
/* 802F6118  4B FE 61 81 */	bl read__14JSUInputStreamFPvl
/* 802F611C  7F E3 FB 78 */	mr r3, r31
/* 802F6120  38 80 00 02 */	li r4, 2
/* 802F6124  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F6128  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F612C  7D 89 03 A6 */	mtctr r12
/* 802F6130  4E 80 04 21 */	bctrl 
/* 802F6134  7F E3 FB 78 */	mr r3, r31
/* 802F6138  38 81 00 18 */	addi r4, r1, 0x18
/* 802F613C  38 A0 00 04 */	li r5, 4
/* 802F6140  4B FE 61 59 */	bl read__14JSUInputStreamFPvl
/* 802F6144  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802F6148  38 00 00 00 */	li r0, 0
/* 802F614C  90 7D 00 14 */	stw r3, 0x14(r29)
/* 802F6150  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802F6154  7F E3 FB 78 */	mr r3, r31
/* 802F6158  38 81 00 14 */	addi r4, r1, 0x14
/* 802F615C  38 A0 00 02 */	li r5, 2
/* 802F6160  4B FE 61 39 */	bl read__14JSUInputStreamFPvl
/* 802F6164  A8 01 00 14 */	lha r0, 0x14(r1)
/* 802F6168  C8 22 C7 F8 */	lfd f1, lit_1651(r2)
/* 802F616C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F6170  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F6174  3C 00 43 30 */	lis r0, 0x4330
/* 802F6178  90 01 00 20 */	stw r0, 0x20(r1)
/* 802F617C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802F6180  EF E0 08 28 */	fsubs f31, f0, f1
/* 802F6184  7F E3 FB 78 */	mr r3, r31
/* 802F6188  38 81 00 12 */	addi r4, r1, 0x12
/* 802F618C  38 A0 00 02 */	li r5, 2
/* 802F6190  4B FE 61 09 */	bl read__14JSUInputStreamFPvl
/* 802F6194  A8 01 00 12 */	lha r0, 0x12(r1)
/* 802F6198  C8 22 C7 F8 */	lfd f1, lit_1651(r2)
/* 802F619C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F61A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F61A4  3C 00 43 30 */	lis r0, 0x4330
/* 802F61A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 802F61AC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802F61B0  EF C0 08 28 */	fsubs f30, f0, f1
/* 802F61B4  7F E3 FB 78 */	mr r3, r31
/* 802F61B8  38 81 00 10 */	addi r4, r1, 0x10
/* 802F61BC  38 A0 00 02 */	li r5, 2
/* 802F61C0  4B FE 60 D9 */	bl read__14JSUInputStreamFPvl
/* 802F61C4  A8 01 00 10 */	lha r0, 0x10(r1)
/* 802F61C8  C8 22 C7 F8 */	lfd f1, lit_1651(r2)
/* 802F61CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F61D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F61D4  3C 00 43 30 */	lis r0, 0x4330
/* 802F61D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F61DC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802F61E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F61E4  EF BF 00 2A */	fadds f29, f31, f0
/* 802F61E8  7F E3 FB 78 */	mr r3, r31
/* 802F61EC  38 81 00 0E */	addi r4, r1, 0xe
/* 802F61F0  38 A0 00 02 */	li r5, 2
/* 802F61F4  4B FE 60 A5 */	bl read__14JSUInputStreamFPvl
/* 802F61F8  A8 01 00 0E */	lha r0, 0xe(r1)
/* 802F61FC  C8 22 C7 F8 */	lfd f1, lit_1651(r2)
/* 802F6200  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F6204  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F6208  3C 00 43 30 */	lis r0, 0x4330
/* 802F620C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F6210  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F6214  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F6218  EC 1E 00 2A */	fadds f0, f30, f0
/* 802F621C  D3 FD 00 20 */	stfs f31, 0x20(r29)
/* 802F6220  D3 DD 00 24 */	stfs f30, 0x24(r29)
/* 802F6224  D3 BD 00 28 */	stfs f29, 0x28(r29)
/* 802F6228  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 802F622C  88 61 00 0B */	lbz r3, 0xb(r1)
/* 802F6230  38 03 FF FA */	addi r0, r3, -6
/* 802F6234  98 01 00 0B */	stb r0, 0xb(r1)
/* 802F6238  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F623C  D0 1D 00 B8 */	stfs f0, 0xb8(r29)
/* 802F6240  D0 1D 00 BC */	stfs f0, 0xbc(r29)
/* 802F6244  D0 1D 00 C0 */	stfs f0, 0xc0(r29)
/* 802F6248  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F624C  28 00 00 00 */	cmplwi r0, 0
/* 802F6250  41 82 00 40 */	beq lbl_802F6290
/* 802F6254  7F E3 FB 78 */	mr r3, r31
/* 802F6258  38 81 00 0C */	addi r4, r1, 0xc
/* 802F625C  38 A0 00 02 */	li r5, 2
/* 802F6260  4B FE 60 39 */	bl read__14JSUInputStreamFPvl
/* 802F6264  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 802F6268  C8 22 C8 00 */	lfd f1, lit_1655(r2)
/* 802F626C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F6270  3C 00 43 30 */	lis r0, 0x4330
/* 802F6274  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F6278  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F627C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F6280  D0 1D 00 C0 */	stfs f0, 0xc0(r29)
/* 802F6284  88 61 00 0B */	lbz r3, 0xb(r1)
/* 802F6288  38 03 FF FF */	addi r0, r3, -1
/* 802F628C  98 01 00 0B */	stb r0, 0xb(r1)
lbl_802F6290:
/* 802F6290  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F6294  28 00 00 00 */	cmplwi r0, 0
/* 802F6298  41 82 00 2C */	beq lbl_802F62C4
/* 802F629C  7F E3 FB 78 */	mr r3, r31
/* 802F62A0  38 81 00 0A */	addi r4, r1, 0xa
/* 802F62A4  38 A0 00 01 */	li r5, 1
/* 802F62A8  4B FE 5F F1 */	bl read__14JSUInputStreamFPvl
/* 802F62AC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802F62B0  98 1D 00 B7 */	stb r0, 0xb7(r29)
/* 802F62B4  88 61 00 0B */	lbz r3, 0xb(r1)
/* 802F62B8  38 03 FF FF */	addi r0, r3, -1
/* 802F62BC  98 01 00 0B */	stb r0, 0xb(r1)
/* 802F62C0  48 00 00 0C */	b lbl_802F62CC
lbl_802F62C4:
/* 802F62C4  38 00 00 00 */	li r0, 0
/* 802F62C8  98 1D 00 B7 */	stb r0, 0xb7(r29)
lbl_802F62CC:
/* 802F62CC  38 00 00 7A */	li r0, 0x7a
/* 802F62D0  98 1D 00 B6 */	stb r0, 0xb6(r29)
/* 802F62D4  38 00 00 FF */	li r0, 0xff
/* 802F62D8  98 1D 00 B2 */	stb r0, 0xb2(r29)
/* 802F62DC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F62E0  28 00 00 00 */	cmplwi r0, 0
/* 802F62E4  41 82 00 28 */	beq lbl_802F630C
/* 802F62E8  7F E3 FB 78 */	mr r3, r31
/* 802F62EC  38 81 00 09 */	addi r4, r1, 9
/* 802F62F0  38 A0 00 01 */	li r5, 1
/* 802F62F4  4B FE 5F A5 */	bl read__14JSUInputStreamFPvl
/* 802F62F8  88 01 00 09 */	lbz r0, 9(r1)
/* 802F62FC  98 1D 00 B2 */	stb r0, 0xb2(r29)
/* 802F6300  88 61 00 0B */	lbz r3, 0xb(r1)
/* 802F6304  38 03 FF FF */	addi r0, r3, -1
/* 802F6308  98 01 00 0B */	stb r0, 0xb(r1)
lbl_802F630C:
/* 802F630C  38 00 00 01 */	li r0, 1
/* 802F6310  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 802F6314  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F6318  28 00 00 00 */	cmplwi r0, 0
/* 802F631C  41 82 00 30 */	beq lbl_802F634C
/* 802F6320  7F E3 FB 78 */	mr r3, r31
/* 802F6324  38 81 00 08 */	addi r4, r1, 8
/* 802F6328  38 A0 00 01 */	li r5, 1
/* 802F632C  4B FE 5F 6D */	bl read__14JSUInputStreamFPvl
/* 802F6330  88 61 00 08 */	lbz r3, 8(r1)
/* 802F6334  30 03 FF FF */	addic r0, r3, -1
/* 802F6338  7C 00 19 10 */	subfe r0, r0, r3
/* 802F633C  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 802F6340  88 61 00 0B */	lbz r3, 0xb(r1)
/* 802F6344  38 03 FF FF */	addi r0, r3, -1
/* 802F6348  98 01 00 0B */	stb r0, 0xb(r1)
lbl_802F634C:
/* 802F634C  7F E3 FB 78 */	mr r3, r31
/* 802F6350  38 80 00 04 */	li r4, 4
/* 802F6354  4B FE 60 1D */	bl align__20JSURandomInputStreamFl
/* 802F6358  28 1E 00 00 */	cmplwi r30, 0
/* 802F635C  41 82 00 18 */	beq lbl_802F6374
/* 802F6360  34 9D 00 DC */	addic. r4, r29, 0xdc
/* 802F6364  41 82 00 08 */	beq lbl_802F636C
/* 802F6368  38 84 00 0C */	addi r4, r4, 0xc
lbl_802F636C:
/* 802F636C  38 7E 00 DC */	addi r3, r30, 0xdc
/* 802F6370  4B FE 5B DD */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802F6374:
/* 802F6374  38 80 00 00 */	li r4, 0
/* 802F6378  98 9D 00 B1 */	stb r4, 0xb1(r29)
/* 802F637C  38 00 00 FF */	li r0, 0xff
/* 802F6380  98 1D 00 B3 */	stb r0, 0xb3(r29)
/* 802F6384  98 9D 00 B5 */	stb r4, 0xb5(r29)
/* 802F6388  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F638C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F6390  B0 1D 00 04 */	sth r0, 4(r29)
/* 802F6394  C0 02 C7 F4 */	lfs f0, lit_1489(r2)
/* 802F6398  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 802F639C  D0 1D 00 D0 */	stfs f0, 0xd0(r29)
/* 802F63A0  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 802F63A4  90 9D 00 18 */	stw r4, 0x18(r29)
/* 802F63A8  7F A3 EB 78 */	mr r3, r29
/* 802F63AC  7F C4 F3 78 */	mr r4, r30
/* 802F63B0  48 00 00 49 */	bl changeUseTrans__7J2DPaneFP7J2DPane
/* 802F63B4  7F A3 EB 78 */	mr r3, r29
/* 802F63B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F63BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F63C0  7D 89 03 A6 */	mtctr r12
/* 802F63C4  4E 80 04 21 */	bctrl 
/* 802F63C8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 802F63CC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802F63D0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 802F63D4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802F63D8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 802F63DC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802F63E0  39 61 00 50 */	addi r11, r1, 0x50
/* 802F63E4  48 06 BE 45 */	bl _restgpr_29
/* 802F63E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802F63EC  7C 08 03 A6 */	mtlr r0
/* 802F63F0  38 21 00 80 */	addi r1, r1, 0x80
/* 802F63F4  4E 80 00 20 */	blr 
