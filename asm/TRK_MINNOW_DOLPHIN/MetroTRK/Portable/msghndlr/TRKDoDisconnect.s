lbl_8036EBE4:
/* 8036EBE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8036EBE8  7C 08 02 A6 */	mflr r0
/* 8036EBEC  3C 60 80 45 */	lis r3, IsTRKConnected@ha
/* 8036EBF0  38 A0 00 40 */	li r5, 0x40
/* 8036EBF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8036EBF8  38 83 F2 88 */	addi r4, r3, IsTRKConnected@l
/* 8036EBFC  38 00 00 00 */	li r0, 0
/* 8036EC00  38 61 00 14 */	addi r3, r1, 0x14
/* 8036EC04  90 04 00 00 */	stw r0, 0(r4)
/* 8036EC08  38 80 00 00 */	li r4, 0
/* 8036EC0C  4B C9 48 4D */	bl memset
/* 8036EC10  38 60 00 80 */	li r3, 0x80
/* 8036EC14  38 A0 00 40 */	li r5, 0x40
/* 8036EC18  38 00 00 00 */	li r0, 0
/* 8036EC1C  98 61 00 18 */	stb r3, 0x18(r1)
/* 8036EC20  38 61 00 14 */	addi r3, r1, 0x14
/* 8036EC24  38 80 00 40 */	li r4, 0x40
/* 8036EC28  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8036EC2C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8036EC30  48 00 31 39 */	bl TRKWriteUARTN
/* 8036EC34  38 61 00 08 */	addi r3, r1, 8
/* 8036EC38  38 80 00 01 */	li r4, 1
/* 8036EC3C  4B FF E0 01 */	bl TRKConstructEvent
/* 8036EC40  38 61 00 08 */	addi r3, r1, 8
/* 8036EC44  4B FF E0 11 */	bl TRKPostEvent
/* 8036EC48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8036EC4C  38 60 00 00 */	li r3, 0
/* 8036EC50  7C 08 03 A6 */	mtlr r0
/* 8036EC54  38 21 00 60 */	addi r1, r1, 0x60
/* 8036EC58  4E 80 00 20 */	blr 
