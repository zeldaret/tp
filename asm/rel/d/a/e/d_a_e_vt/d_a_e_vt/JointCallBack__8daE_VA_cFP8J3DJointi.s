lbl_807C284C:
/* 807C284C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C2850  7C 08 02 A6 */	mflr r0
/* 807C2854  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C2858  7C 60 1B 78 */	mr r0, r3
/* 807C285C  2C 04 00 00 */	cmpwi r4, 0
/* 807C2860  40 82 00 24 */	bne lbl_807C2884
/* 807C2864  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 807C2868  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 807C286C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 807C2870  80 65 00 14 */	lwz r3, 0x14(r5)
/* 807C2874  28 03 00 00 */	cmplwi r3, 0
/* 807C2878  41 82 00 0C */	beq lbl_807C2884
/* 807C287C  7C 04 03 78 */	mr r4, r0
/* 807C2880  4B FF FD FD */	bl ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel
lbl_807C2884:
/* 807C2884  38 60 00 01 */	li r3, 1
/* 807C2888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C288C  7C 08 03 A6 */	mtlr r0
/* 807C2890  38 21 00 10 */	addi r1, r1, 0x10
/* 807C2894  4E 80 00 20 */	blr 
