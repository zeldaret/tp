lbl_80736120:
/* 80736120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80736124  7C 08 02 A6 */	mflr r0
/* 80736128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073612C  3C 60 80 74 */	lis r3, data_80739D4C@ha
/* 80736130  38 63 9D 4C */	addi r3, r3, data_80739D4C@l
/* 80736134  4B B2 D0 18 */	b ModuleConstructorsX
/* 80736138  4B B2 CF 50 */	b ModuleProlog
/* 8073613C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80736140  7C 08 03 A6 */	mtlr r0
/* 80736144  38 21 00 10 */	addi r1, r1, 0x10
/* 80736148  4E 80 00 20 */	blr 
