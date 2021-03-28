lbl_8063ABC0:
/* 8063ABC0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8063ABC4  7C 08 02 A6 */	mflr r0
/* 8063ABC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8063ABCC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8063ABD0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8063ABD4  7C 7E 1B 78 */	mr r30, r3
/* 8063ABD8  7C 9F 23 78 */	mr r31, r4
/* 8063ABDC  4B B4 6A 64 */	b dCam_getBody__Fv
/* 8063ABE0  7C 64 1B 78 */	mr r4, r3
/* 8063ABE4  38 61 00 14 */	addi r3, r1, 0x14
/* 8063ABE8  4B B4 72 7C */	b Eye__9dCamera_cFv
/* 8063ABEC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8063ABF0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8063ABF4  90 61 00 38 */	stw r3, 0x38(r1)
/* 8063ABF8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8063ABFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8063AC00  90 01 00 40 */	stw r0, 0x40(r1)
/* 8063AC04  4B B4 6A 3C */	b dCam_getBody__Fv
/* 8063AC08  7C 64 1B 78 */	mr r4, r3
/* 8063AC0C  38 61 00 08 */	addi r3, r1, 8
/* 8063AC10  4B B4 72 88 */	b Center__9dCamera_cFv
/* 8063AC14  80 61 00 08 */	lwz r3, 8(r1)
/* 8063AC18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063AC1C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8063AC20  90 01 00 30 */	stw r0, 0x30(r1)
/* 8063AC24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8063AC28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063AC2C  38 61 00 38 */	addi r3, r1, 0x38
/* 8063AC30  38 81 00 2C */	addi r4, r1, 0x2c
/* 8063AC34  4B C3 5F D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8063AC38  7C 66 07 34 */	extsh r6, r3
/* 8063AC3C  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 8063AC40  34 03 FF FB */	addic. r0, r3, -5
/* 8063AC44  40 80 00 08 */	bge lbl_8063AC4C
/* 8063AC48  38 00 00 00 */	li r0, 0
lbl_8063AC4C:
/* 8063AC4C  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 8063AC50  54 00 10 3A */	slwi r0, r0, 2
/* 8063AC54  7C A3 02 14 */	add r5, r3, r0
/* 8063AC58  C0 45 0A 68 */	lfs f2, 0xa68(r5)
/* 8063AC5C  3C 60 80 64 */	lis r3, lit_4082@ha
/* 8063AC60  C0 23 DC D8 */	lfs f1, lit_4082@l(r3)
/* 8063AC64  C0 9F 04 D4 */	lfs f4, 0x4d4(r31)
/* 8063AC68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063AC6C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8063AC70  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8063AC74  7C 64 02 14 */	add r3, r4, r0
/* 8063AC78  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063AC7C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8063AC80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063AC84  EC 42 00 2A */	fadds f2, f2, f0
/* 8063AC88  C0 65 07 48 */	lfs f3, 0x748(r5)
/* 8063AC8C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063AC90  EC 04 00 32 */	fmuls f0, f4, f0
/* 8063AC94  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063AC98  EC 03 00 2A */	fadds f0, f3, f0
/* 8063AC9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8063ACA0  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8063ACA4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8063ACA8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8063ACAC  D0 9E 00 04 */	stfs f4, 4(r30)
/* 8063ACB0  D0 5E 00 08 */	stfs f2, 8(r30)
/* 8063ACB4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8063ACB8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8063ACBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063ACC0  7C 08 03 A6 */	mtlr r0
/* 8063ACC4  38 21 00 50 */	addi r1, r1, 0x50
/* 8063ACC8  4E 80 00 20 */	blr 
