lbl_802A8F6C:
/* 802A8F6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A8F70  38 03 00 04 */	addi r0, r3, 4
/* 802A8F74  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8F78  90 01 00 20 */	stw r0, 0x20(r1)
/* 802A8F7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A8F80  90 01 00 30 */	stw r0, 0x30(r1)
/* 802A8F84  80 63 00 04 */	lwz r3, 4(r3)
/* 802A8F88  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802A8F8C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802A8F90  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802A8F94  90 61 00 28 */	stw r3, 0x28(r1)
/* 802A8F98  90 61 00 38 */	stw r3, 0x38(r1)
/* 802A8F9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802A8FA0  48 00 00 24 */	b lbl_802A8FC4
lbl_802A8FA4:
/* 802A8FA4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802A8FA8  80 03 00 00 */	lwz r0, 0(r3)
/* 802A8FAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802A8FB0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A8FB4  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 802A8FB8  7C 05 00 40 */	cmplw r5, r0
/* 802A8FBC  40 82 00 0C */	bne lbl_802A8FC8
/* 802A8FC0  48 00 00 34 */	b lbl_802A8FF4
lbl_802A8FC4:
/* 802A8FC4  54 85 04 3E */	clrlwi r5, r4, 0x10
lbl_802A8FC8:
/* 802A8FC8  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802A8FCC  90 61 00 14 */	stw r3, 0x14(r1)
/* 802A8FD0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802A8FD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A8FD8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A8FDC  90 01 00 08 */	stw r0, 8(r1)
/* 802A8FE0  7C 00 18 50 */	subf r0, r0, r3
/* 802A8FE4  7C 00 00 34 */	cntlzw r0, r0
/* 802A8FE8  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802A8FEC  41 82 FF B8 */	beq lbl_802A8FA4
/* 802A8FF0  38 60 00 00 */	li r3, 0
lbl_802A8FF4:
/* 802A8FF4  38 21 00 40 */	addi r1, r1, 0x40
/* 802A8FF8  4E 80 00 20 */	blr 
