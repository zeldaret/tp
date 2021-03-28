lbl_804857EC:
/* 804857EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804857F0  7C 08 02 A6 */	mflr r0
/* 804857F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804857F8  4B DD D8 94 */	b ModuleEpilog
/* 804857FC  3C 60 80 48 */	lis r3, data_80485C94@ha
/* 80485800  38 63 5C 94 */	addi r3, r3, data_80485C94@l
/* 80485804  4B DD D9 8C */	b ModuleDestructorsX
/* 80485808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048580C  7C 08 03 A6 */	mtlr r0
/* 80485810  38 21 00 10 */	addi r1, r1, 0x10
/* 80485814  4E 80 00 20 */	blr 
