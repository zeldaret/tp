lbl_805B3098:
/* 805B3098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B309C  7C 08 02 A6 */	mflr r0
/* 805B30A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B30A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B30A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B30AC  41 82 00 1C */	beq lbl_805B30C8
/* 805B30B0  3C A0 80 5B */	lis r5, __vt__12daB_BH_HIO_c@ha /* 0x805B3398@ha */
/* 805B30B4  38 05 33 98 */	addi r0, r5, __vt__12daB_BH_HIO_c@l /* 0x805B3398@l */
/* 805B30B8  90 1F 00 00 */	stw r0, 0(r31)
/* 805B30BC  7C 80 07 35 */	extsh. r0, r4
/* 805B30C0  40 81 00 08 */	ble lbl_805B30C8
/* 805B30C4  4B D1 BC 79 */	bl __dl__FPv
lbl_805B30C8:
/* 805B30C8  7F E3 FB 78 */	mr r3, r31
/* 805B30CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B30D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B30D4  7C 08 03 A6 */	mtlr r0
/* 805B30D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B30DC  4E 80 00 20 */	blr 
