lbl_80B71384:
/* 80B71384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71388  7C 08 02 A6 */	mflr r0
/* 80B7138C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71394  93 C1 00 08 */	stw r30, 8(r1)
/* 80B71398  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B7139C  7C 9F 23 78 */	mr r31, r4
/* 80B713A0  41 82 00 38 */	beq lbl_80B713D8
/* 80B713A4  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B71D68@ha */
/* 80B713A8  38 03 1D 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B71D68@l */
/* 80B713AC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B713B0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B713B4  38 80 FF FF */	li r4, -1
/* 80B713B8  4B 6F DB 61 */	bl __dt__8cM3dGCirFv
/* 80B713BC  7F C3 F3 78 */	mr r3, r30
/* 80B713C0  38 80 00 00 */	li r4, 0
/* 80B713C4  4B 6F 6C ED */	bl __dt__13cBgS_PolyInfoFv
/* 80B713C8  7F E0 07 35 */	extsh. r0, r31
/* 80B713CC  40 81 00 0C */	ble lbl_80B713D8
/* 80B713D0  7F C3 F3 78 */	mr r3, r30
/* 80B713D4  4B 75 D9 69 */	bl __dl__FPv
lbl_80B713D8:
/* 80B713D8  7F C3 F3 78 */	mr r3, r30
/* 80B713DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B713E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B713E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B713E8  7C 08 03 A6 */	mtlr r0
/* 80B713EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B713F0  4E 80 00 20 */	blr 
