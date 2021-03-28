lbl_8031C9D0:
/* 8031C9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C9D4  7C 08 02 A6 */	mflr r0
/* 8031C9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031C9E0  7C 7F 1B 78 */	mr r31, r3
/* 8031C9E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8031C9E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8031C9EC  7D 89 03 A6 */	mtctr r12
/* 8031C9F0  4E 80 04 21 */	bctrl 
/* 8031C9F4  7F E3 FB 78 */	mr r3, r31
/* 8031C9F8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8031C9FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8031CA00  7D 89 03 A6 */	mtctr r12
/* 8031CA04  4E 80 04 21 */	bctrl 
/* 8031CA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031CA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031CA10  7C 08 03 A6 */	mtlr r0
/* 8031CA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8031CA18  4E 80 00 20 */	blr 
