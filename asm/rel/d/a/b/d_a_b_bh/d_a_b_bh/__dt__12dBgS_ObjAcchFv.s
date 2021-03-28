lbl_805B2F54:
/* 805B2F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2F58  7C 08 02 A6 */	mflr r0
/* 805B2F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2F64  93 C1 00 08 */	stw r30, 8(r1)
/* 805B2F68  7C 7E 1B 79 */	or. r30, r3, r3
/* 805B2F6C  7C 9F 23 78 */	mr r31, r4
/* 805B2F70  41 82 00 38 */	beq lbl_805B2FA8
/* 805B2F74  3C 80 80 5B */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 805B2F78  38 84 33 5C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 805B2F7C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805B2F80  38 04 00 0C */	addi r0, r4, 0xc
/* 805B2F84  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805B2F88  38 04 00 18 */	addi r0, r4, 0x18
/* 805B2F8C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805B2F90  38 80 00 00 */	li r4, 0
/* 805B2F94  4B AC 30 00 */	b __dt__9dBgS_AcchFv
/* 805B2F98  7F E0 07 35 */	extsh. r0, r31
/* 805B2F9C  40 81 00 0C */	ble lbl_805B2FA8
/* 805B2FA0  7F C3 F3 78 */	mr r3, r30
/* 805B2FA4  4B D1 BD 98 */	b __dl__FPv
lbl_805B2FA8:
/* 805B2FA8  7F C3 F3 78 */	mr r3, r30
/* 805B2FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2FB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B2FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2FB8  7C 08 03 A6 */	mtlr r0
/* 805B2FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2FC0  4E 80 00 20 */	blr 
