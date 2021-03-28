lbl_80CB28B8:
/* 80CB28B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB28BC  7C 08 02 A6 */	mflr r0
/* 80CB28C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB28C4  4B 5B 07 CC */	b ModuleUnresolved
/* 80CB28C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB28CC  7C 08 03 A6 */	mtlr r0
/* 80CB28D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB28D4  4E 80 00 20 */	blr 
