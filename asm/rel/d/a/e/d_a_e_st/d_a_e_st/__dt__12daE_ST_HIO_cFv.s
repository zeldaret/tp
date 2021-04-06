lbl_807A61FC:
/* 807A61FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6200  7C 08 02 A6 */	mflr r0
/* 807A6204  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A620C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A6210  41 82 00 1C */	beq lbl_807A622C
/* 807A6214  3C A0 80 7A */	lis r5, __vt__12daE_ST_HIO_c@ha /* 0x807A6D88@ha */
/* 807A6218  38 05 6D 88 */	addi r0, r5, __vt__12daE_ST_HIO_c@l /* 0x807A6D88@l */
/* 807A621C  90 1F 00 00 */	stw r0, 0(r31)
/* 807A6220  7C 80 07 35 */	extsh. r0, r4
/* 807A6224  40 81 00 08 */	ble lbl_807A622C
/* 807A6228  4B B2 8B 15 */	bl __dl__FPv
lbl_807A622C:
/* 807A622C  7F E3 FB 78 */	mr r3, r31
/* 807A6230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A6234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6238  7C 08 03 A6 */	mtlr r0
/* 807A623C  38 21 00 10 */	addi r1, r1, 0x10
/* 807A6240  4E 80 00 20 */	blr 
