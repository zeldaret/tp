lbl_8035F8B8:
/* 8035F8B8  7C 08 02 A6 */	mflr r0
/* 8035F8BC  90 01 00 04 */	stw r0, 4(r1)
/* 8035F8C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8035F8C4  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 8035F8C8  BE E1 00 34 */	stmw r23, 0x34(r1)
/* 8035F8CC  3B C0 00 00 */	li r30, 0
/* 8035F8D0  54 7F EF FF */	rlwinm. r31, r3, 0x1d, 0x1f, 0x1f
/* 8035F8D4  3B 04 00 00 */	addi r24, r4, 0
/* 8035F8D8  3B BE 00 00 */	addi r29, r30, 0
/* 8035F8DC  54 79 07 7E */	clrlwi r25, r3, 0x1d
/* 8035F8E0  3B 80 00 00 */	li r28, 0
/* 8035F8E4  3B 60 00 00 */	li r27, 0
/* 8035F8E8  3B 40 00 00 */	li r26, 0
/* 8035F8EC  41 82 00 4C */	beq lbl_8035F938
/* 8035F8F0  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8035F8F4  41 82 00 0C */	beq lbl_8035F900
/* 8035F8F8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8035F8FC  40 82 00 14 */	bne lbl_8035F910
lbl_8035F900:
/* 8035F900  C0 02 CC 18 */	lfs f0, lit_211(r2)
/* 8035F904  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8035F908  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8035F90C  48 00 01 18 */	b lbl_8035FA24
lbl_8035F910:
/* 8035F910  EC A2 08 28 */	fsubs f5, f2, f1
/* 8035F914  C0 C2 CC 1C */	lfs f6, lit_212(r2)
/* 8035F918  EC 44 18 28 */	fsubs f2, f4, f3
/* 8035F91C  EC 01 18 28 */	fsubs f0, f1, f3
/* 8035F920  EC 66 28 24 */	fdivs f3, f6, f5
/* 8035F924  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8035F928  EC 03 00 32 */	fmuls f0, f3, f0
/* 8035F92C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8035F930  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8035F934  48 00 00 F0 */	b lbl_8035FA24
lbl_8035F938:
/* 8035F938  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8035F93C  41 82 00 0C */	beq lbl_8035F948
/* 8035F940  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8035F944  40 82 00 14 */	bne lbl_8035F958
lbl_8035F948:
/* 8035F948  C0 62 CC 18 */	lfs f3, lit_211(r2)
/* 8035F94C  C0 82 CC 20 */	lfs f4, lit_213(r2)
/* 8035F950  FF E0 18 90 */	fmr f31, f3
/* 8035F954  48 00 00 20 */	b lbl_8035F974
lbl_8035F958:
/* 8035F958  EC 04 18 28 */	fsubs f0, f4, f3
/* 8035F95C  EC A2 08 28 */	fsubs f5, f2, f1
/* 8035F960  EC 44 00 F2 */	fmuls f2, f4, f3
/* 8035F964  EC 84 00 24 */	fdivs f4, f4, f0
/* 8035F968  EC 00 01 72 */	fmuls f0, f0, f5
/* 8035F96C  EF E1 28 24 */	fdivs f31, f1, f5
/* 8035F970  EC 62 00 24 */	fdivs f3, f2, f0
lbl_8035F974:
/* 8035F974  C0 22 CC 20 */	lfs f1, lit_213(r2)
/* 8035F978  38 60 00 00 */	li r3, 0
/* 8035F97C  C8 02 CC 28 */	lfd f0, lit_214(r2)
/* 8035F980  48 00 00 0C */	b lbl_8035F98C
lbl_8035F984:
/* 8035F984  EC 84 00 72 */	fmuls f4, f4, f1
/* 8035F988  38 63 00 01 */	addi r3, r3, 1
lbl_8035F98C:
/* 8035F98C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8035F990  41 81 FF F4 */	bgt lbl_8035F984
/* 8035F994  C8 02 CC 38 */	lfd f0, lit_216(r2)
/* 8035F998  C0 42 CC 30 */	lfs f2, lit_215(r2)
/* 8035F99C  C0 22 CC 18 */	lfs f1, lit_211(r2)
/* 8035F9A0  48 00 00 0C */	b lbl_8035F9AC
lbl_8035F9A4:
/* 8035F9A4  EC 84 00 B2 */	fmuls f4, f4, f2
/* 8035F9A8  38 63 FF FF */	addi r3, r3, -1
lbl_8035F9AC:
/* 8035F9AC  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8035F9B0  40 81 00 0C */	ble lbl_8035F9BC
/* 8035F9B4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8035F9B8  41 80 FF EC */	blt lbl_8035F9A4
lbl_8035F9BC:
/* 8035F9BC  3A E3 00 01 */	addi r23, r3, 1
/* 8035F9C0  C0 02 CC 40 */	lfs f0, lit_217(r2)
/* 8035F9C4  38 00 00 01 */	li r0, 1
/* 8035F9C8  C8 42 CC 48 */	lfd f2, lit_219(r2)
/* 8035F9CC  7C 00 B8 30 */	slw r0, r0, r23
/* 8035F9D0  EC 20 01 32 */	fmuls f1, f0, f4
/* 8035F9D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035F9D8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8035F9DC  3C 00 43 30 */	lis r0, 0x4330
/* 8035F9E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8035F9E4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8035F9E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8035F9EC  EC 03 00 24 */	fdivs f0, f3, f0
/* 8035F9F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8035F9F4  48 00 26 B9 */	bl __cvt_fp2unsigned
/* 8035F9F8  50 7E 02 3E */	rlwimi r30, r3, 0, 8, 0x1f
/* 8035F9FC  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 8035FA00  52 FD 06 FE */	rlwimi r29, r23, 0, 0x1b, 0x1f
/* 8035FA04  38 00 00 EF */	li r0, 0xef
/* 8035FA08  38 7E 00 00 */	addi r3, r30, 0
/* 8035FA0C  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 8035FA10  38 00 00 F0 */	li r0, 0xf0
/* 8035FA14  38 9D 00 00 */	addi r4, r29, 0
/* 8035FA18  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 8035FA1C  3B C3 00 00 */	addi r30, r3, 0
/* 8035FA20  3B A4 00 00 */	addi r29, r4, 0
lbl_8035FA24:
/* 8035FA24  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 8035FA28  38 00 00 61 */	li r0, 0x61
/* 8035FA2C  81 38 00 00 */	lwz r9, 0(r24)
/* 8035FA30  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FA34  50 FB A5 7E */	rlwimi r27, r7, 0x14, 0x15, 0x1f
/* 8035FA38  38 DB 00 00 */	addi r6, r27, 0
/* 8035FA3C  98 04 80 00 */	stb r0, 0x8000(r4)
/* 8035FA40  50 E6 A3 68 */	rlwimi r6, r7, 0x14, 0xd, 0x14
/* 8035FA44  81 01 00 20 */	lwz r8, 0x20(r1)
/* 8035FA48  38 A0 00 EE */	li r5, 0xee
/* 8035FA4C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035FA50  50 E6 A3 18 */	rlwimi r6, r7, 0x14, 0xc, 0xc
/* 8035FA54  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 8035FA58  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035FA5C  51 1A A5 7E */	rlwimi r26, r8, 0x14, 0x15, 0x1f
/* 8035FA60  7F 46 D3 78 */	mr r6, r26
/* 8035FA64  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8035FA68  51 06 A3 68 */	rlwimi r6, r8, 0x14, 0xd, 0x14
/* 8035FA6C  51 06 A3 18 */	rlwimi r6, r8, 0x14, 0xc, 0xc
/* 8035FA70  93 C4 80 00 */	stw r30, -0x8000(r4)
/* 8035FA74  53 E6 A2 D6 */	rlwimi r6, r31, 0x14, 0xb, 0xb
/* 8035FA78  38 A0 00 F1 */	li r5, 0xf1
/* 8035FA7C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8035FA80  53 26 AA 14 */	rlwimi r6, r25, 0x15, 8, 0xa
/* 8035FA84  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 8035FA88  93 A4 80 00 */	stw r29, -0x8000(r4)
/* 8035FA8C  51 3C C2 3E */	rlwimi r28, r9, 0x18, 8, 0x1f
/* 8035FA90  38 A0 00 F2 */	li r5, 0xf2
/* 8035FA94  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8035FA98  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035FA9C  38 DC 00 00 */	addi r6, r28, 0
/* 8035FAA0  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 8035FAA4  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8035FAA8  38 00 00 00 */	li r0, 0
/* 8035FAAC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035FAB0  B0 03 00 02 */	sth r0, 2(r3)
/* 8035FAB4  BA E1 00 34 */	lmw r23, 0x34(r1)
/* 8035FAB8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8035FABC  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 8035FAC0  38 21 00 60 */	addi r1, r1, 0x60
/* 8035FAC4  7C 08 03 A6 */	mtlr r0
/* 8035FAC8  4E 80 00 20 */	blr 
