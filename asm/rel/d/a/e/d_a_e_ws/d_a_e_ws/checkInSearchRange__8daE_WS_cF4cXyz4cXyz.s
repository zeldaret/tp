lbl_807E416C:
/* 807E416C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E4170  7C 08 02 A6 */	mflr r0
/* 807E4174  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E4178  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807E417C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807E4180  7C 9E 23 78 */	mr r30, r4
/* 807E4184  7C BF 2B 78 */	mr r31, r5
/* 807E4188  C0 04 00 00 */	lfs f0, 0(r4)
/* 807E418C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E4190  C0 04 00 04 */	lfs f0, 4(r4)
/* 807E4194  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E4198  C0 04 00 08 */	lfs f0, 8(r4)
/* 807E419C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E41A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 807E41A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E41A8  C0 05 00 04 */	lfs f0, 4(r5)
/* 807E41AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E41B0  C0 05 00 08 */	lfs f0, 8(r5)
/* 807E41B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E41B8  38 81 00 14 */	addi r4, r1, 0x14
/* 807E41BC  38 A1 00 08 */	addi r5, r1, 8
/* 807E41C0  4B FF FD ED */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E41C4  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807E41C8  38 63 75 C8 */	addi r3, r3, l_HIO@l
/* 807E41CC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807E41D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E41D4  7C 00 00 26 */	mfcr r0
/* 807E41D8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 807E41DC  41 82 00 2C */	beq lbl_807E4208
/* 807E41E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807E41E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E41E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807E41EC  FC 00 02 10 */	fabs f0, f0
/* 807E41F0  FC 20 00 18 */	frsp f1, f0
/* 807E41F4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807E41F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E41FC  40 80 00 0C */	bge lbl_807E4208
/* 807E4200  38 60 00 01 */	li r3, 1
/* 807E4204  48 00 00 08 */	b lbl_807E420C
lbl_807E4208:
/* 807E4208  38 60 00 00 */	li r3, 0
lbl_807E420C:
/* 807E420C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807E4210  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807E4214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E4218  7C 08 03 A6 */	mtlr r0
/* 807E421C  38 21 00 30 */	addi r1, r1, 0x30
/* 807E4220  4E 80 00 20 */	blr 
