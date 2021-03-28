lbl_80C3CA8C:
/* 80C3CA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3CA90  7C 08 02 A6 */	mflr r0
/* 80C3CA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3CA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3CA9C  7C 7F 1B 78 */	mr r31, r3
/* 80C3CAA0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C3CAA4  38 80 00 FF */	li r4, 0xff
/* 80C3CAA8  38 A0 00 FF */	li r5, 0xff
/* 80C3CAAC  7F E6 FB 78 */	mr r6, r31
/* 80C3CAB0  4B 44 6D B0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C3CAB4  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80C3CAB8  3C 80 80 C4 */	lis r4, ccCylSrc@ha
/* 80C3CABC  38 84 D4 1C */	addi r4, r4, ccCylSrc@l
/* 80C3CAC0  4B 44 7D F4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C3CAC4  38 1F 05 B4 */	addi r0, r31, 0x5b4
/* 80C3CAC8  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80C3CACC  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CAD0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3CAD4  4B 63 27 08 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C3CAD8  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CADC  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3CAE0  C0 24 D3 DC */	lfs f1, M_attr__15daObjKazeNeko_c@l(r4)
/* 80C3CAE4  4B 63 27 1C */	b SetR__8cM3dGCylFf
/* 80C3CAE8  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C3CAEC  3C 80 80 C4 */	lis r4, M_attr__15daObjKazeNeko_c@ha
/* 80C3CAF0  38 84 D3 DC */	addi r4, r4, M_attr__15daObjKazeNeko_c@l
/* 80C3CAF4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80C3CAF8  4B 63 27 00 */	b SetH__8cM3dGCylFf
/* 80C3CAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3CB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3CB04  7C 08 03 A6 */	mtlr r0
/* 80C3CB08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3CB0C  4E 80 00 20 */	blr 
