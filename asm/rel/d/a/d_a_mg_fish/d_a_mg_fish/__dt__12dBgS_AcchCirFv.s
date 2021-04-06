lbl_80535F04:
/* 80535F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535F08  7C 08 02 A6 */	mflr r0
/* 80535F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535F14  93 C1 00 08 */	stw r30, 8(r1)
/* 80535F18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80535F1C  7C 9F 23 78 */	mr r31, r4
/* 80535F20  41 82 00 38 */	beq lbl_80535F58
/* 80535F24  3C 60 80 53 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80536ABC@ha */
/* 80535F28  38 03 6A BC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80536ABC@l */
/* 80535F2C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80535F30  38 7E 00 14 */	addi r3, r30, 0x14
/* 80535F34  38 80 FF FF */	li r4, -1
/* 80535F38  4B D3 8F E1 */	bl __dt__8cM3dGCirFv
/* 80535F3C  7F C3 F3 78 */	mr r3, r30
/* 80535F40  38 80 00 00 */	li r4, 0
/* 80535F44  4B D3 21 6D */	bl __dt__13cBgS_PolyInfoFv
/* 80535F48  7F E0 07 35 */	extsh. r0, r31
/* 80535F4C  40 81 00 0C */	ble lbl_80535F58
/* 80535F50  7F C3 F3 78 */	mr r3, r30
/* 80535F54  4B D9 8D E9 */	bl __dl__FPv
lbl_80535F58:
/* 80535F58  7F C3 F3 78 */	mr r3, r30
/* 80535F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80535F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535F68  7C 08 03 A6 */	mtlr r0
/* 80535F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80535F70  4E 80 00 20 */	blr 
