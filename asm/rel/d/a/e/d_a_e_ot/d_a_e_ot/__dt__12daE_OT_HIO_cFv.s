lbl_8073C9B0:
/* 8073C9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C9B4  7C 08 02 A6 */	mflr r0
/* 8073C9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C9C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8073C9C4  41 82 00 1C */	beq lbl_8073C9E0
/* 8073C9C8  3C A0 80 74 */	lis r5, __vt__12daE_OT_HIO_c@ha
/* 8073C9CC  38 05 D2 58 */	addi r0, r5, __vt__12daE_OT_HIO_c@l
/* 8073C9D0  90 1F 00 00 */	stw r0, 0(r31)
/* 8073C9D4  7C 80 07 35 */	extsh. r0, r4
/* 8073C9D8  40 81 00 08 */	ble lbl_8073C9E0
/* 8073C9DC  4B B9 23 60 */	b __dl__FPv
lbl_8073C9E0:
/* 8073C9E0  7F E3 FB 78 */	mr r3, r31
/* 8073C9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C9EC  7C 08 03 A6 */	mtlr r0
/* 8073C9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C9F4  4E 80 00 20 */	blr 
