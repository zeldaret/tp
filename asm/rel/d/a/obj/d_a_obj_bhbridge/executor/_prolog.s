lbl_80BB52A0:
/* 80BB52A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB52A4  7C 08 02 A6 */	mflr r0
/* 80BB52A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB52AC  3C 60 80 BB */	lis r3, data_80BB5EF8@ha
/* 80BB52B0  38 63 5E F8 */	addi r3, r3, data_80BB5EF8@l
/* 80BB52B4  4B 6A DE 98 */	b ModuleConstructorsX
/* 80BB52B8  4B 6A DD D0 */	b ModuleProlog
/* 80BB52BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB52C0  7C 08 03 A6 */	mtlr r0
/* 80BB52C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB52C8  4E 80 00 20 */	blr 
