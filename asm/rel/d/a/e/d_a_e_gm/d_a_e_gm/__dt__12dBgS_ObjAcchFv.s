lbl_806D72E0:
/* 806D72E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D72E4  7C 08 02 A6 */	mflr r0
/* 806D72E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D72EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D72F0  93 C1 00 08 */	stw r30, 8(r1)
/* 806D72F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D72F8  7C 9F 23 78 */	mr r31, r4
/* 806D72FC  41 82 00 38 */	beq lbl_806D7334
/* 806D7300  3C 80 80 6D */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806D7E40@ha */
/* 806D7304  38 84 7E 40 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806D7E40@l */
/* 806D7308  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806D730C  38 04 00 0C */	addi r0, r4, 0xc
/* 806D7310  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806D7314  38 04 00 18 */	addi r0, r4, 0x18
/* 806D7318  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806D731C  38 80 00 00 */	li r4, 0
/* 806D7320  4B 99 EC 75 */	bl __dt__9dBgS_AcchFv
/* 806D7324  7F E0 07 35 */	extsh. r0, r31
/* 806D7328  40 81 00 0C */	ble lbl_806D7334
/* 806D732C  7F C3 F3 78 */	mr r3, r30
/* 806D7330  4B BF 7A 0D */	bl __dl__FPv
lbl_806D7334:
/* 806D7334  7F C3 F3 78 */	mr r3, r30
/* 806D7338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D733C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D7340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7344  7C 08 03 A6 */	mtlr r0
/* 806D7348  38 21 00 10 */	addi r1, r1, 0x10
/* 806D734C  4E 80 00 20 */	blr 
