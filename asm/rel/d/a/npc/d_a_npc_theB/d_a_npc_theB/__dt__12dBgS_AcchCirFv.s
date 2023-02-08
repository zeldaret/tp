lbl_80B00A3C:
/* 80B00A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00A40  7C 08 02 A6 */	mflr r0
/* 80B00A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00A4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B00A50  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B00A54  7C 9F 23 78 */	mr r31, r4
/* 80B00A58  41 82 00 38 */	beq lbl_80B00A90
/* 80B00A5C  3C 60 80 B0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B012C0@ha */
/* 80B00A60  38 03 12 C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B012C0@l */
/* 80B00A64  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B00A68  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B00A6C  38 80 FF FF */	li r4, -1
/* 80B00A70  4B 76 E4 A9 */	bl __dt__8cM3dGCirFv
/* 80B00A74  7F C3 F3 78 */	mr r3, r30
/* 80B00A78  38 80 00 00 */	li r4, 0
/* 80B00A7C  4B 76 76 35 */	bl __dt__13cBgS_PolyInfoFv
/* 80B00A80  7F E0 07 35 */	extsh. r0, r31
/* 80B00A84  40 81 00 0C */	ble lbl_80B00A90
/* 80B00A88  7F C3 F3 78 */	mr r3, r30
/* 80B00A8C  4B 7C E2 B1 */	bl __dl__FPv
lbl_80B00A90:
/* 80B00A90  7F C3 F3 78 */	mr r3, r30
/* 80B00A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00A98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B00A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00AA0  7C 08 03 A6 */	mtlr r0
/* 80B00AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00AA8  4E 80 00 20 */	blr 
