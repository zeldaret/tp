lbl_8014D9BC:
/* 8014D9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D9C0  7C 08 02 A6 */	mflr r0
/* 8014D9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D9CC  7C 7F 1B 78 */	mr r31, r3
/* 8014D9D0  38 00 00 00 */	li r0, 0
/* 8014D9D4  90 03 00 04 */	stw r0, 4(r3)
/* 8014D9D8  B0 03 0A 10 */	sth r0, 0xa10(r3)
/* 8014D9DC  98 C3 0A 12 */	stb r6, 0xa12(r3)
/* 8014D9E0  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8014D9E4  28 03 00 FF */	cmplwi r3, 0xff
/* 8014D9E8  41 82 00 44 */	beq lbl_8014DA2C
/* 8014D9EC  7C A4 07 74 */	extsb r4, r5
/* 8014D9F0  4B F0 3D FD */	bl dPath_GetRoomPath__Fii
/* 8014D9F4  90 7F 00 04 */	stw r3, 4(r31)
/* 8014D9F8  80 9F 00 04 */	lwz r4, 4(r31)
/* 8014D9FC  28 04 00 00 */	cmplwi r4, 0
/* 8014DA00  40 82 00 0C */	bne lbl_8014DA0C
/* 8014DA04  38 60 00 00 */	li r3, 0
/* 8014DA08  48 00 00 2C */	b lbl_8014DA34
lbl_8014DA0C:
/* 8014DA0C  88 04 00 05 */	lbz r0, 5(r4)
/* 8014DA10  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 8014DA14  80 64 00 08 */	lwz r3, 8(r4)
/* 8014DA18  A0 84 00 00 */	lhz r4, 0(r4)
/* 8014DA1C  38 A0 00 A0 */	li r5, 0xa0
/* 8014DA20  38 DF 00 0C */	addi r6, r31, 0xc
/* 8014DA24  48 00 1E A1 */	bl daBaseNpc_putNurbs__FP4dPntiiP4dPnti
/* 8014DA28  B0 7F 0A 0E */	sth r3, 0xa0e(r31)
lbl_8014DA2C:
/* 8014DA2C  7F E3 FB 78 */	mr r3, r31
/* 8014DA30  4B FF FF 79 */	bl isPath__16daBaseNpc_path_cFv
lbl_8014DA34:
/* 8014DA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014DA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014DA3C  7C 08 03 A6 */	mtlr r0
/* 8014DA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8014DA44  4E 80 00 20 */	blr 
