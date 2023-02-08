lbl_8031C3F8:
/* 8031C3F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031C3FC  7C 08 02 A6 */	mflr r0
/* 8031C400  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031C404  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C408  48 04 5D D1 */	bl _savegpr_28
/* 8031C40C  7C 7C 1B 78 */	mr r28, r3
/* 8031C410  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C414  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C418  80 1C 00 04 */	lwz r0, 4(r28)
/* 8031C41C  7C 03 02 14 */	add r0, r3, r0
/* 8031C420  90 04 00 08 */	stw r0, 8(r4)
/* 8031C424  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C428  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C42C  3B A0 00 00 */	li r29, 0
/* 8031C430  3B E0 00 00 */	li r31, 0
lbl_8031C434:
/* 8031C434  38 9F 00 08 */	addi r4, r31, 8
/* 8031C438  7C 9C 22 14 */	add r4, r28, r4
/* 8031C43C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031C440  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C444  41 82 00 0C */	beq lbl_8031C450
/* 8031C448  7F A3 EB 78 */	mr r3, r29
/* 8031C44C  48 00 7B 49 */	bl loadTexNo__FUlRCUs
lbl_8031C450:
/* 8031C450  3B BD 00 01 */	addi r29, r29, 1
/* 8031C454  28 1D 00 02 */	cmplwi r29, 2
/* 8031C458  3B FF 00 02 */	addi r31, r31, 2
/* 8031C45C  41 80 FF D8 */	blt lbl_8031C434
/* 8031C460  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C464  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C468  7F C3 F3 78 */	mr r3, r30
/* 8031C46C  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C470  48 01 F1 6D */	bl DCStoreRange
/* 8031C474  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C478  48 04 5D AD */	bl _restgpr_28
/* 8031C47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031C480  7C 08 03 A6 */	mtlr r0
/* 8031C484  38 21 00 20 */	addi r1, r1, 0x20
/* 8031C488  4E 80 00 20 */	blr 
