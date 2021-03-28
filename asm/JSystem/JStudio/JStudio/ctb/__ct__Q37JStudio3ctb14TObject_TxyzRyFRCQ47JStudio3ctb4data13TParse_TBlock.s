lbl_80280F60:
/* 80280F60  80 A4 00 00 */	lwz r5, 0(r4)
/* 80280F64  A0 85 00 06 */	lhz r4, 6(r5)
/* 80280F68  38 04 00 03 */	addi r0, r4, 3
/* 80280F6C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80280F70  38 C5 00 08 */	addi r6, r5, 8
/* 80280F74  7C A6 02 14 */	add r5, r6, r0
/* 80280F78  38 00 00 00 */	li r0, 0
/* 80280F7C  28 04 00 00 */	cmplwi r4, 0
/* 80280F80  41 82 00 08 */	beq lbl_80280F88
/* 80280F84  7C C0 33 78 */	mr r0, r6
lbl_80280F88:
/* 80280F88  90 03 00 00 */	stw r0, 0(r3)
/* 80280F8C  90 83 00 04 */	stw r4, 4(r3)
/* 80280F90  3C 80 80 3C */	lis r4, __vt__Q37JStudio3ctb7TObject@ha
/* 80280F94  38 04 48 D0 */	addi r0, r4, __vt__Q37JStudio3ctb7TObject@l
/* 80280F98  90 03 00 08 */	stw r0, 8(r3)
/* 80280F9C  38 00 00 00 */	li r0, 0
/* 80280FA0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80280FA4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80280FA8  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80280FAC  3C 80 80 3C */	lis r4, __vt__Q37JStudio3ctb14TObject_TxyzRy@ha
/* 80280FB0  38 04 48 C0 */	addi r0, r4, __vt__Q37JStudio3ctb14TObject_TxyzRy@l
/* 80280FB4  90 03 00 08 */	stw r0, 8(r3)
/* 80280FB8  4E 80 00 20 */	blr 
