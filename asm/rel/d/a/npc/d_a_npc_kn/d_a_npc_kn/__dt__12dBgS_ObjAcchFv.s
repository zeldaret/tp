lbl_80A3C5BC:
/* 80A3C5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C5C0  7C 08 02 A6 */	mflr r0
/* 80A3C5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C5CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3C5D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A3C5D4  7C 9F 23 78 */	mr r31, r4
/* 80A3C5D8  41 82 00 38 */	beq lbl_80A3C610
/* 80A3C5DC  3C 80 80 A4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A3C5E0  38 84 31 A4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A3C5E4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A3C5E8  38 04 00 0C */	addi r0, r4, 0xc
/* 80A3C5EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A3C5F0  38 04 00 18 */	addi r0, r4, 0x18
/* 80A3C5F4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A3C5F8  38 80 00 00 */	li r4, 0
/* 80A3C5FC  4B 63 99 98 */	b __dt__9dBgS_AcchFv
/* 80A3C600  7F E0 07 35 */	extsh. r0, r31
/* 80A3C604  40 81 00 0C */	ble lbl_80A3C610
/* 80A3C608  7F C3 F3 78 */	mr r3, r30
/* 80A3C60C  4B 89 27 30 */	b __dl__FPv
lbl_80A3C610:
/* 80A3C610  7F C3 F3 78 */	mr r3, r30
/* 80A3C614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C618  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3C61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C620  7C 08 03 A6 */	mtlr r0
/* 80A3C624  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C628  4E 80 00 20 */	blr 
