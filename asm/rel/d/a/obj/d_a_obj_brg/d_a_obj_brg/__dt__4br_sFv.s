lbl_80BC1F54:
/* 80BC1F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC1F58  7C 08 02 A6 */	mflr r0
/* 80BC1F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC1F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC1F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC1F68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC1F6C  7C 9F 23 78 */	mr r31, r4
/* 80BC1F70  41 82 00 74 */	beq lbl_80BC1FE4
/* 80BC1F74  38 7E 01 04 */	addi r3, r30, 0x104
/* 80BC1F78  3C 80 80 BC */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80BC1D74@ha */
/* 80BC1F7C  38 84 1D 74 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80BC1D74@l */
/* 80BC1F80  38 A0 01 3C */	li r5, 0x13c
/* 80BC1F84  38 C0 00 02 */	li r6, 2
/* 80BC1F88  4B 79 FD 61 */	bl __destroy_arr
/* 80BC1F8C  38 7E 00 98 */	addi r3, r30, 0x98
/* 80BC1F90  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha /* 0x80BBCCFC@ha */
/* 80BC1F94  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BBCCFC@l */
/* 80BC1F98  38 A0 00 0C */	li r5, 0xc
/* 80BC1F9C  38 C0 00 02 */	li r6, 2
/* 80BC1FA0  4B 79 FD 49 */	bl __destroy_arr
/* 80BC1FA4  38 7E 00 74 */	addi r3, r30, 0x74
/* 80BC1FA8  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha /* 0x80BBCCFC@ha */
/* 80BC1FAC  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BBCCFC@l */
/* 80BC1FB0  38 A0 00 0C */	li r5, 0xc
/* 80BC1FB4  38 C0 00 03 */	li r6, 3
/* 80BC1FB8  4B 79 FD 31 */	bl __destroy_arr
/* 80BC1FBC  38 7E 00 50 */	addi r3, r30, 0x50
/* 80BC1FC0  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha /* 0x80BBCCFC@ha */
/* 80BC1FC4  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BBCCFC@l */
/* 80BC1FC8  38 A0 00 0C */	li r5, 0xc
/* 80BC1FCC  38 C0 00 03 */	li r6, 3
/* 80BC1FD0  4B 79 FD 19 */	bl __destroy_arr
/* 80BC1FD4  7F E0 07 35 */	extsh. r0, r31
/* 80BC1FD8  40 81 00 0C */	ble lbl_80BC1FE4
/* 80BC1FDC  7F C3 F3 78 */	mr r3, r30
/* 80BC1FE0  4B 70 CD 5D */	bl __dl__FPv
lbl_80BC1FE4:
/* 80BC1FE4  7F C3 F3 78 */	mr r3, r30
/* 80BC1FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC1FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC1FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC1FF4  7C 08 03 A6 */	mtlr r0
/* 80BC1FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC1FFC  4E 80 00 20 */	blr 
