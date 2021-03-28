lbl_8036CB20:
/* 8036CB20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CB24  7C 08 02 A6 */	mflr r0
/* 8036CB28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CB2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CB30  3B E0 00 00 */	li r31, 0
/* 8036CB34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CB38  3B C0 00 00 */	li r30, 0
/* 8036CB3C  48 00 00 BC */	b lbl_8036CBF8
lbl_8036CB40:
/* 8036CB40  38 61 00 08 */	addi r3, r1, 8
/* 8036CB44  48 00 01 F1 */	bl TRKGetNextEvent
/* 8036CB48  2C 03 00 00 */	cmpwi r3, 0
/* 8036CB4C  41 82 00 6C */	beq lbl_8036CBB8
/* 8036CB50  80 01 00 08 */	lwz r0, 8(r1)
/* 8036CB54  3B C0 00 00 */	li r30, 0
/* 8036CB58  2C 00 00 02 */	cmpwi r0, 2
/* 8036CB5C  41 82 00 28 */	beq lbl_8036CB84
/* 8036CB60  40 80 00 14 */	bge lbl_8036CB74
/* 8036CB64  2C 00 00 00 */	cmpwi r0, 0
/* 8036CB68  41 82 00 44 */	beq lbl_8036CBAC
/* 8036CB6C  40 80 00 28 */	bge lbl_8036CB94
/* 8036CB70  48 00 00 3C */	b lbl_8036CBAC
lbl_8036CB74:
/* 8036CB74  2C 00 00 05 */	cmpwi r0, 5
/* 8036CB78  41 82 00 30 */	beq lbl_8036CBA8
/* 8036CB7C  40 80 00 30 */	bge lbl_8036CBAC
/* 8036CB80  48 00 00 1C */	b lbl_8036CB9C
lbl_8036CB84:
/* 8036CB84  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036CB88  48 00 0B 69 */	bl TRKGetBuffer
/* 8036CB8C  48 00 10 11 */	bl TRKDispatchMessage
/* 8036CB90  48 00 00 1C */	b lbl_8036CBAC
lbl_8036CB94:
/* 8036CB94  3B E0 00 01 */	li r31, 1
/* 8036CB98  48 00 00 14 */	b lbl_8036CBAC
lbl_8036CB9C:
/* 8036CB9C  38 61 00 08 */	addi r3, r1, 8
/* 8036CBA0  48 00 34 05 */	bl TRKTargetInterrupt
/* 8036CBA4  48 00 00 08 */	b lbl_8036CBAC
lbl_8036CBA8:
/* 8036CBA8  48 00 2F 79 */	bl TRKTargetSupportRequest
lbl_8036CBAC:
/* 8036CBAC  38 61 00 08 */	addi r3, r1, 8
/* 8036CBB0  48 00 00 69 */	bl TRKDestructEvent
/* 8036CBB4  48 00 00 44 */	b lbl_8036CBF8
lbl_8036CBB8:
/* 8036CBB8  2C 1E 00 00 */	cmpwi r30, 0
/* 8036CBBC  41 82 00 1C */	beq lbl_8036CBD8
/* 8036CBC0  3C 60 80 45 */	lis r3, gTRKInputPendingPtr@ha
/* 8036CBC4  38 63 19 B8 */	addi r3, r3, gTRKInputPendingPtr@l
/* 8036CBC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8036CBCC  88 03 00 00 */	lbz r0, 0(r3)
/* 8036CBD0  28 00 00 00 */	cmplwi r0, 0
/* 8036CBD4  41 82 00 10 */	beq lbl_8036CBE4
lbl_8036CBD8:
/* 8036CBD8  3B C0 00 01 */	li r30, 1
/* 8036CBDC  48 00 0D 99 */	bl TRKGetInput
/* 8036CBE0  48 00 00 18 */	b lbl_8036CBF8
lbl_8036CBE4:
/* 8036CBE4  48 00 2F 2D */	bl TRKTargetStopped
/* 8036CBE8  2C 03 00 00 */	cmpwi r3, 0
/* 8036CBEC  40 82 00 08 */	bne lbl_8036CBF4
/* 8036CBF0  48 00 55 5D */	bl TRKTargetContinue
lbl_8036CBF4:
/* 8036CBF4  3B C0 00 00 */	li r30, 0
lbl_8036CBF8:
/* 8036CBF8  2C 1F 00 00 */	cmpwi r31, 0
/* 8036CBFC  41 82 FF 44 */	beq lbl_8036CB40
/* 8036CC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CC04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CC08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CC0C  7C 08 03 A6 */	mtlr r0
/* 8036CC10  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CC14  4E 80 00 20 */	blr 
