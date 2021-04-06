lbl_804CE7A4:
/* 804CE7A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE7A8  7C 08 02 A6 */	mflr r0
/* 804CE7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE7B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE7B4  7C 7F 1B 78 */	mr r31, r3
/* 804CE7B8  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 804CE7BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CE7C0  4B DA 0E 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804CE7C4  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 804CE7C8  3C 80 80 4D */	lis r4, lit_3661@ha /* 0x804D1630@ha */
/* 804CE7CC  C0 24 16 30 */	lfs f1, lit_3661@l(r4)  /* 0x804D1630@l */
/* 804CE7D0  4B DA 0F 39 */	bl SetR__8cM3dGSphFf
/* 804CE7D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CE7D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CE7DC  38 63 23 3C */	addi r3, r3, 0x233c
/* 804CE7E0  38 9F 09 10 */	addi r4, r31, 0x910
/* 804CE7E4  4B D9 63 C5 */	bl Set__4cCcSFP8cCcD_Obj
/* 804CE7E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE7F0  7C 08 03 A6 */	mtlr r0
/* 804CE7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE7F8  4E 80 00 20 */	blr 
