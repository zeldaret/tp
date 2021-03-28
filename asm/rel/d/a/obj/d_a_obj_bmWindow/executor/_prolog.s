lbl_80BB8120:
/* 80BB8120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB8124  7C 08 02 A6 */	mflr r0
/* 80BB8128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB812C  3C 60 80 BC */	lis r3, data_80BB9728@ha
/* 80BB8130  38 63 97 28 */	addi r3, r3, data_80BB9728@l
/* 80BB8134  4B 6A B0 18 */	b ModuleConstructorsX
/* 80BB8138  4B 6A AF 50 */	b ModuleProlog
/* 80BB813C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8140  7C 08 03 A6 */	mtlr r0
/* 80BB8144  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8148  4E 80 00 20 */	blr 
