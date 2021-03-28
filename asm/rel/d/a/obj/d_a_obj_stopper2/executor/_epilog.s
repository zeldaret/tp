lbl_80CEF2EC:
/* 80CEF2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF2F0  7C 08 02 A6 */	mflr r0
/* 80CEF2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF2F8  4B 57 3D 94 */	b ModuleEpilog
/* 80CEF2FC  3C 60 80 CF */	lis r3, data_80CEFE8C@ha
/* 80CEF300  38 63 FE 8C */	addi r3, r3, data_80CEFE8C@l
/* 80CEF304  4B 57 3E 8C */	b ModuleDestructorsX
/* 80CEF308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF30C  7C 08 03 A6 */	mtlr r0
/* 80CEF310  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF314  4E 80 00 20 */	blr 
