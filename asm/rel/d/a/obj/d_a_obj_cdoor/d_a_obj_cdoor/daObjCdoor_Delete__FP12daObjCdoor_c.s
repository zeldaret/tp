lbl_80BC7378:
/* 80BC7378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC737C  7C 08 02 A6 */	mflr r0
/* 80BC7380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7388  7C 7F 1B 78 */	mr r31, r3
/* 80BC738C  4B 4B 15 51 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BC7390  7F E3 FB 78 */	mr r3, r31
/* 80BC7394  38 80 FF FF */	li r4, -1
/* 80BC7398  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BC739C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BC73A0  7D 89 03 A6 */	mtctr r12
/* 80BC73A4  4E 80 04 21 */	bctrl 
/* 80BC73A8  38 60 00 01 */	li r3, 1
/* 80BC73AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC73B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC73B4  7C 08 03 A6 */	mtlr r0
/* 80BC73B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC73BC  4E 80 00 20 */	blr 
