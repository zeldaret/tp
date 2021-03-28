lbl_80CA34EC:
/* 80CA34EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA34F0  7C 08 02 A6 */	mflr r0
/* 80CA34F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA34F8  4B 5B FB 94 */	b ModuleEpilog
/* 80CA34FC  3C 60 80 CA */	lis r3, data_80CA3A40@ha
/* 80CA3500  38 63 3A 40 */	addi r3, r3, data_80CA3A40@l
/* 80CA3504  4B 5B FC 8C */	b ModuleDestructorsX
/* 80CA3508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA350C  7C 08 03 A6 */	mtlr r0
/* 80CA3510  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3514  4E 80 00 20 */	blr 
