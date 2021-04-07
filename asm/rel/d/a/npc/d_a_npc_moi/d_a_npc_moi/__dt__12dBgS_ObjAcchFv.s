lbl_80A7A6DC:
/* 80A7A6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A6E0  7C 08 02 A6 */	mflr r0
/* 80A7A6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A6EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A7A6F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A7A6F4  7C 9F 23 78 */	mr r31, r4
/* 80A7A6F8  41 82 00 38 */	beq lbl_80A7A730
/* 80A7A6FC  3C 80 80 A8 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80A7BE34@ha */
/* 80A7A700  38 84 BE 34 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80A7BE34@l */
/* 80A7A704  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A7A708  38 04 00 0C */	addi r0, r4, 0xc
/* 80A7A70C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A7A710  38 04 00 18 */	addi r0, r4, 0x18
/* 80A7A714  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A7A718  38 80 00 00 */	li r4, 0
/* 80A7A71C  4B 5F B8 79 */	bl __dt__9dBgS_AcchFv
/* 80A7A720  7F E0 07 35 */	extsh. r0, r31
/* 80A7A724  40 81 00 0C */	ble lbl_80A7A730
/* 80A7A728  7F C3 F3 78 */	mr r3, r30
/* 80A7A72C  4B 85 46 11 */	bl __dl__FPv
lbl_80A7A730:
/* 80A7A730  7F C3 F3 78 */	mr r3, r30
/* 80A7A734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A738  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A7A73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A740  7C 08 03 A6 */	mtlr r0
/* 80A7A744  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A748  4E 80 00 20 */	blr 
