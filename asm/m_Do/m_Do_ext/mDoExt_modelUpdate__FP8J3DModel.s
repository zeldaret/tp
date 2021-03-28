lbl_8000DC2C:
/* 8000DC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000DC30  7C 08 02 A6 */	mflr r0
/* 8000DC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000DC38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000DC3C  7C 7F 1B 78 */	mr r31, r3
/* 8000DC40  80 A3 00 04 */	lwz r5, 4(r3)
/* 8000DC44  80 85 00 60 */	lwz r4, 0x60(r5)
/* 8000DC48  80 84 00 00 */	lwz r4, 0(r4)
/* 8000DC4C  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8000DC50  28 00 00 00 */	cmplwi r0, 0
/* 8000DC54  41 82 00 2C */	beq lbl_8000DC80
/* 8000DC58  A0 05 00 74 */	lhz r0, 0x74(r5)
/* 8000DC5C  28 00 00 01 */	cmplwi r0, 1
/* 8000DC60  41 82 00 20 */	beq lbl_8000DC80
/* 8000DC64  81 83 00 00 */	lwz r12, 0(r3)
/* 8000DC68  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000DC6C  7D 89 03 A6 */	mtctr r12
/* 8000DC70  4E 80 04 21 */	bctrl 
/* 8000DC74  7F E3 FB 78 */	mr r3, r31
/* 8000DC78  4B FF FF 61 */	bl mDoExt_modelDiff__FP8J3DModel
/* 8000DC7C  48 00 00 20 */	b lbl_8000DC9C
lbl_8000DC80:
/* 8000DC80  7F E3 FB 78 */	mr r3, r31
/* 8000DC84  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DC88  81 8C 00 08 */	lwz r12, 8(r12)
/* 8000DC8C  7D 89 03 A6 */	mtctr r12
/* 8000DC90  4E 80 04 21 */	bctrl 
/* 8000DC94  7F E3 FB 78 */	mr r3, r31
/* 8000DC98  48 31 99 E5 */	bl lock__8J3DModelFv
lbl_8000DC9C:
/* 8000DC9C  7F E3 FB 78 */	mr r3, r31
/* 8000DCA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000DCA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8000DCA8  7D 89 03 A6 */	mtctr r12
/* 8000DCAC  4E 80 04 21 */	bctrl 
/* 8000DCB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000DCB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000DCB8  7C 08 03 A6 */	mtlr r0
/* 8000DCBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8000DCC0  4E 80 00 20 */	blr 
