lbl_80C4394C:
/* 80C4394C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C43950  7C 08 02 A6 */	mflr r0
/* 80C43954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C43958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4395C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C43960  41 82 00 1C */	beq lbl_80C4397C
/* 80C43964  3C A0 80 C4 */	lis r5, __vt__19daObj_Keyhole_HIO_c@ha /* 0x80C43C94@ha */
/* 80C43968  38 05 3C 94 */	addi r0, r5, __vt__19daObj_Keyhole_HIO_c@l /* 0x80C43C94@l */
/* 80C4396C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C43970  7C 80 07 35 */	extsh. r0, r4
/* 80C43974  40 81 00 08 */	ble lbl_80C4397C
/* 80C43978  4B 68 B3 C5 */	bl __dl__FPv
lbl_80C4397C:
/* 80C4397C  7F E3 FB 78 */	mr r3, r31
/* 80C43980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C43984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C43988  7C 08 03 A6 */	mtlr r0
/* 80C4398C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C43990  4E 80 00 20 */	blr 
