lbl_80A0C0F8:
/* 80A0C0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C0FC  7C 08 02 A6 */	mflr r0
/* 80A0C100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C108  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0C10C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0C110  7C 9F 23 78 */	mr r31, r4
/* 80A0C114  41 82 00 38 */	beq lbl_80A0C14C
/* 80A0C118  3C 80 80 A1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A0C11C  38 84 C8 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A0C120  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A0C124  38 04 00 0C */	addi r0, r4, 0xc
/* 80A0C128  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A0C12C  38 04 00 18 */	addi r0, r4, 0x18
/* 80A0C130  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A0C134  38 80 00 00 */	li r4, 0
/* 80A0C138  4B 66 9E 5C */	b __dt__9dBgS_AcchFv
/* 80A0C13C  7F E0 07 35 */	extsh. r0, r31
/* 80A0C140  40 81 00 0C */	ble lbl_80A0C14C
/* 80A0C144  7F C3 F3 78 */	mr r3, r30
/* 80A0C148  4B 8C 2B F4 */	b __dl__FPv
lbl_80A0C14C:
/* 80A0C14C  7F C3 F3 78 */	mr r3, r30
/* 80A0C150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C154  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0C158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C15C  7C 08 03 A6 */	mtlr r0
/* 80A0C160  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C164  4E 80 00 20 */	blr 
