lbl_80ACF590:
/* 80ACF590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF594  7C 08 02 A6 */	mflr r0
/* 80ACF598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF5A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACF5A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACF5A8  7C 9F 23 78 */	mr r31, r4
/* 80ACF5AC  41 82 00 38 */	beq lbl_80ACF5E4
/* 80ACF5B0  3C 80 80 AD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80ACF5B4  38 84 09 90 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80ACF5B8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80ACF5BC  38 04 00 0C */	addi r0, r4, 0xc
/* 80ACF5C0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80ACF5C4  38 04 00 18 */	addi r0, r4, 0x18
/* 80ACF5C8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80ACF5CC  38 80 00 00 */	li r4, 0
/* 80ACF5D0  4B 5A 69 C4 */	b __dt__9dBgS_AcchFv
/* 80ACF5D4  7F E0 07 35 */	extsh. r0, r31
/* 80ACF5D8  40 81 00 0C */	ble lbl_80ACF5E4
/* 80ACF5DC  7F C3 F3 78 */	mr r3, r30
/* 80ACF5E0  4B 7F F7 5C */	b __dl__FPv
lbl_80ACF5E4:
/* 80ACF5E4  7F C3 F3 78 */	mr r3, r30
/* 80ACF5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF5EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACF5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF5F4  7C 08 03 A6 */	mtlr r0
/* 80ACF5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF5FC  4E 80 00 20 */	blr 
