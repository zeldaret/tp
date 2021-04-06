lbl_80A2CB30:
/* 80A2CB30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2CB34  7C 08 02 A6 */	mflr r0
/* 80A2CB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2CB3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2CB40  4B 93 56 99 */	bl _savegpr_28
/* 80A2CB44  7C 7C 1B 78 */	mr r28, r3
/* 80A2CB48  3B C0 00 00 */	li r30, 0
/* 80A2CB4C  3B A0 00 00 */	li r29, 0
/* 80A2CB50  3B E0 00 00 */	li r31, 0
lbl_80A2CB54:
/* 80A2CB54  7C 7C FA 14 */	add r3, r28, r31
/* 80A2CB58  80 03 13 74 */	lwz r0, 0x1374(r3)
/* 80A2CB5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A2CB60  41 82 00 0C */	beq lbl_80A2CB6C
/* 80A2CB64  3B C0 00 01 */	li r30, 1
/* 80A2CB68  48 00 00 28 */	b lbl_80A2CB90
lbl_80A2CB6C:
/* 80A2CB6C  38 63 13 18 */	addi r3, r3, 0x1318
/* 80A2CB70  4B 65 77 51 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80A2CB74  28 03 00 00 */	cmplwi r3, 0
/* 80A2CB78  41 82 00 08 */	beq lbl_80A2CB80
/* 80A2CB7C  3B C0 00 02 */	li r30, 2
lbl_80A2CB80:
/* 80A2CB80  3B BD 00 01 */	addi r29, r29, 1
/* 80A2CB84  2C 1D 00 02 */	cmpwi r29, 2
/* 80A2CB88  3B FF 01 38 */	addi r31, r31, 0x138
/* 80A2CB8C  41 80 FF C8 */	blt lbl_80A2CB54
lbl_80A2CB90:
/* 80A2CB90  2C 1E 00 01 */	cmpwi r30, 1
/* 80A2CB94  40 82 00 34 */	bne lbl_80A2CBC8
/* 80A2CB98  3B A0 00 00 */	li r29, 0
/* 80A2CB9C  3B E0 00 00 */	li r31, 0
lbl_80A2CBA0:
/* 80A2CBA0  38 7F 13 18 */	addi r3, r31, 0x1318
/* 80A2CBA4  7C 7C 1A 14 */	add r3, r28, r3
/* 80A2CBA8  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80A2CBAC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A2CBB0  7D 89 03 A6 */	mtctr r12
/* 80A2CBB4  4E 80 04 21 */	bctrl 
/* 80A2CBB8  3B BD 00 01 */	addi r29, r29, 1
/* 80A2CBBC  2C 1D 00 02 */	cmpwi r29, 2
/* 80A2CBC0  3B FF 01 38 */	addi r31, r31, 0x138
/* 80A2CBC4  41 80 FF DC */	blt lbl_80A2CBA0
lbl_80A2CBC8:
/* 80A2CBC8  20 1E 00 02 */	subfic r0, r30, 2
/* 80A2CBCC  7C 00 00 34 */	cntlzw r0, r0
/* 80A2CBD0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A2CBD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2CBD8  4B 93 56 4D */	bl _restgpr_28
/* 80A2CBDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2CBE0  7C 08 03 A6 */	mtlr r0
/* 80A2CBE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2CBE8  4E 80 00 20 */	blr 
