lbl_802A2C98:
/* 802A2C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2C9C  38 A0 00 00 */	li r5, 0
/* 802A2CA0  80 C3 00 04 */	lwz r6, 4(r3)
/* 802A2CA4  80 04 00 00 */	lwz r0, 0(r4)
/* 802A2CA8  7C C9 03 A6 */	mtctr r6
/* 802A2CAC  2C 06 00 00 */	cmpwi r6, 0
/* 802A2CB0  40 81 00 38 */	ble lbl_802A2CE8
lbl_802A2CB4:
/* 802A2CB4  80 83 00 00 */	lwz r4, 0(r3)
/* 802A2CB8  7C C4 2A 14 */	add r6, r4, r5
/* 802A2CBC  80 86 00 00 */	lwz r4, 0(r6)
/* 802A2CC0  28 04 00 00 */	cmplwi r4, 0
/* 802A2CC4  41 82 00 1C */	beq lbl_802A2CE0
/* 802A2CC8  80 84 00 18 */	lwz r4, 0x18(r4)
/* 802A2CCC  90 81 00 08 */	stw r4, 8(r1)
/* 802A2CD0  7C 04 00 40 */	cmplw r4, r0
/* 802A2CD4  40 82 00 0C */	bne lbl_802A2CE0
/* 802A2CD8  7C C3 33 78 */	mr r3, r6
/* 802A2CDC  48 00 00 10 */	b lbl_802A2CEC
lbl_802A2CE0:
/* 802A2CE0  38 A5 00 04 */	addi r5, r5, 4
/* 802A2CE4  42 00 FF D0 */	bdnz lbl_802A2CB4
lbl_802A2CE8:
/* 802A2CE8  38 60 00 00 */	li r3, 0
lbl_802A2CEC:
/* 802A2CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2CF0  4E 80 00 20 */	blr 
