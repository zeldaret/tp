lbl_8073A1E0:
/* 8073A1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073A1E4  7C 08 02 A6 */	mflr r0
/* 8073A1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073A1EC  3C 60 80 74 */	lis r3, data_8073CE94@ha
/* 8073A1F0  38 63 CE 94 */	addi r3, r3, data_8073CE94@l
/* 8073A1F4  4B B2 8F 58 */	b ModuleConstructorsX
/* 8073A1F8  4B B2 8E 90 */	b ModuleProlog
/* 8073A1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073A200  7C 08 03 A6 */	mtlr r0
/* 8073A204  38 21 00 10 */	addi r1, r1, 0x10
/* 8073A208  4E 80 00 20 */	blr 
