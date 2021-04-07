lbl_80BA2728:
/* 80BA2728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA272C  7C 08 02 A6 */	mflr r0
/* 80BA2730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA2738  7C 7F 1B 78 */	mr r31, r3
/* 80BA273C  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80BA2740  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA2744  4B 6C CF 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BA2748  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80BA274C  3C 80 80 BA */	lis r4, lit_3790@ha /* 0x80BA5454@ha */
/* 80BA2750  C0 24 54 54 */	lfs f1, lit_3790@l(r4)  /* 0x80BA5454@l */
/* 80BA2754  4B 6C CF B5 */	bl SetR__8cM3dGSphFf
/* 80BA2758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA275C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA2760  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BA2764  38 9F 06 78 */	addi r4, r31, 0x678
/* 80BA2768  4B 6C 24 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BA276C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA2770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2774  7C 08 03 A6 */	mtlr r0
/* 80BA2778  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA277C  4E 80 00 20 */	blr 
