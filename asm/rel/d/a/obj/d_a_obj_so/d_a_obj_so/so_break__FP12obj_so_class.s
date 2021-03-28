lbl_80CE0F94:
/* 80CE0F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE0F98  7C 08 02 A6 */	mflr r0
/* 80CE0F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE0FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE0FA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE0FA8  7C 7E 1B 78 */	mr r30, r3
/* 80CE0FAC  3C 80 80 CE */	lis r4, lit_3779@ha
/* 80CE0FB0  3B E4 39 E8 */	addi r31, r4, lit_3779@l
/* 80CE0FB4  A8 03 0D B0 */	lha r0, 0xdb0(r3)
/* 80CE0FB8  2C 00 00 01 */	cmpwi r0, 1
/* 80CE0FBC  41 82 00 2C */	beq lbl_80CE0FE8
/* 80CE0FC0  40 80 00 28 */	bge lbl_80CE0FE8
/* 80CE0FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80CE0FC8  40 80 00 08 */	bge lbl_80CE0FD0
/* 80CE0FCC  48 00 00 1C */	b lbl_80CE0FE8
lbl_80CE0FD0:
/* 80CE0FD0  38 00 00 01 */	li r0, 1
/* 80CE0FD4  B0 1E 0D B0 */	sth r0, 0xdb0(r30)
/* 80CE0FD8  38 80 00 02 */	li r4, 2
/* 80CE0FDC  4B FF F7 69 */	bl part_set__FP12obj_so_classSc
/* 80CE0FE0  38 00 00 00 */	li r0, 0
/* 80CE0FE4  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_80CE0FE8:
/* 80CE0FE8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE0FEC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CE0FF0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CE0FF4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CE0FF8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE0FFC  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CE1000  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80CE1004  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CE1008  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE100C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CE1010  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80CE1014  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CE1018  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80CE101C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CE1020  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80CE1024  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CE1028  A8 1E 0D AC */	lha r0, 0xdac(r30)
/* 80CE102C  1C 00 0F 00 */	mulli r0, r0, 0xf00
/* 80CE1030  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE1034  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CE1038  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CE103C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE1040  C0 1E 0D C8 */	lfs f0, 0xdc8(r30)
/* 80CE1044  FC 00 00 50 */	fneg f0, f0
/* 80CE1048  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE104C  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1050  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CE1054  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CE1058  B0 1E 0D C2 */	sth r0, 0xdc2(r30)
/* 80CE105C  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80CE1060  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CE1064  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CE1068  4B 58 EA 18 */	b cLib_addCalc0__FPfff
/* 80CE106C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE1070  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE1074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE1078  7C 08 03 A6 */	mtlr r0
/* 80CE107C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE1080  4E 80 00 20 */	blr 
