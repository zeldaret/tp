lbl_800E0010:
/* 800E0010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0014  7C 08 02 A6 */	mflr r0
/* 800E0018  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E001C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0020  93 C1 00 08 */	stw r30, 8(r1)
/* 800E0024  7C 7E 1B 78 */	mr r30, r3
/* 800E0028  3B E0 00 00 */	li r31, 0
/* 800E002C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E0030  28 00 01 02 */	cmplwi r0, 0x102
/* 800E0034  41 82 00 14 */	beq lbl_800E0048
/* 800E0038  48 00 04 09 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800E003C  2C 03 00 00 */	cmpwi r3, 0
/* 800E0040  41 82 00 08 */	beq lbl_800E0048
/* 800E0044  3B E0 00 01 */	li r31, 1
lbl_800E0048:
/* 800E0048  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800E004C  41 82 00 14 */	beq lbl_800E0060
/* 800E0050  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E0054  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E0058  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 800E005C  48 00 00 10 */	b lbl_800E006C
lbl_800E0060:
/* 800E0060  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E0064  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E0068  C0 23 00 34 */	lfs f1, 0x34(r3)
lbl_800E006C:
/* 800E006C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E0070  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E0074  41 82 00 24 */	beq lbl_800E0098
/* 800E0078  80 7E 28 18 */	lwz r3, 0x2818(r30)
/* 800E007C  28 03 00 00 */	cmplwi r3, 0
/* 800E0080  41 82 00 18 */	beq lbl_800E0098
/* 800E0084  C0 43 05 2C */	lfs f2, 0x52c(r3)
/* 800E0088  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E008C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E0090  40 81 00 08 */	ble lbl_800E0098
/* 800E0094  EC 21 10 2A */	fadds f1, f1, f2
lbl_800E0098:
/* 800E0098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E009C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E00A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E00A4  7C 08 03 A6 */	mtlr r0
/* 800E00A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E00AC  4E 80 00 20 */	blr 
