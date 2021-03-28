lbl_8027AC10:
/* 8027AC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027AC14  80 63 00 04 */	lwz r3, 4(r3)
/* 8027AC18  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8027AC1C  C0 84 00 84 */	lfs f4, 0x84(r4)
/* 8027AC20  80 A3 00 00 */	lwz r5, 0(r3)
/* 8027AC24  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8027AC28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027AC2C  40 80 00 20 */	bge lbl_8027AC4C
/* 8027AC30  C0 42 B8 F4 */	lfs f2, lit_2390(r2)
/* 8027AC34  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 8027AC38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8027AC3C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027AC40  EC 01 00 2A */	fadds f0, f1, f0
/* 8027AC44  EC A2 00 32 */	fmuls f5, f2, f0
/* 8027AC48  48 00 00 3C */	b lbl_8027AC84
lbl_8027AC4C:
/* 8027AC4C  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8027AC50  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027AC54  40 81 00 24 */	ble lbl_8027AC78
/* 8027AC58  C0 62 B8 F4 */	lfs f3, lit_2390(r2)
/* 8027AC5C  C0 45 00 38 */	lfs f2, 0x38(r5)
/* 8027AC60  EC 24 00 28 */	fsubs f1, f4, f0
/* 8027AC64  C0 03 00 08 */	lfs f0, 8(r3)
/* 8027AC68  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027AC6C  EC 02 00 2A */	fadds f0, f2, f0
/* 8027AC70  EC A3 00 32 */	fmuls f5, f3, f0
/* 8027AC74  48 00 00 10 */	b lbl_8027AC84
lbl_8027AC78:
/* 8027AC78  C0 22 B8 F4 */	lfs f1, lit_2390(r2)
/* 8027AC7C  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8027AC80  EC A1 00 32 */	fmuls f5, f1, f0
lbl_8027AC84:
/* 8027AC84  F0 A1 A0 08 */	psq_st f5, 8(r1), 1, 2 /* qr2 */
/* 8027AC88  88 01 00 08 */	lbz r0, 8(r1)
/* 8027AC8C  98 04 00 96 */	stb r0, 0x96(r4)
/* 8027AC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8027AC94  4E 80 00 20 */	blr 
