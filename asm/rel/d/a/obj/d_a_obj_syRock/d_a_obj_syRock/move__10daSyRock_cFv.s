lbl_80D02C54:
/* 80D02C54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D02C58  7C 08 02 A6 */	mflr r0
/* 80D02C5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D02C60  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D02C64  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D02C68  7C 7E 1B 78 */	mr r30, r3
/* 80D02C6C  3C 60 80 D0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80D02C70  38 83 40 3C */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80D02C74  3C 60 80 D0 */	lis r3, lit_3662@ha
/* 80D02C78  3B E3 3F 90 */	addi r31, r3, lit_3662@l
/* 80D02C7C  3C 60 80 D0 */	lis r3, data_80D042A0@ha
/* 80D02C80  38 C3 42 A0 */	addi r6, r3, data_80D042A0@l
/* 80D02C84  88 06 00 00 */	lbz r0, 0(r6)
/* 80D02C88  7C 00 07 75 */	extsb. r0, r0
/* 80D02C8C  40 82 00 A0 */	bne lbl_80D02D2C
/* 80D02C90  80 64 00 64 */	lwz r3, 0x64(r4)
/* 80D02C94  80 04 00 68 */	lwz r0, 0x68(r4)
/* 80D02C98  90 64 00 AC */	stw r3, 0xac(r4)
/* 80D02C9C  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 80D02CA0  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80D02CA4  90 04 00 B4 */	stw r0, 0xb4(r4)
/* 80D02CA8  38 A4 00 AC */	addi r5, r4, 0xac
/* 80D02CAC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 80D02CB0  80 04 00 74 */	lwz r0, 0x74(r4)
/* 80D02CB4  90 65 00 0C */	stw r3, 0xc(r5)
/* 80D02CB8  90 05 00 10 */	stw r0, 0x10(r5)
/* 80D02CBC  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80D02CC0  90 05 00 14 */	stw r0, 0x14(r5)
/* 80D02CC4  80 64 00 7C */	lwz r3, 0x7c(r4)
/* 80D02CC8  80 04 00 80 */	lwz r0, 0x80(r4)
/* 80D02CCC  90 65 00 18 */	stw r3, 0x18(r5)
/* 80D02CD0  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80D02CD4  80 04 00 84 */	lwz r0, 0x84(r4)
/* 80D02CD8  90 05 00 20 */	stw r0, 0x20(r5)
/* 80D02CDC  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80D02CE0  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80D02CE4  90 65 00 24 */	stw r3, 0x24(r5)
/* 80D02CE8  90 05 00 28 */	stw r0, 0x28(r5)
/* 80D02CEC  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80D02CF0  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80D02CF4  80 64 00 94 */	lwz r3, 0x94(r4)
/* 80D02CF8  80 04 00 98 */	lwz r0, 0x98(r4)
/* 80D02CFC  90 65 00 30 */	stw r3, 0x30(r5)
/* 80D02D00  90 05 00 34 */	stw r0, 0x34(r5)
/* 80D02D04  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 80D02D08  90 05 00 38 */	stw r0, 0x38(r5)
/* 80D02D0C  80 64 00 A0 */	lwz r3, 0xa0(r4)
/* 80D02D10  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80D02D14  90 65 00 3C */	stw r3, 0x3c(r5)
/* 80D02D18  90 05 00 40 */	stw r0, 0x40(r5)
/* 80D02D1C  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 80D02D20  90 05 00 44 */	stw r0, 0x44(r5)
/* 80D02D24  38 00 00 01 */	li r0, 1
/* 80D02D28  98 06 00 00 */	stb r0, 0(r6)
lbl_80D02D2C:
/* 80D02D2C  7F C3 F3 78 */	mr r3, r30
/* 80D02D30  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80D02D34  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D02D38  39 84 00 AC */	addi r12, r4, 0xac
/* 80D02D3C  7D 8C 02 14 */	add r12, r12, r0
/* 80D02D40  4B 65 F3 44 */	b __ptmf_scall
/* 80D02D44  60 00 00 00 */	nop 
/* 80D02D48  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80D02D4C  C0 1E 07 58 */	lfs f0, 0x758(r30)
/* 80D02D50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D02D54  FC 00 00 1E */	fctiwz f0, f0
/* 80D02D58  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D02D5C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D02D60  80 7E 07 48 */	lwz r3, 0x748(r30)
/* 80D02D64  7C 00 07 34 */	extsh r0, r0
/* 80D02D68  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D02D6C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D02D70  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D02D74  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80D02D78  7C 44 04 2E */	lfsx f2, r4, r0
/* 80D02D7C  C0 1E 07 54 */	lfs f0, 0x754(r30)
/* 80D02D80  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D02D84  FC 00 00 1E */	fctiwz f0, f0
/* 80D02D88  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D02D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D02D90  B0 1E 07 4C */	sth r0, 0x74c(r30)
/* 80D02D94  C0 1E 07 5C */	lfs f0, 0x75c(r30)
/* 80D02D98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D02D9C  FC 00 00 1E */	fctiwz f0, f0
/* 80D02DA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D02DA4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D02DA8  80 7E 07 48 */	lwz r3, 0x748(r30)
/* 80D02DAC  7C 00 07 34 */	extsh r0, r0
/* 80D02DB0  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D02DB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D02DB8  7C 64 02 14 */	add r3, r4, r0
/* 80D02DBC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D02DC0  C0 1E 07 54 */	lfs f0, 0x754(r30)
/* 80D02DC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D02DC8  FC 00 00 1E */	fctiwz f0, f0
/* 80D02DCC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D02DD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D02DD4  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 80D02DD8  38 7E 07 54 */	addi r3, r30, 0x754
/* 80D02DDC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D02DE0  C0 5E 07 60 */	lfs f2, 0x760(r30)
/* 80D02DE4  C0 7E 07 64 */	lfs f3, 0x764(r30)
/* 80D02DE8  C0 9E 07 68 */	lfs f4, 0x768(r30)
/* 80D02DEC  4B 56 CB 90 */	b cLib_addCalc__FPfffff
/* 80D02DF0  80 7E 07 48 */	lwz r3, 0x748(r30)
/* 80D02DF4  38 03 00 01 */	addi r0, r3, 1
/* 80D02DF8  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80D02DFC  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80D02E00  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D02E04  4B 56 C3 FC */	b SetR__8cM3dGCylFf
/* 80D02E08  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80D02E0C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80D02E10  4B 56 C3 E8 */	b SetH__8cM3dGCylFf
/* 80D02E14  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D02E18  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D02E1C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D02E20  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D02E24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D02E28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D02E2C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80D02E30  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D02E34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D02E38  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80D02E3C  38 81 00 08 */	addi r4, r1, 8
/* 80D02E40  4B 56 C3 9C */	b SetC__8cM3dGCylFRC4cXyz
/* 80D02E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D02E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D02E4C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D02E50  38 9E 06 08 */	addi r4, r30, 0x608
/* 80D02E54  4B 56 1D 54 */	b Set__4cCcSFP8cCcD_Obj
/* 80D02E58  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D02E5C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D02E60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D02E64  7C 08 03 A6 */	mtlr r0
/* 80D02E68  38 21 00 40 */	addi r1, r1, 0x40
/* 80D02E6C  4E 80 00 20 */	blr 
