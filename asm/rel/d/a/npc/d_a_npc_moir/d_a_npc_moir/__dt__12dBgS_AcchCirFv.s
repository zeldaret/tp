lbl_80A82F18:
/* 80A82F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82F1C  7C 08 02 A6 */	mflr r0
/* 80A82F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82F28  93 C1 00 08 */	stw r30, 8(r1)
/* 80A82F2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A82F30  7C 9F 23 78 */	mr r31, r4
/* 80A82F34  41 82 00 38 */	beq lbl_80A82F6C
/* 80A82F38  3C 60 80 A8 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A83D24@ha */
/* 80A82F3C  38 03 3D 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A83D24@l */
/* 80A82F40  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A82F44  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A82F48  38 80 FF FF */	li r4, -1
/* 80A82F4C  4B 7E BF CD */	bl __dt__8cM3dGCirFv
/* 80A82F50  7F C3 F3 78 */	mr r3, r30
/* 80A82F54  38 80 00 00 */	li r4, 0
/* 80A82F58  4B 7E 51 59 */	bl __dt__13cBgS_PolyInfoFv
/* 80A82F5C  7F E0 07 35 */	extsh. r0, r31
/* 80A82F60  40 81 00 0C */	ble lbl_80A82F6C
/* 80A82F64  7F C3 F3 78 */	mr r3, r30
/* 80A82F68  4B 84 BD D5 */	bl __dl__FPv
lbl_80A82F6C:
/* 80A82F6C  7F C3 F3 78 */	mr r3, r30
/* 80A82F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82F74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A82F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82F7C  7C 08 03 A6 */	mtlr r0
/* 80A82F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82F84  4E 80 00 20 */	blr 
