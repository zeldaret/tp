lbl_806CC910:
/* 806CC910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC914  7C 08 02 A6 */	mflr r0
/* 806CC918  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CC920  93 C1 00 08 */	stw r30, 8(r1)
/* 806CC924  7C 7E 1B 79 */	or. r30, r3, r3
/* 806CC928  7C 9F 23 78 */	mr r31, r4
/* 806CC92C  41 82 00 38 */	beq lbl_806CC964
/* 806CC930  3C 80 80 6D */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806CC934  38 84 D3 20 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806CC938  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806CC93C  38 04 00 0C */	addi r0, r4, 0xc
/* 806CC940  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806CC944  38 04 00 18 */	addi r0, r4, 0x18
/* 806CC948  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806CC94C  38 80 00 00 */	li r4, 0
/* 806CC950  4B 9A 96 44 */	b __dt__9dBgS_AcchFv
/* 806CC954  7F E0 07 35 */	extsh. r0, r31
/* 806CC958  40 81 00 0C */	ble lbl_806CC964
/* 806CC95C  7F C3 F3 78 */	mr r3, r30
/* 806CC960  4B C0 23 DC */	b __dl__FPv
lbl_806CC964:
/* 806CC964  7F C3 F3 78 */	mr r3, r30
/* 806CC968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CC96C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CC970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC974  7C 08 03 A6 */	mtlr r0
/* 806CC978  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC97C  4E 80 00 20 */	blr 
