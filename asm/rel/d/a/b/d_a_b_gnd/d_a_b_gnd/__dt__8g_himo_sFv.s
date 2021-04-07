lbl_80601D40:
/* 80601D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601D44  7C 08 02 A6 */	mflr r0
/* 80601D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80601D54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80601D58  7C 9F 23 78 */	mr r31, r4
/* 80601D5C  41 82 00 28 */	beq lbl_80601D84
/* 80601D60  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601D64  38 84 53 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601D68  38 A0 00 0C */	li r5, 0xc
/* 80601D6C  38 C0 00 10 */	li r6, 0x10
/* 80601D70  4B D5 FF 79 */	bl __destroy_arr
/* 80601D74  7F E0 07 35 */	extsh. r0, r31
/* 80601D78  40 81 00 0C */	ble lbl_80601D84
/* 80601D7C  7F C3 F3 78 */	mr r3, r30
/* 80601D80  4B CC CF BD */	bl __dl__FPv
lbl_80601D84:
/* 80601D84  7F C3 F3 78 */	mr r3, r30
/* 80601D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601D8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601D94  7C 08 03 A6 */	mtlr r0
/* 80601D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80601D9C  4E 80 00 20 */	blr 
