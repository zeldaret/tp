lbl_8045F968:
/* 8045F968  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045F96C  7C 08 02 A6 */	mflr r0
/* 8045F970  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045F974  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8045F978  7C 7F 1B 78 */	mr r31, r3
/* 8045F97C  3C 60 80 46 */	lis r3, lit_3876@ha
/* 8045F980  38 A3 06 68 */	addi r5, r3, lit_3876@l
/* 8045F984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F98C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8045F990  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8045F994  38 04 7F FF */	addi r0, r4, 0x7fff
/* 8045F998  C0 E3 04 D0 */	lfs f7, 0x4d0(r3)
/* 8045F99C  D0 E1 00 08 */	stfs f7, 8(r1)
/* 8045F9A0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8045F9A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8045F9A8  C0 C3 04 D8 */	lfs f6, 0x4d8(r3)
/* 8045F9AC  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8045F9B0  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 8045F9B4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8045F9B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8045F9BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045F9C0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8045F9C4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8045F9C8  C0 25 00 3C */	lfs f1, 0x3c(r5)
/* 8045F9CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8045F9D0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8045F9D4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8045F9D8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8045F9DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045F9E0  EC A3 00 2A */	fadds f5, f3, f0
/* 8045F9E4  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8045F9E8  7C 84 02 14 */	add r4, r4, r0
/* 8045F9EC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8045F9F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045F9F4  EC 82 00 2A */	fadds f4, f2, f0
/* 8045F9F8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8045F9FC  A8 1F 06 10 */	lha r0, 0x610(r31)
/* 8045FA00  2C 00 00 00 */	cmpwi r0, 0
/* 8045FA04  40 81 00 58 */	ble lbl_8045FA5C
/* 8045FA08  C0 65 00 44 */	lfs f3, 0x44(r5)
/* 8045FA0C  EC 23 01 F2 */	fmuls f1, f3, f7
/* 8045FA10  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 8045FA14  EC 02 01 72 */	fmuls f0, f2, f5
/* 8045FA18  EC 01 00 2A */	fadds f0, f1, f0
/* 8045FA1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045FA20  EC 23 01 B2 */	fmuls f1, f3, f6
/* 8045FA24  EC 02 01 32 */	fmuls f0, f2, f4
/* 8045FA28  EC 01 00 2A */	fadds f0, f1, f0
/* 8045FA2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045FA30  38 81 00 08 */	addi r4, r1, 8
/* 8045FA34  A8 A3 04 DE */	lha r5, 0x4de(r3)
/* 8045FA38  38 C0 00 00 */	li r6, 0
/* 8045FA3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8045FA40  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8045FA44  7D 89 03 A6 */	mtctr r12
/* 8045FA48  4E 80 04 21 */	bctrl 
/* 8045FA4C  A8 7F 06 10 */	lha r3, 0x610(r31)
/* 8045FA50  38 03 FF FF */	addi r0, r3, -1
/* 8045FA54  B0 1F 06 10 */	sth r0, 0x610(r31)
/* 8045FA58  48 00 00 28 */	b lbl_8045FA80
lbl_8045FA5C:
/* 8045FA5C  38 81 00 14 */	addi r4, r1, 0x14
/* 8045FA60  A8 A3 04 DE */	lha r5, 0x4de(r3)
/* 8045FA64  38 C0 00 00 */	li r6, 0
/* 8045FA68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8045FA6C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8045FA70  7D 89 03 A6 */	mtctr r12
/* 8045FA74  4E 80 04 21 */	bctrl 
/* 8045FA78  38 60 00 01 */	li r3, 1
/* 8045FA7C  48 00 00 08 */	b lbl_8045FA84
lbl_8045FA80:
/* 8045FA80  38 60 00 00 */	li r3, 0
lbl_8045FA84:
/* 8045FA84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8045FA88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045FA8C  7C 08 03 A6 */	mtlr r0
/* 8045FA90  38 21 00 30 */	addi r1, r1, 0x30
/* 8045FA94  4E 80 00 20 */	blr 
