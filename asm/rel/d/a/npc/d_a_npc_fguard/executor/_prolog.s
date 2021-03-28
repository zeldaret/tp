lbl_809BA440:
/* 809BA440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BA444  7C 08 02 A6 */	mflr r0
/* 809BA448  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BA44C  3C 60 80 9C */	lis r3, data_809BB3FC@ha
/* 809BA450  38 63 B3 FC */	addi r3, r3, data_809BB3FC@l
/* 809BA454  4B 8A 8C F8 */	b ModuleConstructorsX
/* 809BA458  4B 8A 8C 30 */	b ModuleProlog
/* 809BA45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BA460  7C 08 03 A6 */	mtlr r0
/* 809BA464  38 21 00 10 */	addi r1, r1, 0x10
/* 809BA468  4E 80 00 20 */	blr 
