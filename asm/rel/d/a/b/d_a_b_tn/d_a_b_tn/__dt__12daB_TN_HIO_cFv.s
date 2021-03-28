lbl_8062D98C:
/* 8062D98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D990  7C 08 02 A6 */	mflr r0
/* 8062D994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D99C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D9A0  41 82 00 1C */	beq lbl_8062D9BC
/* 8062D9A4  3C A0 80 63 */	lis r5, __vt__12daB_TN_HIO_c@ha
/* 8062D9A8  38 05 EF CC */	addi r0, r5, __vt__12daB_TN_HIO_c@l
/* 8062D9AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8062D9B0  7C 80 07 35 */	extsh. r0, r4
/* 8062D9B4  40 81 00 08 */	ble lbl_8062D9BC
/* 8062D9B8  4B CA 13 84 */	b __dl__FPv
lbl_8062D9BC:
/* 8062D9BC  7F E3 FB 78 */	mr r3, r31
/* 8062D9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D9C8  7C 08 03 A6 */	mtlr r0
/* 8062D9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D9D0  4E 80 00 20 */	blr 
