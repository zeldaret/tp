lbl_80D5D298:
/* 80D5D298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D29C  7C 08 02 A6 */	mflr r0
/* 80D5D2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D2A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5D2AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5D2B0  7C 9F 23 78 */	mr r31, r4
/* 80D5D2B4  41 82 00 28 */	beq lbl_80D5D2DC
/* 80D5D2B8  3C 80 80 D6 */	lis r4, __vt__17daTag_MynaLight_c@ha
/* 80D5D2BC  38 04 D3 98 */	addi r0, r4, __vt__17daTag_MynaLight_c@l
/* 80D5D2C0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D5D2C4  38 80 00 00 */	li r4, 0
/* 80D5D2C8  4B 2B B9 C4 */	b __dt__10fopAc_ac_cFv
/* 80D5D2CC  7F E0 07 35 */	extsh. r0, r31
/* 80D5D2D0  40 81 00 0C */	ble lbl_80D5D2DC
/* 80D5D2D4  7F C3 F3 78 */	mr r3, r30
/* 80D5D2D8  4B 57 1A 64 */	b __dl__FPv
lbl_80D5D2DC:
/* 80D5D2DC  7F C3 F3 78 */	mr r3, r30
/* 80D5D2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D2E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5D2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D2EC  7C 08 03 A6 */	mtlr r0
/* 80D5D2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D2F4  4E 80 00 20 */	blr 
