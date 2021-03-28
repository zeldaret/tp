lbl_801ADF58:
/* 801ADF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADF5C  7C 08 02 A6 */	mflr r0
/* 801ADF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADF64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ADF68  7C 7F 1B 78 */	mr r31, r3
/* 801ADF6C  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 801ADF70  28 00 00 00 */	cmplwi r0, 0
/* 801ADF74  40 82 00 28 */	bne lbl_801ADF9C
/* 801ADF78  38 60 00 00 */	li r3, 0
/* 801ADF7C  38 80 00 20 */	li r4, 0x20
/* 801ADF80  4B E6 10 C5 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 801ADF84  90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 801ADF88  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 801ADF8C  28 00 00 00 */	cmplwi r0, 0
/* 801ADF90  40 82 00 0C */	bne lbl_801ADF9C
/* 801ADF94  38 60 00 00 */	li r3, 0
/* 801ADF98  48 00 00 08 */	b lbl_801ADFA0
lbl_801ADF9C:
/* 801ADF9C  38 60 00 01 */	li r3, 1
lbl_801ADFA0:
/* 801ADFA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ADFA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADFA8  7C 08 03 A6 */	mtlr r0
/* 801ADFAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADFB0  4E 80 00 20 */	blr 
