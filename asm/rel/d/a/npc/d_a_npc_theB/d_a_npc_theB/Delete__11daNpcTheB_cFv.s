lbl_80AFD1FC:
/* 80AFD1FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD200  7C 08 02 A6 */	mflr r0
/* 80AFD204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD208  38 80 FF FF */	li r4, -1
/* 80AFD20C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AFD210  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AFD214  7D 89 03 A6 */	mtctr r12
/* 80AFD218  4E 80 04 21 */	bctrl 
/* 80AFD21C  38 60 00 01 */	li r3, 1
/* 80AFD220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD224  7C 08 03 A6 */	mtlr r0
/* 80AFD228  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD22C  4E 80 00 20 */	blr 
