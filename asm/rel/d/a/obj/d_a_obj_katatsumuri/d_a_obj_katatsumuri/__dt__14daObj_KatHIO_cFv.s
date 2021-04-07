lbl_80C3C5CC:
/* 80C3C5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C5D0  7C 08 02 A6 */	mflr r0
/* 80C3C5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3C5DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3C5E0  41 82 00 1C */	beq lbl_80C3C5FC
/* 80C3C5E4  3C A0 80 C4 */	lis r5, __vt__14daObj_KatHIO_c@ha /* 0x80C3C820@ha */
/* 80C3C5E8  38 05 C8 20 */	addi r0, r5, __vt__14daObj_KatHIO_c@l /* 0x80C3C820@l */
/* 80C3C5EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C3C5F0  7C 80 07 35 */	extsh. r0, r4
/* 80C3C5F4  40 81 00 08 */	ble lbl_80C3C5FC
/* 80C3C5F8  4B 69 27 45 */	bl __dl__FPv
lbl_80C3C5FC:
/* 80C3C5FC  7F E3 FB 78 */	mr r3, r31
/* 80C3C600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3C604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C608  7C 08 03 A6 */	mtlr r0
/* 80C3C60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C610  4E 80 00 20 */	blr 
