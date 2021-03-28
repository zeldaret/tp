lbl_80D17C2C:
/* 80D17C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17C30  7C 08 02 A6 */	mflr r0
/* 80D17C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17C3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D17C40  41 82 00 1C */	beq lbl_80D17C5C
/* 80D17C44  3C A0 80 D2 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80D17C48  38 05 90 94 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80D17C4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D17C50  7C 80 07 35 */	extsh. r0, r4
/* 80D17C54  40 81 00 08 */	ble lbl_80D17C5C
/* 80D17C58  4B 5B 70 E4 */	b __dl__FPv
lbl_80D17C5C:
/* 80D17C5C  7F E3 FB 78 */	mr r3, r31
/* 80D17C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17C68  7C 08 03 A6 */	mtlr r0
/* 80D17C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17C70  4E 80 00 20 */	blr 
