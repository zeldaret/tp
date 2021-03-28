lbl_80BC7EC0:
/* 80BC7EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7EC4  7C 08 02 A6 */	mflr r0
/* 80BC7EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7ECC  3C 60 80 BD */	lis r3, data_80BC8CD0@ha
/* 80BC7ED0  38 63 8C D0 */	addi r3, r3, data_80BC8CD0@l
/* 80BC7ED4  4B 69 B2 78 */	b ModuleConstructorsX
/* 80BC7ED8  4B 69 B1 B0 */	b ModuleProlog
/* 80BC7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7EE0  7C 08 03 A6 */	mtlr r0
/* 80BC7EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7EE8  4E 80 00 20 */	blr 
