lbl_8033F660:
/* 8033F660  80 AD 91 10 */	lwz r5, ResetFunctionQueue(r13)
/* 8033F664  48 00 00 08 */	b lbl_8033F66C
lbl_8033F668:
/* 8033F668  80 A5 00 08 */	lwz r5, 8(r5)
lbl_8033F66C:
/* 8033F66C  28 05 00 00 */	cmplwi r5, 0
/* 8033F670  41 82 00 14 */	beq lbl_8033F684
/* 8033F674  80 85 00 04 */	lwz r4, 4(r5)
/* 8033F678  80 03 00 04 */	lwz r0, 4(r3)
/* 8033F67C  7C 04 00 40 */	cmplw r4, r0
/* 8033F680  40 81 FF E8 */	ble lbl_8033F668
lbl_8033F684:
/* 8033F684  28 05 00 00 */	cmplwi r5, 0
/* 8033F688  40 82 00 34 */	bne lbl_8033F6BC
/* 8033F68C  38 AD 91 10 */	la r5, ResetFunctionQueue(r13) /* 80451690-_SDA_BASE_ */
/* 8033F690  84 85 00 04 */	lwzu r4, 4(r5)
/* 8033F694  28 04 00 00 */	cmplwi r4, 0
/* 8033F698  40 82 00 0C */	bne lbl_8033F6A4
/* 8033F69C  90 6D 91 10 */	stw r3, ResetFunctionQueue(r13)
/* 8033F6A0  48 00 00 08 */	b lbl_8033F6A8
lbl_8033F6A4:
/* 8033F6A4  90 64 00 08 */	stw r3, 8(r4)
lbl_8033F6A8:
/* 8033F6A8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8033F6AC  38 00 00 00 */	li r0, 0
/* 8033F6B0  90 03 00 08 */	stw r0, 8(r3)
/* 8033F6B4  90 65 00 00 */	stw r3, 0(r5)
/* 8033F6B8  4E 80 00 20 */	blr 
lbl_8033F6BC:
/* 8033F6BC  90 A3 00 08 */	stw r5, 8(r3)
/* 8033F6C0  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8033F6C4  90 65 00 0C */	stw r3, 0xc(r5)
/* 8033F6C8  28 04 00 00 */	cmplwi r4, 0
/* 8033F6CC  90 83 00 0C */	stw r4, 0xc(r3)
/* 8033F6D0  40 82 00 0C */	bne lbl_8033F6DC
/* 8033F6D4  90 6D 91 10 */	stw r3, ResetFunctionQueue(r13)
/* 8033F6D8  4E 80 00 20 */	blr 
lbl_8033F6DC:
/* 8033F6DC  90 64 00 08 */	stw r3, 8(r4)
/* 8033F6E0  4E 80 00 20 */	blr 
