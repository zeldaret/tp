lbl_80CC6A20:
/* 80CC6A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6A24  7C 08 02 A6 */	mflr r0
/* 80CC6A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6A2C  3C 60 80 CD */	lis r3, data_80CC917C@ha
/* 80CC6A30  38 63 91 7C */	addi r3, r3, data_80CC917C@l
/* 80CC6A34  4B 59 C7 18 */	b ModuleConstructorsX
/* 80CC6A38  4B 59 C6 50 */	b ModuleProlog
/* 80CC6A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6A40  7C 08 03 A6 */	mtlr r0
/* 80CC6A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6A48  4E 80 00 20 */	blr 
