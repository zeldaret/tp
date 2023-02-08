lbl_80CCB970:
/* 80CCB970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB974  7C 08 02 A6 */	mflr r0
/* 80CCB978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB97C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCB980  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCB984  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CCB988  7C 9F 23 78 */	mr r31, r4
/* 80CCB98C  41 82 00 38 */	beq lbl_80CCB9C4
/* 80CCB990  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CCCEE4@ha */
/* 80CCB994  38 03 CE E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CCCEE4@l */
/* 80CCB998  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CCB99C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CCB9A0  38 80 FF FF */	li r4, -1
/* 80CCB9A4  4B 5A 35 75 */	bl __dt__8cM3dGCirFv
/* 80CCB9A8  7F C3 F3 78 */	mr r3, r30
/* 80CCB9AC  38 80 00 00 */	li r4, 0
/* 80CCB9B0  4B 59 C7 01 */	bl __dt__13cBgS_PolyInfoFv
/* 80CCB9B4  7F E0 07 35 */	extsh. r0, r31
/* 80CCB9B8  40 81 00 0C */	ble lbl_80CCB9C4
/* 80CCB9BC  7F C3 F3 78 */	mr r3, r30
/* 80CCB9C0  4B 60 33 7D */	bl __dl__FPv
lbl_80CCB9C4:
/* 80CCB9C4  7F C3 F3 78 */	mr r3, r30
/* 80CCB9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCB9CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCB9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB9D4  7C 08 03 A6 */	mtlr r0
/* 80CCB9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB9DC  4E 80 00 20 */	blr 
