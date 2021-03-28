lbl_80D1B510:
/* 80D1B510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1B514  7C 08 02 A6 */	mflr r0
/* 80D1B518  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1B51C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1B520  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1B524  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D1B528  7C 9F 23 78 */	mr r31, r4
/* 80D1B52C  41 82 00 38 */	beq lbl_80D1B564
/* 80D1B530  3C 80 80 D2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D1B534  38 84 B8 48 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D1B538  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D1B53C  38 04 00 0C */	addi r0, r4, 0xc
/* 80D1B540  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D1B544  38 04 00 18 */	addi r0, r4, 0x18
/* 80D1B548  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D1B54C  38 80 00 00 */	li r4, 0
/* 80D1B550  4B 35 AA 44 */	b __dt__9dBgS_AcchFv
/* 80D1B554  7F E0 07 35 */	extsh. r0, r31
/* 80D1B558  40 81 00 0C */	ble lbl_80D1B564
/* 80D1B55C  7F C3 F3 78 */	mr r3, r30
/* 80D1B560  4B 5B 37 DC */	b __dl__FPv
lbl_80D1B564:
/* 80D1B564  7F C3 F3 78 */	mr r3, r30
/* 80D1B568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1B56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1B570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1B574  7C 08 03 A6 */	mtlr r0
/* 80D1B578  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1B57C  4E 80 00 20 */	blr 
