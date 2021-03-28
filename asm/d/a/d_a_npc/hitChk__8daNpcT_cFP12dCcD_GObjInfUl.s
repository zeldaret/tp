lbl_8014AA40:
/* 8014AA40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014AA44  7C 08 02 A6 */	mflr r0
/* 8014AA48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014AA4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8014AA50  48 21 77 8D */	bl _savegpr_29
/* 8014AA54  7C 7D 1B 78 */	mr r29, r3
/* 8014AA58  7C 9E 23 78 */	mr r30, r4
/* 8014AA5C  7C BF 2B 78 */	mr r31, r5
/* 8014AA60  80 64 00 44 */	lwz r3, 0x44(r4)
/* 8014AA64  38 63 00 1C */	addi r3, r3, 0x1c
/* 8014AA68  4B F3 8D C9 */	bl Move__10dCcD_GSttsFv
/* 8014AA6C  80 1D 0D BC */	lwz r0, 0xdbc(r29)
/* 8014AA70  2C 00 00 00 */	cmpwi r0, 0
/* 8014AA74  40 82 00 40 */	bne lbl_8014AAB4
/* 8014AA78  38 7E 00 9C */	addi r3, r30, 0x9c
/* 8014AA7C  4B F3 8C 0D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8014AA80  7C 64 1B 79 */	or. r4, r3, r3
/* 8014AA84  41 82 00 30 */	beq lbl_8014AAB4
/* 8014AA88  A8 04 00 08 */	lha r0, 8(r4)
/* 8014AA8C  2C 00 01 00 */	cmpwi r0, 0x100
/* 8014AA90  40 82 00 1C */	bne lbl_8014AAAC
/* 8014AA94  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8014AA98  41 82 00 14 */	beq lbl_8014AAAC
/* 8014AA9C  A0 04 06 BE */	lhz r0, 0x6be(r4)
/* 8014AAA0  60 00 00 04 */	ori r0, r0, 4
/* 8014AAA4  B0 04 06 BE */	sth r0, 0x6be(r4)
/* 8014AAA8  48 00 00 10 */	b lbl_8014AAB8
lbl_8014AAAC:
/* 8014AAAC  7C 83 23 78 */	mr r3, r4
/* 8014AAB0  48 00 00 08 */	b lbl_8014AAB8
lbl_8014AAB4:
/* 8014AAB4  38 60 00 00 */	li r3, 0
lbl_8014AAB8:
/* 8014AAB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8014AABC  48 21 77 6D */	bl _restgpr_29
/* 8014AAC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014AAC4  7C 08 03 A6 */	mtlr r0
/* 8014AAC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8014AACC  4E 80 00 20 */	blr 
