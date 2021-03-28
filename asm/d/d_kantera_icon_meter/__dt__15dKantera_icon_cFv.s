lbl_801AE974:
/* 801AE974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AE978  7C 08 02 A6 */	mflr r0
/* 801AE97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AE984  93 C1 00 08 */	stw r30, 8(r1)
/* 801AE988  7C 7E 1B 79 */	or. r30, r3, r3
/* 801AE98C  7C 9F 23 78 */	mr r31, r4
/* 801AE990  41 82 00 BC */	beq lbl_801AEA4C
/* 801AE994  3C 60 80 3C */	lis r3, __vt__15dKantera_icon_c@ha
/* 801AE998  38 03 C2 28 */	addi r0, r3, __vt__15dKantera_icon_c@l
/* 801AE99C  90 1E 00 00 */	stw r0, 0(r30)
/* 801AE9A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 801AE9A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801AE9A8  28 03 00 00 */	cmplwi r3, 0
/* 801AE9AC  41 82 00 18 */	beq lbl_801AE9C4
/* 801AE9B0  38 80 00 01 */	li r4, 1
/* 801AE9B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801AE9B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801AE9BC  7D 89 03 A6 */	mtctr r12
/* 801AE9C0  4E 80 04 21 */	bctrl 
lbl_801AE9C4:
/* 801AE9C4  80 7E 00 04 */	lwz r3, 4(r30)
/* 801AE9C8  28 03 00 00 */	cmplwi r3, 0
/* 801AE9CC  41 82 00 18 */	beq lbl_801AE9E4
/* 801AE9D0  38 80 00 01 */	li r4, 1
/* 801AE9D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801AE9D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801AE9DC  7D 89 03 A6 */	mtctr r12
/* 801AE9E0  4E 80 04 21 */	bctrl 
lbl_801AE9E4:
/* 801AE9E4  38 00 00 00 */	li r0, 0
/* 801AE9E8  90 1E 00 04 */	stw r0, 4(r30)
/* 801AE9EC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801AE9F0  28 03 00 00 */	cmplwi r3, 0
/* 801AE9F4  41 82 00 18 */	beq lbl_801AEA0C
/* 801AE9F8  38 80 00 01 */	li r4, 1
/* 801AE9FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEA00  81 8C 00 08 */	lwz r12, 8(r12)
/* 801AEA04  7D 89 03 A6 */	mtctr r12
/* 801AEA08  4E 80 04 21 */	bctrl 
lbl_801AEA0C:
/* 801AEA0C  38 00 00 00 */	li r0, 0
/* 801AEA10  90 1E 00 08 */	stw r0, 8(r30)
/* 801AEA14  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801AEA18  28 03 00 00 */	cmplwi r3, 0
/* 801AEA1C  41 82 00 18 */	beq lbl_801AEA34
/* 801AEA20  38 80 00 01 */	li r4, 1
/* 801AEA24  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEA28  81 8C 00 08 */	lwz r12, 8(r12)
/* 801AEA2C  7D 89 03 A6 */	mtctr r12
/* 801AEA30  4E 80 04 21 */	bctrl 
lbl_801AEA34:
/* 801AEA34  38 00 00 00 */	li r0, 0
/* 801AEA38  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801AEA3C  7F E0 07 35 */	extsh. r0, r31
/* 801AEA40  40 81 00 0C */	ble lbl_801AEA4C
/* 801AEA44  7F C3 F3 78 */	mr r3, r30
/* 801AEA48  48 12 02 F5 */	bl __dl__FPv
lbl_801AEA4C:
/* 801AEA4C  7F C3 F3 78 */	mr r3, r30
/* 801AEA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AEA54  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AEA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEA5C  7C 08 03 A6 */	mtlr r0
/* 801AEA60  38 21 00 10 */	addi r1, r1, 0x10
/* 801AEA64  4E 80 00 20 */	blr 
