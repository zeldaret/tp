lbl_8022F9AC:
/* 8022F9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022F9B0  7C 08 02 A6 */	mflr r0
/* 8022F9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022F9B8  90 83 00 08 */	stw r4, 8(r3)
/* 8022F9BC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8022F9C0  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8022F9C4  38 80 00 00 */	li r4, 0
/* 8022F9C8  B0 83 00 80 */	sth r4, 0x80(r3)
/* 8022F9CC  38 00 00 0C */	li r0, 0xc
/* 8022F9D0  98 03 00 82 */	stb r0, 0x82(r3)
/* 8022F9D4  98 83 00 83 */	stb r4, 0x83(r3)
/* 8022F9D8  99 03 00 84 */	stb r8, 0x84(r3)
/* 8022F9DC  28 06 00 00 */	cmplwi r6, 0
/* 8022F9E0  41 82 00 08 */	beq lbl_8022F9E8
/* 8022F9E4  90 C3 00 14 */	stw r6, 0x14(r3)
lbl_8022F9E8:
/* 8022F9E8  38 80 00 00 */	li r4, 0
/* 8022F9EC  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022F9F0  38 00 00 0C */	li r0, 0xc
/* 8022F9F4  7C 09 03 A6 */	mtctr r0
lbl_8022F9F8:
/* 8022F9F8  7C A3 22 14 */	add r5, r3, r4
/* 8022F9FC  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8022FA00  D0 05 00 48 */	stfs f0, 0x48(r5)
/* 8022FA04  38 84 00 04 */	addi r4, r4, 4
/* 8022FA08  42 00 FF F0 */	bdnz lbl_8022F9F8
/* 8022FA0C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022FA10  28 03 00 00 */	cmplwi r3, 0
/* 8022FA14  41 82 00 08 */	beq lbl_8022FA1C
/* 8022FA18  4B FF 72 E1 */	bl initialize__10COutFont_cFv
lbl_8022FA1C:
/* 8022FA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022FA20  7C 08 03 A6 */	mtlr r0
/* 8022FA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8022FA28  4E 80 00 20 */	blr 
