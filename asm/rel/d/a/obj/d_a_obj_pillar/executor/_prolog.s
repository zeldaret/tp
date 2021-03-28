lbl_80CAF240:
/* 80CAF240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF244  7C 08 02 A6 */	mflr r0
/* 80CAF248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF24C  3C 60 80 CB */	lis r3, data_80CB09C0@ha
/* 80CAF250  38 63 09 C0 */	addi r3, r3, data_80CB09C0@l
/* 80CAF254  4B 5B 3E F8 */	b ModuleConstructorsX
/* 80CAF258  4B 5B 3E 30 */	b ModuleProlog
/* 80CAF25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF260  7C 08 03 A6 */	mtlr r0
/* 80CAF264  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF268  4E 80 00 20 */	blr 
