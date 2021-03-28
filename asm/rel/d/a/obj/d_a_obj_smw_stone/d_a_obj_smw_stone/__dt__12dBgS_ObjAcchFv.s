lbl_80CDE7F8:
/* 80CDE7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE7FC  7C 08 02 A6 */	mflr r0
/* 80CDE800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE808  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDE80C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDE810  7C 9F 23 78 */	mr r31, r4
/* 80CDE814  41 82 00 38 */	beq lbl_80CDE84C
/* 80CDE818  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CDE81C  38 84 EF 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CDE820  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CDE824  38 04 00 0C */	addi r0, r4, 0xc
/* 80CDE828  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CDE82C  38 04 00 18 */	addi r0, r4, 0x18
/* 80CDE830  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CDE834  38 80 00 00 */	li r4, 0
/* 80CDE838  4B 39 77 5C */	b __dt__9dBgS_AcchFv
/* 80CDE83C  7F E0 07 35 */	extsh. r0, r31
/* 80CDE840  40 81 00 0C */	ble lbl_80CDE84C
/* 80CDE844  7F C3 F3 78 */	mr r3, r30
/* 80CDE848  4B 5F 04 F4 */	b __dl__FPv
lbl_80CDE84C:
/* 80CDE84C  7F C3 F3 78 */	mr r3, r30
/* 80CDE850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE854  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDE858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE85C  7C 08 03 A6 */	mtlr r0
/* 80CDE860  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE864  4E 80 00 20 */	blr 
