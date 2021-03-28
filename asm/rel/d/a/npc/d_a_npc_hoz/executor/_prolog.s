lbl_80A01420:
/* 80A01420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01424  7C 08 02 A6 */	mflr r0
/* 80A01428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0142C  3C 60 80 A0 */	lis r3, data_80A0663C@ha
/* 80A01430  38 63 66 3C */	addi r3, r3, data_80A0663C@l
/* 80A01434  4B 86 1D 18 */	b ModuleConstructorsX
/* 80A01438  4B 86 1C 50 */	b ModuleProlog
/* 80A0143C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01440  7C 08 03 A6 */	mtlr r0
/* 80A01444  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01448  4E 80 00 20 */	blr 
