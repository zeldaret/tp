lbl_8031C274:
/* 8031C274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031C278  7C 08 02 A6 */	mflr r0
/* 8031C27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031C280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031C284  7C 65 1B 78 */	mr r5, r3
/* 8031C288  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C28C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C290  80 05 00 04 */	lwz r0, 4(r5)
/* 8031C294  7C 03 02 14 */	add r0, r3, r0
/* 8031C298  90 04 00 08 */	stw r0, 8(r4)
/* 8031C29C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C2A0  83 E3 00 08 */	lwz r31, 8(r3)
/* 8031C2A4  A0 05 00 08 */	lhz r0, 8(r5)
/* 8031C2A8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C2AC  41 82 00 10 */	beq lbl_8031C2BC
/* 8031C2B0  38 60 00 00 */	li r3, 0
/* 8031C2B4  38 85 00 08 */	addi r4, r5, 8
/* 8031C2B8  48 00 7C DD */	bl loadTexNo__FUlRCUs
lbl_8031C2BC:
/* 8031C2BC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C2C0  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C2C4  7F E3 FB 78 */	mr r3, r31
/* 8031C2C8  7C 9F 00 50 */	subf r4, r31, r0
/* 8031C2CC  48 01 F3 11 */	bl DCStoreRange
/* 8031C2D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031C2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031C2D8  7C 08 03 A6 */	mtlr r0
/* 8031C2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8031C2E0  4E 80 00 20 */	blr 
