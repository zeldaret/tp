lbl_80C39B2C:
/* 80C39B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39B30  7C 08 02 A6 */	mflr r0
/* 80C39B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39B38  7C 60 1B 78 */	mr r0, r3
/* 80C39B3C  2C 04 00 00 */	cmpwi r4, 0
/* 80C39B40  40 82 00 24 */	bne lbl_80C39B64
/* 80C39B44  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C39B48  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C39B4C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80C39B50  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80C39B54  28 03 00 00 */	cmplwi r3, 0
/* 80C39B58  41 82 00 0C */	beq lbl_80C39B64
/* 80C39B5C  7C 04 03 78 */	mr r4, r0
/* 80C39B60  4B FF FE F9 */	bl ctrlJoint__10daObjKAT_cFP8J3DJointP8J3DModel
lbl_80C39B64:
/* 80C39B64  38 60 00 01 */	li r3, 1
/* 80C39B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39B6C  7C 08 03 A6 */	mtlr r0
/* 80C39B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39B74  4E 80 00 20 */	blr 
