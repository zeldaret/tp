lbl_805EC654:
/* 805EC654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC658  7C 08 02 A6 */	mflr r0
/* 805EC65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC664  93 C1 00 08 */	stw r30, 8(r1)
/* 805EC668  7C 7E 1B 79 */	or. r30, r3, r3
/* 805EC66C  7C 9F 23 78 */	mr r31, r4
/* 805EC670  41 82 00 38 */	beq lbl_805EC6A8
/* 805EC674  3C 80 80 5F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x805ED654@ha */
/* 805EC678  38 84 D6 54 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x805ED654@l */
/* 805EC67C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805EC680  38 04 00 0C */	addi r0, r4, 0xc
/* 805EC684  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805EC688  38 04 00 18 */	addi r0, r4, 0x18
/* 805EC68C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805EC690  38 80 00 00 */	li r4, 0
/* 805EC694  4B A8 99 01 */	bl __dt__9dBgS_AcchFv
/* 805EC698  7F E0 07 35 */	extsh. r0, r31
/* 805EC69C  40 81 00 0C */	ble lbl_805EC6A8
/* 805EC6A0  7F C3 F3 78 */	mr r3, r30
/* 805EC6A4  4B CE 26 99 */	bl __dl__FPv
lbl_805EC6A8:
/* 805EC6A8  7F C3 F3 78 */	mr r3, r30
/* 805EC6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EC6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC6B8  7C 08 03 A6 */	mtlr r0
/* 805EC6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC6C0  4E 80 00 20 */	blr 
