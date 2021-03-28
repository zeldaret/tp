lbl_809ADDD8:
/* 809ADDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADDDC  7C 08 02 A6 */	mflr r0
/* 809ADDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADDE4  4B 8B 52 AC */	b ModuleUnresolved
/* 809ADDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADDEC  7C 08 03 A6 */	mtlr r0
/* 809ADDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADDF4  4E 80 00 20 */	blr 
