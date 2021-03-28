lbl_80C50488:
/* 80C50488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5048C  7C 08 02 A6 */	mflr r0
/* 80C50490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50498  7C 7F 1B 78 */	mr r31, r3
/* 80C5049C  38 00 00 03 */	li r0, 3
/* 80C504A0  90 03 07 90 */	stw r0, 0x790(r3)
/* 80C504A4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C504A8  60 00 00 80 */	ori r0, r0, 0x80
/* 80C504AC  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80C504B0  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80C504B4  60 00 00 10 */	ori r0, r0, 0x10
/* 80C504B8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80C504BC  3C 80 80 C5 */	lis r4, lit_3721@ha
/* 80C504C0  C0 04 0D 44 */	lfs f0, lit_3721@l(r4)
/* 80C504C4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C504C8  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 80C504CC  48 00 02 A1 */	bl getGroundSlope__14daObjKznkarm_cFs
/* 80C504D0  38 03 C0 00 */	addi r0, r3, -16384
/* 80C504D4  B0 1F 07 A8 */	sth r0, 0x7a8(r31)
/* 80C504D8  7F E3 FB 78 */	mr r3, r31
/* 80C504DC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C504E0  38 04 C0 00 */	addi r0, r4, -16384
/* 80C504E4  7C 04 07 34 */	extsh r4, r0
/* 80C504E8  48 00 02 85 */	bl getGroundSlope__14daObjKznkarm_cFs
/* 80C504EC  B0 7F 04 E8 */	sth r3, 0x4e8(r31)
/* 80C504F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C504F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C504F8  7C 08 03 A6 */	mtlr r0
/* 80C504FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50500  4E 80 00 20 */	blr 
