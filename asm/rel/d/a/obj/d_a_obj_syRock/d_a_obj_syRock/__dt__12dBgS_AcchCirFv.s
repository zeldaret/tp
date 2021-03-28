lbl_80D029A0:
/* 80D029A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D029A4  7C 08 02 A6 */	mflr r0
/* 80D029A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D029AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D029B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D029B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D029B8  7C 9F 23 78 */	mr r31, r4
/* 80D029BC  41 82 00 38 */	beq lbl_80D029F4
/* 80D029C0  3C 60 80 D0 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D029C4  38 03 41 98 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D029C8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D029CC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D029D0  38 80 FF FF */	li r4, -1
/* 80D029D4  4B 56 C5 44 */	b __dt__8cM3dGCirFv
/* 80D029D8  7F C3 F3 78 */	mr r3, r30
/* 80D029DC  38 80 00 00 */	li r4, 0
/* 80D029E0  4B 56 56 D0 */	b __dt__13cBgS_PolyInfoFv
/* 80D029E4  7F E0 07 35 */	extsh. r0, r31
/* 80D029E8  40 81 00 0C */	ble lbl_80D029F4
/* 80D029EC  7F C3 F3 78 */	mr r3, r30
/* 80D029F0  4B 5C C3 4C */	b __dl__FPv
lbl_80D029F4:
/* 80D029F4  7F C3 F3 78 */	mr r3, r30
/* 80D029F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D029FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D02A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02A04  7C 08 03 A6 */	mtlr r0
/* 80D02A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02A0C  4E 80 00 20 */	blr 
