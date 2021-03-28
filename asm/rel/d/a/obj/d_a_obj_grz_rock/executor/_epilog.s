lbl_80C14B8C:
/* 80C14B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14B90  7C 08 02 A6 */	mflr r0
/* 80C14B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14B98  4B 64 E4 F4 */	b ModuleEpilog
/* 80C14B9C  3C 60 80 C1 */	lis r3, data_80C1535C@ha
/* 80C14BA0  38 63 53 5C */	addi r3, r3, data_80C1535C@l
/* 80C14BA4  4B 64 E5 EC */	b ModuleDestructorsX
/* 80C14BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14BAC  7C 08 03 A6 */	mtlr r0
/* 80C14BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14BB4  4E 80 00 20 */	blr 
