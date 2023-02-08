lbl_807E20DC:
/* 807E20DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E20E0  7C 08 02 A6 */	mflr r0
/* 807E20E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E20E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E20EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E20F0  41 82 00 1C */	beq lbl_807E210C
/* 807E20F4  3C A0 80 7E */	lis r5, __vt__12daE_WB_HIO_c@ha /* 0x807E3560@ha */
/* 807E20F8  38 05 35 60 */	addi r0, r5, __vt__12daE_WB_HIO_c@l /* 0x807E3560@l */
/* 807E20FC  90 1F 00 00 */	stw r0, 0(r31)
/* 807E2100  7C 80 07 35 */	extsh. r0, r4
/* 807E2104  40 81 00 08 */	ble lbl_807E210C
/* 807E2108  4B AE CC 35 */	bl __dl__FPv
lbl_807E210C:
/* 807E210C  7F E3 FB 78 */	mr r3, r31
/* 807E2110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E2114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2118  7C 08 03 A6 */	mtlr r0
/* 807E211C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2120  4E 80 00 20 */	blr 
