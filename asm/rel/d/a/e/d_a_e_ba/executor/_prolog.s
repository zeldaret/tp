lbl_8067EC00:
/* 8067EC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067EC04  7C 08 02 A6 */	mflr r0
/* 8067EC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067EC0C  3C 60 80 68 */	lis r3, data_806823A8@ha
/* 8067EC10  38 63 23 A8 */	addi r3, r3, data_806823A8@l
/* 8067EC14  4B BE 45 38 */	b ModuleConstructorsX
/* 8067EC18  4B BE 44 70 */	b ModuleProlog
/* 8067EC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067EC20  7C 08 03 A6 */	mtlr r0
/* 8067EC24  38 21 00 10 */	addi r1, r1, 0x10
/* 8067EC28  4E 80 00 20 */	blr 
