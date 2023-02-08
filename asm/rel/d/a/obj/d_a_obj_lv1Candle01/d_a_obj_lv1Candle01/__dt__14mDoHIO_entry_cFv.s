lbl_80C56CD8:
/* 80C56CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56CDC  7C 08 02 A6 */	mflr r0
/* 80C56CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C56CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C56CE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C56CEC  41 82 00 1C */	beq lbl_80C56D08
/* 80C56CF0  3C A0 80 C5 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C579AC@ha */
/* 80C56CF4  38 05 79 AC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C579AC@l */
/* 80C56CF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C56CFC  7C 80 07 35 */	extsh. r0, r4
/* 80C56D00  40 81 00 08 */	ble lbl_80C56D08
/* 80C56D04  4B 67 80 39 */	bl __dl__FPv
lbl_80C56D08:
/* 80C56D08  7F E3 FB 78 */	mr r3, r31
/* 80C56D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C56D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56D14  7C 08 03 A6 */	mtlr r0
/* 80C56D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56D1C  4E 80 00 20 */	blr 
