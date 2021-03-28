lbl_80CDCE2C:
/* 80CDCE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCE30  7C 08 02 A6 */	mflr r0
/* 80CDCE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCE38  4B 58 62 54 */	b ModuleEpilog
/* 80CDCE3C  3C 60 80 CE */	lis r3, data_80CDD15C@ha
/* 80CDCE40  38 63 D1 5C */	addi r3, r3, data_80CDD15C@l
/* 80CDCE44  4B 58 63 4C */	b ModuleDestructorsX
/* 80CDCE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCE4C  7C 08 03 A6 */	mtlr r0
/* 80CDCE50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCE54  4E 80 00 20 */	blr 
