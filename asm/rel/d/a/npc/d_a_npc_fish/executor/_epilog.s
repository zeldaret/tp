lbl_8054212C:
/* 8054212C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542130  7C 08 02 A6 */	mflr r0
/* 80542134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542138  4B D2 0F 54 */	b ModuleEpilog
/* 8054213C  3C 60 80 54 */	lis r3, data_805424BC@ha
/* 80542140  38 63 24 BC */	addi r3, r3, data_805424BC@l
/* 80542144  4B D2 10 4C */	b ModuleDestructorsX
/* 80542148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054214C  7C 08 03 A6 */	mtlr r0
/* 80542150  38 21 00 10 */	addi r1, r1, 0x10
/* 80542154  4E 80 00 20 */	blr 
