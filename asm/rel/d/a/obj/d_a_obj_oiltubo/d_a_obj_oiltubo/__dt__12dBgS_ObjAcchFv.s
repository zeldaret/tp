lbl_80CA6A70:
/* 80CA6A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6A74  7C 08 02 A6 */	mflr r0
/* 80CA6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6A80  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA6A84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA6A88  7C 9F 23 78 */	mr r31, r4
/* 80CA6A8C  41 82 00 38 */	beq lbl_80CA6AC4
/* 80CA6A90  3C 80 80 CA */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CA6A94  38 84 7A 94 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CA6A98  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CA6A9C  38 04 00 0C */	addi r0, r4, 0xc
/* 80CA6AA0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CA6AA4  38 04 00 18 */	addi r0, r4, 0x18
/* 80CA6AA8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CA6AAC  38 80 00 00 */	li r4, 0
/* 80CA6AB0  4B 3C F4 E4 */	b __dt__9dBgS_AcchFv
/* 80CA6AB4  7F E0 07 35 */	extsh. r0, r31
/* 80CA6AB8  40 81 00 0C */	ble lbl_80CA6AC4
/* 80CA6ABC  7F C3 F3 78 */	mr r3, r30
/* 80CA6AC0  4B 62 82 7C */	b __dl__FPv
lbl_80CA6AC4:
/* 80CA6AC4  7F C3 F3 78 */	mr r3, r30
/* 80CA6AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6ACC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA6AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6AD4  7C 08 03 A6 */	mtlr r0
/* 80CA6AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6ADC  4E 80 00 20 */	blr 
