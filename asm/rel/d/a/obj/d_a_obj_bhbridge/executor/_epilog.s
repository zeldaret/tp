lbl_80BB52CC:
/* 80BB52CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB52D0  7C 08 02 A6 */	mflr r0
/* 80BB52D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB52D8  4B 6A DD B4 */	b ModuleEpilog
/* 80BB52DC  3C 60 80 BB */	lis r3, data_80BB5EFC@ha
/* 80BB52E0  38 63 5E FC */	addi r3, r3, data_80BB5EFC@l
/* 80BB52E4  4B 6A DE AC */	b ModuleDestructorsX
/* 80BB52E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB52EC  7C 08 03 A6 */	mtlr r0
/* 80BB52F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB52F4  4E 80 00 20 */	blr 
