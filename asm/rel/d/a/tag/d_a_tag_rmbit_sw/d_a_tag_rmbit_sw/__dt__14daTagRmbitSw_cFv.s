lbl_80D5FB34:
/* 80D5FB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FB38  7C 08 02 A6 */	mflr r0
/* 80D5FB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5FB44  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5FB48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5FB4C  7C 9F 23 78 */	mr r31, r4
/* 80D5FB50  41 82 00 28 */	beq lbl_80D5FB78
/* 80D5FB54  3C 80 80 D6 */	lis r4, __vt__14daTagRmbitSw_c@ha
/* 80D5FB58  38 04 00 04 */	addi r0, r4, __vt__14daTagRmbitSw_c@l
/* 80D5FB5C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D5FB60  38 80 00 00 */	li r4, 0
/* 80D5FB64  4B 2B 91 28 */	b __dt__10fopAc_ac_cFv
/* 80D5FB68  7F E0 07 35 */	extsh. r0, r31
/* 80D5FB6C  40 81 00 0C */	ble lbl_80D5FB78
/* 80D5FB70  7F C3 F3 78 */	mr r3, r30
/* 80D5FB74  4B 56 F1 C8 */	b __dl__FPv
lbl_80D5FB78:
/* 80D5FB78  7F C3 F3 78 */	mr r3, r30
/* 80D5FB7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5FB80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5FB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FB88  7C 08 03 A6 */	mtlr r0
/* 80D5FB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FB90  4E 80 00 20 */	blr 
