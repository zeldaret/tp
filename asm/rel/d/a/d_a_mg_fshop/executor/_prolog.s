lbl_8086BF80:
/* 8086BF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086BF84  7C 08 02 A6 */	mflr r0
/* 8086BF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086BF8C  3C 60 80 87 */	lis r3, data_80870080@ha
/* 8086BF90  38 63 00 80 */	addi r3, r3, data_80870080@l
/* 8086BF94  4B 9F 71 B8 */	b ModuleConstructorsX
/* 8086BF98  4B 9F 70 F0 */	b ModuleProlog
/* 8086BF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086BFA0  7C 08 03 A6 */	mtlr r0
/* 8086BFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8086BFA8  4E 80 00 20 */	blr 
