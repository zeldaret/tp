lbl_801D3CB8:
/* 801D3CB8  94 21 FC 80 */	stwu r1, -0x380(r1)
/* 801D3CBC  C0 23 0F A0 */	lfs f1, 0xfa0(r3)
/* 801D3CC0  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D3CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D3CC8  4C 40 13 82 */	cror 2, 0, 2
/* 801D3CCC  40 82 00 10 */	bne lbl_801D3CDC
/* 801D3CD0  FC 60 08 90 */	fmr f3, f1
/* 801D3CD4  38 00 00 00 */	li r0, 0
/* 801D3CD8  48 00 00 0C */	b lbl_801D3CE4
lbl_801D3CDC:
/* 801D3CDC  EC 61 00 28 */	fsubs f3, f1, f0
/* 801D3CE0  38 00 00 01 */	li r0, 1
lbl_801D3CE4:
/* 801D3CE4  1C A0 00 28 */	mulli r5, r0, 0x28
/* 801D3CE8  3C 80 80 43 */	lis r4, g_fmapHIO@ha
/* 801D3CEC  38 04 FC 60 */	addi r0, r4, g_fmapHIO@l
/* 801D3CF0  7C 80 2A 14 */	add r4, r0, r5
/* 801D3CF4  88 C4 00 1C */	lbz r6, 0x1c(r4)
/* 801D3CF8  C8 42 A7 F8 */	lfd f2, lit_4207(r2)
/* 801D3CFC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801D3D00  3C 00 43 30 */	lis r0, 0x4330
/* 801D3D04  90 01 00 08 */	stw r0, 8(r1)
/* 801D3D08  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D3D0C  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3D10  88 A4 00 44 */	lbz r5, 0x44(r4)
/* 801D3D14  7C A6 28 50 */	subf r5, r6, r5
/* 801D3D18  C8 22 A8 08 */	lfd f1, lit_4496(r2)
/* 801D3D1C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3D20  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801D3D24  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D3D28  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801D3D2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3D30  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3D34  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3D38  FC 00 00 1E */	fctiwz f0, f0
/* 801D3D3C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801D3D40  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801D3D44  98 A3 11 F0 */	stb r5, 0x11f0(r3)
/* 801D3D48  88 C4 00 1D */	lbz r6, 0x1d(r4)
/* 801D3D4C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 801D3D50  90 01 00 20 */	stw r0, 0x20(r1)
/* 801D3D54  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801D3D58  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3D5C  88 A4 00 45 */	lbz r5, 0x45(r4)
/* 801D3D60  7C A6 28 50 */	subf r5, r6, r5
/* 801D3D64  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3D68  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 801D3D6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801D3D70  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801D3D74  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3D78  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3D7C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3D80  FC 00 00 1E */	fctiwz f0, f0
/* 801D3D84  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801D3D88  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 801D3D8C  98 A3 11 F1 */	stb r5, 0x11f1(r3)
/* 801D3D90  88 C4 00 1E */	lbz r6, 0x1e(r4)
/* 801D3D94  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801D3D98  90 01 00 38 */	stw r0, 0x38(r1)
/* 801D3D9C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801D3DA0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3DA4  88 A4 00 46 */	lbz r5, 0x46(r4)
/* 801D3DA8  7C A6 28 50 */	subf r5, r6, r5
/* 801D3DAC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3DB0  90 A1 00 44 */	stw r5, 0x44(r1)
/* 801D3DB4  90 01 00 40 */	stw r0, 0x40(r1)
/* 801D3DB8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801D3DBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3DC0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3DC4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3DC8  FC 00 00 1E */	fctiwz f0, f0
/* 801D3DCC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801D3DD0  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 801D3DD4  98 A3 11 F2 */	stb r5, 0x11f2(r3)
/* 801D3DD8  88 C4 00 1F */	lbz r6, 0x1f(r4)
/* 801D3DDC  90 C1 00 54 */	stw r6, 0x54(r1)
/* 801D3DE0  90 01 00 50 */	stw r0, 0x50(r1)
/* 801D3DE4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801D3DE8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3DEC  88 A4 00 47 */	lbz r5, 0x47(r4)
/* 801D3DF0  7C A6 28 50 */	subf r5, r6, r5
/* 801D3DF4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3DF8  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 801D3DFC  90 01 00 58 */	stw r0, 0x58(r1)
/* 801D3E00  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801D3E04  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3E08  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3E0C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3E10  FC 00 00 1E */	fctiwz f0, f0
/* 801D3E14  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801D3E18  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 801D3E1C  98 A3 11 F3 */	stb r5, 0x11f3(r3)
/* 801D3E20  88 C4 00 20 */	lbz r6, 0x20(r4)
/* 801D3E24  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 801D3E28  90 01 00 68 */	stw r0, 0x68(r1)
/* 801D3E2C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801D3E30  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3E34  88 A4 00 48 */	lbz r5, 0x48(r4)
/* 801D3E38  7C A6 28 50 */	subf r5, r6, r5
/* 801D3E3C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3E40  90 A1 00 74 */	stw r5, 0x74(r1)
/* 801D3E44  90 01 00 70 */	stw r0, 0x70(r1)
/* 801D3E48  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 801D3E4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3E50  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3E54  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3E58  FC 00 00 1E */	fctiwz f0, f0
/* 801D3E5C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 801D3E60  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 801D3E64  98 A3 11 F4 */	stb r5, 0x11f4(r3)
/* 801D3E68  88 C4 00 21 */	lbz r6, 0x21(r4)
/* 801D3E6C  90 C1 00 84 */	stw r6, 0x84(r1)
/* 801D3E70  90 01 00 80 */	stw r0, 0x80(r1)
/* 801D3E74  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801D3E78  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3E7C  88 A4 00 49 */	lbz r5, 0x49(r4)
/* 801D3E80  7C A6 28 50 */	subf r5, r6, r5
/* 801D3E84  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3E88  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 801D3E8C  90 01 00 88 */	stw r0, 0x88(r1)
/* 801D3E90  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 801D3E94  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3E98  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3E9C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3EA0  FC 00 00 1E */	fctiwz f0, f0
/* 801D3EA4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 801D3EA8  80 A1 00 94 */	lwz r5, 0x94(r1)
/* 801D3EAC  98 A3 11 F5 */	stb r5, 0x11f5(r3)
/* 801D3EB0  88 C4 00 22 */	lbz r6, 0x22(r4)
/* 801D3EB4  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 801D3EB8  90 01 00 98 */	stw r0, 0x98(r1)
/* 801D3EBC  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 801D3EC0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3EC4  88 A4 00 4A */	lbz r5, 0x4a(r4)
/* 801D3EC8  7C A6 28 50 */	subf r5, r6, r5
/* 801D3ECC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3ED0  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 801D3ED4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801D3ED8  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 801D3EDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3EE0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3EE4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3EE8  FC 00 00 1E */	fctiwz f0, f0
/* 801D3EEC  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 801D3EF0  80 A1 00 AC */	lwz r5, 0xac(r1)
/* 801D3EF4  98 A3 11 F6 */	stb r5, 0x11f6(r3)
/* 801D3EF8  88 C4 00 23 */	lbz r6, 0x23(r4)
/* 801D3EFC  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 801D3F00  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 801D3F04  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 801D3F08  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3F0C  88 A4 00 4B */	lbz r5, 0x4b(r4)
/* 801D3F10  7C A6 28 50 */	subf r5, r6, r5
/* 801D3F14  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3F18  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 801D3F1C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 801D3F20  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 801D3F24  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3F28  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3F2C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3F30  FC 00 00 1E */	fctiwz f0, f0
/* 801D3F34  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801D3F38  80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 801D3F3C  98 A3 11 F7 */	stb r5, 0x11f7(r3)
/* 801D3F40  88 C4 00 28 */	lbz r6, 0x28(r4)
/* 801D3F44  90 C1 00 CC */	stw r6, 0xcc(r1)
/* 801D3F48  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 801D3F4C  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801D3F50  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3F54  88 A4 00 50 */	lbz r5, 0x50(r4)
/* 801D3F58  7C A6 28 50 */	subf r5, r6, r5
/* 801D3F5C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3F60  90 A1 00 D4 */	stw r5, 0xd4(r1)
/* 801D3F64  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801D3F68  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801D3F6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3F70  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3F74  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3F78  FC 00 00 1E */	fctiwz f0, f0
/* 801D3F7C  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 801D3F80  80 A1 00 DC */	lwz r5, 0xdc(r1)
/* 801D3F84  98 A3 11 F8 */	stb r5, 0x11f8(r3)
/* 801D3F88  88 C4 00 29 */	lbz r6, 0x29(r4)
/* 801D3F8C  90 C1 00 E4 */	stw r6, 0xe4(r1)
/* 801D3F90  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 801D3F94  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801D3F98  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3F9C  88 A4 00 51 */	lbz r5, 0x51(r4)
/* 801D3FA0  7C A6 28 50 */	subf r5, r6, r5
/* 801D3FA4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3FA8  90 A1 00 EC */	stw r5, 0xec(r1)
/* 801D3FAC  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 801D3FB0  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 801D3FB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D3FB8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D3FBC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3FC0  FC 00 00 1E */	fctiwz f0, f0
/* 801D3FC4  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 801D3FC8  80 A1 00 F4 */	lwz r5, 0xf4(r1)
/* 801D3FCC  98 A3 11 F9 */	stb r5, 0x11f9(r3)
/* 801D3FD0  88 C4 00 2A */	lbz r6, 0x2a(r4)
/* 801D3FD4  90 C1 00 FC */	stw r6, 0xfc(r1)
/* 801D3FD8  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 801D3FDC  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 801D3FE0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D3FE4  88 A4 00 52 */	lbz r5, 0x52(r4)
/* 801D3FE8  7C A6 28 50 */	subf r5, r6, r5
/* 801D3FEC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D3FF0  90 A1 01 04 */	stw r5, 0x104(r1)
/* 801D3FF4  90 01 01 00 */	stw r0, 0x100(r1)
/* 801D3FF8  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 801D3FFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4000  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4004  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4008  FC 00 00 1E */	fctiwz f0, f0
/* 801D400C  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 801D4010  80 A1 01 0C */	lwz r5, 0x10c(r1)
/* 801D4014  98 A3 11 FA */	stb r5, 0x11fa(r3)
/* 801D4018  88 C4 00 2B */	lbz r6, 0x2b(r4)
/* 801D401C  90 C1 01 14 */	stw r6, 0x114(r1)
/* 801D4020  90 01 01 10 */	stw r0, 0x110(r1)
/* 801D4024  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 801D4028  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D402C  88 A4 00 53 */	lbz r5, 0x53(r4)
/* 801D4030  7C A6 28 50 */	subf r5, r6, r5
/* 801D4034  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4038  90 A1 01 1C */	stw r5, 0x11c(r1)
/* 801D403C  90 01 01 18 */	stw r0, 0x118(r1)
/* 801D4040  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 801D4044  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4048  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D404C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4050  FC 00 00 1E */	fctiwz f0, f0
/* 801D4054  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 801D4058  80 A1 01 24 */	lwz r5, 0x124(r1)
/* 801D405C  98 A3 11 FB */	stb r5, 0x11fb(r3)
/* 801D4060  88 C4 00 2C */	lbz r6, 0x2c(r4)
/* 801D4064  90 C1 01 2C */	stw r6, 0x12c(r1)
/* 801D4068  90 01 01 28 */	stw r0, 0x128(r1)
/* 801D406C  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 801D4070  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4074  88 A4 00 54 */	lbz r5, 0x54(r4)
/* 801D4078  7C A6 28 50 */	subf r5, r6, r5
/* 801D407C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4080  90 A1 01 34 */	stw r5, 0x134(r1)
/* 801D4084  90 01 01 30 */	stw r0, 0x130(r1)
/* 801D4088  C8 01 01 30 */	lfd f0, 0x130(r1)
/* 801D408C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4090  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4094  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4098  FC 00 00 1E */	fctiwz f0, f0
/* 801D409C  D8 01 01 38 */	stfd f0, 0x138(r1)
/* 801D40A0  80 A1 01 3C */	lwz r5, 0x13c(r1)
/* 801D40A4  98 A3 11 FC */	stb r5, 0x11fc(r3)
/* 801D40A8  88 C4 00 2D */	lbz r6, 0x2d(r4)
/* 801D40AC  90 C1 01 44 */	stw r6, 0x144(r1)
/* 801D40B0  90 01 01 40 */	stw r0, 0x140(r1)
/* 801D40B4  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 801D40B8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D40BC  88 A4 00 55 */	lbz r5, 0x55(r4)
/* 801D40C0  7C A6 28 50 */	subf r5, r6, r5
/* 801D40C4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D40C8  90 A1 01 4C */	stw r5, 0x14c(r1)
/* 801D40CC  90 01 01 48 */	stw r0, 0x148(r1)
/* 801D40D0  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 801D40D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D40D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D40DC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D40E0  FC 00 00 1E */	fctiwz f0, f0
/* 801D40E4  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 801D40E8  80 A1 01 54 */	lwz r5, 0x154(r1)
/* 801D40EC  98 A3 11 FD */	stb r5, 0x11fd(r3)
/* 801D40F0  88 C4 00 2E */	lbz r6, 0x2e(r4)
/* 801D40F4  90 C1 01 5C */	stw r6, 0x15c(r1)
/* 801D40F8  90 01 01 58 */	stw r0, 0x158(r1)
/* 801D40FC  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 801D4100  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4104  88 A4 00 56 */	lbz r5, 0x56(r4)
/* 801D4108  7C A6 28 50 */	subf r5, r6, r5
/* 801D410C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4110  90 A1 01 64 */	stw r5, 0x164(r1)
/* 801D4114  90 01 01 60 */	stw r0, 0x160(r1)
/* 801D4118  C8 01 01 60 */	lfd f0, 0x160(r1)
/* 801D411C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4120  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4124  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4128  FC 00 00 1E */	fctiwz f0, f0
/* 801D412C  D8 01 01 68 */	stfd f0, 0x168(r1)
/* 801D4130  80 A1 01 6C */	lwz r5, 0x16c(r1)
/* 801D4134  98 A3 11 FE */	stb r5, 0x11fe(r3)
/* 801D4138  88 C4 00 2F */	lbz r6, 0x2f(r4)
/* 801D413C  90 C1 01 74 */	stw r6, 0x174(r1)
/* 801D4140  90 01 01 70 */	stw r0, 0x170(r1)
/* 801D4144  C8 01 01 70 */	lfd f0, 0x170(r1)
/* 801D4148  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D414C  88 A4 00 57 */	lbz r5, 0x57(r4)
/* 801D4150  7C A6 28 50 */	subf r5, r6, r5
/* 801D4154  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4158  90 A1 01 7C */	stw r5, 0x17c(r1)
/* 801D415C  90 01 01 78 */	stw r0, 0x178(r1)
/* 801D4160  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 801D4164  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4168  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D416C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4170  FC 00 00 1E */	fctiwz f0, f0
/* 801D4174  D8 01 01 80 */	stfd f0, 0x180(r1)
/* 801D4178  80 A1 01 84 */	lwz r5, 0x184(r1)
/* 801D417C  98 A3 11 FF */	stb r5, 0x11ff(r3)
/* 801D4180  88 C4 00 34 */	lbz r6, 0x34(r4)
/* 801D4184  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 801D4188  90 01 01 88 */	stw r0, 0x188(r1)
/* 801D418C  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 801D4190  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4194  88 A4 00 5C */	lbz r5, 0x5c(r4)
/* 801D4198  7C A6 28 50 */	subf r5, r6, r5
/* 801D419C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D41A0  90 A1 01 94 */	stw r5, 0x194(r1)
/* 801D41A4  90 01 01 90 */	stw r0, 0x190(r1)
/* 801D41A8  C8 01 01 90 */	lfd f0, 0x190(r1)
/* 801D41AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D41B0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D41B4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D41B8  FC 00 00 1E */	fctiwz f0, f0
/* 801D41BC  D8 01 01 98 */	stfd f0, 0x198(r1)
/* 801D41C0  80 A1 01 9C */	lwz r5, 0x19c(r1)
/* 801D41C4  98 A3 12 00 */	stb r5, 0x1200(r3)
/* 801D41C8  88 C4 00 35 */	lbz r6, 0x35(r4)
/* 801D41CC  90 C1 01 A4 */	stw r6, 0x1a4(r1)
/* 801D41D0  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 801D41D4  C8 01 01 A0 */	lfd f0, 0x1a0(r1)
/* 801D41D8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D41DC  88 A4 00 5D */	lbz r5, 0x5d(r4)
/* 801D41E0  7C A6 28 50 */	subf r5, r6, r5
/* 801D41E4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D41E8  90 A1 01 AC */	stw r5, 0x1ac(r1)
/* 801D41EC  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 801D41F0  C8 01 01 A8 */	lfd f0, 0x1a8(r1)
/* 801D41F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D41F8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D41FC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4200  FC 00 00 1E */	fctiwz f0, f0
/* 801D4204  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 801D4208  80 A1 01 B4 */	lwz r5, 0x1b4(r1)
/* 801D420C  98 A3 12 01 */	stb r5, 0x1201(r3)
/* 801D4210  88 C4 00 36 */	lbz r6, 0x36(r4)
/* 801D4214  90 C1 01 BC */	stw r6, 0x1bc(r1)
/* 801D4218  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 801D421C  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 801D4220  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4224  88 A4 00 5E */	lbz r5, 0x5e(r4)
/* 801D4228  7C A6 28 50 */	subf r5, r6, r5
/* 801D422C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4230  90 A1 01 C4 */	stw r5, 0x1c4(r1)
/* 801D4234  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 801D4238  C8 01 01 C0 */	lfd f0, 0x1c0(r1)
/* 801D423C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4240  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4244  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4248  FC 00 00 1E */	fctiwz f0, f0
/* 801D424C  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 801D4250  80 A1 01 CC */	lwz r5, 0x1cc(r1)
/* 801D4254  98 A3 12 02 */	stb r5, 0x1202(r3)
/* 801D4258  88 C4 00 37 */	lbz r6, 0x37(r4)
/* 801D425C  90 C1 01 D4 */	stw r6, 0x1d4(r1)
/* 801D4260  90 01 01 D0 */	stw r0, 0x1d0(r1)
/* 801D4264  C8 01 01 D0 */	lfd f0, 0x1d0(r1)
/* 801D4268  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D426C  88 A4 00 5F */	lbz r5, 0x5f(r4)
/* 801D4270  7C A6 28 50 */	subf r5, r6, r5
/* 801D4274  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4278  90 A1 01 DC */	stw r5, 0x1dc(r1)
/* 801D427C  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 801D4280  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 801D4284  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4288  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D428C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4290  FC 00 00 1E */	fctiwz f0, f0
/* 801D4294  D8 01 01 E0 */	stfd f0, 0x1e0(r1)
/* 801D4298  80 A1 01 E4 */	lwz r5, 0x1e4(r1)
/* 801D429C  98 A3 12 03 */	stb r5, 0x1203(r3)
/* 801D42A0  88 C4 00 38 */	lbz r6, 0x38(r4)
/* 801D42A4  90 C1 01 EC */	stw r6, 0x1ec(r1)
/* 801D42A8  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 801D42AC  C8 01 01 E8 */	lfd f0, 0x1e8(r1)
/* 801D42B0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D42B4  88 A4 00 60 */	lbz r5, 0x60(r4)
/* 801D42B8  7C A6 28 50 */	subf r5, r6, r5
/* 801D42BC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D42C0  90 A1 01 F4 */	stw r5, 0x1f4(r1)
/* 801D42C4  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 801D42C8  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 801D42CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D42D0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D42D4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D42D8  FC 00 00 1E */	fctiwz f0, f0
/* 801D42DC  D8 01 01 F8 */	stfd f0, 0x1f8(r1)
/* 801D42E0  80 A1 01 FC */	lwz r5, 0x1fc(r1)
/* 801D42E4  98 A3 12 04 */	stb r5, 0x1204(r3)
/* 801D42E8  88 C4 00 39 */	lbz r6, 0x39(r4)
/* 801D42EC  90 C1 02 04 */	stw r6, 0x204(r1)
/* 801D42F0  90 01 02 00 */	stw r0, 0x200(r1)
/* 801D42F4  C8 01 02 00 */	lfd f0, 0x200(r1)
/* 801D42F8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D42FC  88 A4 00 61 */	lbz r5, 0x61(r4)
/* 801D4300  7C A6 28 50 */	subf r5, r6, r5
/* 801D4304  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4308  90 A1 02 0C */	stw r5, 0x20c(r1)
/* 801D430C  90 01 02 08 */	stw r0, 0x208(r1)
/* 801D4310  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 801D4314  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4318  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D431C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4320  FC 00 00 1E */	fctiwz f0, f0
/* 801D4324  D8 01 02 10 */	stfd f0, 0x210(r1)
/* 801D4328  80 A1 02 14 */	lwz r5, 0x214(r1)
/* 801D432C  98 A3 12 05 */	stb r5, 0x1205(r3)
/* 801D4330  88 C4 00 3A */	lbz r6, 0x3a(r4)
/* 801D4334  90 C1 02 1C */	stw r6, 0x21c(r1)
/* 801D4338  90 01 02 18 */	stw r0, 0x218(r1)
/* 801D433C  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 801D4340  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4344  88 A4 00 62 */	lbz r5, 0x62(r4)
/* 801D4348  7C A6 28 50 */	subf r5, r6, r5
/* 801D434C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4350  90 A1 02 24 */	stw r5, 0x224(r1)
/* 801D4354  90 01 02 20 */	stw r0, 0x220(r1)
/* 801D4358  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 801D435C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4360  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4364  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4368  FC 00 00 1E */	fctiwz f0, f0
/* 801D436C  D8 01 02 28 */	stfd f0, 0x228(r1)
/* 801D4370  80 A1 02 2C */	lwz r5, 0x22c(r1)
/* 801D4374  98 A3 12 06 */	stb r5, 0x1206(r3)
/* 801D4378  88 C4 00 3B */	lbz r6, 0x3b(r4)
/* 801D437C  90 C1 02 34 */	stw r6, 0x234(r1)
/* 801D4380  90 01 02 30 */	stw r0, 0x230(r1)
/* 801D4384  C8 01 02 30 */	lfd f0, 0x230(r1)
/* 801D4388  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D438C  88 A4 00 63 */	lbz r5, 0x63(r4)
/* 801D4390  7C A6 28 50 */	subf r5, r6, r5
/* 801D4394  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4398  90 A1 02 3C */	stw r5, 0x23c(r1)
/* 801D439C  90 01 02 38 */	stw r0, 0x238(r1)
/* 801D43A0  C8 01 02 38 */	lfd f0, 0x238(r1)
/* 801D43A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D43A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D43AC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D43B0  FC 00 00 1E */	fctiwz f0, f0
/* 801D43B4  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 801D43B8  80 A1 02 44 */	lwz r5, 0x244(r1)
/* 801D43BC  98 A3 12 07 */	stb r5, 0x1207(r3)
/* 801D43C0  88 C4 00 3C */	lbz r6, 0x3c(r4)
/* 801D43C4  90 C1 02 4C */	stw r6, 0x24c(r1)
/* 801D43C8  90 01 02 48 */	stw r0, 0x248(r1)
/* 801D43CC  C8 01 02 48 */	lfd f0, 0x248(r1)
/* 801D43D0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D43D4  88 A4 00 64 */	lbz r5, 0x64(r4)
/* 801D43D8  7C A6 28 50 */	subf r5, r6, r5
/* 801D43DC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D43E0  90 A1 02 54 */	stw r5, 0x254(r1)
/* 801D43E4  90 01 02 50 */	stw r0, 0x250(r1)
/* 801D43E8  C8 01 02 50 */	lfd f0, 0x250(r1)
/* 801D43EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D43F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D43F4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D43F8  FC 00 00 1E */	fctiwz f0, f0
/* 801D43FC  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 801D4400  80 A1 02 5C */	lwz r5, 0x25c(r1)
/* 801D4404  98 A3 12 08 */	stb r5, 0x1208(r3)
/* 801D4408  88 C4 00 3D */	lbz r6, 0x3d(r4)
/* 801D440C  90 C1 02 64 */	stw r6, 0x264(r1)
/* 801D4410  90 01 02 60 */	stw r0, 0x260(r1)
/* 801D4414  C8 01 02 60 */	lfd f0, 0x260(r1)
/* 801D4418  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D441C  88 A4 00 65 */	lbz r5, 0x65(r4)
/* 801D4420  7C A6 28 50 */	subf r5, r6, r5
/* 801D4424  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4428  90 A1 02 6C */	stw r5, 0x26c(r1)
/* 801D442C  90 01 02 68 */	stw r0, 0x268(r1)
/* 801D4430  C8 01 02 68 */	lfd f0, 0x268(r1)
/* 801D4434  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4438  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D443C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4440  FC 00 00 1E */	fctiwz f0, f0
/* 801D4444  D8 01 02 70 */	stfd f0, 0x270(r1)
/* 801D4448  80 A1 02 74 */	lwz r5, 0x274(r1)
/* 801D444C  98 A3 12 09 */	stb r5, 0x1209(r3)
/* 801D4450  88 C4 00 3E */	lbz r6, 0x3e(r4)
/* 801D4454  90 C1 02 7C */	stw r6, 0x27c(r1)
/* 801D4458  90 01 02 78 */	stw r0, 0x278(r1)
/* 801D445C  C8 01 02 78 */	lfd f0, 0x278(r1)
/* 801D4460  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4464  88 A4 00 66 */	lbz r5, 0x66(r4)
/* 801D4468  7C A6 28 50 */	subf r5, r6, r5
/* 801D446C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4470  90 A1 02 84 */	stw r5, 0x284(r1)
/* 801D4474  90 01 02 80 */	stw r0, 0x280(r1)
/* 801D4478  C8 01 02 80 */	lfd f0, 0x280(r1)
/* 801D447C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4480  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4484  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4488  FC 00 00 1E */	fctiwz f0, f0
/* 801D448C  D8 01 02 88 */	stfd f0, 0x288(r1)
/* 801D4490  80 A1 02 8C */	lwz r5, 0x28c(r1)
/* 801D4494  98 A3 12 0A */	stb r5, 0x120a(r3)
/* 801D4498  88 C4 00 3F */	lbz r6, 0x3f(r4)
/* 801D449C  90 C1 02 94 */	stw r6, 0x294(r1)
/* 801D44A0  90 01 02 90 */	stw r0, 0x290(r1)
/* 801D44A4  C8 01 02 90 */	lfd f0, 0x290(r1)
/* 801D44A8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D44AC  88 A4 00 67 */	lbz r5, 0x67(r4)
/* 801D44B0  7C A6 28 50 */	subf r5, r6, r5
/* 801D44B4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D44B8  90 A1 02 9C */	stw r5, 0x29c(r1)
/* 801D44BC  90 01 02 98 */	stw r0, 0x298(r1)
/* 801D44C0  C8 01 02 98 */	lfd f0, 0x298(r1)
/* 801D44C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D44C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D44CC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D44D0  FC 00 00 1E */	fctiwz f0, f0
/* 801D44D4  D8 01 02 A0 */	stfd f0, 0x2a0(r1)
/* 801D44D8  80 A1 02 A4 */	lwz r5, 0x2a4(r1)
/* 801D44DC  98 A3 12 0B */	stb r5, 0x120b(r3)
/* 801D44E0  88 C4 00 40 */	lbz r6, 0x40(r4)
/* 801D44E4  90 C1 02 AC */	stw r6, 0x2ac(r1)
/* 801D44E8  90 01 02 A8 */	stw r0, 0x2a8(r1)
/* 801D44EC  C8 01 02 A8 */	lfd f0, 0x2a8(r1)
/* 801D44F0  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D44F4  88 A4 00 68 */	lbz r5, 0x68(r4)
/* 801D44F8  7C A6 28 50 */	subf r5, r6, r5
/* 801D44FC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4500  90 A1 02 B4 */	stw r5, 0x2b4(r1)
/* 801D4504  90 01 02 B0 */	stw r0, 0x2b0(r1)
/* 801D4508  C8 01 02 B0 */	lfd f0, 0x2b0(r1)
/* 801D450C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4510  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4514  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4518  FC 00 00 1E */	fctiwz f0, f0
/* 801D451C  D8 01 02 B8 */	stfd f0, 0x2b8(r1)
/* 801D4520  80 A1 02 BC */	lwz r5, 0x2bc(r1)
/* 801D4524  98 A3 12 0C */	stb r5, 0x120c(r3)
/* 801D4528  88 C4 00 41 */	lbz r6, 0x41(r4)
/* 801D452C  90 C1 02 C4 */	stw r6, 0x2c4(r1)
/* 801D4530  90 01 02 C0 */	stw r0, 0x2c0(r1)
/* 801D4534  C8 01 02 C0 */	lfd f0, 0x2c0(r1)
/* 801D4538  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D453C  88 A4 00 69 */	lbz r5, 0x69(r4)
/* 801D4540  7C A6 28 50 */	subf r5, r6, r5
/* 801D4544  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4548  90 A1 02 CC */	stw r5, 0x2cc(r1)
/* 801D454C  90 01 02 C8 */	stw r0, 0x2c8(r1)
/* 801D4550  C8 01 02 C8 */	lfd f0, 0x2c8(r1)
/* 801D4554  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4558  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D455C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D4560  FC 00 00 1E */	fctiwz f0, f0
/* 801D4564  D8 01 02 D0 */	stfd f0, 0x2d0(r1)
/* 801D4568  80 A1 02 D4 */	lwz r5, 0x2d4(r1)
/* 801D456C  98 A3 12 0D */	stb r5, 0x120d(r3)
/* 801D4570  88 C4 00 42 */	lbz r6, 0x42(r4)
/* 801D4574  90 C1 02 DC */	stw r6, 0x2dc(r1)
/* 801D4578  90 01 02 D8 */	stw r0, 0x2d8(r1)
/* 801D457C  C8 01 02 D8 */	lfd f0, 0x2d8(r1)
/* 801D4580  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4584  88 A4 00 6A */	lbz r5, 0x6a(r4)
/* 801D4588  7C A6 28 50 */	subf r5, r6, r5
/* 801D458C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D4590  90 A1 02 E4 */	stw r5, 0x2e4(r1)
/* 801D4594  90 01 02 E0 */	stw r0, 0x2e0(r1)
/* 801D4598  C8 01 02 E0 */	lfd f0, 0x2e0(r1)
/* 801D459C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D45A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D45A4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D45A8  FC 00 00 1E */	fctiwz f0, f0
/* 801D45AC  D8 01 02 E8 */	stfd f0, 0x2e8(r1)
/* 801D45B0  80 A1 02 EC */	lwz r5, 0x2ec(r1)
/* 801D45B4  98 A3 12 0E */	stb r5, 0x120e(r3)
/* 801D45B8  88 C4 00 43 */	lbz r6, 0x43(r4)
/* 801D45BC  90 C1 02 F4 */	stw r6, 0x2f4(r1)
/* 801D45C0  90 01 02 F0 */	stw r0, 0x2f0(r1)
/* 801D45C4  C8 01 02 F0 */	lfd f0, 0x2f0(r1)
/* 801D45C8  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D45CC  88 A4 00 6B */	lbz r5, 0x6b(r4)
/* 801D45D0  7C A6 28 50 */	subf r5, r6, r5
/* 801D45D4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D45D8  90 A1 02 FC */	stw r5, 0x2fc(r1)
/* 801D45DC  90 01 02 F8 */	stw r0, 0x2f8(r1)
/* 801D45E0  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 801D45E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D45E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D45EC  EC 04 00 2A */	fadds f0, f4, f0
/* 801D45F0  FC 00 00 1E */	fctiwz f0, f0
/* 801D45F4  D8 01 03 00 */	stfd f0, 0x300(r1)
/* 801D45F8  80 A1 03 04 */	lwz r5, 0x304(r1)
/* 801D45FC  98 A3 12 0F */	stb r5, 0x120f(r3)
/* 801D4600  88 A4 00 27 */	lbz r5, 0x27(r4)
/* 801D4604  90 A1 03 0C */	stw r5, 0x30c(r1)
/* 801D4608  90 01 03 08 */	stw r0, 0x308(r1)
/* 801D460C  C8 01 03 08 */	lfd f0, 0x308(r1)
/* 801D4610  EC 80 10 28 */	fsubs f4, f0, f2
/* 801D4614  C0 02 A7 E4 */	lfs f0, lit_4201(r2)
/* 801D4618  EC C4 00 24 */	fdivs f6, f4, f0
/* 801D461C  88 A4 00 26 */	lbz r5, 0x26(r4)
/* 801D4620  90 A1 03 14 */	stw r5, 0x314(r1)
/* 801D4624  90 01 03 10 */	stw r0, 0x310(r1)
/* 801D4628  C8 81 03 10 */	lfd f4, 0x310(r1)
/* 801D462C  EC 84 10 28 */	fsubs f4, f4, f2
/* 801D4630  EC A4 00 24 */	fdivs f5, f4, f0
/* 801D4634  88 A4 00 33 */	lbz r5, 0x33(r4)
/* 801D4638  90 A1 03 1C */	stw r5, 0x31c(r1)
/* 801D463C  90 01 03 18 */	stw r0, 0x318(r1)
/* 801D4640  C8 81 03 18 */	lfd f4, 0x318(r1)
/* 801D4644  EC 84 10 28 */	fsubs f4, f4, f2
/* 801D4648  EC E4 00 24 */	fdivs f7, f4, f0
/* 801D464C  88 A4 00 32 */	lbz r5, 0x32(r4)
/* 801D4650  90 A1 03 24 */	stw r5, 0x324(r1)
/* 801D4654  90 01 03 20 */	stw r0, 0x320(r1)
/* 801D4658  C8 81 03 20 */	lfd f4, 0x320(r1)
/* 801D465C  EC 84 10 28 */	fsubs f4, f4, f2
/* 801D4660  ED 24 00 24 */	fdivs f9, f4, f0
/* 801D4664  88 A4 00 4E */	lbz r5, 0x4e(r4)
/* 801D4668  90 A1 03 2C */	stw r5, 0x32c(r1)
/* 801D466C  90 01 03 28 */	stw r0, 0x328(r1)
/* 801D4670  C8 81 03 28 */	lfd f4, 0x328(r1)
/* 801D4674  EC 84 10 28 */	fsubs f4, f4, f2
/* 801D4678  EC 84 00 24 */	fdivs f4, f4, f0
/* 801D467C  EC 84 28 28 */	fsubs f4, f4, f5
/* 801D4680  EC 83 01 32 */	fmuls f4, f3, f4
/* 801D4684  EC 85 20 2A */	fadds f4, f5, f4
/* 801D4688  88 A4 00 4F */	lbz r5, 0x4f(r4)
/* 801D468C  90 A1 03 34 */	stw r5, 0x334(r1)
/* 801D4690  90 01 03 30 */	stw r0, 0x330(r1)
/* 801D4694  C8 A1 03 30 */	lfd f5, 0x330(r1)
/* 801D4698  EC A5 10 28 */	fsubs f5, f5, f2
/* 801D469C  EC A5 00 24 */	fdivs f5, f5, f0
/* 801D46A0  EC A5 30 28 */	fsubs f5, f5, f6
/* 801D46A4  EC A3 01 72 */	fmuls f5, f3, f5
/* 801D46A8  EC A6 28 2A */	fadds f5, f6, f5
/* 801D46AC  A8 C4 00 24 */	lha r6, 0x24(r4)
/* 801D46B0  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 801D46B4  90 A1 03 3C */	stw r5, 0x33c(r1)
/* 801D46B8  90 01 03 38 */	stw r0, 0x338(r1)
/* 801D46BC  C8 C1 03 38 */	lfd f6, 0x338(r1)
/* 801D46C0  ED 06 08 28 */	fsubs f8, f6, f1
/* 801D46C4  A8 A4 00 4C */	lha r5, 0x4c(r4)
/* 801D46C8  7C A6 28 50 */	subf r5, r6, r5
/* 801D46CC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801D46D0  90 A1 03 44 */	stw r5, 0x344(r1)
/* 801D46D4  90 01 03 40 */	stw r0, 0x340(r1)
/* 801D46D8  C8 C1 03 40 */	lfd f6, 0x340(r1)
/* 801D46DC  EC C6 08 28 */	fsubs f6, f6, f1
/* 801D46E0  EC C3 01 B2 */	fmuls f6, f3, f6
/* 801D46E4  EC C8 30 2A */	fadds f6, f8, f6
/* 801D46E8  FC C0 30 1E */	fctiwz f6, f6
/* 801D46EC  D8 C1 03 48 */	stfd f6, 0x348(r1)
/* 801D46F0  80 E1 03 4C */	lwz r7, 0x34c(r1)
/* 801D46F4  88 A4 00 5A */	lbz r5, 0x5a(r4)
/* 801D46F8  90 A1 03 54 */	stw r5, 0x354(r1)
/* 801D46FC  90 01 03 50 */	stw r0, 0x350(r1)
/* 801D4700  C8 C1 03 50 */	lfd f6, 0x350(r1)
/* 801D4704  EC C6 10 28 */	fsubs f6, f6, f2
/* 801D4708  EC C6 00 24 */	fdivs f6, f6, f0
/* 801D470C  EC C6 48 28 */	fsubs f6, f6, f9
/* 801D4710  EC C3 01 B2 */	fmuls f6, f3, f6
/* 801D4714  EC C9 30 2A */	fadds f6, f9, f6
/* 801D4718  88 A4 00 5B */	lbz r5, 0x5b(r4)
/* 801D471C  90 A1 03 5C */	stw r5, 0x35c(r1)
/* 801D4720  90 01 03 58 */	stw r0, 0x358(r1)
/* 801D4724  C9 01 03 58 */	lfd f8, 0x358(r1)
/* 801D4728  EC 48 10 28 */	fsubs f2, f8, f2
/* 801D472C  EC 02 00 24 */	fdivs f0, f2, f0
/* 801D4730  EC 00 38 28 */	fsubs f0, f0, f7
/* 801D4734  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D4738  EC 07 00 2A */	fadds f0, f7, f0
/* 801D473C  A8 C4 00 30 */	lha r6, 0x30(r4)
/* 801D4740  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 801D4744  90 A1 03 64 */	stw r5, 0x364(r1)
/* 801D4748  90 01 03 60 */	stw r0, 0x360(r1)
/* 801D474C  C8 41 03 60 */	lfd f2, 0x360(r1)
/* 801D4750  EC E2 08 28 */	fsubs f7, f2, f1
/* 801D4754  A8 84 00 58 */	lha r4, 0x58(r4)
/* 801D4758  7C 86 20 50 */	subf r4, r6, r4
/* 801D475C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801D4760  90 81 03 6C */	stw r4, 0x36c(r1)
/* 801D4764  90 01 03 68 */	stw r0, 0x368(r1)
/* 801D4768  C8 41 03 68 */	lfd f2, 0x368(r1)
/* 801D476C  EC 22 08 28 */	fsubs f1, f2, f1
/* 801D4770  EC 23 00 72 */	fmuls f1, f3, f1
/* 801D4774  EC 27 08 2A */	fadds f1, f7, f1
/* 801D4778  FC 20 08 1E */	fctiwz f1, f1
/* 801D477C  D8 21 03 70 */	stfd f1, 0x370(r1)
/* 801D4780  81 01 03 74 */	lwz r8, 0x374(r1)
/* 801D4784  A8 83 12 18 */	lha r4, 0x1218(r3)
/* 801D4788  38 04 00 01 */	addi r0, r4, 1
/* 801D478C  B0 03 12 18 */	sth r0, 0x1218(r3)
/* 801D4790  A8 83 12 18 */	lha r4, 0x1218(r3)
/* 801D4794  7C E0 07 34 */	extsh r0, r7
/* 801D4798  7C 04 00 00 */	cmpw r4, r0
/* 801D479C  41 80 00 0C */	blt lbl_801D47A8
/* 801D47A0  38 00 00 00 */	li r0, 0
/* 801D47A4  B0 03 12 18 */	sth r0, 0x1218(r3)
lbl_801D47A8:
/* 801D47A8  A8 83 12 1A */	lha r4, 0x121a(r3)
/* 801D47AC  38 04 00 01 */	addi r0, r4, 1
/* 801D47B0  B0 03 12 1A */	sth r0, 0x121a(r3)
/* 801D47B4  A8 83 12 1A */	lha r4, 0x121a(r3)
/* 801D47B8  7D 00 07 34 */	extsh r0, r8
/* 801D47BC  7C 04 00 00 */	cmpw r4, r0
/* 801D47C0  41 80 00 0C */	blt lbl_801D47CC
/* 801D47C4  38 00 00 00 */	li r0, 0
/* 801D47C8  B0 03 12 1A */	sth r0, 0x121a(r3)
lbl_801D47CC:
/* 801D47CC  C1 02 A7 D0 */	lfs f8, lit_3970(r2)
/* 801D47D0  FD 20 40 90 */	fmr f9, f8
/* 801D47D4  7C E6 07 34 */	extsh r6, r7
/* 801D47D8  C8 E2 A8 08 */	lfd f7, lit_4496(r2)
/* 801D47DC  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 801D47E0  90 A1 03 74 */	stw r5, 0x374(r1)
/* 801D47E4  3C 80 43 30 */	lis r4, 0x4330
/* 801D47E8  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D47EC  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D47F0  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D47F4  FC 01 40 40 */	fcmpo cr0, f1, f8
/* 801D47F8  40 81 00 70 */	ble lbl_801D4868
/* 801D47FC  A8 E3 12 18 */	lha r7, 0x1218(r3)
/* 801D4800  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 801D4804  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D4808  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D480C  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D4810  EC 61 38 28 */	fsubs f3, f1, f7
/* 801D4814  C0 42 A7 E8 */	lfs f2, lit_4202(r2)
/* 801D4818  90 A1 03 6C */	stw r5, 0x36c(r1)
/* 801D481C  90 81 03 68 */	stw r4, 0x368(r1)
/* 801D4820  C8 21 03 68 */	lfd f1, 0x368(r1)
/* 801D4824  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D4828  EC 42 00 72 */	fmuls f2, f2, f1
/* 801D482C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801D4830  40 80 00 1C */	bge lbl_801D484C
/* 801D4834  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D4838  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D483C  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D4840  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D4844  ED 01 10 24 */	fdivs f8, f1, f2
/* 801D4848  48 00 00 20 */	b lbl_801D4868
lbl_801D484C:
/* 801D484C  7C 07 30 50 */	subf r0, r7, r6
/* 801D4850  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D4854  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D4858  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D485C  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D4860  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D4864  ED 01 10 24 */	fdivs f8, f1, f2
lbl_801D4868:
/* 801D4868  7D 06 07 34 */	extsh r6, r8
/* 801D486C  C8 E2 A8 08 */	lfd f7, lit_4496(r2)
/* 801D4870  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 801D4874  90 A1 03 74 */	stw r5, 0x374(r1)
/* 801D4878  3C 80 43 30 */	lis r4, 0x4330
/* 801D487C  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D4880  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D4884  EC 41 38 28 */	fsubs f2, f1, f7
/* 801D4888  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D488C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D4890  40 81 00 70 */	ble lbl_801D4900
/* 801D4894  A8 E3 12 1A */	lha r7, 0x121a(r3)
/* 801D4898  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 801D489C  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D48A0  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D48A4  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D48A8  EC 61 38 28 */	fsubs f3, f1, f7
/* 801D48AC  C0 42 A7 E8 */	lfs f2, lit_4202(r2)
/* 801D48B0  90 A1 03 6C */	stw r5, 0x36c(r1)
/* 801D48B4  90 81 03 68 */	stw r4, 0x368(r1)
/* 801D48B8  C8 21 03 68 */	lfd f1, 0x368(r1)
/* 801D48BC  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D48C0  EC 42 00 72 */	fmuls f2, f2, f1
/* 801D48C4  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801D48C8  40 80 00 1C */	bge lbl_801D48E4
/* 801D48CC  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D48D0  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D48D4  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D48D8  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D48DC  ED 21 10 24 */	fdivs f9, f1, f2
/* 801D48E0  48 00 00 20 */	b lbl_801D4900
lbl_801D48E4:
/* 801D48E4  7C 07 30 50 */	subf r0, r7, r6
/* 801D48E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D48EC  90 01 03 74 */	stw r0, 0x374(r1)
/* 801D48F0  90 81 03 70 */	stw r4, 0x370(r1)
/* 801D48F4  C8 21 03 70 */	lfd f1, 0x370(r1)
/* 801D48F8  EC 21 38 28 */	fsubs f1, f1, f7
/* 801D48FC  ED 21 10 24 */	fdivs f9, f1, f2
lbl_801D4900:
/* 801D4900  EC 24 28 28 */	fsubs f1, f4, f5
/* 801D4904  EC 28 00 72 */	fmuls f1, f8, f1
/* 801D4908  EC 25 08 2A */	fadds f1, f5, f1
/* 801D490C  D0 23 12 10 */	stfs f1, 0x1210(r3)
/* 801D4910  EC 26 00 28 */	fsubs f1, f6, f0
/* 801D4914  EC 29 00 72 */	fmuls f1, f9, f1
/* 801D4918  EC 00 08 2A */	fadds f0, f0, f1
/* 801D491C  D0 03 12 14 */	stfs f0, 0x1214(r3)
/* 801D4920  38 21 03 80 */	addi r1, r1, 0x380
/* 801D4924  4E 80 00 20 */	blr 
