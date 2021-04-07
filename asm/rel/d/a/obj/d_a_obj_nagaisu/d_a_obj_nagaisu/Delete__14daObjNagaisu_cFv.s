lbl_80C9F7A8:
/* 80C9F7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9F7AC  7C 08 02 A6 */	mflr r0
/* 80C9F7B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9F7B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F7B8  4B 6C 2A 21 */	bl _savegpr_28
/* 80C9F7BC  7C 7C 1B 78 */	mr r28, r3
/* 80C9F7C0  3B DC 05 B4 */	addi r30, r28, 0x5b4
/* 80C9F7C4  3B A0 00 00 */	li r29, 0
/* 80C9F7C8  3B E0 00 01 */	li r31, 1
lbl_80C9F7CC:
/* 80C9F7CC  7F C3 F3 78 */	mr r3, r30
/* 80C9F7D0  48 00 08 E9 */	bl Delete__15daObjIsuChild_cFv
/* 80C9F7D4  9B FE 02 F0 */	stb r31, 0x2f0(r30)
/* 80C9F7D8  3B BD 00 01 */	addi r29, r29, 1
/* 80C9F7DC  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80C9F7E0  3B DE 02 F4 */	addi r30, r30, 0x2f4
/* 80C9F7E4  41 80 FF E8 */	blt lbl_80C9F7CC
/* 80C9F7E8  7F 83 E3 78 */	mr r3, r28
/* 80C9F7EC  38 80 FF FF */	li r4, -1
/* 80C9F7F0  81 9C 05 70 */	lwz r12, 0x570(r28)
/* 80C9F7F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C9F7F8  7D 89 03 A6 */	mtctr r12
/* 80C9F7FC  4E 80 04 21 */	bctrl 
/* 80C9F800  38 60 00 01 */	li r3, 1
/* 80C9F804  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F808  4B 6C 2A 1D */	bl _restgpr_28
/* 80C9F80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9F810  7C 08 03 A6 */	mtlr r0
/* 80C9F814  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9F818  4E 80 00 20 */	blr 
