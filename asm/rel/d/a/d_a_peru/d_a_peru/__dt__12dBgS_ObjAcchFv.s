lbl_80D4B8D0:
/* 80D4B8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B8D4  7C 08 02 A6 */	mflr r0
/* 80D4B8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B8E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4B8E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4B8E8  7C 9F 23 78 */	mr r31, r4
/* 80D4B8EC  41 82 00 38 */	beq lbl_80D4B924
/* 80D4B8F0  3C 80 80 D5 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D4B8F4  38 84 C6 9C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D4B8F8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D4B8FC  38 04 00 0C */	addi r0, r4, 0xc
/* 80D4B900  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D4B904  38 04 00 18 */	addi r0, r4, 0x18
/* 80D4B908  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D4B90C  38 80 00 00 */	li r4, 0
/* 80D4B910  4B 32 A6 84 */	b __dt__9dBgS_AcchFv
/* 80D4B914  7F E0 07 35 */	extsh. r0, r31
/* 80D4B918  40 81 00 0C */	ble lbl_80D4B924
/* 80D4B91C  7F C3 F3 78 */	mr r3, r30
/* 80D4B920  4B 58 34 1C */	b __dl__FPv
lbl_80D4B924:
/* 80D4B924  7F C3 F3 78 */	mr r3, r30
/* 80D4B928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B92C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4B930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B934  7C 08 03 A6 */	mtlr r0
/* 80D4B938  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B93C  4E 80 00 20 */	blr 
