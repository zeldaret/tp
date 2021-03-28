lbl_80C4D2E0:
/* 80C4D2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D2E4  7C 08 02 A6 */	mflr r0
/* 80C4D2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D2EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D2F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4D2F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C4D2F8  7C 9F 23 78 */	mr r31, r4
/* 80C4D2FC  41 82 00 38 */	beq lbl_80C4D334
/* 80C4D300  3C 80 80 C5 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C4D304  38 84 D5 EC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C4D308  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C4D30C  38 04 00 0C */	addi r0, r4, 0xc
/* 80C4D310  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C4D314  38 04 00 18 */	addi r0, r4, 0x18
/* 80C4D318  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C4D31C  38 80 00 00 */	li r4, 0
/* 80C4D320  4B 42 8C 74 */	b __dt__9dBgS_AcchFv
/* 80C4D324  7F E0 07 35 */	extsh. r0, r31
/* 80C4D328  40 81 00 0C */	ble lbl_80C4D334
/* 80C4D32C  7F C3 F3 78 */	mr r3, r30
/* 80C4D330  4B 68 1A 0C */	b __dl__FPv
lbl_80C4D334:
/* 80C4D334  7F C3 F3 78 */	mr r3, r30
/* 80C4D338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D33C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4D340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D344  7C 08 03 A6 */	mtlr r0
/* 80C4D348  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D34C  4E 80 00 20 */	blr 
