lbl_805DEF18:
/* 805DEF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DEF1C  7C 08 02 A6 */	mflr r0
/* 805DEF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DEF24  7C 60 1B 78 */	mr r0, r3
/* 805DEF28  2C 04 00 00 */	cmpwi r4, 0
/* 805DEF2C  40 82 00 24 */	bne lbl_805DEF50
/* 805DEF30  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805DEF34  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805DEF38  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 805DEF3C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 805DEF40  28 03 00 00 */	cmplwi r3, 0
/* 805DEF44  41 82 00 0C */	beq lbl_805DEF50
/* 805DEF48  7C 04 03 78 */	mr r4, r0
/* 805DEF4C  4B FF FE 0D */	bl HeadctrlJoint__8daB_GG_cFP8J3DJointP8J3DModel
lbl_805DEF50:
/* 805DEF50  38 60 00 01 */	li r3, 1
/* 805DEF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DEF58  7C 08 03 A6 */	mtlr r0
/* 805DEF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DEF60  4E 80 00 20 */	blr 
