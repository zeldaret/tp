lbl_806DF3D8:
/* 806DF3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DF3DC  7C 08 02 A6 */	mflr r0
/* 806DF3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DF3E4  4B B8 3C AC */	b ModuleUnresolved
/* 806DF3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DF3EC  7C 08 03 A6 */	mtlr r0
/* 806DF3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806DF3F4  4E 80 00 20 */	blr 
