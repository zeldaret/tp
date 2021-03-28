lbl_80C10ED4:
/* 80C10ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10ED8  7C 08 02 A6 */	mflr r0
/* 80C10EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C10EE4  7C 7F 1B 78 */	mr r31, r3
/* 80C10EE8  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 80C10EEC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C10EF0  4B 65 E2 EC */	b SetC__8cM3dGCylFRC4cXyz
/* 80C10EF4  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 80C10EF8  3C 80 80 C1 */	lis r4, l_DATA@ha
/* 80C10EFC  38 84 0F B0 */	addi r4, r4, l_DATA@l
/* 80C10F00  C0 24 00 04 */	lfs f1, 4(r4)
/* 80C10F04  4B 65 E2 F4 */	b SetH__8cM3dGCylFf
/* 80C10F08  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 80C10F0C  3C 80 80 C1 */	lis r4, l_DATA@ha
/* 80C10F10  C0 24 0F B0 */	lfs f1, l_DATA@l(r4)
/* 80C10F14  4B 65 E2 EC */	b SetR__8cM3dGCylFf
/* 80C10F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C10F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C10F20  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C10F24  38 9F 05 A4 */	addi r4, r31, 0x5a4
/* 80C10F28  4B 65 3C 80 */	b Set__4cCcSFP8cCcD_Obj
/* 80C10F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C10F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10F34  7C 08 03 A6 */	mtlr r0
/* 80C10F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10F3C  4E 80 00 20 */	blr 
