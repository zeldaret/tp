lbl_80CB940C:
/* 80CB940C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9410  7C 08 02 A6 */	mflr r0
/* 80CB9414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB941C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB9420  7C 7E 1B 78 */	mr r30, r3
/* 80CB9424  7C 9F 23 78 */	mr r31, r4
/* 80CB9428  48 00 00 3D */	bl holeProc__10daRfHole_cFv
/* 80CB942C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB9430  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB9434  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB9438  7F C3 F3 78 */	mr r3, r30
/* 80CB943C  4B FF FA C9 */	bl setBaseMtx__10daRfHole_cFv
/* 80CB9440  38 00 00 00 */	li r0, 0
/* 80CB9444  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80CB9448  38 60 00 01 */	li r3, 1
/* 80CB944C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB9454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9458  7C 08 03 A6 */	mtlr r0
/* 80CB945C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9460  4E 80 00 20 */	blr 
