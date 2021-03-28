lbl_80CBCCC0:
/* 80CBCCC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBCCC4  7C 08 02 A6 */	mflr r0
/* 80CBCCC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBCCCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBCCD0  7C 7F 1B 78 */	mr r31, r3
/* 80CBCCD4  A8 03 05 AA */	lha r0, 0x5aa(r3)
/* 80CBCCD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CBCCDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CBCCE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CBCCE4  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CBCCE8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80CBCCEC  3C 60 80 CC */	lis r3, lit_3669@ha
/* 80CBCCF0  C8 23 DA AC */	lfd f1, lit_3669@l(r3)
/* 80CBCCF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBCCF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCCFC  3C 00 43 30 */	lis r0, 0x4330
/* 80CBCD00  90 01 00 08 */	stw r0, 8(r1)
/* 80CBCD04  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CBCD08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBCD0C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CBCD10  FC 00 00 1E */	fctiwz f0, f0
/* 80CBCD14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CBCD18  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80CBCD1C  7C 60 07 35 */	extsh. r0, r3
/* 80CBCD20  40 81 00 0C */	ble lbl_80CBCD2C
/* 80CBCD24  7C 03 00 D0 */	neg r0, r3
/* 80CBCD28  7C 03 07 34 */	extsh r3, r0
lbl_80CBCD2C:
/* 80CBCD2C  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80CBCD30  7C 00 1A 14 */	add r0, r0, r3
/* 80CBCD34  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80CBCD38  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CBCD3C  38 80 03 00 */	li r4, 0x300
/* 80CBCD40  38 A0 08 00 */	li r5, 0x800
/* 80CBCD44  38 C0 01 00 */	li r6, 0x100
/* 80CBCD48  38 E0 00 00 */	li r7, 0
/* 80CBCD4C  4B 5B 37 F4 */	b cLib_addCalcAngleS__FPsssss
/* 80CBCD50  A8 7F 05 AA */	lha r3, 0x5aa(r31)
/* 80CBCD54  A8 1F 05 B0 */	lha r0, 0x5b0(r31)
/* 80CBCD58  7C 03 02 14 */	add r0, r3, r0
/* 80CBCD5C  B0 1F 05 AA */	sth r0, 0x5aa(r31)
/* 80CBCD60  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80CBCD64  38 80 00 00 */	li r4, 0
/* 80CBCD68  38 A0 00 20 */	li r5, 0x20
/* 80CBCD6C  4B 5B 3E 24 */	b cLib_chaseAngleS__FPsss
/* 80CBCD70  2C 03 00 00 */	cmpwi r3, 0
/* 80CBCD74  41 82 00 0C */	beq lbl_80CBCD80
/* 80CBCD78  38 00 00 03 */	li r0, 3
/* 80CBCD7C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
lbl_80CBCD80:
/* 80CBCD80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBCD84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBCD88  7C 08 03 A6 */	mtlr r0
/* 80CBCD8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBCD90  4E 80 00 20 */	blr 
