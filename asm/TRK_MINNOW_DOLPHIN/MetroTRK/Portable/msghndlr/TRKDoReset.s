lbl_8036EB8C:
/* 8036EB8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8036EB90  7C 08 02 A6 */	mflr r0
/* 8036EB94  38 80 00 00 */	li r4, 0
/* 8036EB98  38 A0 00 40 */	li r5, 0x40
/* 8036EB9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8036EBA0  38 61 00 08 */	addi r3, r1, 8
/* 8036EBA4  4B C9 48 B5 */	bl memset
/* 8036EBA8  38 60 00 80 */	li r3, 0x80
/* 8036EBAC  38 A0 00 40 */	li r5, 0x40
/* 8036EBB0  38 00 00 00 */	li r0, 0
/* 8036EBB4  98 61 00 0C */	stb r3, 0xc(r1)
/* 8036EBB8  38 61 00 08 */	addi r3, r1, 8
/* 8036EBBC  38 80 00 40 */	li r4, 0x40
/* 8036EBC0  90 A1 00 08 */	stw r5, 8(r1)
/* 8036EBC4  98 01 00 10 */	stb r0, 0x10(r1)
/* 8036EBC8  48 00 31 A1 */	bl TRKWriteUARTN
/* 8036EBCC  4B C9 69 4D */	bl __TRK_reset
/* 8036EBD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8036EBD4  38 60 00 00 */	li r3, 0
/* 8036EBD8  7C 08 03 A6 */	mtlr r0
/* 8036EBDC  38 21 00 50 */	addi r1, r1, 0x50
/* 8036EBE0  4E 80 00 20 */	blr 
