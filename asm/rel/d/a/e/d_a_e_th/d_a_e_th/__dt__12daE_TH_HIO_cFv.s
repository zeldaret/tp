lbl_807B3FA4:
/* 807B3FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3FA8  7C 08 02 A6 */	mflr r0
/* 807B3FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3FB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B3FB8  41 82 00 1C */	beq lbl_807B3FD4
/* 807B3FBC  3C A0 80 7B */	lis r5, __vt__12daE_TH_HIO_c@ha /* 0x807B4858@ha */
/* 807B3FC0  38 05 48 58 */	addi r0, r5, __vt__12daE_TH_HIO_c@l /* 0x807B4858@l */
/* 807B3FC4  90 1F 00 00 */	stw r0, 0(r31)
/* 807B3FC8  7C 80 07 35 */	extsh. r0, r4
/* 807B3FCC  40 81 00 08 */	ble lbl_807B3FD4
/* 807B3FD0  4B B1 AD 6D */	bl __dl__FPv
lbl_807B3FD4:
/* 807B3FD4  7F E3 FB 78 */	mr r3, r31
/* 807B3FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3FE0  7C 08 03 A6 */	mtlr r0
/* 807B3FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3FE8  4E 80 00 20 */	blr 
