lbl_80A256BC:
/* 80A256BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A256C0  7C 08 02 A6 */	mflr r0
/* 80A256C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A256C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A256CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A256D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A256D4  7C 9F 23 78 */	mr r31, r4
/* 80A256D8  41 82 00 38 */	beq lbl_80A25710
/* 80A256DC  3C 80 80 A2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A25F68@ha */
/* 80A256E0  38 84 5F 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A25F68@l */
/* 80A256E4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A256E8  38 04 00 0C */	addi r0, r4, 0xc
/* 80A256EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A256F0  38 04 00 18 */	addi r0, r4, 0x18
/* 80A256F4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A256F8  38 80 00 00 */	li r4, 0
/* 80A256FC  4B 65 08 99 */	bl __dt__9dBgS_AcchFv
/* 80A25700  7F E0 07 35 */	extsh. r0, r31
/* 80A25704  40 81 00 0C */	ble lbl_80A25710
/* 80A25708  7F C3 F3 78 */	mr r3, r30
/* 80A2570C  4B 8A 96 31 */	bl __dl__FPv
lbl_80A25710:
/* 80A25710  7F C3 F3 78 */	mr r3, r30
/* 80A25714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25718  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2571C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25720  7C 08 03 A6 */	mtlr r0
/* 80A25724  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25728  4E 80 00 20 */	blr 
