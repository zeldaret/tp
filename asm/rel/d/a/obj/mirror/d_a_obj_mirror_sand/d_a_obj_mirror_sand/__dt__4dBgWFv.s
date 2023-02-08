lbl_80C987B8:
/* 80C987B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C987BC  7C 08 02 A6 */	mflr r0
/* 80C987C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C987C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C987C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C987CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C987D0  7C 9F 23 78 */	mr r31, r4
/* 80C987D4  41 82 00 28 */	beq lbl_80C987FC
/* 80C987D8  3C 80 80 3B */	lis r4, __vt__4dBgW@ha /* 0x803ABA80@ha */
/* 80C987DC  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l /* 0x803ABA80@l */
/* 80C987E0  90 1E 00 04 */	stw r0, 4(r30)
/* 80C987E4  38 80 00 00 */	li r4, 0
/* 80C987E8  4B 3E 0B 55 */	bl __dt__4cBgWFv
/* 80C987EC  7F E0 07 35 */	extsh. r0, r31
/* 80C987F0  40 81 00 0C */	ble lbl_80C987FC
/* 80C987F4  7F C3 F3 78 */	mr r3, r30
/* 80C987F8  4B 63 65 45 */	bl __dl__FPv
lbl_80C987FC:
/* 80C987FC  7F C3 F3 78 */	mr r3, r30
/* 80C98800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C98804  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C98808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9880C  7C 08 03 A6 */	mtlr r0
/* 80C98810  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98814  4E 80 00 20 */	blr 
