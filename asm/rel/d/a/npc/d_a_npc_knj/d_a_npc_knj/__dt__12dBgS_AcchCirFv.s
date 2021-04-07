lbl_80A45164:
/* 80A45164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A45168  7C 08 02 A6 */	mflr r0
/* 80A4516C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A45174  93 C1 00 08 */	stw r30, 8(r1)
/* 80A45178  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A4517C  7C 9F 23 78 */	mr r31, r4
/* 80A45180  41 82 00 38 */	beq lbl_80A451B8
/* 80A45184  3C 60 80 A4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A45770@ha */
/* 80A45188  38 03 57 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A45770@l */
/* 80A4518C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A45190  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A45194  38 80 FF FF */	li r4, -1
/* 80A45198  4B 82 9D 81 */	bl __dt__8cM3dGCirFv
/* 80A4519C  7F C3 F3 78 */	mr r3, r30
/* 80A451A0  38 80 00 00 */	li r4, 0
/* 80A451A4  4B 82 2F 0D */	bl __dt__13cBgS_PolyInfoFv
/* 80A451A8  7F E0 07 35 */	extsh. r0, r31
/* 80A451AC  40 81 00 0C */	ble lbl_80A451B8
/* 80A451B0  7F C3 F3 78 */	mr r3, r30
/* 80A451B4  4B 88 9B 89 */	bl __dl__FPv
lbl_80A451B8:
/* 80A451B8  7F C3 F3 78 */	mr r3, r30
/* 80A451BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A451C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A451C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A451C8  7C 08 03 A6 */	mtlr r0
/* 80A451CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A451D0  4E 80 00 20 */	blr 
