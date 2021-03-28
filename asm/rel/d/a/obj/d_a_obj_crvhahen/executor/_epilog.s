lbl_80BD32EC:
/* 80BD32EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD32F0  7C 08 02 A6 */	mflr r0
/* 80BD32F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD32F8  4B 68 FD 94 */	b ModuleEpilog
/* 80BD32FC  3C 60 80 BD */	lis r3, data_80BD3FEC@ha
/* 80BD3300  38 63 3F EC */	addi r3, r3, data_80BD3FEC@l
/* 80BD3304  4B 68 FE 8C */	b ModuleDestructorsX
/* 80BD3308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD330C  7C 08 03 A6 */	mtlr r0
/* 80BD3310  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3314  4E 80 00 20 */	blr 
