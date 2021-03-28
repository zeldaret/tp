lbl_8000DCC4:
/* 8000DCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000DCC8  7C 08 02 A6 */	mflr r0
/* 8000DCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000DCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000DCD4  7C 7F 1B 78 */	mr r31, r3
/* 8000DCD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8000DCDC  80 85 00 60 */	lwz r4, 0x60(r5)
/* 8000DCE0  80 84 00 00 */	lwz r4, 0(r4)
/* 8000DCE4  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8000DCE8  28 00 00 00 */	cmplwi r0, 0
/* 8000DCEC  41 82 00 2C */	beq lbl_8000DD18
/* 8000DCF0  A0 05 00 74 */	lhz r0, 0x74(r5)
/* 8000DCF4  28 00 00 01 */	cmplwi r0, 1
/* 8000DCF8  41 82 00 20 */	beq lbl_8000DD18
/* 8000DCFC  81 83 00 00 */	lwz r12, 0(r3)
/* 8000DD00  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000DD04  7D 89 03 A6 */	mtctr r12
/* 8000DD08  4E 80 04 21 */	bctrl 
/* 8000DD0C  7F E3 FB 78 */	mr r3, r31
/* 8000DD10  4B FF FE C9 */	bl mDoExt_modelDiff__FP8J3DModel
/* 8000DD14  48 00 00 28 */	b lbl_8000DD3C
lbl_8000DD18:
/* 8000DD18  7F E3 FB 78 */	mr r3, r31
/* 8000DD1C  48 31 99 99 */	bl unlock__8J3DModelFv
/* 8000DD20  7F E3 FB 78 */	mr r3, r31
/* 8000DD24  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DD28  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000DD2C  7D 89 03 A6 */	mtctr r12
/* 8000DD30  4E 80 04 21 */	bctrl 
/* 8000DD34  7F E3 FB 78 */	mr r3, r31
/* 8000DD38  48 31 99 45 */	bl lock__8J3DModelFv
lbl_8000DD3C:
/* 8000DD3C  7F E3 FB 78 */	mr r3, r31
/* 8000DD40  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DD44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8000DD48  7D 89 03 A6 */	mtctr r12
/* 8000DD4C  4E 80 04 21 */	bctrl 
/* 8000DD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000DD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000DD58  7C 08 03 A6 */	mtlr r0
/* 8000DD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000DD60  4E 80 00 20 */	blr 
