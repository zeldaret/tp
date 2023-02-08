lbl_80A9ED28:
/* 80A9ED28  38 60 00 00 */	li r3, 0
/* 80A9ED2C  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9ED30  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9ED34  4C 82 00 20 */	bnelr 
/* 80A9ED38  38 60 00 01 */	li r3, 1
/* 80A9ED3C  4E 80 00 20 */	blr 
