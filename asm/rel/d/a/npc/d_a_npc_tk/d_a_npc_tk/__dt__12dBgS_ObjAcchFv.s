lbl_80B0C070:
/* 80B0C070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C074  7C 08 02 A6 */	mflr r0
/* 80B0C078  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C080  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0C084  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B0C088  7C 9F 23 78 */	mr r31, r4
/* 80B0C08C  41 82 00 38 */	beq lbl_80B0C0C4
/* 80B0C090  3C 80 80 B1 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B0C57C@ha */
/* 80B0C094  38 84 C5 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B0C57C@l */
/* 80B0C098  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B0C09C  38 04 00 0C */	addi r0, r4, 0xc
/* 80B0C0A0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B0C0A4  38 04 00 18 */	addi r0, r4, 0x18
/* 80B0C0A8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B0C0AC  38 80 00 00 */	li r4, 0
/* 80B0C0B0  4B 56 9E E5 */	bl __dt__9dBgS_AcchFv
/* 80B0C0B4  7F E0 07 35 */	extsh. r0, r31
/* 80B0C0B8  40 81 00 0C */	ble lbl_80B0C0C4
/* 80B0C0BC  7F C3 F3 78 */	mr r3, r30
/* 80B0C0C0  4B 7C 2C 7D */	bl __dl__FPv
lbl_80B0C0C4:
/* 80B0C0C4  7F C3 F3 78 */	mr r3, r30
/* 80B0C0C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C0CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0C0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C0D4  7C 08 03 A6 */	mtlr r0
/* 80B0C0D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C0DC  4E 80 00 20 */	blr 
