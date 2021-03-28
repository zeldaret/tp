lbl_80C5B500:
/* 80C5B500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B504  7C 08 02 A6 */	mflr r0
/* 80C5B508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B50C  3C 60 80 C6 */	lis r3, data_80C5BD48@ha
/* 80C5B510  38 63 BD 48 */	addi r3, r3, data_80C5BD48@l
/* 80C5B514  4B 60 7C 38 */	b ModuleConstructorsX
/* 80C5B518  4B 60 7B 70 */	b ModuleProlog
/* 80C5B51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B520  7C 08 03 A6 */	mtlr r0
/* 80C5B524  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B528  4E 80 00 20 */	blr 
