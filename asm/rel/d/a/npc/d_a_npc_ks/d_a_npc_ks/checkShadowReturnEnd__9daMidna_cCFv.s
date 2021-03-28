lbl_80A5DD70:
/* 80A5DD70  38 A0 00 00 */	li r5, 0
/* 80A5DD74  A0 03 05 E4 */	lhz r0, 0x5e4(r3)
/* 80A5DD78  28 00 02 1C */	cmplwi r0, 0x21c
/* 80A5DD7C  40 82 00 3C */	bne lbl_80A5DDB8
/* 80A5DD80  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80A5DD84  38 C0 00 01 */	li r6, 1
/* 80A5DD88  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A5DD8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5DD90  40 82 00 1C */	bne lbl_80A5DDAC
/* 80A5DD94  3C 60 80 A6 */	lis r3, lit_4148@ha
/* 80A5DD98  C0 23 DF 2C */	lfs f1, lit_4148@l(r3)
/* 80A5DD9C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A5DDA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A5DDA4  41 82 00 08 */	beq lbl_80A5DDAC
/* 80A5DDA8  7C A6 2B 78 */	mr r6, r5
lbl_80A5DDAC:
/* 80A5DDAC  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80A5DDB0  41 82 00 08 */	beq lbl_80A5DDB8
/* 80A5DDB4  38 A0 00 01 */	li r5, 1
lbl_80A5DDB8:
/* 80A5DDB8  7C A3 2B 78 */	mr r3, r5
/* 80A5DDBC  4E 80 00 20 */	blr 
