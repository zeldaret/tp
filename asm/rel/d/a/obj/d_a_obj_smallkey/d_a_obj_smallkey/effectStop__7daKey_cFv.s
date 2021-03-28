lbl_80CDB0D8:
/* 80CDB0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB0DC  7C 08 02 A6 */	mflr r0
/* 80CDB0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB0E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB0E8  7C 7F 1B 78 */	mr r31, r3
/* 80CDB0EC  38 7F 09 3C */	addi r3, r31, 0x93c
/* 80CDB0F0  81 9F 09 3C */	lwz r12, 0x93c(r31)
/* 80CDB0F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CDB0F8  7D 89 03 A6 */	mtctr r12
/* 80CDB0FC  4E 80 04 21 */	bctrl 
/* 80CDB100  38 7F 09 50 */	addi r3, r31, 0x950
/* 80CDB104  81 9F 09 50 */	lwz r12, 0x950(r31)
/* 80CDB108  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CDB10C  7D 89 03 A6 */	mtctr r12
/* 80CDB110  4E 80 04 21 */	bctrl 
/* 80CDB114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB11C  7C 08 03 A6 */	mtlr r0
/* 80CDB120  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB124  4E 80 00 20 */	blr 
