lbl_80C2AF10:
/* 80C2AF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AF14  7C 08 02 A6 */	mflr r0
/* 80C2AF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2AF20  7C 7F 1B 78 */	mr r31, r3
/* 80C2AF24  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C2AF28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C2AF2C  4B 64 47 1C */	b SetC__8cM3dGSphFRC4cXyz
/* 80C2AF30  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C2AF34  3C 80 80 C3 */	lis r4, lit_3790@ha
/* 80C2AF38  C0 24 E1 5C */	lfs f1, lit_3790@l(r4)
/* 80C2AF3C  4B 64 47 CC */	b SetR__8cM3dGSphFf
/* 80C2AF40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2AF44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2AF48  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C2AF4C  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80C2AF50  4B 63 9C 58 */	b Set__4cCcSFP8cCcD_Obj
/* 80C2AF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2AF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AF5C  7C 08 03 A6 */	mtlr r0
/* 80C2AF60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AF64  4E 80 00 20 */	blr 
