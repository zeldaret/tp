lbl_80594FEC:
/* 80594FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594FF0  7C 08 02 A6 */	mflr r0
/* 80594FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594FF8  4B CC E0 94 */	b ModuleEpilog
/* 80594FFC  3C 60 80 59 */	lis r3, data_80595CB0@ha
/* 80595000  38 63 5C B0 */	addi r3, r3, data_80595CB0@l
/* 80595004  4B CC E1 8C */	b ModuleDestructorsX
/* 80595008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059500C  7C 08 03 A6 */	mtlr r0
/* 80595010  38 21 00 10 */	addi r1, r1, 0x10
/* 80595014  4E 80 00 20 */	blr 
