lbl_80BA75A4:
/* 80BA75A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA75A8  7C 08 02 A6 */	mflr r0
/* 80BA75AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA75B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA75B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA75B8  7C 7E 1B 78 */	mr r30, r3
/* 80BA75BC  3B E0 00 00 */	li r31, 0
/* 80BA75C0  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80BA75C4  3C 80 80 BA */	lis r4, lit_3663@ha
/* 80BA75C8  C0 24 7D 1C */	lfs f1, lit_3663@l(r4)
/* 80BA75CC  3C 80 80 BA */	lis r4, lit_3846@ha
/* 80BA75D0  C0 44 7D 34 */	lfs f2, lit_3846@l(r4)
/* 80BA75D4  4B 6C 91 6C */	b cLib_chaseF__FPfff
/* 80BA75D8  2C 03 00 00 */	cmpwi r3, 0
/* 80BA75DC  41 82 00 08 */	beq lbl_80BA75E4
/* 80BA75E0  3B E0 00 01 */	li r31, 1
lbl_80BA75E4:
/* 80BA75E4  7F C3 F3 78 */	mr r3, r30
/* 80BA75E8  4B FF F9 2D */	bl setBaseMtx__16daObjAvalanche_cFv
/* 80BA75EC  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BA75F0  28 03 00 00 */	cmplwi r3, 0
/* 80BA75F4  41 82 00 08 */	beq lbl_80BA75FC
/* 80BA75F8  4B 4D 43 C8 */	b Move__4dBgWFv
lbl_80BA75FC:
/* 80BA75FC  7F E3 FB 78 */	mr r3, r31
/* 80BA7600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA7604  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA7608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA760C  7C 08 03 A6 */	mtlr r0
/* 80BA7610  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7614  4E 80 00 20 */	blr 
