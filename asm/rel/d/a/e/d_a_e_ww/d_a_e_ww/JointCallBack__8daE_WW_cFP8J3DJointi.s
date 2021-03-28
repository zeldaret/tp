lbl_807E7800:
/* 807E7800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E7804  7C 08 02 A6 */	mflr r0
/* 807E7808  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E780C  7C 60 1B 78 */	mr r0, r3
/* 807E7810  2C 04 00 00 */	cmpwi r4, 0
/* 807E7814  40 82 00 24 */	bne lbl_807E7838
/* 807E7818  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807E781C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 807E7820  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 807E7824  80 65 00 14 */	lwz r3, 0x14(r5)
/* 807E7828  28 03 00 00 */	cmplwi r3, 0
/* 807E782C  41 82 00 0C */	beq lbl_807E7838
/* 807E7830  7C 04 03 78 */	mr r4, r0
/* 807E7834  4B FF FF 15 */	bl ctrlJoint__8daE_WW_cFP8J3DJointP8J3DModel
lbl_807E7838:
/* 807E7838  38 60 00 01 */	li r3, 1
/* 807E783C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E7840  7C 08 03 A6 */	mtlr r0
/* 807E7844  38 21 00 10 */	addi r1, r1, 0x10
/* 807E7848  4E 80 00 20 */	blr 
