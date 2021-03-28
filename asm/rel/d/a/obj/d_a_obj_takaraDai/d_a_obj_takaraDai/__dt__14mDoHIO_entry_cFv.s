lbl_80D06E1C:
/* 80D06E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06E20  7C 08 02 A6 */	mflr r0
/* 80D06E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D06E2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D06E30  41 82 00 1C */	beq lbl_80D06E4C
/* 80D06E34  3C A0 80 D0 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80D06E38  38 05 78 FC */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80D06E3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D06E40  7C 80 07 35 */	extsh. r0, r4
/* 80D06E44  40 81 00 08 */	ble lbl_80D06E4C
/* 80D06E48  4B 5C 7E F4 */	b __dl__FPv
lbl_80D06E4C:
/* 80D06E4C  7F E3 FB 78 */	mr r3, r31
/* 80D06E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D06E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06E58  7C 08 03 A6 */	mtlr r0
/* 80D06E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06E60  4E 80 00 20 */	blr 
