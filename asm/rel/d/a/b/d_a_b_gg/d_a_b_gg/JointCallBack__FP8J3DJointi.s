lbl_805DED0C:
/* 805DED0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DED10  7C 08 02 A6 */	mflr r0
/* 805DED14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DED18  7C 60 1B 78 */	mr r0, r3
/* 805DED1C  2C 04 00 00 */	cmpwi r4, 0
/* 805DED20  40 82 00 24 */	bne lbl_805DED44
/* 805DED24  3C 60 80 43 */	lis r3, j3dSys@ha
/* 805DED28  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 805DED2C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 805DED30  80 65 00 14 */	lwz r3, 0x14(r5)
/* 805DED34  28 03 00 00 */	cmplwi r3, 0
/* 805DED38  41 82 00 0C */	beq lbl_805DED44
/* 805DED3C  7C 04 03 78 */	mr r4, r0
/* 805DED40  4B FF FE 05 */	bl ctrlJoint__8daB_GG_cFP8J3DJointP8J3DModel
lbl_805DED44:
/* 805DED44  38 60 00 01 */	li r3, 1
/* 805DED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DED4C  7C 08 03 A6 */	mtlr r0
/* 805DED50  38 21 00 10 */	addi r1, r1, 0x10
/* 805DED54  4E 80 00 20 */	blr 
