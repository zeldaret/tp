lbl_807BA940:
/* 807BA940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA944  7C 08 02 A6 */	mflr r0
/* 807BA948  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA950  7C 7F 1B 78 */	mr r31, r3
/* 807BA954  38 80 00 01 */	li r4, 1
/* 807BA958  98 83 06 94 */	stb r4, 0x694(r3)
/* 807BA95C  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 807BA960  2C 00 00 01 */	cmpwi r0, 1
/* 807BA964  41 82 00 1C */	beq lbl_807BA980
/* 807BA968  40 80 00 50 */	bge lbl_807BA9B8
/* 807BA96C  2C 00 00 00 */	cmpwi r0, 0
/* 807BA970  40 80 00 08 */	bge lbl_807BA978
/* 807BA974  48 00 00 44 */	b lbl_807BA9B8
lbl_807BA978:
/* 807BA978  B0 9F 06 6C */	sth r4, 0x66c(r31)
/* 807BA97C  48 00 00 3C */	b lbl_807BA9B8
lbl_807BA980:
/* 807BA980  A8 1F 06 8C */	lha r0, 0x68c(r31)
/* 807BA984  2C 00 00 00 */	cmpwi r0, 0
/* 807BA988  40 82 00 30 */	bne lbl_807BA9B8
/* 807BA98C  3C 80 80 7C */	lis r4, l_HIO@ha
/* 807BA990  38 84 BF 50 */	addi r4, r4, l_HIO@l
/* 807BA994  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807BA998  38 80 40 00 */	li r4, 0x4000
/* 807BA99C  4B FF FE 0D */	bl pl_check__FP11e_tk2_classfs
/* 807BA9A0  2C 03 00 00 */	cmpwi r3, 0
/* 807BA9A4  41 82 00 14 */	beq lbl_807BA9B8
/* 807BA9A8  38 00 00 01 */	li r0, 1
/* 807BA9AC  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 807BA9B0  38 00 00 00 */	li r0, 0
/* 807BA9B4  B0 1F 06 6C */	sth r0, 0x66c(r31)
lbl_807BA9B8:
/* 807BA9B8  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 807BA9BC  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 807BA9C0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807BA9C4  A8 9F 06 7C */	lha r4, 0x67c(r31)
/* 807BA9C8  38 A0 00 10 */	li r5, 0x10
/* 807BA9CC  38 C0 04 00 */	li r6, 0x400
/* 807BA9D0  4B AB 5C 38 */	b cLib_addCalcAngleS2__FPssss
/* 807BA9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA9DC  7C 08 03 A6 */	mtlr r0
/* 807BA9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA9E4  4E 80 00 20 */	blr 
