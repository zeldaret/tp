lbl_80C8CEF0:
/* 80C8CEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CEF4  7C 08 02 A6 */	mflr r0
/* 80C8CEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CEFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8CF00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8CF04  41 82 00 1C */	beq lbl_80C8CF20
/* 80C8CF08  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C8D8F8@ha */
/* 80C8CF0C  38 05 D8 F8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C8D8F8@l */
/* 80C8CF10  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8CF14  7C 80 07 35 */	extsh. r0, r4
/* 80C8CF18  40 81 00 08 */	ble lbl_80C8CF20
/* 80C8CF1C  4B 64 1E 21 */	bl __dl__FPv
lbl_80C8CF20:
/* 80C8CF20  7F E3 FB 78 */	mr r3, r31
/* 80C8CF24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8CF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CF2C  7C 08 03 A6 */	mtlr r0
/* 80C8CF30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CF34  4E 80 00 20 */	blr 
