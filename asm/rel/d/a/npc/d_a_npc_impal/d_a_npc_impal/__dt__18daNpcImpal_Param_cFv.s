lbl_80A0C204:
/* 80A0C204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C208  7C 08 02 A6 */	mflr r0
/* 80A0C20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C214  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0C218  41 82 00 1C */	beq lbl_80A0C234
/* 80A0C21C  3C A0 80 A1 */	lis r5, __vt__18daNpcImpal_Param_c@ha /* 0x80A0C8E0@ha */
/* 80A0C220  38 05 C8 E0 */	addi r0, r5, __vt__18daNpcImpal_Param_c@l /* 0x80A0C8E0@l */
/* 80A0C224  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0C228  7C 80 07 35 */	extsh. r0, r4
/* 80A0C22C  40 81 00 08 */	ble lbl_80A0C234
/* 80A0C230  4B 8C 2B 0D */	bl __dl__FPv
lbl_80A0C234:
/* 80A0C234  7F E3 FB 78 */	mr r3, r31
/* 80A0C238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C240  7C 08 03 A6 */	mtlr r0
/* 80A0C244  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C248  4E 80 00 20 */	blr 
