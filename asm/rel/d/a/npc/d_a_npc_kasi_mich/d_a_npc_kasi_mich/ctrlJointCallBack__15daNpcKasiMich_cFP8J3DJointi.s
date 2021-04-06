lbl_80A26C7C:
/* 80A26C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26C80  7C 08 02 A6 */	mflr r0
/* 80A26C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26C88  7C 60 1B 78 */	mr r0, r3
/* 80A26C8C  2C 04 00 00 */	cmpwi r4, 0
/* 80A26C90  40 82 00 24 */	bne lbl_80A26CB4
/* 80A26C94  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A26C98  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A26C9C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A26CA0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A26CA4  28 03 00 00 */	cmplwi r3, 0
/* 80A26CA8  41 82 00 0C */	beq lbl_80A26CB4
/* 80A26CAC  7C 04 03 78 */	mr r4, r0
/* 80A26CB0  4B FF FE 21 */	bl ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel
lbl_80A26CB4:
/* 80A26CB4  38 60 00 01 */	li r3, 1
/* 80A26CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26CBC  7C 08 03 A6 */	mtlr r0
/* 80A26CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26CC4  4E 80 00 20 */	blr 
