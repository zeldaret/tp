lbl_80A5D968:
/* 80A5D968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D96C  7C 08 02 A6 */	mflr r0
/* 80A5D970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D978  93 C1 00 08 */	stw r30, 8(r1)
/* 80A5D97C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A5D980  7C 9F 23 78 */	mr r31, r4
/* 80A5D984  41 82 00 38 */	beq lbl_80A5D9BC
/* 80A5D988  3C 80 80 A6 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A5D98C  38 84 FE 00 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A5D990  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A5D994  38 04 00 0C */	addi r0, r4, 0xc
/* 80A5D998  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A5D99C  38 04 00 18 */	addi r0, r4, 0x18
/* 80A5D9A0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A5D9A4  38 80 00 00 */	li r4, 0
/* 80A5D9A8  4B 61 85 EC */	b __dt__9dBgS_AcchFv
/* 80A5D9AC  7F E0 07 35 */	extsh. r0, r31
/* 80A5D9B0  40 81 00 0C */	ble lbl_80A5D9BC
/* 80A5D9B4  7F C3 F3 78 */	mr r3, r30
/* 80A5D9B8  4B 87 13 84 */	b __dl__FPv
lbl_80A5D9BC:
/* 80A5D9BC  7F C3 F3 78 */	mr r3, r30
/* 80A5D9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5D9C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A5D9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5D9CC  7C 08 03 A6 */	mtlr r0
/* 80A5D9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5D9D4  4E 80 00 20 */	blr 
