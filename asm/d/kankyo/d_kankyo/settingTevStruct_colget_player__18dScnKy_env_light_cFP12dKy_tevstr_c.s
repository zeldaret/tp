lbl_801A1F58:
/* 801A1F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A1F5C  7C 08 02 A6 */	mflr r0
/* 801A1F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A1F64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A1F68  7C 9F 23 78 */	mr r31, r4
/* 801A1F6C  88 04 03 81 */	lbz r0, 0x381(r4)
/* 801A1F70  28 00 00 FF */	cmplwi r0, 0xff
/* 801A1F74  41 82 00 50 */	beq lbl_801A1FC4
/* 801A1F78  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A1F7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A1F80  3C 00 43 30 */	lis r0, 0x4330
/* 801A1F84  90 01 00 08 */	stw r0, 8(r1)
/* 801A1F88  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A1F8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A1F90  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A1F94  EC 21 00 24 */	fdivs f1, f1, f0
/* 801A1F98  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1F9C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1FA0  A8 03 12 C0 */	lha r0, 0x12c0(r3)
/* 801A1FA4  2C 00 00 64 */	cmpwi r0, 0x64
/* 801A1FA8  40 82 00 58 */	bne lbl_801A2000
/* 801A1FAC  38 7F 03 74 */	addi r3, r31, 0x374
/* 801A1FB0  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A1FB4  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A1FB8  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A1FBC  48 0C D9 C1 */	bl cLib_addCalc__FPfffff
/* 801A1FC0  48 00 00 40 */	b lbl_801A2000
lbl_801A1FC4:
/* 801A1FC4  88 7F 03 80 */	lbz r3, 0x380(r31)
/* 801A1FC8  7C 60 07 75 */	extsb. r0, r3
/* 801A1FCC  41 80 00 34 */	blt lbl_801A2000
/* 801A1FD0  98 7F 03 7C */	stb r3, 0x37c(r31)
/* 801A1FD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1FD8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1FDC  A8 03 12 C0 */	lha r0, 0x12c0(r3)
/* 801A1FE0  2C 00 00 64 */	cmpwi r0, 0x64
/* 801A1FE4  40 82 00 1C */	bne lbl_801A2000
/* 801A1FE8  38 7F 03 74 */	addi r3, r31, 0x374
/* 801A1FEC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A1FF0  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A1FF4  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A1FF8  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A1FFC  48 0C D9 81 */	bl cLib_addCalc__FPfffff
lbl_801A2000:
/* 801A2000  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A2004  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A2008  88 A3 12 C7 */	lbz r5, 0x12c7(r3)
/* 801A200C  88 9F 03 7C */	lbz r4, 0x37c(r31)
/* 801A2010  7C 05 20 40 */	cmplw r5, r4
/* 801A2014  41 82 00 68 */	beq lbl_801A207C
/* 801A2018  88 03 12 C6 */	lbz r0, 0x12c6(r3)
/* 801A201C  7C 04 00 40 */	cmplw r4, r0
/* 801A2020  40 82 00 28 */	bne lbl_801A2048
/* 801A2024  98 A3 12 C6 */	stb r5, 0x12c6(r3)
/* 801A2028  98 83 12 C7 */	stb r4, 0x12c7(r3)
/* 801A202C  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A2030  C0 03 11 DC */	lfs f0, 0x11dc(r3)
/* 801A2034  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A2038  D0 03 11 DC */	stfs f0, 0x11dc(r3)
/* 801A203C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A2040  D0 1F 03 70 */	stfs f0, 0x370(r31)
/* 801A2044  48 00 00 38 */	b lbl_801A207C
lbl_801A2048:
/* 801A2048  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 801A204C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A2050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2054  4C 41 13 82 */	cror 2, 1, 2
/* 801A2058  41 82 00 14 */	beq lbl_801A206C
/* 801A205C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2064  4C 40 13 82 */	cror 2, 0, 2
/* 801A2068  40 82 00 14 */	bne lbl_801A207C
lbl_801A206C:
/* 801A206C  98 83 12 C7 */	stb r4, 0x12c7(r3)
/* 801A2070  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2074  D0 03 11 DC */	stfs f0, 0x11dc(r3)
/* 801A2078  D0 1F 03 70 */	stfs f0, 0x370(r31)
lbl_801A207C:
/* 801A207C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A2080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A2084  7C 08 03 A6 */	mtlr r0
/* 801A2088  38 21 00 20 */	addi r1, r1, 0x20
/* 801A208C  4E 80 00 20 */	blr 
