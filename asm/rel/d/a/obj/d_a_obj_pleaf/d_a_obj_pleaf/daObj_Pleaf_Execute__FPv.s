lbl_80CB1728:
/* 80CB1728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB172C  7C 08 02 A6 */	mflr r0
/* 80CB1730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1734  4B FF FC C5 */	bl Execute__13daObj_Pleaf_cFv
/* 80CB1738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB173C  7C 08 03 A6 */	mtlr r0
/* 80CB1740  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1744  4E 80 00 20 */	blr 
