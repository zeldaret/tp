lbl_80D3B250:
/* 80D3B250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B254  7C 08 02 A6 */	mflr r0
/* 80D3B258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B260  7C 7F 1B 78 */	mr r31, r3
/* 80D3B264  38 7F 09 4C */	addi r3, r31, 0x94c
/* 80D3B268  81 9F 09 4C */	lwz r12, 0x94c(r31)
/* 80D3B26C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D3B270  7D 89 03 A6 */	mtctr r12
/* 80D3B274  4E 80 04 21 */	bctrl 
/* 80D3B278  38 7F 09 60 */	addi r3, r31, 0x960
/* 80D3B27C  81 9F 09 60 */	lwz r12, 0x960(r31)
/* 80D3B280  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D3B284  7D 89 03 A6 */	mtctr r12
/* 80D3B288  4E 80 04 21 */	bctrl 
/* 80D3B28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3B290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B294  7C 08 03 A6 */	mtlr r0
/* 80D3B298  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B29C  4E 80 00 20 */	blr 
