lbl_80AA8580:
/* 80AA8580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8584  7C 08 02 A6 */	mflr r0
/* 80AA8588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA858C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8590  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA8594  41 82 00 1C */	beq lbl_80AA85B0
/* 80AA8598  3C A0 80 AB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AA8B14@ha */
/* 80AA859C  38 05 8B 14 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AA8B14@l */
/* 80AA85A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA85A4  7C 80 07 35 */	extsh. r0, r4
/* 80AA85A8  40 81 00 08 */	ble lbl_80AA85B0
/* 80AA85AC  4B 82 67 91 */	bl __dl__FPv
lbl_80AA85B0:
/* 80AA85B0  7F E3 FB 78 */	mr r3, r31
/* 80AA85B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA85B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA85BC  7C 08 03 A6 */	mtlr r0
/* 80AA85C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA85C4  4E 80 00 20 */	blr 
