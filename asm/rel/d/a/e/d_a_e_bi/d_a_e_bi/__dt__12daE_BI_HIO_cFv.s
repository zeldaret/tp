lbl_8068D2DC:
/* 8068D2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D2E0  7C 08 02 A6 */	mflr r0
/* 8068D2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D2EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D2F0  41 82 00 1C */	beq lbl_8068D30C
/* 8068D2F4  3C A0 80 69 */	lis r5, __vt__12daE_BI_HIO_c@ha /* 0x8068DAC8@ha */
/* 8068D2F8  38 05 DA C8 */	addi r0, r5, __vt__12daE_BI_HIO_c@l /* 0x8068DAC8@l */
/* 8068D2FC  90 1F 00 00 */	stw r0, 0(r31)
/* 8068D300  7C 80 07 35 */	extsh. r0, r4
/* 8068D304  40 81 00 08 */	ble lbl_8068D30C
/* 8068D308  4B C4 1A 35 */	bl __dl__FPv
lbl_8068D30C:
/* 8068D30C  7F E3 FB 78 */	mr r3, r31
/* 8068D310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D318  7C 08 03 A6 */	mtlr r0
/* 8068D31C  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D320  4E 80 00 20 */	blr 
