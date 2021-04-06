lbl_80D439F8:
/* 80D439F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D439FC  7C 08 02 A6 */	mflr r0
/* 80D43A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43A08  93 C1 00 08 */	stw r30, 8(r1)
/* 80D43A0C  A8 03 00 00 */	lha r0, 0(r3)
/* 80D43A10  2C 00 00 00 */	cmpwi r0, 0
/* 80D43A14  40 81 00 48 */	ble lbl_80D43A5C
/* 80D43A18  3B E3 00 04 */	addi r31, r3, 4
/* 80D43A1C  3B C0 00 00 */	li r30, 0
lbl_80D43A20:
/* 80D43A20  38 7F 03 A4 */	addi r3, r31, 0x3a4
/* 80D43A24  38 9F 03 AA */	addi r4, r31, 0x3aa
/* 80D43A28  4B 52 3A 35 */	bl __apl__5csXyzFR5csXyz
/* 80D43A2C  7F E3 FB 78 */	mr r3, r31
/* 80D43A30  4B FF FD D9 */	bl calcSpeed__16_ZraMark_Hahen_cFv
/* 80D43A34  38 7F 03 8C */	addi r3, r31, 0x38c
/* 80D43A38  38 9F 03 98 */	addi r4, r31, 0x398
/* 80D43A3C  7C 65 1B 78 */	mr r5, r3
/* 80D43A40  4B 60 36 51 */	bl PSVECAdd
/* 80D43A44  7F E3 FB 78 */	mr r3, r31
/* 80D43A48  4B FF FE 1D */	bl setMtx__16_ZraMark_Hahen_cFv
/* 80D43A4C  3B DE 00 01 */	addi r30, r30, 1
/* 80D43A50  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80D43A54  3B FF 03 EC */	addi r31, r31, 0x3ec
/* 80D43A58  41 80 FF C8 */	blt lbl_80D43A20
lbl_80D43A5C:
/* 80D43A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43A60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D43A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43A68  7C 08 03 A6 */	mtlr r0
/* 80D43A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43A70  4E 80 00 20 */	blr 
