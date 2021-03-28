lbl_8061A3A0:
/* 8061A3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A3A4  7C 08 02 A6 */	mflr r0
/* 8061A3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A3B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8061A3B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8061A3B8  7C 9F 23 78 */	mr r31, r4
/* 8061A3BC  41 82 00 44 */	beq lbl_8061A400
/* 8061A3C0  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8061A3C4  3C 80 80 61 */	lis r4, __dt__4cXyzFv@ha
/* 8061A3C8  38 84 14 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8061A3CC  38 A0 00 0C */	li r5, 0xc
/* 8061A3D0  38 C0 00 14 */	li r6, 0x14
/* 8061A3D4  4B D4 79 14 */	b __destroy_arr
/* 8061A3D8  7F C3 F3 78 */	mr r3, r30
/* 8061A3DC  3C 80 80 61 */	lis r4, __dt__4cXyzFv@ha
/* 8061A3E0  38 84 14 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 8061A3E4  38 A0 00 0C */	li r5, 0xc
/* 8061A3E8  38 C0 00 14 */	li r6, 0x14
/* 8061A3EC  4B D4 78 FC */	b __destroy_arr
/* 8061A3F0  7F E0 07 35 */	extsh. r0, r31
/* 8061A3F4  40 81 00 0C */	ble lbl_8061A400
/* 8061A3F8  7F C3 F3 78 */	mr r3, r30
/* 8061A3FC  4B CB 49 40 */	b __dl__FPv
lbl_8061A400:
/* 8061A400  7F C3 F3 78 */	mr r3, r30
/* 8061A404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A408  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061A40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A410  7C 08 03 A6 */	mtlr r0
/* 8061A414  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A418  4E 80 00 20 */	blr 
