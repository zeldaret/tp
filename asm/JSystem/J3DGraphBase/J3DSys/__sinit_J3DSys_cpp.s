lbl_80310ED0:
/* 80310ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310ED4  7C 08 02 A6 */	mflr r0
/* 80310ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310EDC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80310EE0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80310EE4  4B FF EF 05 */	bl __ct__6J3DSysFv
/* 80310EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310EEC  7C 08 03 A6 */	mtlr r0
/* 80310EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80310EF4  4E 80 00 20 */	blr 
