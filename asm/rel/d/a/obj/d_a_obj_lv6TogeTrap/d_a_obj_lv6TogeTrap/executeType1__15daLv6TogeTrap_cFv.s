lbl_80C7ABC8:
/* 80C7ABC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7ABCC  7C 08 02 A6 */	mflr r0
/* 80C7ABD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7ABD4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C7ABD8  7C 7F 1B 78 */	mr r31, r3
/* 80C7ABDC  88 03 06 0B */	lbz r0, 0x60b(r3)
/* 80C7ABE0  28 00 00 00 */	cmplwi r0, 0
/* 80C7ABE4  40 82 00 A8 */	bne lbl_80C7AC8C
/* 80C7ABE8  38 7F 06 50 */	addi r3, r31, 0x650
/* 80C7ABEC  4B 40 9A 6C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C7ABF0  28 03 00 00 */	cmplwi r3, 0
/* 80C7ABF4  41 82 00 98 */	beq lbl_80C7AC8C
/* 80C7ABF8  38 7F 07 38 */	addi r3, r31, 0x738
/* 80C7ABFC  4B 40 8A 8C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C7AC00  7C 65 1B 79 */	or. r5, r3, r3
/* 80C7AC04  41 82 00 88 */	beq lbl_80C7AC8C
/* 80C7AC08  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80C7AC0C  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7AC10  40 82 00 7C */	bne lbl_80C7AC8C
/* 80C7AC14  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7AC18  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C7AC1C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C7AC20  4B 5E BF 14 */	b __mi__4cXyzCFRC3Vec
/* 80C7AC24  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C7AC28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C7AC2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C7AC30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C7AC34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C7AC38  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C7AC3C  38 61 00 08 */	addi r3, r1, 8
/* 80C7AC40  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C7AC44  38 BF 05 B0 */	addi r5, r31, 0x5b0
/* 80C7AC48  4B 5E BE EC */	b __mi__4cXyzCFRC3Vec
/* 80C7AC4C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C7AC50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C7AC54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C7AC58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7AC5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C7AC60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7AC64  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C7AC68  38 81 00 20 */	addi r4, r1, 0x20
/* 80C7AC6C  4B 6C C5 28 */	b PSVECDotProduct
/* 80C7AC70  3C 60 80 C8 */	lis r3, lit_3665@ha
/* 80C7AC74  C0 03 C6 E8 */	lfs f0, lit_3665@l(r3)
/* 80C7AC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7AC7C  4C 41 13 82 */	cror 2, 1, 2
/* 80C7AC80  40 82 00 0C */	bne lbl_80C7AC8C
/* 80C7AC84  7F E3 FB 78 */	mr r3, r31
/* 80C7AC88  48 00 00 19 */	bl init_modeBound__15daLv6TogeTrap_cFv
lbl_80C7AC8C:
/* 80C7AC8C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C7AC90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7AC94  7C 08 03 A6 */	mtlr r0
/* 80C7AC98  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7AC9C  4E 80 00 20 */	blr 
