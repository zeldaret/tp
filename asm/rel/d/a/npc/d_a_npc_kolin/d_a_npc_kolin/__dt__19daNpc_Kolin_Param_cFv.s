lbl_8055A4E8:
/* 8055A4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A4EC  7C 08 02 A6 */	mflr r0
/* 8055A4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A4F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8055A4FC  41 82 00 1C */	beq lbl_8055A518
/* 8055A500  3C A0 80 56 */	lis r5, __vt__19daNpc_Kolin_Param_c@ha /* 0x8055B3B8@ha */
/* 8055A504  38 05 B3 B8 */	addi r0, r5, __vt__19daNpc_Kolin_Param_c@l /* 0x8055B3B8@l */
/* 8055A508  90 1F 00 00 */	stw r0, 0(r31)
/* 8055A50C  7C 80 07 35 */	extsh. r0, r4
/* 8055A510  40 81 00 08 */	ble lbl_8055A518
/* 8055A514  4B D7 48 29 */	bl __dl__FPv
lbl_8055A518:
/* 8055A518  7F E3 FB 78 */	mr r3, r31
/* 8055A51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A524  7C 08 03 A6 */	mtlr r0
/* 8055A528  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A52C  4E 80 00 20 */	blr 
