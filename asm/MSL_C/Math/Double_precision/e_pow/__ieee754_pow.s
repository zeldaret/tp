lbl_80369ED8:
/* 80369ED8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80369EDC  7C 08 02 A6 */	mflr r0
/* 80369EE0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80369EE4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80369EE8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80369EEC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80369EF0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80369EF4  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80369EF8  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80369EFC  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80369F00  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80369F04  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80369F08  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80369F0C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80369F10  3C 60 80 3A */	lis r3, bp@ha /* 0x803A2380@ha */
/* 80369F14  38 63 23 80 */	addi r3, r3, bp@l /* 0x803A2380@l */
/* 80369F18  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80369F1C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80369F20  81 61 00 14 */	lwz r11, 0x14(r1)
/* 80369F24  54 A7 00 7E */	clrlwi r7, r5, 1
/* 80369F28  80 01 00 08 */	lwz r0, 8(r1)
/* 80369F2C  7C E4 5B 79 */	or. r4, r7, r11
/* 80369F30  81 41 00 0C */	lwz r10, 0xc(r1)
/* 80369F34  54 06 00 7E */	clrlwi r6, r0, 1
/* 80369F38  40 82 00 0C */	bne lbl_80369F44
/* 80369F3C  C8 22 CE 58 */	lfd f1, lit_336(r2)
/* 80369F40  48 00 07 90 */	b lbl_8036A6D0
lbl_80369F44:
/* 80369F44  3C 80 7F F0 */	lis r4, 0x7ff0
/* 80369F48  7C 06 20 00 */	cmpw r6, r4
/* 80369F4C  41 81 00 38 */	bgt lbl_80369F84
/* 80369F50  3C 86 80 10 */	addis r4, r6, 0x8010
/* 80369F54  28 04 00 00 */	cmplwi r4, 0
/* 80369F58  40 82 00 0C */	bne lbl_80369F64
/* 80369F5C  28 0A 00 00 */	cmplwi r10, 0
/* 80369F60  40 82 00 24 */	bne lbl_80369F84
lbl_80369F64:
/* 80369F64  3C 80 7F F0 */	lis r4, 0x7ff0
/* 80369F68  7C 07 20 00 */	cmpw r7, r4
/* 80369F6C  41 81 00 18 */	bgt lbl_80369F84
/* 80369F70  3C 87 80 10 */	addis r4, r7, 0x8010
/* 80369F74  28 04 00 00 */	cmplwi r4, 0
/* 80369F78  40 82 00 1C */	bne lbl_80369F94
/* 80369F7C  28 0B 00 00 */	cmplwi r11, 0
/* 80369F80  41 82 00 14 */	beq lbl_80369F94
lbl_80369F84:
/* 80369F84  C8 21 00 08 */	lfd f1, 8(r1)
/* 80369F88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80369F8C  FC 21 00 2A */	fadd f1, f1, f0
/* 80369F90  48 00 07 40 */	b lbl_8036A6D0
lbl_80369F94:
/* 80369F94  2C 00 00 00 */	cmpwi r0, 0
/* 80369F98  38 80 00 00 */	li r4, 0
/* 80369F9C  40 80 00 78 */	bge lbl_8036A014
/* 80369FA0  3D 00 43 40 */	lis r8, 0x4340
/* 80369FA4  7C 07 40 00 */	cmpw r7, r8
/* 80369FA8  41 80 00 0C */	blt lbl_80369FB4
/* 80369FAC  38 80 00 02 */	li r4, 2
/* 80369FB0  48 00 00 64 */	b lbl_8036A014
lbl_80369FB4:
/* 80369FB4  3D 00 3F F0 */	lis r8, 0x3ff0
/* 80369FB8  7C 07 40 00 */	cmpw r7, r8
/* 80369FBC  41 80 00 58 */	blt lbl_8036A014
/* 80369FC0  7C E8 A6 70 */	srawi r8, r7, 0x14
/* 80369FC4  39 08 FC 01 */	addi r8, r8, -1023
/* 80369FC8  2C 08 00 14 */	cmpwi r8, 0x14
/* 80369FCC  40 81 00 24 */	ble lbl_80369FF0
/* 80369FD0  21 08 00 34 */	subfic r8, r8, 0x34
/* 80369FD4  7D 69 44 30 */	srw r9, r11, r8
/* 80369FD8  7D 28 40 30 */	slw r8, r9, r8
/* 80369FDC  7C 0B 40 40 */	cmplw r11, r8
/* 80369FE0  40 82 00 34 */	bne lbl_8036A014
/* 80369FE4  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 80369FE8  20 84 00 02 */	subfic r4, r4, 2
/* 80369FEC  48 00 00 28 */	b lbl_8036A014
lbl_80369FF0:
/* 80369FF0  28 0B 00 00 */	cmplwi r11, 0
/* 80369FF4  40 82 00 20 */	bne lbl_8036A014
/* 80369FF8  21 08 00 14 */	subfic r8, r8, 0x14
/* 80369FFC  7C E9 46 30 */	sraw r9, r7, r8
/* 8036A000  7D 28 40 30 */	slw r8, r9, r8
/* 8036A004  7C 07 40 00 */	cmpw r7, r8
/* 8036A008  40 82 00 0C */	bne lbl_8036A014
/* 8036A00C  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 8036A010  20 84 00 02 */	subfic r4, r4, 2
lbl_8036A014:
/* 8036A014  28 0B 00 00 */	cmplwi r11, 0
/* 8036A018  40 82 00 CC */	bne lbl_8036A0E4
/* 8036A01C  3D 07 80 10 */	addis r8, r7, 0x8010
/* 8036A020  28 08 00 00 */	cmplwi r8, 0
/* 8036A024  40 82 00 5C */	bne lbl_8036A080
/* 8036A028  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8036A02C  7C 00 53 79 */	or. r0, r0, r10
/* 8036A030  40 82 00 10 */	bne lbl_8036A040
/* 8036A034  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8036A038  FC 20 00 28 */	fsub f1, f0, f0
/* 8036A03C  48 00 06 94 */	b lbl_8036A6D0
lbl_8036A040:
/* 8036A040  3C 00 3F F0 */	lis r0, 0x3ff0
/* 8036A044  7C 06 00 00 */	cmpw r6, r0
/* 8036A048  41 80 00 1C */	blt lbl_8036A064
/* 8036A04C  2C 05 00 00 */	cmpwi r5, 0
/* 8036A050  41 80 00 0C */	blt lbl_8036A05C
/* 8036A054  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036A058  48 00 06 78 */	b lbl_8036A6D0
lbl_8036A05C:
/* 8036A05C  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A060  48 00 06 70 */	b lbl_8036A6D0
lbl_8036A064:
/* 8036A064  2C 05 00 00 */	cmpwi r5, 0
/* 8036A068  40 80 00 10 */	bge lbl_8036A078
/* 8036A06C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8036A070  FC 20 00 50 */	fneg f1, f0
/* 8036A074  48 00 06 5C */	b lbl_8036A6D0
lbl_8036A078:
/* 8036A078  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A07C  48 00 06 54 */	b lbl_8036A6D0
lbl_8036A080:
/* 8036A080  3D 07 C0 10 */	addis r8, r7, 0xc010
/* 8036A084  28 08 00 00 */	cmplwi r8, 0
/* 8036A088  40 82 00 24 */	bne lbl_8036A0AC
/* 8036A08C  2C 05 00 00 */	cmpwi r5, 0
/* 8036A090  40 80 00 14 */	bge lbl_8036A0A4
/* 8036A094  C8 22 CE 58 */	lfd f1, lit_336(r2)
/* 8036A098  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036A09C  FC 21 00 24 */	fdiv f1, f1, f0
/* 8036A0A0  48 00 06 30 */	b lbl_8036A6D0
lbl_8036A0A4:
/* 8036A0A4  C8 21 00 08 */	lfd f1, 8(r1)
/* 8036A0A8  48 00 06 28 */	b lbl_8036A6D0
lbl_8036A0AC:
/* 8036A0AC  3D 05 C0 00 */	addis r8, r5, 0xc000
/* 8036A0B0  28 08 00 00 */	cmplwi r8, 0
/* 8036A0B4  40 82 00 10 */	bne lbl_8036A0C4
/* 8036A0B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036A0BC  FC 20 00 32 */	fmul f1, f0, f0
/* 8036A0C0  48 00 06 10 */	b lbl_8036A6D0
lbl_8036A0C4:
/* 8036A0C4  3D 05 C0 20 */	addis r8, r5, 0xc020
/* 8036A0C8  28 08 00 00 */	cmplwi r8, 0
/* 8036A0CC  40 82 00 18 */	bne lbl_8036A0E4
/* 8036A0D0  2C 00 00 00 */	cmpwi r0, 0
/* 8036A0D4  41 80 00 10 */	blt lbl_8036A0E4
/* 8036A0D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 8036A0DC  48 00 29 79 */	bl sqrt
/* 8036A0E0  48 00 05 F0 */	b lbl_8036A6D0
lbl_8036A0E4:
/* 8036A0E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036A0E8  28 0A 00 00 */	cmplwi r10, 0
/* 8036A0EC  FC 20 02 10 */	fabs f1, f0
/* 8036A0F0  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8036A0F4  40 82 00 80 */	bne lbl_8036A174
/* 8036A0F8  3D 06 80 10 */	addis r8, r6, 0x8010
/* 8036A0FC  28 08 00 00 */	cmplwi r8, 0
/* 8036A100  41 82 00 18 */	beq lbl_8036A118
/* 8036A104  2C 06 00 00 */	cmpwi r6, 0
/* 8036A108  41 82 00 10 */	beq lbl_8036A118
/* 8036A10C  3D 06 C0 10 */	addis r8, r6, 0xc010
/* 8036A110  28 08 00 00 */	cmplwi r8, 0
/* 8036A114  40 82 00 60 */	bne lbl_8036A174
lbl_8036A118:
/* 8036A118  2C 05 00 00 */	cmpwi r5, 0
/* 8036A11C  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8036A120  40 80 00 10 */	bge lbl_8036A130
/* 8036A124  C8 02 CE 58 */	lfd f0, lit_336(r2)
/* 8036A128  FC 00 08 24 */	fdiv f0, f0, f1
/* 8036A12C  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_8036A130:
/* 8036A130  2C 00 00 00 */	cmpwi r0, 0
/* 8036A134  40 80 00 38 */	bge lbl_8036A16C
/* 8036A138  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 8036A13C  7C 00 23 79 */	or. r0, r0, r4
/* 8036A140  40 82 00 18 */	bne lbl_8036A158
/* 8036A144  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8036A148  FC 00 00 28 */	fsub f0, f0, f0
/* 8036A14C  FC 00 00 24 */	fdiv f0, f0, f0
/* 8036A150  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8036A154  48 00 00 18 */	b lbl_8036A16C
lbl_8036A158:
/* 8036A158  2C 04 00 01 */	cmpwi r4, 1
/* 8036A15C  40 82 00 10 */	bne lbl_8036A16C
/* 8036A160  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8036A164  FC 00 00 50 */	fneg f0, f0
/* 8036A168  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_8036A16C:
/* 8036A16C  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 8036A170  48 00 05 60 */	b lbl_8036A6D0
lbl_8036A174:
/* 8036A174  7C 08 FE 70 */	srawi r8, r0, 0x1f
/* 8036A178  38 08 00 01 */	addi r0, r8, 1
/* 8036A17C  7C 08 23 79 */	or. r8, r0, r4
/* 8036A180  40 82 00 18 */	bne lbl_8036A198
/* 8036A184  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8036A188  38 00 00 21 */	li r0, 0x21
/* 8036A18C  90 0D 94 28 */	stw r0, errno(r13)
/* 8036A190  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8036A194  48 00 05 3C */	b lbl_8036A6D0
lbl_8036A198:
/* 8036A198  3D 00 41 E0 */	lis r8, 0x41e0
/* 8036A19C  7C 07 40 00 */	cmpw r7, r8
/* 8036A1A0  40 81 01 04 */	ble lbl_8036A2A4
/* 8036A1A4  3C 60 43 F0 */	lis r3, 0x43f0
/* 8036A1A8  7C 07 18 00 */	cmpw r7, r3
/* 8036A1AC  40 81 00 4C */	ble lbl_8036A1F8
/* 8036A1B0  3C 60 3F F0 */	lis r3, 0x3FF0 /* 0x3FEFFFFF@ha */
/* 8036A1B4  38 E3 FF FF */	addi r7, r3, 0xFFFF /* 0x3FEFFFFF@l */
/* 8036A1B8  7C 06 38 00 */	cmpw r6, r7
/* 8036A1BC  41 81 00 1C */	bgt lbl_8036A1D8
/* 8036A1C0  2C 05 00 00 */	cmpwi r5, 0
/* 8036A1C4  40 80 00 0C */	bge lbl_8036A1D0
/* 8036A1C8  C8 22 CE 68 */	lfd f1, lit_338(r2)
/* 8036A1CC  48 00 05 04 */	b lbl_8036A6D0
lbl_8036A1D0:
/* 8036A1D0  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A1D4  48 00 04 FC */	b lbl_8036A6D0
lbl_8036A1D8:
/* 8036A1D8  7C 06 18 00 */	cmpw r6, r3
/* 8036A1DC  41 80 00 1C */	blt lbl_8036A1F8
/* 8036A1E0  2C 05 00 00 */	cmpwi r5, 0
/* 8036A1E4  40 81 00 0C */	ble lbl_8036A1F0
/* 8036A1E8  C8 22 CE 68 */	lfd f1, lit_338(r2)
/* 8036A1EC  48 00 04 E4 */	b lbl_8036A6D0
lbl_8036A1F0:
/* 8036A1F0  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A1F4  48 00 04 DC */	b lbl_8036A6D0
lbl_8036A1F8:
/* 8036A1F8  3C 60 3F F0 */	lis r3, 0x3FF0 /* 0x3FEFFFFF@ha */
/* 8036A1FC  38 E3 FF FF */	addi r7, r3, 0xFFFF /* 0x3FEFFFFF@l */
/* 8036A200  7C 06 38 00 */	cmpw r6, r7
/* 8036A204  40 80 00 1C */	bge lbl_8036A220
/* 8036A208  2C 05 00 00 */	cmpwi r5, 0
/* 8036A20C  40 80 00 0C */	bge lbl_8036A218
/* 8036A210  C8 22 CE 68 */	lfd f1, lit_338(r2)
/* 8036A214  48 00 04 BC */	b lbl_8036A6D0
lbl_8036A218:
/* 8036A218  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A21C  48 00 04 B4 */	b lbl_8036A6D0
lbl_8036A220:
/* 8036A220  7C 06 18 00 */	cmpw r6, r3
/* 8036A224  40 81 00 1C */	ble lbl_8036A240
/* 8036A228  2C 05 00 00 */	cmpwi r5, 0
/* 8036A22C  40 81 00 0C */	ble lbl_8036A238
/* 8036A230  C8 22 CE 68 */	lfd f1, lit_338(r2)
/* 8036A234  48 00 04 9C */	b lbl_8036A6D0
lbl_8036A238:
/* 8036A238  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A23C  48 00 04 94 */	b lbl_8036A6D0
lbl_8036A240:
/* 8036A240  C8 41 00 08 */	lfd f2, 8(r1)
/* 8036A244  38 60 00 00 */	li r3, 0
/* 8036A248  C8 02 CE 58 */	lfd f0, lit_336(r2)
/* 8036A24C  C8 22 CE 80 */	lfd f1, lit_341(r2)
/* 8036A250  FC C2 00 28 */	fsub f6, f2, f0
/* 8036A254  C8 02 CE 78 */	lfd f0, lit_340(r2)
/* 8036A258  C8 42 CE 88 */	lfd f2, lit_342(r2)
/* 8036A25C  C8 62 CE 70 */	lfd f3, lit_339(r2)
/* 8036A260  FC 81 01 BC */	fnmsub f4, f1, f6, f0
/* 8036A264  C8 02 CE 98 */	lfd f0, lit_344(r2)
/* 8036A268  C8 22 CE 90 */	lfd f1, lit_343(r2)
/* 8036A26C  FC A6 01 B2 */	fmul f5, f6, f6
/* 8036A270  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 8036A274  FC 66 19 3C */	fnmsub f3, f6, f4, f3
/* 8036A278  FC 42 01 B2 */	fmul f2, f2, f6
/* 8036A27C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8036A280  FC 00 00 F2 */	fmul f0, f0, f3
/* 8036A284  FC 21 01 B8 */	fmsub f1, f1, f6, f0
/* 8036A288  FC 02 08 2A */	fadd f0, f2, f1
/* 8036A28C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8036A290  90 61 00 34 */	stw r3, 0x34(r1)
/* 8036A294  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8036A298  FC 00 10 28 */	fsub f0, f0, f2
/* 8036A29C  FC 01 00 28 */	fsub f0, f1, f0
/* 8036A2A0  48 00 01 EC */	b lbl_8036A48C
lbl_8036A2A4:
/* 8036A2A4  3C A0 00 10 */	lis r5, 0x10
/* 8036A2A8  39 40 00 00 */	li r10, 0
/* 8036A2AC  7C 06 28 00 */	cmpw r6, r5
/* 8036A2B0  40 80 00 1C */	bge lbl_8036A2CC
/* 8036A2B4  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 8036A2B8  39 40 FF CB */	li r10, -53
/* 8036A2BC  C8 02 CE A0 */	lfd f0, lit_345(r2)
/* 8036A2C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8036A2C4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8036A2C8  80 C1 00 48 */	lwz r6, 0x48(r1)
lbl_8036A2CC:
/* 8036A2CC  3C A0 00 04 */	lis r5, 0x0004 /* 0x0003988E@ha */
/* 8036A2D0  54 C8 03 3E */	clrlwi r8, r6, 0xc
/* 8036A2D4  38 A5 98 8E */	addi r5, r5, 0x988E /* 0x0003988E@l */
/* 8036A2D8  7C C6 A6 70 */	srawi r6, r6, 0x14
/* 8036A2DC  7C 08 28 00 */	cmpw r8, r5
/* 8036A2E0  65 07 3F F0 */	oris r7, r8, 0x3ff0
/* 8036A2E4  7D 46 52 14 */	add r10, r6, r10
/* 8036A2E8  39 4A FC 01 */	addi r10, r10, -1023
/* 8036A2EC  41 81 00 0C */	bgt lbl_8036A2F8
/* 8036A2F0  39 60 00 00 */	li r11, 0
/* 8036A2F4  48 00 00 28 */	b lbl_8036A31C
lbl_8036A2F8:
/* 8036A2F8  3C A0 00 0C */	lis r5, 0x000C /* 0x000BB67A@ha */
/* 8036A2FC  38 A5 B6 7A */	addi r5, r5, 0xB67A /* 0x000BB67A@l */
/* 8036A300  7C 08 28 00 */	cmpw r8, r5
/* 8036A304  40 80 00 0C */	bge lbl_8036A310
/* 8036A308  39 60 00 01 */	li r11, 1
/* 8036A30C  48 00 00 10 */	b lbl_8036A31C
lbl_8036A310:
/* 8036A310  3C E7 FF F0 */	addis r7, r7, 0xfff0
/* 8036A314  39 60 00 00 */	li r11, 0
/* 8036A318  39 4A 00 01 */	addi r10, r10, 1
lbl_8036A31C:
/* 8036A31C  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8036A320  7C E5 0E 70 */	srawi r5, r7, 1
/* 8036A324  55 69 18 38 */	slwi r9, r11, 3
/* 8036A328  38 C3 00 00 */	addi r6, r3, 0
/* 8036A32C  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 8036A330  64 A8 20 00 */	oris r8, r5, 0x2000
/* 8036A334  7C A6 4C AE */	lfdx f5, r6, r9
/* 8036A338  38 E3 00 20 */	addi r7, r3, 0x20
/* 8036A33C  C8 22 CE 60 */	lfd f1, lit_337(r2)
/* 8036A340  6D 46 80 00 */	xoris r6, r10, 0x8000
/* 8036A344  FC 1E 28 2A */	fadd f0, f30, f5
/* 8036A348  C8 42 CE 58 */	lfd f2, lit_336(r2)
/* 8036A34C  3C A0 43 30 */	lis r5, 0x4330
/* 8036A350  39 43 00 10 */	addi r10, r3, 0x10
/* 8036A354  FF FE 28 28 */	fsub f31, f30, f5
/* 8036A358  C8 82 CE D0 */	lfd f4, lit_351(r2)
/* 8036A35C  FF 82 00 24 */	fdiv f28, f2, f0
/* 8036A360  C8 02 CE C8 */	lfd f0, lit_350(r2)
/* 8036A364  C8 62 CE C0 */	lfd f3, lit_349(r2)
/* 8036A368  3D 08 00 08 */	addis r8, r8, 8
/* 8036A36C  55 63 90 1A */	slwi r3, r11, 0x12
/* 8036A370  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8036A374  FC 3F 07 32 */	fmul f1, f31, f28
/* 8036A378  7C 68 1A 14 */	add r3, r8, r3
/* 8036A37C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8036A380  38 60 00 00 */	li r3, 0
/* 8036A384  C8 42 CE B8 */	lfd f2, lit_348(r2)
/* 8036A388  C9 81 00 18 */	lfd f12, 0x18(r1)
/* 8036A38C  FF 61 00 72 */	fmul f27, f1, f1
/* 8036A390  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8036A394  C9 62 CE B0 */	lfd f11, lit_347(r2)
/* 8036A398  90 61 00 24 */	stw r3, 0x24(r1)
/* 8036A39C  FD AC 28 28 */	fsub f13, f12, f5
/* 8036A3A0  C9 22 CE A8 */	lfd f9, lit_346(r2)
/* 8036A3A4  FC 84 06 FA */	fmadd f4, f4, f27, f0
/* 8036A3A8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8036A3AC  C9 42 CE D8 */	lfd f10, lit_352(r2)
/* 8036A3B0  FC 1D 07 72 */	fmul f0, f29, f29
/* 8036A3B4  C8 A2 CE F0 */	lfd f5, lit_355(r2)
/* 8036A3B8  C8 C2 CE E8 */	lfd f6, lit_354(r2)
/* 8036A3BC  FC 7B 19 3A */	fmadd f3, f27, f4, f3
/* 8036A3C0  C9 02 CE E0 */	lfd f8, lit_353(r2)
/* 8036A3C4  7C E7 4C AE */	lfdx f7, r7, r9
/* 8036A3C8  FF FD FB 3C */	fnmsub f31, f29, f12, f31
/* 8036A3CC  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8036A3D0  C8 82 CF 60 */	lfd f4, lit_370(r2)
/* 8036A3D4  FD 9B 10 FA */	fmadd f12, f27, f3, f2
/* 8036A3D8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8036A3DC  7C 4A 4C AE */	lfdx f2, r10, r9
/* 8036A3E0  FF DE 68 28 */	fsub f30, f30, f13
/* 8036A3E4  C8 61 00 58 */	lfd f3, 0x58(r1)
/* 8036A3E8  FD BB 06 F2 */	fmul f13, f27, f27
/* 8036A3EC  FD 7B 5B 3A */	fmadd f11, f27, f12, f11
/* 8036A3F0  FD 9D FF BC */	fnmsub f12, f29, f30, f31
/* 8036A3F4  FD 3B 4A FA */	fmadd f9, f27, f11, f9
/* 8036A3F8  FF 7C 03 32 */	fmul f27, f28, f12
/* 8036A3FC  FD 8D 02 72 */	fmul f12, f13, f9
/* 8036A400  FD 7D 08 2A */	fadd f11, f29, f1
/* 8036A404  FD 2A 00 2A */	fadd f9, f10, f0
/* 8036A408  FC 63 20 28 */	fsub f3, f3, f4
/* 8036A40C  FD 9B 62 FA */	fmadd f12, f27, f11, f12
/* 8036A410  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 8036A414  FC 89 60 2A */	fadd f4, f9, f12
/* 8036A418  D8 81 00 18 */	stfd f4, 0x18(r1)
/* 8036A41C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8036A420  C9 21 00 18 */	lfd f9, 0x18(r1)
/* 8036A424  FC 89 50 28 */	fsub f4, f9, f10
/* 8036A428  FD 5D 02 72 */	fmul f10, f29, f9
/* 8036A42C  FC 04 00 28 */	fsub f0, f4, f0
/* 8036A430  FC 0C 00 28 */	fsub f0, f12, f0
/* 8036A434  FC 00 00 72 */	fmul f0, f0, f1
/* 8036A438  FC 9B 02 7A */	fmadd f4, f27, f9, f0
/* 8036A43C  FC 0A 20 2A */	fadd f0, f10, f4
/* 8036A440  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8036A444  90 61 00 44 */	stw r3, 0x44(r1)
/* 8036A448  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 8036A44C  FC 01 50 28 */	fsub f0, f1, f10
/* 8036A450  FD 08 00 72 */	fmul f8, f8, f1
/* 8036A454  FC 04 00 28 */	fsub f0, f4, f0
/* 8036A458  FC 05 00 32 */	fmul f0, f5, f0
/* 8036A45C  FC 06 00 7A */	fmadd f0, f6, f1, f0
/* 8036A460  FC 27 00 2A */	fadd f1, f7, f0
/* 8036A464  FC 08 08 2A */	fadd f0, f8, f1
/* 8036A468  FC 00 10 2A */	fadd f0, f0, f2
/* 8036A46C  FC 03 00 2A */	fadd f0, f3, f0
/* 8036A470  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8036A474  90 61 00 34 */	stw r3, 0x34(r1)
/* 8036A478  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8036A47C  FC 00 18 28 */	fsub f0, f0, f3
/* 8036A480  FC 00 10 28 */	fsub f0, f0, f2
/* 8036A484  FC 00 40 28 */	fsub f0, f0, f8
/* 8036A488  FC 01 00 28 */	fsub f0, f1, f0
lbl_8036A48C:
/* 8036A48C  38 64 FF FF */	addi r3, r4, -1
/* 8036A490  CB E2 CE 58 */	lfd f31, lit_336(r2)
/* 8036A494  7C 00 1B 79 */	or. r0, r0, r3
/* 8036A498  40 82 00 08 */	bne lbl_8036A4A0
/* 8036A49C  CB E2 CE F8 */	lfd f31, lit_356(r2)
lbl_8036A4A0:
/* 8036A4A0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8036A4A4  38 60 00 00 */	li r3, 0
/* 8036A4A8  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 8036A4AC  3C 00 40 90 */	lis r0, 0x4090
/* 8036A4B0  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8036A4B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8036A4B8  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8036A4BC  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 8036A4C0  FC 21 10 28 */	fsub f1, f1, f2
/* 8036A4C4  FC 42 00 F2 */	fmul f2, f2, f3
/* 8036A4C8  FD 83 00 7A */	fmadd f12, f3, f1, f0
/* 8036A4CC  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 8036A4D0  FC 0C 10 2A */	fadd f0, f12, f2
/* 8036A4D4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8036A4D8  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8036A4DC  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8036A4E0  7C 06 00 00 */	cmpw r6, r0
/* 8036A4E4  41 80 00 44 */	blt lbl_8036A528
/* 8036A4E8  3C 06 BF 70 */	addis r0, r6, 0xbf70
/* 8036A4EC  7C 00 2B 79 */	or. r0, r0, r5
/* 8036A4F0  41 82 00 14 */	beq lbl_8036A504
/* 8036A4F4  C8 22 CF 00 */	lfd f1, lit_357(r2)
/* 8036A4F8  FC 01 07 F2 */	fmul f0, f1, f31
/* 8036A4FC  FC 21 00 32 */	fmul f1, f1, f0
/* 8036A500  48 00 01 D0 */	b lbl_8036A6D0
lbl_8036A504:
/* 8036A504  C8 22 CF 08 */	lfd f1, lit_358(r2)
/* 8036A508  FC 00 10 28 */	fsub f0, f0, f2
/* 8036A50C  FC 21 60 2A */	fadd f1, f1, f12
/* 8036A510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8036A514  40 81 00 68 */	ble lbl_8036A57C
/* 8036A518  C8 22 CF 00 */	lfd f1, lit_357(r2)
/* 8036A51C  FC 01 07 F2 */	fmul f0, f1, f31
/* 8036A520  FC 21 00 32 */	fmul f1, f1, f0
/* 8036A524  48 00 01 AC */	b lbl_8036A6D0
lbl_8036A528:
/* 8036A528  3C 60 40 91 */	lis r3, 0x4091 /* 0x4090CC00@ha */
/* 8036A52C  54 C4 00 7E */	clrlwi r4, r6, 1
/* 8036A530  38 03 CC 00 */	addi r0, r3, 0xCC00 /* 0x4090CC00@l */
/* 8036A534  7C 04 00 00 */	cmpw r4, r0
/* 8036A538  41 80 00 44 */	blt lbl_8036A57C
/* 8036A53C  3C 66 3F 6F */	addis r3, r6, 0x3f6f
/* 8036A540  38 03 34 00 */	addi r0, r3, 0x3400
/* 8036A544  7C 00 2B 79 */	or. r0, r0, r5
/* 8036A548  41 82 00 14 */	beq lbl_8036A55C
/* 8036A54C  C8 22 CF 10 */	lfd f1, lit_359(r2)
/* 8036A550  FC 01 07 F2 */	fmul f0, f1, f31
/* 8036A554  FC 21 00 32 */	fmul f1, f1, f0
/* 8036A558  48 00 01 78 */	b lbl_8036A6D0
lbl_8036A55C:
/* 8036A55C  FC 00 10 28 */	fsub f0, f0, f2
/* 8036A560  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 8036A564  4C 40 13 82 */	cror 2, 0, 2
/* 8036A568  40 82 00 14 */	bne lbl_8036A57C
/* 8036A56C  C8 22 CF 10 */	lfd f1, lit_359(r2)
/* 8036A570  FC 01 07 F2 */	fmul f0, f1, f31
/* 8036A574  FC 21 00 32 */	fmul f1, f1, f0
/* 8036A578  48 00 01 58 */	b lbl_8036A6D0
lbl_8036A57C:
/* 8036A57C  54 C3 00 7E */	clrlwi r3, r6, 1
/* 8036A580  3C 00 3F E0 */	lis r0, 0x3fe0
/* 8036A584  7C 03 00 00 */	cmpw r3, r0
/* 8036A588  54 C4 65 7E */	rlwinm r4, r6, 0xc, 0x15, 0x1f
/* 8036A58C  38 60 00 00 */	li r3, 0
/* 8036A590  40 81 00 64 */	ble lbl_8036A5F4
/* 8036A594  3C 60 00 10 */	lis r3, 0x0010 /* 0x000FFFFF@ha */
/* 8036A598  38 04 FC 02 */	addi r0, r4, -1022
/* 8036A59C  7C 60 06 30 */	sraw r0, r3, r0
/* 8036A5A0  C8 02 CE 60 */	lfd f0, lit_337(r2)
/* 8036A5A4  7C E6 02 14 */	add r7, r6, r0
/* 8036A5A8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x000FFFFF@l */
/* 8036A5AC  54 E0 00 7E */	clrlwi r0, r7, 1
/* 8036A5B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8036A5B4  7C 04 A6 70 */	srawi r4, r0, 0x14
/* 8036A5B8  54 E0 03 3E */	clrlwi r0, r7, 0xc
/* 8036A5BC  38 A4 FC 01 */	addi r5, r4, -1023
/* 8036A5C0  2C 06 00 00 */	cmpwi r6, 0
/* 8036A5C4  7C 64 2E 30 */	sraw r4, r3, r5
/* 8036A5C8  64 03 00 10 */	oris r3, r0, 0x10
/* 8036A5CC  7C E4 20 78 */	andc r4, r7, r4
/* 8036A5D0  20 05 00 14 */	subfic r0, r5, 0x14
/* 8036A5D4  90 81 00 28 */	stw r4, 0x28(r1)
/* 8036A5D8  7C 63 06 30 */	sraw r3, r3, r0
/* 8036A5DC  40 80 00 08 */	bge lbl_8036A5E4
/* 8036A5E0  7C 63 00 D0 */	neg r3, r3
lbl_8036A5E4:
/* 8036A5E4  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 8036A5E8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8036A5EC  FC 01 00 28 */	fsub f0, f1, f0
/* 8036A5F0  D8 01 00 40 */	stfd f0, 0x40(r1)
lbl_8036A5F4:
/* 8036A5F4  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 8036A5F8  38 00 00 00 */	li r0, 0
/* 8036A5FC  C8 22 CF 28 */	lfd f1, lit_362(r2)
/* 8036A600  54 64 A0 16 */	slwi r4, r3, 0x14
/* 8036A604  FC 0C 10 2A */	fadd f0, f12, f2
/* 8036A608  C9 42 CF 18 */	lfd f10, lit_360(r2)
/* 8036A60C  C9 22 CF 20 */	lfd f9, lit_361(r2)
/* 8036A610  C8 C2 CF 50 */	lfd f6, lit_367(r2)
/* 8036A614  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8036A618  C8 A2 CF 48 */	lfd f5, lit_366(r2)
/* 8036A61C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8036A620  C8 02 CF 40 */	lfd f0, lit_365(r2)
/* 8036A624  C9 61 00 28 */	lfd f11, 0x28(r1)
/* 8036A628  C8 82 CF 38 */	lfd f4, lit_364(r2)
/* 8036A62C  FD 0B 10 28 */	fsub f8, f11, f2
/* 8036A630  C8 62 CF 30 */	lfd f3, lit_363(r2)
/* 8036A634  FC E1 02 F2 */	fmul f7, f1, f11
/* 8036A638  C8 42 CF 58 */	lfd f2, lit_368(r2)
/* 8036A63C  C8 22 CE 58 */	lfd f1, lit_336(r2)
/* 8036A640  FD 0C 40 28 */	fsub f8, f12, f8
/* 8036A644  FD 4A 02 F2 */	fmul f10, f10, f11
/* 8036A648  FD 69 3A 3A */	fmadd f11, f9, f8, f7
/* 8036A64C  FD 2A 58 2A */	fadd f9, f10, f11
/* 8036A650  FC E9 02 72 */	fmul f7, f9, f9
/* 8036A654  D9 21 00 50 */	stfd f9, 0x50(r1)
/* 8036A658  FD 09 50 28 */	fsub f8, f9, f10
/* 8036A65C  FC A6 29 FA */	fmadd f5, f6, f7, f5
/* 8036A660  D8 E1 00 28 */	stfd f7, 0x28(r1)
/* 8036A664  FC CB 40 28 */	fsub f6, f11, f8
/* 8036A668  FC A7 01 7A */	fmadd f5, f7, f5, f0
/* 8036A66C  FC 09 31 BA */	fmadd f0, f9, f6, f6
/* 8036A670  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 8036A674  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 8036A678  FC 67 00 F2 */	fmul f3, f7, f3
/* 8036A67C  FC 89 18 28 */	fsub f4, f9, f3
/* 8036A680  FC 69 01 32 */	fmul f3, f9, f4
/* 8036A684  D8 81 00 30 */	stfd f4, 0x30(r1)
/* 8036A688  FC 44 10 28 */	fsub f2, f4, f2
/* 8036A68C  FC 43 10 24 */	fdiv f2, f3, f2
/* 8036A690  FC 02 00 28 */	fsub f0, f2, f0
/* 8036A694  FC 00 48 28 */	fsub f0, f0, f9
/* 8036A698  FC 21 00 28 */	fsub f1, f1, f0
/* 8036A69C  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8036A6A0  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8036A6A4  7C 00 22 14 */	add r0, r0, r4
/* 8036A6A8  7C 00 A6 71 */	srawi. r0, r0, 0x14
/* 8036A6AC  41 81 00 10 */	bgt lbl_8036A6BC
/* 8036A6B0  48 00 1C 21 */	bl ldexp
/* 8036A6B4  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8036A6B8  48 00 00 10 */	b lbl_8036A6C8
lbl_8036A6BC:
/* 8036A6BC  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8036A6C0  7C 00 22 14 */	add r0, r0, r4
/* 8036A6C4  90 01 00 50 */	stw r0, 0x50(r1)
lbl_8036A6C8:
/* 8036A6C8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8036A6CC  FC 3F 00 32 */	fmul f1, f31, f0
lbl_8036A6D0:
/* 8036A6D0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8036A6D4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8036A6D8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8036A6DC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8036A6E0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8036A6E4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8036A6E8  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8036A6EC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8036A6F0  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 8036A6F4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8036A6F8  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8036A6FC  7C 08 03 A6 */	mtlr r0
/* 8036A700  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8036A704  4E 80 00 20 */	blr 
