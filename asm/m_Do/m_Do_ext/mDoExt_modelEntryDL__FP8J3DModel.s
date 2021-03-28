lbl_8000DD64:
/* 8000DD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000DD68  7C 08 02 A6 */	mflr r0
/* 8000DD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000DD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000DD74  7C 7F 1B 78 */	mr r31, r3
/* 8000DD78  80 A3 00 04 */	lwz r5, 4(r3)
/* 8000DD7C  80 85 00 60 */	lwz r4, 0x60(r5)
/* 8000DD80  80 84 00 00 */	lwz r4, 0(r4)
/* 8000DD84  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8000DD88  28 00 00 00 */	cmplwi r0, 0
/* 8000DD8C  41 82 00 18 */	beq lbl_8000DDA4
/* 8000DD90  A0 05 00 74 */	lhz r0, 0x74(r5)
/* 8000DD94  28 00 00 01 */	cmplwi r0, 1
/* 8000DD98  41 82 00 0C */	beq lbl_8000DDA4
/* 8000DD9C  4B FF FE 3D */	bl mDoExt_modelDiff__FP8J3DModel
/* 8000DDA0  48 00 00 28 */	b lbl_8000DDC8
lbl_8000DDA4:
/* 8000DDA4  7F E3 FB 78 */	mr r3, r31
/* 8000DDA8  48 31 99 0D */	bl unlock__8J3DModelFv
/* 8000DDAC  7F E3 FB 78 */	mr r3, r31
/* 8000DDB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DDB4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8000DDB8  7D 89 03 A6 */	mtctr r12
/* 8000DDBC  4E 80 04 21 */	bctrl 
/* 8000DDC0  7F E3 FB 78 */	mr r3, r31
/* 8000DDC4  48 31 98 B9 */	bl lock__8J3DModelFv
lbl_8000DDC8:
/* 8000DDC8  7F E3 FB 78 */	mr r3, r31
/* 8000DDCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DDD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8000DDD4  7D 89 03 A6 */	mtctr r12
/* 8000DDD8  4E 80 04 21 */	bctrl 
/* 8000DDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000DDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000DDE4  7C 08 03 A6 */	mtlr r0
/* 8000DDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000DDEC  4E 80 00 20 */	blr 
