lbl_807425B4:
/* 807425B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807425B8  7C 08 02 A6 */	mflr r0
/* 807425BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807425C0  7C 60 1B 78 */	mr r0, r3
/* 807425C4  2C 04 00 00 */	cmpwi r4, 0
/* 807425C8  40 82 00 24 */	bne lbl_807425EC
/* 807425CC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807425D0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 807425D4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 807425D8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 807425DC  28 03 00 00 */	cmplwi r3, 0
/* 807425E0  41 82 00 0C */	beq lbl_807425EC
/* 807425E4  7C 04 03 78 */	mr r4, r0
/* 807425E8  4B FF FF 21 */	bl ctrlJoint__8daE_PM_cFP8J3DJointP8J3DModel
lbl_807425EC:
/* 807425EC  38 60 00 01 */	li r3, 1
/* 807425F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807425F4  7C 08 03 A6 */	mtlr r0
/* 807425F8  38 21 00 10 */	addi r1, r1, 0x10
/* 807425FC  4E 80 00 20 */	blr 
