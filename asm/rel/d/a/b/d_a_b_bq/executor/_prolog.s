lbl_805B3480:
/* 805B3480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3484  7C 08 02 A6 */	mflr r0
/* 805B3488  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B348C  3C 60 80 5C */	lis r3, data_805BA574@ha
/* 805B3490  38 63 A5 74 */	addi r3, r3, data_805BA574@l
/* 805B3494  4B CA FC B8 */	b ModuleConstructorsX
/* 805B3498  4B CA FB F0 */	b ModuleProlog
/* 805B349C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B34A0  7C 08 03 A6 */	mtlr r0
/* 805B34A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B34A8  4E 80 00 20 */	blr 
