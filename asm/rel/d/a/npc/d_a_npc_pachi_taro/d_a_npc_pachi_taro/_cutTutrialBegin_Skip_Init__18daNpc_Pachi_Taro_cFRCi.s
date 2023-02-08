lbl_80A9ECF0:
/* 80A9ECF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9ECF4  7C 08 02 A6 */	mflr r0
/* 80A9ECF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9ECFC  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9ED00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9ED04  41 82 00 08 */	beq lbl_80A9ED0C
/* 80A9ED08  48 00 00 0C */	b lbl_80A9ED14
lbl_80A9ED0C:
/* 80A9ED0C  38 60 02 60 */	li r3, 0x260
/* 80A9ED10  4B 6A DD 1D */	bl daNpcT_onEvtBit__FUl
lbl_80A9ED14:
/* 80A9ED14  38 60 00 01 */	li r3, 1
/* 80A9ED18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9ED1C  7C 08 03 A6 */	mtlr r0
/* 80A9ED20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9ED24  4E 80 00 20 */	blr 
