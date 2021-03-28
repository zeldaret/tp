lbl_802851AC:
/* 802851AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802851B0  7C 08 02 A6 */	mflr r0
/* 802851B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802851B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802851BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802851C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802851C4  7C 9F 23 78 */	mr r31, r4
/* 802851C8  41 82 00 44 */	beq lbl_8028520C
/* 802851CC  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TControl@ha
/* 802851D0  38 03 4A F4 */	addi r0, r3, __vt__Q27JStudio8TControl@l
/* 802851D4  90 1E 00 00 */	stw r0, 0(r30)
/* 802851D8  38 7E 00 74 */	addi r3, r30, 0x74
/* 802851DC  38 80 FF FF */	li r4, -1
/* 802851E0  4B FF BE 15 */	bl __dt__Q37JStudio3ctb8TControlFv
/* 802851E4  38 7E 00 60 */	addi r3, r30, 0x60
/* 802851E8  38 80 FF FF */	li r4, -1
/* 802851EC  4B FF F4 AD */	bl __dt__Q37JStudio3fvb8TControlFv
/* 802851F0  7F C3 F3 78 */	mr r3, r30
/* 802851F4  38 80 00 00 */	li r4, 0
/* 802851F8  48 00 3F 9D */	bl __dt__Q37JStudio3stb8TControlFv
/* 802851FC  7F E0 07 35 */	extsh. r0, r31
/* 80285200  40 81 00 0C */	ble lbl_8028520C
/* 80285204  7F C3 F3 78 */	mr r3, r30
/* 80285208  48 04 9B 35 */	bl __dl__FPv
lbl_8028520C:
/* 8028520C  7F C3 F3 78 */	mr r3, r30
/* 80285210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028521C  7C 08 03 A6 */	mtlr r0
/* 80285220  38 21 00 10 */	addi r1, r1, 0x10
/* 80285224  4E 80 00 20 */	blr 
