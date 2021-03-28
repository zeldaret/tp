lbl_807F8260:
/* 807F8260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F8264  7C 08 02 A6 */	mflr r0
/* 807F8268  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F826C  3C 60 80 80 */	lis r3, data_807FCCA0@ha
/* 807F8270  38 63 CC A0 */	addi r3, r3, data_807FCCA0@l
/* 807F8274  4B A6 AE D8 */	b ModuleConstructorsX
/* 807F8278  4B A6 AE 10 */	b ModuleProlog
/* 807F827C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8280  7C 08 03 A6 */	mtlr r0
/* 807F8284  38 21 00 10 */	addi r1, r1, 0x10
/* 807F8288  4E 80 00 20 */	blr 
