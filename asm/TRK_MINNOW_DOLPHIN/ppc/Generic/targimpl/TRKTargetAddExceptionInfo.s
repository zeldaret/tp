lbl_8036FE94:
/* 8036FE94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8036FE98  7C 08 02 A6 */	mflr r0
/* 8036FE9C  38 80 00 00 */	li r4, 0
/* 8036FEA0  38 A0 00 40 */	li r5, 0x40
/* 8036FEA4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8036FEA8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8036FEAC  7C 7F 1B 78 */	mr r31, r3
/* 8036FEB0  38 61 00 0C */	addi r3, r1, 0xc
/* 8036FEB4  4B C9 35 A5 */	bl memset
/* 8036FEB8  3C 60 80 3D */	lis r3, gTRKExceptionStatus@ha
/* 8036FEBC  38 A0 00 40 */	li r5, 0x40
/* 8036FEC0  80 83 32 44 */	lwz r4, gTRKExceptionStatus@l(r3)
/* 8036FEC4  38 00 00 91 */	li r0, 0x91
/* 8036FEC8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8036FECC  38 61 00 08 */	addi r3, r1, 8
/* 8036FED0  98 01 00 10 */	stb r0, 0x10(r1)
/* 8036FED4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8036FED8  48 00 0E B1 */	bl TRKTargetReadInstruction
/* 8036FEDC  3C 60 80 3D */	lis r3, gTRKExceptionStatus@ha
/* 8036FEE0  80 A1 00 08 */	lwz r5, 8(r1)
/* 8036FEE4  38 83 32 44 */	addi r4, r3, gTRKExceptionStatus@l
/* 8036FEE8  7F E3 FB 78 */	mr r3, r31
/* 8036FEEC  A0 04 00 08 */	lhz r0, 8(r4)
/* 8036FEF0  38 81 00 0C */	addi r4, r1, 0xc
/* 8036FEF4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8036FEF8  38 A0 00 40 */	li r5, 0x40
/* 8036FEFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8036FF00  4B FF D4 89 */	bl TRKAppendBuffer_ui8
/* 8036FF04  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8036FF08  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8036FF0C  7C 08 03 A6 */	mtlr r0
/* 8036FF10  38 21 00 60 */	addi r1, r1, 0x60
/* 8036FF14  4E 80 00 20 */	blr 
