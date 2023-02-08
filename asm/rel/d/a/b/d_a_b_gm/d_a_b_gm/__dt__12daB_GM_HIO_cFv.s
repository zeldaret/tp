lbl_805F3E64:
/* 805F3E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3E68  7C 08 02 A6 */	mflr r0
/* 805F3E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3E74  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F3E78  41 82 00 1C */	beq lbl_805F3E94
/* 805F3E7C  3C A0 80 5F */	lis r5, __vt__12daB_GM_HIO_c@ha /* 0x805F477C@ha */
/* 805F3E80  38 05 47 7C */	addi r0, r5, __vt__12daB_GM_HIO_c@l /* 0x805F477C@l */
/* 805F3E84  90 1F 00 00 */	stw r0, 0(r31)
/* 805F3E88  7C 80 07 35 */	extsh. r0, r4
/* 805F3E8C  40 81 00 08 */	ble lbl_805F3E94
/* 805F3E90  4B CD AE AD */	bl __dl__FPv
lbl_805F3E94:
/* 805F3E94  7F E3 FB 78 */	mr r3, r31
/* 805F3E98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3EA0  7C 08 03 A6 */	mtlr r0
/* 805F3EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3EA8  4E 80 00 20 */	blr 
