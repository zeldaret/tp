lbl_80287F64:
/* 80287F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287F68  7C 08 02 A6 */	mflr r0
/* 80287F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287F74  93 C1 00 08 */	stw r30, 8(r1)
/* 80287F78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287F7C  7C 9F 23 78 */	mr r31, r4
/* 80287F80  41 82 00 28 */	beq lbl_80287FA8
/* 80287F84  3C 80 80 3C */	lis r4, __vt__Q27JStudio16TObject_particle@ha
/* 80287F88  38 04 53 AC */	addi r0, r4, __vt__Q27JStudio16TObject_particle@l
/* 80287F8C  90 1E 00 08 */	stw r0, 8(r30)
/* 80287F90  38 80 00 00 */	li r4, 0
/* 80287F94  4B FF E7 1D */	bl __dt__Q27JStudio7TObjectFv
/* 80287F98  7F E0 07 35 */	extsh. r0, r31
/* 80287F9C  40 81 00 0C */	ble lbl_80287FA8
/* 80287FA0  7F C3 F3 78 */	mr r3, r30
/* 80287FA4  48 04 6D 99 */	bl __dl__FPv
lbl_80287FA8:
/* 80287FA8  7F C3 F3 78 */	mr r3, r30
/* 80287FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287FB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287FB8  7C 08 03 A6 */	mtlr r0
/* 80287FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80287FC0  4E 80 00 20 */	blr 
