lbl_8001C174:
/* 8001C174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001C178  7C 08 02 A6 */	mflr r0
/* 8001C17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001C180  7C A6 2B 78 */	mr r6, r5
/* 8001C184  7C E8 3B 78 */	mr r8, r7
/* 8001C188  80 0D 8B E0 */	lwz r0, Zero__5csXyz(r13)
/* 8001C18C  90 01 00 08 */	stw r0, 8(r1)
/* 8001C190  A0 0D 8B E4 */	lhz r0, Zero__5csXyz+4(r13)
/* 8001C194  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8001C198  7D 25 4B 78 */	mr r5, r9
/* 8001C19C  38 E1 00 08 */	addi r7, r1, 8
/* 8001C1A0  39 20 00 06 */	li r9, 6
/* 8001C1A4  48 00 00 9D */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8001C1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001C1AC  7C 08 03 A6 */	mtlr r0
/* 8001C1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001C1B4  4E 80 00 20 */	blr 
