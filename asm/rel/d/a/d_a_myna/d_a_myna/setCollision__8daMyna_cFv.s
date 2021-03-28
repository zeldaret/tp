lbl_80949588:
/* 80949588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094958C  7C 08 02 A6 */	mflr r0
/* 80949590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80949594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80949598  7C 7F 1B 78 */	mr r31, r3
/* 8094959C  38 7F 08 08 */	addi r3, r31, 0x808
/* 809495A0  38 9F 08 5C */	addi r4, r31, 0x85c
/* 809495A4  4B 92 60 A4 */	b SetC__8cM3dGSphFRC4cXyz
/* 809495A8  38 7F 08 08 */	addi r3, r31, 0x808
/* 809495AC  3C 80 80 95 */	lis r4, lit_5221@ha
/* 809495B0  C0 24 B2 28 */	lfs f1, lit_5221@l(r4)
/* 809495B4  4B 92 61 54 */	b SetR__8cM3dGSphFf
/* 809495B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809495BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809495C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 809495C4  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 809495C8  4B 91 B5 E0 */	b Set__4cCcSFP8cCcD_Obj
/* 809495CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809495D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809495D4  7C 08 03 A6 */	mtlr r0
/* 809495D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809495DC  4E 80 00 20 */	blr 
