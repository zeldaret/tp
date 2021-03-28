lbl_800E4FA8:
/* 800E4FA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E4FAC  7C 08 02 A6 */	mflr r0
/* 800E4FB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E4FB4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800E4FB8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800E4FBC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E4FC0  7C 7F 1B 78 */	mr r31, r3
/* 800E4FC4  FF E0 10 90 */	fmr f31, f2
/* 800E4FC8  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E4FCC  C0 43 33 EC */	lfs f2, 0x33ec(r3)
/* 800E4FD0  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 800E4FD4  41 82 01 24 */	beq lbl_800E50F8
/* 800E4FD8  EF FF 00 B2 */	fmuls f31, f31, f2
/* 800E4FDC  C0 02 94 48 */	lfs f0, lit_14781(r2)
/* 800E4FE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800E4FE4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E4FE8  FC 00 00 1E */	fctiwz f0, f0
/* 800E4FEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 800E4FF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800E4FF4  38 A0 00 00 */	li r5, 0
/* 800E4FF8  B0 BF 31 2A */	sth r5, 0x312a(r31)
/* 800E4FFC  B0 1F 31 2C */	sth r0, 0x312c(r31)
/* 800E5000  B0 1F 31 2E */	sth r0, 0x312e(r31)
/* 800E5004  B0 BF 31 36 */	sth r5, 0x3136(r31)
/* 800E5008  B0 BF 31 38 */	sth r5, 0x3138(r31)
/* 800E500C  B0 1F 31 3A */	sth r0, 0x313a(r31)
/* 800E5010  B0 BF 31 30 */	sth r5, 0x3130(r31)
/* 800E5014  7C 00 07 34 */	extsh r0, r0
/* 800E5018  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800E501C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 800E5020  90 81 00 14 */	stw r4, 0x14(r1)
/* 800E5024  3C 60 43 30 */	lis r3, 0x4330
/* 800E5028  90 61 00 10 */	stw r3, 0x10(r1)
/* 800E502C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800E5030  EC 20 10 28 */	fsubs f1, f0, f2
/* 800E5034  C0 02 94 4C */	lfs f0, lit_14782(r2)
/* 800E5038  EC 80 07 F2 */	fmuls f4, f0, f31
/* 800E503C  EC 01 20 2A */	fadds f0, f1, f4
/* 800E5040  FC 00 00 1E */	fctiwz f0, f0
/* 800E5044  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800E5048  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800E504C  B0 1F 31 32 */	sth r0, 0x3132(r31)
/* 800E5050  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800E5054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5058  B0 1F 31 34 */	sth r0, 0x3134(r31)
/* 800E505C  B0 BF 31 3C */	sth r5, 0x313c(r31)
/* 800E5060  B0 BF 31 3E */	sth r5, 0x313e(r31)
/* 800E5064  90 81 00 2C */	stw r4, 0x2c(r1)
/* 800E5068  90 61 00 28 */	stw r3, 0x28(r1)
/* 800E506C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800E5070  EC 20 10 28 */	fsubs f1, f0, f2
/* 800E5074  C0 02 94 50 */	lfs f0, lit_14783(r2)
/* 800E5078  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E507C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5080  FC 00 00 1E */	fctiwz f0, f0
/* 800E5084  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800E5088  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E508C  B0 1F 31 40 */	sth r0, 0x3140(r31)
/* 800E5090  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 800E5094  40 80 00 40 */	bge lbl_800E50D4
/* 800E5098  A8 7F 31 2E */	lha r3, 0x312e(r31)
/* 800E509C  C0 02 94 54 */	lfs f0, lit_14784(r2)
/* 800E50A0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E50A4  FC 00 00 1E */	fctiwz f0, f0
/* 800E50A8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800E50AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E50B0  7C 03 02 14 */	add r0, r3, r0
/* 800E50B4  B0 1F 31 2E */	sth r0, 0x312e(r31)
/* 800E50B8  A8 7F 31 38 */	lha r3, 0x3138(r31)
/* 800E50BC  FC 00 20 1E */	fctiwz f0, f4
/* 800E50C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800E50C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800E50C8  7C 03 02 14 */	add r0, r3, r0
/* 800E50CC  B0 1F 31 38 */	sth r0, 0x3138(r31)
/* 800E50D0  48 00 00 64 */	b lbl_800E5134
lbl_800E50D4:
/* 800E50D4  A8 7F 31 38 */	lha r3, 0x3138(r31)
/* 800E50D8  C0 02 94 58 */	lfs f0, lit_14785(r2)
/* 800E50DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E50E0  FC 00 00 1E */	fctiwz f0, f0
/* 800E50E4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800E50E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E50EC  7C 03 02 14 */	add r0, r3, r0
/* 800E50F0  B0 1F 31 38 */	sth r0, 0x3138(r31)
/* 800E50F4  48 00 00 40 */	b lbl_800E5134
lbl_800E50F8:
/* 800E50F8  4B FF EE 29 */	bl checkGrabRooster__9daAlink_cFv
/* 800E50FC  2C 03 00 00 */	cmpwi r3, 0
/* 800E5100  41 82 00 34 */	beq lbl_800E5134
/* 800E5104  C0 02 94 5C */	lfs f0, lit_14786(r2)
/* 800E5108  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E510C  FC 00 00 1E */	fctiwz f0, f0
/* 800E5110  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800E5114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E5118  B0 1F 31 38 */	sth r0, 0x3138(r31)
/* 800E511C  C0 02 94 60 */	lfs f0, lit_14787(r2)
/* 800E5120  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800E5124  FC 00 00 1E */	fctiwz f0, f0
/* 800E5128  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800E512C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800E5130  B0 1F 31 3E */	sth r0, 0x313e(r31)
lbl_800E5134:
/* 800E5134  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800E5138  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800E513C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E5140  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E5144  7C 08 03 A6 */	mtlr r0
/* 800E5148  38 21 00 50 */	addi r1, r1, 0x50
/* 800E514C  4E 80 00 20 */	blr 
