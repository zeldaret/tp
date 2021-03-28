lbl_802E6FA0:
/* 802E6FA0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 802E6FA4  7C 08 02 A6 */	mflr r0
/* 802E6FA8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802E6FAC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 802E6FB0  48 07 B2 1D */	bl _savegpr_25
/* 802E6FB4  7C 79 1B 78 */	mr r25, r3
/* 802E6FB8  88 03 01 30 */	lbz r0, 0x130(r3)
/* 802E6FBC  28 00 00 00 */	cmplwi r0, 0
/* 802E6FC0  41 82 03 68 */	beq lbl_802E7328
/* 802E6FC4  83 99 01 18 */	lwz r28, 0x118(r25)
/* 802E6FC8  83 79 01 1C */	lwz r27, 0x11c(r25)
/* 802E6FCC  80 99 01 14 */	lwz r4, 0x114(r25)
/* 802E6FD0  54 9F 08 3C */	slwi r31, r4, 1
/* 802E6FD4  83 59 01 20 */	lwz r26, 0x120(r25)
/* 802E6FD8  38 00 00 64 */	li r0, 0x64
/* 802E6FDC  98 01 00 28 */	stb r0, 0x28(r1)
/* 802E6FE0  38 00 00 00 */	li r0, 0
/* 802E6FE4  98 01 00 29 */	stb r0, 0x29(r1)
/* 802E6FE8  38 00 00 32 */	li r0, 0x32
/* 802E6FEC  98 01 00 2A */	stb r0, 0x2a(r1)
/* 802E6FF0  38 00 00 C8 */	li r0, 0xc8
/* 802E6FF4  98 01 00 2B */	stb r0, 0x2b(r1)
/* 802E6FF8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802E6FFC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E7000  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E7004  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E7008  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E700C  3C 60 43 30 */	lis r3, 0x4330
/* 802E7010  90 61 00 30 */	stw r3, 0x30(r1)
/* 802E7014  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802E7018  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E701C  54 80 10 3A */	slwi r0, r4, 2
/* 802E7020  7F C0 D8 50 */	subf r30, r0, r27
/* 802E7024  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E7028  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802E702C  90 61 00 38 */	stw r3, 0x38(r1)
/* 802E7030  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802E7034  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E7038  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 802E703C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E7040  90 61 00 40 */	stw r3, 0x40(r1)
/* 802E7044  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802E7048  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E704C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E7050  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802E7054  90 61 00 48 */	stw r3, 0x48(r1)
/* 802E7058  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802E705C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E7060  38 61 00 2C */	addi r3, r1, 0x2c
/* 802E7064  48 00 2A 61 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E7068  38 00 00 64 */	li r0, 0x64
/* 802E706C  98 01 00 20 */	stb r0, 0x20(r1)
/* 802E7070  38 00 00 32 */	li r0, 0x32
/* 802E7074  98 01 00 21 */	stb r0, 0x21(r1)
/* 802E7078  38 00 00 96 */	li r0, 0x96
/* 802E707C  98 01 00 22 */	stb r0, 0x22(r1)
/* 802E7080  38 00 00 FF */	li r0, 0xff
/* 802E7084  98 01 00 23 */	stb r0, 0x23(r1)
/* 802E7088  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E708C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E7090  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E7094  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E7098  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E709C  3C 60 43 30 */	lis r3, 0x4330
/* 802E70A0  90 61 00 50 */	stw r3, 0x50(r1)
/* 802E70A4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802E70A8  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E70AC  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E70B0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802E70B4  90 61 00 58 */	stw r3, 0x58(r1)
/* 802E70B8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 802E70BC  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E70C0  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 802E70C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E70C8  90 61 00 60 */	stw r3, 0x60(r1)
/* 802E70CC  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 802E70D0  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E70D4  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E70D8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E70DC  90 61 00 68 */	stw r3, 0x68(r1)
/* 802E70E0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 802E70E4  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E70E8  38 61 00 24 */	addi r3, r1, 0x24
/* 802E70EC  38 80 00 06 */	li r4, 6
/* 802E70F0  48 00 2A AD */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 802E70F4  80 6D 8E 04 */	lwz r3, mCodeStart__7JKRHeap(r13)
/* 802E70F8  7F 44 D3 78 */	mr r4, r26
/* 802E70FC  4B FF FC 41 */	bl addrToXPos__FPvi
/* 802E7100  7F BC 1A 14 */	add r29, r28, r3
/* 802E7104  80 6D 8E 08 */	lwz r3, mCodeEnd__7JKRHeap(r13)
/* 802E7108  7F 44 D3 78 */	mr r4, r26
/* 802E710C  4B FF FC 31 */	bl addrToXPos__FPvi
/* 802E7110  7C 9C 1A 14 */	add r4, r28, r3
/* 802E7114  38 60 00 FF */	li r3, 0xff
/* 802E7118  98 61 00 18 */	stb r3, 0x18(r1)
/* 802E711C  38 00 00 32 */	li r0, 0x32
/* 802E7120  98 01 00 19 */	stb r0, 0x19(r1)
/* 802E7124  38 00 00 96 */	li r0, 0x96
/* 802E7128  98 01 00 1A */	stb r0, 0x1a(r1)
/* 802E712C  98 61 00 1B */	stb r3, 0x1b(r1)
/* 802E7130  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802E7134  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E7138  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E713C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E7140  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E7144  3C 60 43 30 */	lis r3, 0x4330
/* 802E7148  90 61 00 70 */	stw r3, 0x70(r1)
/* 802E714C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 802E7150  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E7154  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E7158  90 01 00 7C */	stw r0, 0x7c(r1)
/* 802E715C  90 61 00 78 */	stw r3, 0x78(r1)
/* 802E7160  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 802E7164  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E7168  7C 1D 20 50 */	subf r0, r29, r4
/* 802E716C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E7170  90 01 00 84 */	stw r0, 0x84(r1)
/* 802E7174  90 61 00 80 */	stw r3, 0x80(r1)
/* 802E7178  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 802E717C  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E7180  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E7184  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802E7188  90 61 00 88 */	stw r3, 0x88(r1)
/* 802E718C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802E7190  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E7194  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E7198  48 00 29 2D */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E719C  80 6D 8E 0C */	lwz r3, mUserRamStart__7JKRHeap(r13)
/* 802E71A0  7F 44 D3 78 */	mr r4, r26
/* 802E71A4  4B FF FB 99 */	bl addrToXPos__FPvi
/* 802E71A8  7F BC 1A 14 */	add r29, r28, r3
/* 802E71AC  80 6D 8E 10 */	lwz r3, mUserRamEnd__7JKRHeap(r13)
/* 802E71B0  7F 44 D3 78 */	mr r4, r26
/* 802E71B4  4B FF FB 89 */	bl addrToXPos__FPvi
/* 802E71B8  7C 9C 1A 14 */	add r4, r28, r3
/* 802E71BC  38 00 00 00 */	li r0, 0
/* 802E71C0  98 01 00 10 */	stb r0, 0x10(r1)
/* 802E71C4  38 00 00 32 */	li r0, 0x32
/* 802E71C8  98 01 00 11 */	stb r0, 0x11(r1)
/* 802E71CC  38 00 00 96 */	li r0, 0x96
/* 802E71D0  98 01 00 12 */	stb r0, 0x12(r1)
/* 802E71D4  38 00 00 FF */	li r0, 0xff
/* 802E71D8  98 01 00 13 */	stb r0, 0x13(r1)
/* 802E71DC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E71E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E71E4  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E71E8  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E71EC  90 01 00 94 */	stw r0, 0x94(r1)
/* 802E71F0  3C 60 43 30 */	lis r3, 0x4330
/* 802E71F4  90 61 00 90 */	stw r3, 0x90(r1)
/* 802E71F8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 802E71FC  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E7200  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E7204  90 01 00 9C */	stw r0, 0x9c(r1)
/* 802E7208  90 61 00 98 */	stw r3, 0x98(r1)
/* 802E720C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 802E7210  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E7214  7C 1D 20 50 */	subf r0, r29, r4
/* 802E7218  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E721C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802E7220  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 802E7224  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 802E7228  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E722C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E7230  90 01 00 AC */	stw r0, 0xac(r1)
/* 802E7234  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 802E7238  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 802E723C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E7240  38 61 00 14 */	addi r3, r1, 0x14
/* 802E7244  48 00 28 81 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E7248  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 802E724C  4B FE 75 39 */	bl getTotalFreeSize__7JKRHeapFv
/* 802E7250  7F 44 D3 78 */	mr r4, r26
/* 802E7254  4B FF FB 51 */	bl byteToXLen__Fii
/* 802E7258  38 00 00 00 */	li r0, 0
/* 802E725C  98 01 00 08 */	stb r0, 8(r1)
/* 802E7260  38 00 00 FA */	li r0, 0xfa
/* 802E7264  98 01 00 09 */	stb r0, 9(r1)
/* 802E7268  98 01 00 0A */	stb r0, 0xa(r1)
/* 802E726C  38 00 00 FF */	li r0, 0xff
/* 802E7270  98 01 00 0B */	stb r0, 0xb(r1)
/* 802E7274  80 01 00 08 */	lwz r0, 8(r1)
/* 802E7278  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E727C  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E7280  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E7284  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802E7288  3C 80 43 30 */	lis r4, 0x4330
/* 802E728C  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 802E7290  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802E7294  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E7298  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E729C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 802E72A0  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 802E72A4  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802E72A8  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E72AC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E72B0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802E72B4  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 802E72B8  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 802E72BC  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E72C0  7F E0 0E 70 */	srawi r0, r31, 1
/* 802E72C4  7C 00 01 94 */	addze r0, r0
/* 802E72C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E72CC  90 01 00 CC */	stw r0, 0xcc(r1)
/* 802E72D0  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 802E72D4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 802E72D8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E72DC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E72E0  48 00 27 E5 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E72E4  80 19 01 28 */	lwz r0, 0x128(r25)
/* 802E72E8  2C 00 00 00 */	cmpwi r0, 0
/* 802E72EC  40 82 00 3C */	bne lbl_802E7328
/* 802E72F0  80 79 01 2C */	lwz r3, 0x12c(r25)
/* 802E72F4  28 03 00 00 */	cmplwi r3, 0
/* 802E72F8  41 82 00 08 */	beq lbl_802E7300
/* 802E72FC  48 00 00 08 */	b lbl_802E7304
lbl_802E7300:
/* 802E7300  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
lbl_802E7304:
/* 802E7304  80 0D 8D F0 */	lwz r0, sSystemHeap__7JKRHeap(r13)
/* 802E7308  7C 03 00 40 */	cmplw r3, r0
/* 802E730C  41 82 00 1C */	beq lbl_802E7328
/* 802E7310  7F 84 E3 78 */	mr r4, r28
/* 802E7314  7F 65 DB 78 */	mr r5, r27
/* 802E7318  7F E6 FB 78 */	mr r6, r31
/* 802E731C  7F 47 D3 78 */	mr r7, r26
/* 802E7320  7F E8 FB 78 */	mr r8, r31
/* 802E7324  4B FF FA E9 */	bl heapBar__FP7JKRHeapiiiii
lbl_802E7328:
/* 802E7328  39 61 00 F0 */	addi r11, r1, 0xf0
/* 802E732C  48 07 AE ED */	bl _restgpr_25
/* 802E7330  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 802E7334  7C 08 03 A6 */	mtlr r0
/* 802E7338  38 21 00 F0 */	addi r1, r1, 0xf0
/* 802E733C  4E 80 00 20 */	blr 
