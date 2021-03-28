lbl_80271AB4:
/* 80271AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80271AB8  7C 08 02 A6 */	mflr r0
/* 80271ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80271AC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80271AC4  7C 7F 1B 78 */	mr r31, r3
/* 80271AC8  7C 83 23 78 */	mr r3, r4
/* 80271ACC  38 81 00 08 */	addi r4, r1, 8
/* 80271AD0  48 00 00 25 */	bl Polar__7cSGlobeCFP7cSPolar
/* 80271AD4  7F E3 FB 78 */	mr r3, r31
/* 80271AD8  38 81 00 08 */	addi r4, r1, 8
/* 80271ADC  4B FF FC 11 */	bl Xyz__7cSPolarCFv
/* 80271AE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80271AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80271AE8  7C 08 03 A6 */	mtlr r0
/* 80271AEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80271AF0  4E 80 00 20 */	blr 
