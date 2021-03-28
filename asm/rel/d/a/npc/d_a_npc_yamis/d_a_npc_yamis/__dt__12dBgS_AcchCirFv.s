lbl_80B48ED4:
/* 80B48ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48ED8  7C 08 02 A6 */	mflr r0
/* 80B48EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48EE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B48EE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B48EEC  7C 9F 23 78 */	mr r31, r4
/* 80B48EF0  41 82 00 38 */	beq lbl_80B48F28
/* 80B48EF4  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B48EF8  38 03 99 90 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B48EFC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B48F00  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B48F04  38 80 FF FF */	li r4, -1
/* 80B48F08  4B 72 60 10 */	b __dt__8cM3dGCirFv
/* 80B48F0C  7F C3 F3 78 */	mr r3, r30
/* 80B48F10  38 80 00 00 */	li r4, 0
/* 80B48F14  4B 71 F1 9C */	b __dt__13cBgS_PolyInfoFv
/* 80B48F18  7F E0 07 35 */	extsh. r0, r31
/* 80B48F1C  40 81 00 0C */	ble lbl_80B48F28
/* 80B48F20  7F C3 F3 78 */	mr r3, r30
/* 80B48F24  4B 78 5E 18 */	b __dl__FPv
lbl_80B48F28:
/* 80B48F28  7F C3 F3 78 */	mr r3, r30
/* 80B48F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B48F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48F38  7C 08 03 A6 */	mtlr r0
/* 80B48F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48F40  4E 80 00 20 */	blr 
