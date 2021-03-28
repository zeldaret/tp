lbl_8032D87C:
/* 8032D87C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D880  7C 08 02 A6 */	mflr r0
/* 8032D884  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D888  39 61 00 20 */	addi r11, r1, 0x20
/* 8032D88C  48 03 49 45 */	bl _savegpr_26
/* 8032D890  80 A4 00 00 */	lwz r5, 0(r4)
/* 8032D894  A0 05 00 1E */	lhz r0, 0x1e(r5)
/* 8032D898  28 00 00 00 */	cmplwi r0, 0
/* 8032D89C  41 82 00 40 */	beq lbl_8032D8DC
/* 8032D8A0  A3 C5 00 1C */	lhz r30, 0x1c(r5)
/* 8032D8A4  83 84 00 0C */	lwz r28, 0xc(r4)
/* 8032D8A8  83 A5 00 2C */	lwz r29, 0x2c(r5)
/* 8032D8AC  83 63 00 0C */	lwz r27, 0xc(r3)
/* 8032D8B0  3B 40 00 00 */	li r26, 0
/* 8032D8B4  3B E0 00 00 */	li r31, 0
/* 8032D8B8  48 00 00 1C */	b lbl_8032D8D4
lbl_8032D8BC:
/* 8032D8BC  7C 7C FA 14 */	add r3, r28, r31
/* 8032D8C0  7C 9D FA 14 */	add r4, r29, r31
/* 8032D8C4  7C BB FA 14 */	add r5, r27, r31
/* 8032D8C8  48 01 8C 1D */	bl PSMTXConcat
/* 8032D8CC  3B 5A 00 01 */	addi r26, r26, 1
/* 8032D8D0  3B FF 00 30 */	addi r31, r31, 0x30
lbl_8032D8D4:
/* 8032D8D4  7C 1A F0 00 */	cmpw r26, r30
/* 8032D8D8  41 80 FF E4 */	blt lbl_8032D8BC
lbl_8032D8DC:
/* 8032D8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8032D8E0  48 03 49 3D */	bl _restgpr_26
/* 8032D8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D8E8  7C 08 03 A6 */	mtlr r0
/* 8032D8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D8F0  4E 80 00 20 */	blr 
