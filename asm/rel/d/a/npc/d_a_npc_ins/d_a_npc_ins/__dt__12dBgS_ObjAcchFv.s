lbl_80A13C34:
/* 80A13C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13C38  7C 08 02 A6 */	mflr r0
/* 80A13C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13C44  93 C1 00 08 */	stw r30, 8(r1)
/* 80A13C48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A13C4C  7C 9F 23 78 */	mr r31, r4
/* 80A13C50  41 82 00 38 */	beq lbl_80A13C88
/* 80A13C54  3C 80 80 A1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A13C58  38 84 45 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A13C5C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A13C60  38 04 00 0C */	addi r0, r4, 0xc
/* 80A13C64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A13C68  38 04 00 18 */	addi r0, r4, 0x18
/* 80A13C6C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A13C70  38 80 00 00 */	li r4, 0
/* 80A13C74  4B 66 23 20 */	b __dt__9dBgS_AcchFv
/* 80A13C78  7F E0 07 35 */	extsh. r0, r31
/* 80A13C7C  40 81 00 0C */	ble lbl_80A13C88
/* 80A13C80  7F C3 F3 78 */	mr r3, r30
/* 80A13C84  4B 8B B0 B8 */	b __dl__FPv
lbl_80A13C88:
/* 80A13C88  7F C3 F3 78 */	mr r3, r30
/* 80A13C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13C90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A13C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13C98  7C 08 03 A6 */	mtlr r0
/* 80A13C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13CA0  4E 80 00 20 */	blr 
