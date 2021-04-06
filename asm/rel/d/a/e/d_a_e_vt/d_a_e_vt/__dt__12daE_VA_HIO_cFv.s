lbl_807CE2AC:
/* 807CE2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE2B0  7C 08 02 A6 */	mflr r0
/* 807CE2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE2BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CE2C0  41 82 00 1C */	beq lbl_807CE2DC
/* 807CE2C4  3C A0 80 7D */	lis r5, __vt__12daE_VA_HIO_c@ha /* 0x807CF460@ha */
/* 807CE2C8  38 05 F4 60 */	addi r0, r5, __vt__12daE_VA_HIO_c@l /* 0x807CF460@l */
/* 807CE2CC  90 1F 00 00 */	stw r0, 0(r31)
/* 807CE2D0  7C 80 07 35 */	extsh. r0, r4
/* 807CE2D4  40 81 00 08 */	ble lbl_807CE2DC
/* 807CE2D8  4B B0 0A 65 */	bl __dl__FPv
lbl_807CE2DC:
/* 807CE2DC  7F E3 FB 78 */	mr r3, r31
/* 807CE2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE2E8  7C 08 03 A6 */	mtlr r0
/* 807CE2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE2F0  4E 80 00 20 */	blr 
