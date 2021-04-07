lbl_806A4A58:
/* 806A4A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A4A5C  7C 08 02 A6 */	mflr r0
/* 806A4A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A4A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A4A68  93 C1 00 08 */	stw r30, 8(r1)
/* 806A4A6C  7C 7E 1B 78 */	mr r30, r3
/* 806A4A70  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A4A74  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A4A78  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A4A7C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A4A80  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806A4A84  4B BC AF FD */	bl cLib_addCalc0__FPfff
/* 806A4A88  38 00 00 05 */	li r0, 5
/* 806A4A8C  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806A4A90  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A4A94  2C 00 00 01 */	cmpwi r0, 1
/* 806A4A98  41 82 00 44 */	beq lbl_806A4ADC
/* 806A4A9C  40 80 00 10 */	bge lbl_806A4AAC
/* 806A4AA0  2C 00 00 00 */	cmpwi r0, 0
/* 806A4AA4  40 80 00 14 */	bge lbl_806A4AB8
/* 806A4AA8  48 00 00 A0 */	b lbl_806A4B48
lbl_806A4AAC:
/* 806A4AAC  2C 00 00 03 */	cmpwi r0, 3
/* 806A4AB0  40 80 00 98 */	bge lbl_806A4B48
/* 806A4AB4  48 00 00 80 */	b lbl_806A4B34
lbl_806A4AB8:
/* 806A4AB8  7F C3 F3 78 */	mr r3, r30
/* 806A4ABC  38 80 00 07 */	li r4, 7
/* 806A4AC0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A4AC4  38 A0 00 00 */	li r5, 0
/* 806A4AC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A4ACC  4B FF D8 01 */	bl anm_init__FP10e_dd_classifUcf
/* 806A4AD0  38 00 00 01 */	li r0, 1
/* 806A4AD4  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4AD8  48 00 00 70 */	b lbl_806A4B48
lbl_806A4ADC:
/* 806A4ADC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A4AE0  38 80 00 01 */	li r4, 1
/* 806A4AE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A4AE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A4AEC  40 82 00 18 */	bne lbl_806A4B04
/* 806A4AF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A4AF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A4AF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A4AFC  41 82 00 08 */	beq lbl_806A4B04
/* 806A4B00  38 80 00 00 */	li r4, 0
lbl_806A4B04:
/* 806A4B04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A4B08  41 82 00 40 */	beq lbl_806A4B48
/* 806A4B0C  38 00 00 02 */	li r0, 2
/* 806A4B10  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A4B14  38 00 00 28 */	li r0, 0x28
/* 806A4B18  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A4B1C  38 00 00 04 */	li r0, 4
/* 806A4B20  90 1E 06 7C */	stw r0, 0x67c(r30)
/* 806A4B24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4B28  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 806A4B2C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806A4B30  48 00 00 18 */	b lbl_806A4B48
lbl_806A4B34:
/* 806A4B34  A8 1E 06 AA */	lha r0, 0x6aa(r30)
/* 806A4B38  2C 00 00 00 */	cmpwi r0, 0
/* 806A4B3C  40 82 00 0C */	bne lbl_806A4B48
/* 806A4B40  38 00 00 01 */	li r0, 1
/* 806A4B44  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806A4B48:
/* 806A4B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A4B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A4B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A4B54  7C 08 03 A6 */	mtlr r0
/* 806A4B58  38 21 00 10 */	addi r1, r1, 0x10
/* 806A4B5C  4E 80 00 20 */	blr 
