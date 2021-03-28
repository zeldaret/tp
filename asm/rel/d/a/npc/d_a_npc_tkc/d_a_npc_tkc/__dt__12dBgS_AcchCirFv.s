lbl_80B104E0:
/* 80B104E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B104E4  7C 08 02 A6 */	mflr r0
/* 80B104E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B104EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B104F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B104F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B104F8  7C 9F 23 78 */	mr r31, r4
/* 80B104FC  41 82 00 38 */	beq lbl_80B10534
/* 80B10500  3C 60 80 B1 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B10504  38 03 0C A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B10508  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B1050C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B10510  38 80 FF FF */	li r4, -1
/* 80B10514  4B 75 EA 04 */	b __dt__8cM3dGCirFv
/* 80B10518  7F C3 F3 78 */	mr r3, r30
/* 80B1051C  38 80 00 00 */	li r4, 0
/* 80B10520  4B 75 7B 90 */	b __dt__13cBgS_PolyInfoFv
/* 80B10524  7F E0 07 35 */	extsh. r0, r31
/* 80B10528  40 81 00 0C */	ble lbl_80B10534
/* 80B1052C  7F C3 F3 78 */	mr r3, r30
/* 80B10530  4B 7B E8 0C */	b __dl__FPv
lbl_80B10534:
/* 80B10534  7F C3 F3 78 */	mr r3, r30
/* 80B10538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1053C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B10540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10544  7C 08 03 A6 */	mtlr r0
/* 80B10548  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1054C  4E 80 00 20 */	blr 
