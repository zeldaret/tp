lbl_80AF2BC0:
/* 80AF2BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2BC4  7C 08 02 A6 */	mflr r0
/* 80AF2BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF2BCC  3C 60 80 AF */	lis r3, data_80AF5AC0@ha
/* 80AF2BD0  38 63 5A C0 */	addi r3, r3, data_80AF5AC0@l
/* 80AF2BD4  4B 77 05 78 */	b ModuleConstructorsX
/* 80AF2BD8  4B 77 04 B0 */	b ModuleProlog
/* 80AF2BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2BE0  7C 08 03 A6 */	mtlr r0
/* 80AF2BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF2BE8  4E 80 00 20 */	blr 
