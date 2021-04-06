lbl_80603FE4:
/* 80603FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603FE8  7C 08 02 A6 */	mflr r0
/* 80603FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603FF0  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x80604150@ha */
/* 80603FF4  38 63 41 50 */	addi r3, r3, l_HIO@l /* 0x80604150@l */
/* 80603FF8  4B FF F1 B5 */	bl __ct__12daB_GO_HIO_cFv
/* 80603FFC  3C 80 80 60 */	lis r4, __dt__12daB_GO_HIO_cFv@ha /* 0x80603F9C@ha */
/* 80604000  38 84 3F 9C */	addi r4, r4, __dt__12daB_GO_HIO_cFv@l /* 0x80603F9C@l */
/* 80604004  3C A0 80 60 */	lis r5, lit_3641@ha /* 0x80604144@ha */
/* 80604008  38 A5 41 44 */	addi r5, r5, lit_3641@l /* 0x80604144@l */
/* 8060400C  4B FF F1 2D */	bl __register_global_object
/* 80604010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80604014  7C 08 03 A6 */	mtlr r0
/* 80604018  38 21 00 10 */	addi r1, r1, 0x10
/* 8060401C  4E 80 00 20 */	blr 
