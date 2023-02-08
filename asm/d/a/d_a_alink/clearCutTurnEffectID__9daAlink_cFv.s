lbl_80122F18:
/* 80122F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80122F1C  7C 08 02 A6 */	mflr r0
/* 80122F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80122F24  39 61 00 20 */	addi r11, r1, 0x20
/* 80122F28  48 23 F2 AD */	bl _savegpr_27
/* 80122F2C  7C 7B 1B 78 */	mr r27, r3
/* 80122F30  3B 80 00 00 */	li r28, 0
/* 80122F34  3B E0 00 00 */	li r31, 0
/* 80122F38  7F FE FB 78 */	mr r30, r31
lbl_80122F3C:
/* 80122F3C  7F 63 DB 78 */	mr r3, r27
/* 80122F40  3B BF 32 04 */	addi r29, r31, 0x3204
/* 80122F44  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80122F48  4B FF D8 31 */	bl stopDrawParticle__9daAlink_cFUl
/* 80122F4C  7F DB E9 2E */	stwx r30, r27, r29
/* 80122F50  3B 9C 00 01 */	addi r28, r28, 1
/* 80122F54  2C 1C 00 06 */	cmpwi r28, 6
/* 80122F58  3B FF 00 04 */	addi r31, r31, 4
/* 80122F5C  41 80 FF E0 */	blt lbl_80122F3C
/* 80122F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80122F64  48 23 F2 BD */	bl _restgpr_27
/* 80122F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80122F6C  7C 08 03 A6 */	mtlr r0
/* 80122F70  38 21 00 20 */	addi r1, r1, 0x20
/* 80122F74  4E 80 00 20 */	blr 
