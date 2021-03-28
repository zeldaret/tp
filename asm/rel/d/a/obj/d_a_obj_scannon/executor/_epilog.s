lbl_80CC6A4C:
/* 80CC6A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6A50  7C 08 02 A6 */	mflr r0
/* 80CC6A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6A58  4B 59 C6 34 */	b ModuleEpilog
/* 80CC6A5C  3C 60 80 CD */	lis r3, data_80CC9184@ha
/* 80CC6A60  38 63 91 84 */	addi r3, r3, data_80CC9184@l
/* 80CC6A64  4B 59 C7 2C */	b ModuleDestructorsX
/* 80CC6A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6A6C  7C 08 03 A6 */	mtlr r0
/* 80CC6A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6A74  4E 80 00 20 */	blr 
