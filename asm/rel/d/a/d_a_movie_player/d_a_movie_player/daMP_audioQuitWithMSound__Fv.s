lbl_80877158:
/* 80877158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087715C  7C 08 02 A6 */	mflr r0
/* 80877160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80877164  38 60 00 00 */	li r3, 0
/* 80877168  38 80 00 00 */	li r4, 0
/* 8087716C  4B A2 58 71 */	bl registerMixCallback__9JASDriverFPFl_Ps10JASMixMode
/* 80877170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80877174  7C 08 03 A6 */	mtlr r0
/* 80877178  38 21 00 10 */	addi r1, r1, 0x10
/* 8087717C  4E 80 00 20 */	blr 
