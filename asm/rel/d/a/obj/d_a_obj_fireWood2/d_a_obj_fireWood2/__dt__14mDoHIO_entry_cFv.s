lbl_80BE8288:
/* 80BE8288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE828C  7C 08 02 A6 */	mflr r0
/* 80BE8290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE8298  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE829C  41 82 00 1C */	beq lbl_80BE82B8
/* 80BE82A0  3C A0 80 BF */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80BE9068@ha */
/* 80BE82A4  38 05 90 68 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80BE9068@l */
/* 80BE82A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE82AC  7C 80 07 35 */	extsh. r0, r4
/* 80BE82B0  40 81 00 08 */	ble lbl_80BE82B8
/* 80BE82B4  4B 6E 6A 89 */	bl __dl__FPv
lbl_80BE82B8:
/* 80BE82B8  7F E3 FB 78 */	mr r3, r31
/* 80BE82BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE82C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE82C4  7C 08 03 A6 */	mtlr r0
/* 80BE82C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE82CC  4E 80 00 20 */	blr 
