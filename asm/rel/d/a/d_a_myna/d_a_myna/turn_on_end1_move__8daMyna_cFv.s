lbl_80947D74:
/* 80947D74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80947D78  7C 08 02 A6 */	mflr r0
/* 80947D7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80947D80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80947D84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80947D88  7C 7E 1B 78 */	mr r30, r3
/* 80947D8C  38 61 00 08 */	addi r3, r1, 8
/* 80947D90  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80947D94  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80947D98  4B 91 ED 9D */	bl __mi__4cXyzCFRC3Vec
/* 80947D9C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80947DA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80947DA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80947DA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80947DAC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80947DB0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80947DB4  4B 91 F8 C1 */	bl cM_atan2s__Fff
/* 80947DB8  7C 7F 1B 78 */	mr r31, r3
/* 80947DBC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80947DC0  7F E4 FB 78 */	mr r4, r31
/* 80947DC4  3C A0 80 95 */	lis r5, l_HOSTIO@ha /* 0x8094BA3C@ha */
/* 80947DC8  38 E5 BA 3C */	addi r7, r5, l_HOSTIO@l /* 0x8094BA3C@l */
/* 80947DCC  A8 A7 00 26 */	lha r5, 0x26(r7)
/* 80947DD0  A8 C7 00 28 */	lha r6, 0x28(r7)
/* 80947DD4  A8 E7 00 2A */	lha r7, 0x2a(r7)
/* 80947DD8  4B 92 87 69 */	bl cLib_addCalcAngleS__FPsssss
/* 80947DDC  7F E3 07 34 */	extsh r3, r31
/* 80947DE0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80947DE4  7C 63 00 50 */	subf r3, r3, r0
/* 80947DE8  4B A1 D2 E9 */	bl abs
/* 80947DEC  2C 03 00 10 */	cmpwi r3, 0x10
/* 80947DF0  41 81 00 10 */	bgt lbl_80947E00
/* 80947DF4  B3 FE 04 DE */	sth r31, 0x4de(r30)
/* 80947DF8  38 00 00 0E */	li r0, 0xe
/* 80947DFC  98 1E 09 2C */	stb r0, 0x92c(r30)
lbl_80947E00:
/* 80947E00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80947E04  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80947E08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80947E0C  7C 08 03 A6 */	mtlr r0
/* 80947E10  38 21 00 30 */	addi r1, r1, 0x30
/* 80947E14  4E 80 00 20 */	blr 
