lbl_805CB140:
/* 805CB140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CB144  7C 08 02 A6 */	mflr r0
/* 805CB148  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CB14C  3C 60 80 5E */	lis r3, data_805DCA40@ha
/* 805CB150  38 63 CA 40 */	addi r3, r3, data_805DCA40@l
/* 805CB154  4B C9 7F F8 */	b ModuleConstructorsX
/* 805CB158  4B C9 7F 30 */	b ModuleProlog
/* 805CB15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CB160  7C 08 03 A6 */	mtlr r0
/* 805CB164  38 21 00 10 */	addi r1, r1, 0x10
/* 805CB168  4E 80 00 20 */	blr 
