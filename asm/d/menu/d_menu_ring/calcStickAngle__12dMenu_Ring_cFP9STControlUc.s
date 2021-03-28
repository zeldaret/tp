lbl_801EB8C0:
/* 801EB8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EB8C4  7C 08 02 A6 */	mflr r0
/* 801EB8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EB8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EB8D0  7C BF 2B 78 */	mr r31, r5
/* 801EB8D4  7C 83 23 78 */	mr r3, r4
/* 801EB8D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801EB8DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EB8E0  7D 89 03 A6 */	mtctr r12
/* 801EB8E4  4E 80 04 21 */	bctrl 
/* 801EB8E8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EB8EC  28 00 00 07 */	cmplwi r0, 7
/* 801EB8F0  41 81 00 58 */	bgt lbl_801EB948
/* 801EB8F4  3C 80 80 3C */	lis r4, lit_4795@ha
/* 801EB8F8  38 84 DF 3C */	addi r4, r4, lit_4795@l
/* 801EB8FC  54 00 10 3A */	slwi r0, r0, 2
/* 801EB900  7C 04 00 2E */	lwzx r0, r4, r0
/* 801EB904  7C 09 03 A6 */	mtctr r0
/* 801EB908  4E 80 04 20 */	bctr 
/* 801EB90C  3C 63 00 01 */	addis r3, r3, 1
/* 801EB910  38 63 80 00 */	addi r3, r3, -32768
/* 801EB914  48 00 00 38 */	b lbl_801EB94C
/* 801EB918  38 63 A0 00 */	addi r3, r3, -24576
/* 801EB91C  48 00 00 30 */	b lbl_801EB94C
/* 801EB920  38 63 C0 00 */	addi r3, r3, -16384
/* 801EB924  48 00 00 28 */	b lbl_801EB94C
/* 801EB928  38 63 E0 00 */	addi r3, r3, -8192
/* 801EB92C  48 00 00 20 */	b lbl_801EB94C
/* 801EB930  38 63 20 00 */	addi r3, r3, 0x2000
/* 801EB934  48 00 00 18 */	b lbl_801EB94C
/* 801EB938  38 63 40 00 */	addi r3, r3, 0x4000
/* 801EB93C  48 00 00 10 */	b lbl_801EB94C
/* 801EB940  38 63 60 00 */	addi r3, r3, 0x6000
/* 801EB944  48 00 00 08 */	b lbl_801EB94C
lbl_801EB948:
/* 801EB948  38 63 40 00 */	addi r3, r3, 0x4000
lbl_801EB94C:
/* 801EB94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EB950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EB954  7C 08 03 A6 */	mtlr r0
/* 801EB958  38 21 00 10 */	addi r1, r1, 0x10
/* 801EB95C  4E 80 00 20 */	blr 
