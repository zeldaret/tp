lbl_80D042EC:
/* 80D042EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D042F0  7C 08 02 A6 */	mflr r0
/* 80D042F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D042F8  4B 55 ED 94 */	b ModuleEpilog
/* 80D042FC  3C 60 80 D0 */	lis r3, data_80D04C34@ha
/* 80D04300  38 63 4C 34 */	addi r3, r3, data_80D04C34@l
/* 80D04304  4B 55 EE 8C */	b ModuleDestructorsX
/* 80D04308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0430C  7C 08 03 A6 */	mtlr r0
/* 80D04310  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04314  4E 80 00 20 */	blr 
