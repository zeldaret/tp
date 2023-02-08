lbl_8031C3CC:
/* 8031C3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C3D0  7C 08 02 A6 */	mflr r0
/* 8031C3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C3D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8031C3DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8031C3E0  7D 89 03 A6 */	mtctr r12
/* 8031C3E4  4E 80 04 21 */	bctrl 
/* 8031C3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031C3EC  7C 08 03 A6 */	mtlr r0
/* 8031C3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8031C3F4  4E 80 00 20 */	blr 
