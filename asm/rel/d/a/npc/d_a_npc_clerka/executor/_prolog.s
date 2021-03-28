lbl_80992440:
/* 80992440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992444  7C 08 02 A6 */	mflr r0
/* 80992448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099244C  3C 60 80 99 */	lis r3, data_8099585C@ha
/* 80992450  38 63 58 5C */	addi r3, r3, data_8099585C@l
/* 80992454  4B 8D 0C F8 */	b ModuleConstructorsX
/* 80992458  4B 8D 0C 30 */	b ModuleProlog
/* 8099245C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992460  7C 08 03 A6 */	mtlr r0
/* 80992464  38 21 00 10 */	addi r1, r1, 0x10
/* 80992468  4E 80 00 20 */	blr 
