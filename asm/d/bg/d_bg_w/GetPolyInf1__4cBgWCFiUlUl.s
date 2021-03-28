lbl_8007B654:
/* 8007B654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007B658  7C 08 02 A6 */	mflr r0
/* 8007B65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007B660  39 61 00 20 */	addi r11, r1, 0x20
/* 8007B664  48 2E 6B 79 */	bl _savegpr_29
/* 8007B668  7C 7D 1B 78 */	mr r29, r3
/* 8007B66C  7C BE 2B 78 */	mr r30, r5
/* 8007B670  7C DF 33 78 */	mr r31, r6
/* 8007B674  4B FF FC 81 */	bl GetPolyInfId__4cBgWCFi
/* 8007B678  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8007B67C  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8007B680  54 60 20 36 */	slwi r0, r3, 4
/* 8007B684  7C 64 02 14 */	add r3, r4, r0
/* 8007B688  80 03 00 04 */	lwz r0, 4(r3)
/* 8007B68C  7F C0 00 38 */	and r0, r30, r0
/* 8007B690  7C 03 FC 30 */	srw r3, r0, r31
/* 8007B694  39 61 00 20 */	addi r11, r1, 0x20
/* 8007B698  48 2E 6B 91 */	bl _restgpr_29
/* 8007B69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007B6A0  7C 08 03 A6 */	mtlr r0
/* 8007B6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8007B6A8  4E 80 00 20 */	blr 
