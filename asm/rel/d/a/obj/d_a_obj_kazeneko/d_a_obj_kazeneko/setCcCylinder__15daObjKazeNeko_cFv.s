lbl_80C3CB10:
/* 80C3CB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3CB14  7C 08 02 A6 */	mflr r0
/* 80C3CB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3CB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3CB20  7C 7F 1B 78 */	mr r31, r3
/* 80C3CB24  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CB28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3CB2C  4B 63 26 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C3CB30  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CB34  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3CB38  C0 24 D3 DC */	lfs f1, M_attr__15daObjKazeNeko_c@l(r4)
/* 80C3CB3C  4B 63 26 C4 */	b SetR__8cM3dGCylFf
/* 80C3CB40  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CB44  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3CB48  38 84 D3 DC */	addi r4, r4, M_attr__15daObjKazeNeko_c@l
/* 80C3CB4C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80C3CB50  4B 63 26 A8 */	b SetH__8cM3dGCylFf
/* 80C3CB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3CB58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3CB5C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C3CB60  38 9F 05 F0 */	addi r4, r31, 0x5f0
/* 80C3CB64  4B 62 80 44 */	b Set__4cCcSFP8cCcD_Obj
/* 80C3CB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3CB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3CB70  7C 08 03 A6 */	mtlr r0
/* 80C3CB74  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3CB78  4E 80 00 20 */	blr 
