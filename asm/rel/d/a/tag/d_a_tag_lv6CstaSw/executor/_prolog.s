lbl_80D5B200:
/* 80D5B200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B204  7C 08 02 A6 */	mflr r0
/* 80D5B208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B20C  3C 60 80 D6 */	lis r3, data_80D5B7D8@ha
/* 80D5B210  38 63 B7 D8 */	addi r3, r3, data_80D5B7D8@l
/* 80D5B214  4B 50 7F 38 */	b ModuleConstructorsX
/* 80D5B218  4B 50 7E 70 */	b ModuleProlog
/* 80D5B21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B220  7C 08 03 A6 */	mtlr r0
/* 80D5B224  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B228  4E 80 00 20 */	blr 
