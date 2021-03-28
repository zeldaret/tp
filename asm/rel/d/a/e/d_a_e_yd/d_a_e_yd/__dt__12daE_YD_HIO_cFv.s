lbl_807F74CC:
/* 807F74CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F74D0  7C 08 02 A6 */	mflr r0
/* 807F74D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F74D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F74DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F74E0  41 82 00 1C */	beq lbl_807F74FC
/* 807F74E4  3C A0 80 7F */	lis r5, __vt__12daE_YD_HIO_c@ha
/* 807F74E8  38 05 7D 54 */	addi r0, r5, __vt__12daE_YD_HIO_c@l
/* 807F74EC  90 1F 00 00 */	stw r0, 0(r31)
/* 807F74F0  7C 80 07 35 */	extsh. r0, r4
/* 807F74F4  40 81 00 08 */	ble lbl_807F74FC
/* 807F74F8  4B AD 78 44 */	b __dl__FPv
lbl_807F74FC:
/* 807F74FC  7F E3 FB 78 */	mr r3, r31
/* 807F7500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F7504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7508  7C 08 03 A6 */	mtlr r0
/* 807F750C  38 21 00 10 */	addi r1, r1, 0x10
/* 807F7510  4E 80 00 20 */	blr 
