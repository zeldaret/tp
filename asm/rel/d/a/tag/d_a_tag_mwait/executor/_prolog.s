lbl_80D5BDA0:
/* 80D5BDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5BDA4  7C 08 02 A6 */	mflr r0
/* 80D5BDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5BDAC  3C 60 80 D6 */	lis r3, data_80D5C578@ha
/* 80D5BDB0  38 63 C5 78 */	addi r3, r3, data_80D5C578@l
/* 80D5BDB4  4B 50 73 98 */	b ModuleConstructorsX
/* 80D5BDB8  4B 50 72 D0 */	b ModuleProlog
/* 80D5BDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5BDC0  7C 08 03 A6 */	mtlr r0
/* 80D5BDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5BDC8  4E 80 00 20 */	blr 
