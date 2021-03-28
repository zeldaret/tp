lbl_80C343F0:
/* 80C343F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C343F4  7C 08 02 A6 */	mflr r0
/* 80C343F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C343FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C34400  7C 7F 1B 78 */	mr r31, r3
/* 80C34404  38 7F 07 5C */	addi r3, r31, 0x75c
/* 80C34408  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3440C  4B 63 AD D0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C34410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C34414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C34418  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C3441C  38 9F 06 38 */	addi r4, r31, 0x638
/* 80C34420  4B 63 07 88 */	b Set__4cCcSFP8cCcD_Obj
/* 80C34424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C34428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3442C  7C 08 03 A6 */	mtlr r0
/* 80C34430  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34434  4E 80 00 20 */	blr 
