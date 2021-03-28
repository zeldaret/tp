lbl_80C449F8:
/* 80C449F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C449FC  7C 08 02 A6 */	mflr r0
/* 80C44A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44A08  93 C1 00 08 */	stw r30, 8(r1)
/* 80C44A0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C44A10  7C 9F 23 78 */	mr r31, r4
/* 80C44A14  41 82 00 28 */	beq lbl_80C44A3C
/* 80C44A18  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha
/* 80C44A1C  38 84 40 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80C44A20  38 A0 00 0C */	li r5, 0xc
/* 80C44A24  38 C0 00 04 */	li r6, 4
/* 80C44A28  4B 71 D2 C0 */	b __destroy_arr
/* 80C44A2C  7F E0 07 35 */	extsh. r0, r31
/* 80C44A30  40 81 00 0C */	ble lbl_80C44A3C
/* 80C44A34  7F C3 F3 78 */	mr r3, r30
/* 80C44A38  4B 68 A3 04 */	b __dl__FPv
lbl_80C44A3C:
/* 80C44A3C  7F C3 F3 78 */	mr r3, r30
/* 80C44A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44A44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C44A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44A4C  7C 08 03 A6 */	mtlr r0
/* 80C44A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44A54  4E 80 00 20 */	blr 
