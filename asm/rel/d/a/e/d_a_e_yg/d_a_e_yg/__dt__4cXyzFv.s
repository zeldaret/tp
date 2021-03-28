lbl_807FCC64:
/* 807FCC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FCC68  7C 08 02 A6 */	mflr r0
/* 807FCC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FCC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FCC74  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FCC78  41 82 00 10 */	beq lbl_807FCC88
/* 807FCC7C  7C 80 07 35 */	extsh. r0, r4
/* 807FCC80  40 81 00 08 */	ble lbl_807FCC88
/* 807FCC84  4B AD 20 B8 */	b __dl__FPv
lbl_807FCC88:
/* 807FCC88  7F E3 FB 78 */	mr r3, r31
/* 807FCC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FCC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FCC94  7C 08 03 A6 */	mtlr r0
/* 807FCC98  38 21 00 10 */	addi r1, r1, 0x10
/* 807FCC9C  4E 80 00 20 */	blr 
