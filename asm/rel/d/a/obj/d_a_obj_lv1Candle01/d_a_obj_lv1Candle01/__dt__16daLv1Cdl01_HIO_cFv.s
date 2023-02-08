lbl_80C5777C:
/* 80C5777C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57780  7C 08 02 A6 */	mflr r0
/* 80C57784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5778C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C57790  41 82 00 30 */	beq lbl_80C577C0
/* 80C57794  3C 60 80 C5 */	lis r3, __vt__16daLv1Cdl01_HIO_c@ha /* 0x80C579A0@ha */
/* 80C57798  38 03 79 A0 */	addi r0, r3, __vt__16daLv1Cdl01_HIO_c@l /* 0x80C579A0@l */
/* 80C5779C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C577A0  41 82 00 10 */	beq lbl_80C577B0
/* 80C577A4  3C 60 80 C5 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C579AC@ha */
/* 80C577A8  38 03 79 AC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C579AC@l */
/* 80C577AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C577B0:
/* 80C577B0  7C 80 07 35 */	extsh. r0, r4
/* 80C577B4  40 81 00 0C */	ble lbl_80C577C0
/* 80C577B8  7F E3 FB 78 */	mr r3, r31
/* 80C577BC  4B 67 75 81 */	bl __dl__FPv
lbl_80C577C0:
/* 80C577C0  7F E3 FB 78 */	mr r3, r31
/* 80C577C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C577C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C577CC  7C 08 03 A6 */	mtlr r0
/* 80C577D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C577D4  4E 80 00 20 */	blr 
