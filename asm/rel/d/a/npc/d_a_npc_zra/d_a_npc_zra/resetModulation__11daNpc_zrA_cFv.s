lbl_80B8247C:
/* 80B8247C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B82480  7C 08 02 A6 */	mflr r0
/* 80B82484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B82488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8248C  7C 7F 1B 78 */	mr r31, r3
/* 80B82490  38 7F 15 64 */	addi r3, r31, 0x1564
/* 80B82494  3C 80 80 B9 */	lis r4, lit_3939@ha
/* 80B82498  C0 24 C5 08 */	lfs f1, lit_3939@l(r4)
/* 80B8249C  3C 80 80 B9 */	lis r4, lit_5070@ha
/* 80B824A0  C0 44 C5 48 */	lfs f2, lit_5070@l(r4)
/* 80B824A4  4B 6E E2 9C */	b cLib_chaseF__FPfff
/* 80B824A8  38 7F 15 60 */	addi r3, r31, 0x1560
/* 80B824AC  3C 80 80 B9 */	lis r4, lit_3939@ha
/* 80B824B0  C0 24 C5 08 */	lfs f1, lit_3939@l(r4)
/* 80B824B4  3C 80 80 B9 */	lis r4, lit_5070@ha
/* 80B824B8  C0 44 C5 48 */	lfs f2, lit_5070@l(r4)
/* 80B824BC  4B 6E E2 84 */	b cLib_chaseF__FPfff
/* 80B824C0  38 7F 15 68 */	addi r3, r31, 0x1568
/* 80B824C4  3C 80 80 B9 */	lis r4, lit_3939@ha
/* 80B824C8  C0 24 C5 08 */	lfs f1, lit_3939@l(r4)
/* 80B824CC  3C 80 80 B9 */	lis r4, lit_5070@ha
/* 80B824D0  C0 44 C5 48 */	lfs f2, lit_5070@l(r4)
/* 80B824D4  4B 6E E2 6C */	b cLib_chaseF__FPfff
/* 80B824D8  38 00 00 D2 */	li r0, 0xd2
/* 80B824DC  90 1F 15 5C */	stw r0, 0x155c(r31)
/* 80B824E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B824E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B824E8  7C 08 03 A6 */	mtlr r0
/* 80B824EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B824F0  4E 80 00 20 */	blr 
