lbl_8007B30C:
/* 8007B30C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007B310  7C 08 02 A6 */	mflr r0
/* 8007B314  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007B318  39 61 00 20 */	addi r11, r1, 0x20
/* 8007B31C  48 2E 6E C1 */	bl _savegpr_29
/* 8007B320  7C 7D 1B 78 */	mr r29, r3
/* 8007B324  7C BE 2B 78 */	mr r30, r5
/* 8007B328  7C DF 33 78 */	mr r31, r6
/* 8007B32C  4B FF FF C9 */	bl GetPolyInfId__4cBgWCFi
/* 8007B330  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8007B334  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8007B338  54 60 20 36 */	slwi r0, r3, 4
/* 8007B33C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8007B340  7F C0 00 38 */	and r0, r30, r0
/* 8007B344  7C 03 FC 30 */	srw r3, r0, r31
/* 8007B348  39 61 00 20 */	addi r11, r1, 0x20
/* 8007B34C  48 2E 6E DD */	bl _restgpr_29
/* 8007B350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007B354  7C 08 03 A6 */	mtlr r0
/* 8007B358  38 21 00 20 */	addi r1, r1, 0x20
/* 8007B35C  4E 80 00 20 */	blr 
