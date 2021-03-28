lbl_802E47C8:
/* 802E47C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E47CC  98 83 00 18 */	stb r4, 0x18(r3)
/* 802E47D0  98 A3 00 19 */	stb r5, 0x19(r3)
/* 802E47D4  98 C3 00 1A */	stb r6, 0x1a(r3)
/* 802E47D8  38 00 00 FF */	li r0, 0xff
/* 802E47DC  98 03 00 1B */	stb r0, 0x1b(r3)
/* 802E47E0  C8 C2 C6 60 */	lfd f6, lit_503(r2)
/* 802E47E4  C8 A2 C6 68 */	lfd f5, lit_504(r2)
/* 802E47E8  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802E47EC  C8 02 C6 B0 */	lfd f0, lit_514(r2)
/* 802E47F0  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 802E47F4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802E47F8  3C C0 43 30 */	lis r6, 0x4330
/* 802E47FC  90 C1 00 08 */	stw r6, 8(r1)
/* 802E4800  C8 21 00 08 */	lfd f1, 8(r1)
/* 802E4804  FC 21 00 28 */	fsub f1, f1, f0
/* 802E4808  FC 85 00 72 */	fmul f4, f5, f1
/* 802E480C  C8 42 C6 70 */	lfd f2, lit_505(r2)
/* 802E4810  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802E4814  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 802E4818  90 81 00 14 */	stw r4, 0x14(r1)
/* 802E481C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802E4820  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802E4824  FC 21 00 28 */	fsub f1, f1, f0
/* 802E4828  FC 62 00 72 */	fmul f3, f2, f1
/* 802E482C  C8 42 C6 78 */	lfd f2, lit_506(r2)
/* 802E4830  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802E4834  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E4838  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E483C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802E4840  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 802E4844  FC 21 00 28 */	fsub f1, f1, f0
/* 802E4848  FC 22 00 72 */	fmul f1, f2, f1
/* 802E484C  FC 23 08 28 */	fsub f1, f3, f1
/* 802E4850  FC 24 08 2A */	fadd f1, f4, f1
/* 802E4854  FC 26 08 2A */	fadd f1, f6, f1
/* 802E4858  FC 20 08 1E */	fctiwz f1, f1
/* 802E485C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 802E4860  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 802E4864  90 81 00 2C */	stw r4, 0x2c(r1)
/* 802E4868  90 C1 00 28 */	stw r6, 0x28(r1)
/* 802E486C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 802E4870  FC 21 00 28 */	fsub f1, f1, f0
/* 802E4874  FC 65 00 72 */	fmul f3, f5, f1
/* 802E4878  C8 42 C6 80 */	lfd f2, lit_507(r2)
/* 802E487C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E4880  90 C1 00 30 */	stw r6, 0x30(r1)
/* 802E4884  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 802E4888  FC 21 00 28 */	fsub f1, f1, f0
/* 802E488C  FC 22 00 72 */	fmul f1, f2, f1
/* 802E4890  FC 63 08 28 */	fsub f3, f3, f1
/* 802E4894  C8 42 C6 88 */	lfd f2, lit_508(r2)
/* 802E4898  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 802E489C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 802E48A0  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 802E48A4  FC 21 00 28 */	fsub f1, f1, f0
/* 802E48A8  FC 22 00 72 */	fmul f1, f2, f1
/* 802E48AC  FC 23 08 28 */	fsub f1, f3, f1
/* 802E48B0  FC 26 08 2A */	fadd f1, f6, f1
/* 802E48B4  FC 20 08 1E */	fctiwz f1, f1
/* 802E48B8  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 802E48BC  81 01 00 44 */	lwz r8, 0x44(r1)
/* 802E48C0  C8 A2 C6 90 */	lfd f5, lit_509(r2)
/* 802E48C4  C8 42 C6 98 */	lfd f2, lit_510(r2)
/* 802E48C8  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 802E48CC  90 C1 00 48 */	stw r6, 0x48(r1)
/* 802E48D0  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 802E48D4  FC 21 00 28 */	fsub f1, f1, f0
/* 802E48D8  FC 82 00 72 */	fmul f4, f2, f1
/* 802E48DC  C8 42 C6 A0 */	lfd f2, lit_511(r2)
/* 802E48E0  90 81 00 54 */	stw r4, 0x54(r1)
/* 802E48E4  90 C1 00 50 */	stw r6, 0x50(r1)
/* 802E48E8  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 802E48EC  FC 21 00 28 */	fsub f1, f1, f0
/* 802E48F0  FC 62 00 72 */	fmul f3, f2, f1
/* 802E48F4  C8 42 C6 A8 */	lfd f2, lit_512(r2)
/* 802E48F8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802E48FC  90 C1 00 58 */	stw r6, 0x58(r1)
/* 802E4900  C8 21 00 58 */	lfd f1, 0x58(r1)
/* 802E4904  FC 01 00 28 */	fsub f0, f1, f0
/* 802E4908  FC 02 00 32 */	fmul f0, f2, f0
/* 802E490C  FC 03 00 2A */	fadd f0, f3, f0
/* 802E4910  FC 04 00 2A */	fadd f0, f4, f0
/* 802E4914  FC 05 00 2A */	fadd f0, f5, f0
/* 802E4918  FC 00 00 1E */	fctiwz f0, f0
/* 802E491C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 802E4920  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802E4924  54 00 44 2E */	rlwinm r0, r0, 8, 0x10, 0x17
/* 802E4928  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 802E492C  B0 A3 00 1E */	sth r5, 0x1e(r3)
/* 802E4930  54 A0 FC 7E */	rlwinm r0, r5, 0x1f, 0x11, 0x1f
/* 802E4934  B0 03 00 20 */	sth r0, 0x20(r3)
/* 802E4938  54 A0 F4 BE */	rlwinm r0, r5, 0x1e, 0x12, 0x1f
/* 802E493C  B0 03 00 22 */	sth r0, 0x22(r3)
/* 802E4940  B1 03 00 24 */	sth r8, 0x24(r3)
/* 802E4944  55 00 FC 7E */	rlwinm r0, r8, 0x1f, 0x11, 0x1f
/* 802E4948  B0 03 00 26 */	sth r0, 0x26(r3)
/* 802E494C  55 00 F4 BE */	rlwinm r0, r8, 0x1e, 0x12, 0x1f
/* 802E4950  B0 03 00 28 */	sth r0, 0x28(r3)
/* 802E4954  38 21 00 70 */	addi r1, r1, 0x70
/* 802E4958  4E 80 00 20 */	blr 
