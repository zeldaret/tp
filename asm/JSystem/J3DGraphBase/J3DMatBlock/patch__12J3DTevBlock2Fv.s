lbl_8031C6A8:
/* 8031C6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C6AC  7C 08 02 A6 */	mflr r0
/* 8031C6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031C6B8  7C 7F 1B 78 */	mr r31, r3
/* 8031C6BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8031C6C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8031C6C4  7D 89 03 A6 */	mtctr r12
/* 8031C6C8  4E 80 04 21 */	bctrl 
/* 8031C6CC  7F E3 FB 78 */	mr r3, r31
/* 8031C6D0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8031C6D4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8031C6D8  7D 89 03 A6 */	mtctr r12
/* 8031C6DC  4E 80 04 21 */	bctrl 
/* 8031C6E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031C6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031C6E8  7C 08 03 A6 */	mtlr r0
/* 8031C6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8031C6F0  4E 80 00 20 */	blr 
