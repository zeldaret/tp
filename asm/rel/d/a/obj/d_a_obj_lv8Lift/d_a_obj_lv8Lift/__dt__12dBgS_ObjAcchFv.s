lbl_80C88C44:
/* 80C88C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88C48  7C 08 02 A6 */	mflr r0
/* 80C88C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88C54  93 C1 00 08 */	stw r30, 8(r1)
/* 80C88C58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C88C5C  7C 9F 23 78 */	mr r31, r4
/* 80C88C60  41 82 00 38 */	beq lbl_80C88C98
/* 80C88C64  3C 80 80 C9 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C8A170@ha */
/* 80C88C68  38 84 A1 70 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C8A170@l */
/* 80C88C6C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C88C70  38 04 00 0C */	addi r0, r4, 0xc
/* 80C88C74  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C88C78  38 04 00 18 */	addi r0, r4, 0x18
/* 80C88C7C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C88C80  38 80 00 00 */	li r4, 0
/* 80C88C84  4B 3E D3 11 */	bl __dt__9dBgS_AcchFv
/* 80C88C88  7F E0 07 35 */	extsh. r0, r31
/* 80C88C8C  40 81 00 0C */	ble lbl_80C88C98
/* 80C88C90  7F C3 F3 78 */	mr r3, r30
/* 80C88C94  4B 64 60 A9 */	bl __dl__FPv
lbl_80C88C98:
/* 80C88C98  7F C3 F3 78 */	mr r3, r30
/* 80C88C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88CA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C88CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88CA8  7C 08 03 A6 */	mtlr r0
/* 80C88CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88CB0  4E 80 00 20 */	blr 
