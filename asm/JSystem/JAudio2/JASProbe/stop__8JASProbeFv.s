lbl_80290DC4:
/* 80290DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80290DC8  7C 08 02 A6 */	mflr r0
/* 80290DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80290DD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80290DD4  7C 7F 1B 78 */	mr r31, r3
/* 80290DD8  48 0A C9 1D */	bl OSDisableInterrupts
/* 80290DDC  90 61 00 08 */	stw r3, 8(r1)
/* 80290DE0  48 0B 19 1D */	bl OSGetTime
/* 80290DE4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80290DE8  7C 00 20 50 */	subf r0, r0, r4
/* 80290DEC  C8 22 BB 98 */	lfd f1, lit_129(r2)
/* 80290DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290DF4  3C 80 43 30 */	lis r4, 0x4330
/* 80290DF8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80290DFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80290E00  EC 00 08 28 */	fsubs f0, f0, f1
/* 80290E04  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80290E08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80290E0C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80290E10  80 03 00 F8 */	lwz r0, 0x00F8(r3)
/* 80290E14  54 00 F0 BE */	srwi r0, r0, 2
/* 80290E18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80290E1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80290E20  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80290E24  EC 20 08 28 */	fsubs f1, f0, f1
/* 80290E28  C0 02 BB 88 */	lfs f0, lit_125(r2)
/* 80290E2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80290E30  EC 02 00 24 */	fdivs f0, f2, f0
/* 80290E34  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80290E38  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80290E3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80290E40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80290E44  40 80 00 14 */	bge lbl_80290E58
/* 80290E48  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80290E4C  28 00 00 64 */	cmplwi r0, 0x64
/* 80290E50  40 81 00 08 */	ble lbl_80290E58
/* 80290E54  D0 3F 00 10 */	stfs f1, 0x10(r31)
lbl_80290E58:
/* 80290E58  C0 22 BB 8C */	lfs f1, lit_126(r2)
/* 80290E5C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80290E60  EC 41 00 32 */	fmuls f2, f1, f0
/* 80290E64  C0 22 BB 90 */	lfs f1, lit_127(r2)
/* 80290E68  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80290E6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80290E70  EC 02 00 2A */	fadds f0, f2, f0
/* 80290E74  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80290E78  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80290E7C  38 60 00 64 */	li r3, 0x64
/* 80290E80  7C 04 1B 96 */	divwu r0, r4, r3
/* 80290E84  7C 00 19 D6 */	mullw r0, r0, r3
/* 80290E88  7C 00 20 50 */	subf r0, r0, r4
/* 80290E8C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80290E90  54 00 10 3A */	slwi r0, r0, 2
/* 80290E94  7C 7F 02 14 */	add r3, r31, r0
/* 80290E98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80290E9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80290EA0  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80290EA4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80290EA8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80290EAC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80290EB0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80290EB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80290EB8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80290EBC  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 80290EC0  38 03 00 01 */	addi r0, r3, 1
/* 80290EC4  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 80290EC8  80 61 00 08 */	lwz r3, 8(r1)
/* 80290ECC  48 0A C8 51 */	bl OSRestoreInterrupts
/* 80290ED0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80290ED4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80290ED8  7C 08 03 A6 */	mtlr r0
/* 80290EDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80290EE0  4E 80 00 20 */	blr 
