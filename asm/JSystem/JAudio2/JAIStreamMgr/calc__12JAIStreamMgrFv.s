lbl_802A3EBC:
/* 802A3EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3EC0  7C 08 02 A6 */	mflr r0
/* 802A3EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3ECC  93 C1 00 08 */	stw r30, 8(r1)
/* 802A3ED0  7C 7E 1B 78 */	mr r30, r3
/* 802A3ED4  C0 23 00 04 */	lfs f1, 4(r3)
/* 802A3ED8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802A3EDC  28 03 00 01 */	cmplwi r3, 1
/* 802A3EE0  40 81 00 18 */	ble lbl_802A3EF8
/* 802A3EE4  38 03 FF FF */	addi r0, r3, -1
/* 802A3EE8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802A3EEC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 802A3EF0  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3EF4  48 00 00 14 */	b lbl_802A3F08
lbl_802A3EF8:
/* 802A3EF8  40 82 00 10 */	bne lbl_802A3F08
/* 802A3EFC  38 00 00 00 */	li r0, 0
/* 802A3F00  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802A3F04  C0 3E 00 1C */	lfs f1, 0x1c(r30)
lbl_802A3F08:
/* 802A3F08  D0 3E 00 04 */	stfs f1, 4(r30)
/* 802A3F0C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802A3F10  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802A3F14  28 03 00 01 */	cmplwi r3, 1
/* 802A3F18  40 81 00 18 */	ble lbl_802A3F30
/* 802A3F1C  38 03 FF FF */	addi r0, r3, -1
/* 802A3F20  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802A3F24  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802A3F28  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3F2C  48 00 00 14 */	b lbl_802A3F40
lbl_802A3F30:
/* 802A3F30  40 82 00 10 */	bne lbl_802A3F40
/* 802A3F34  38 00 00 00 */	li r0, 0
/* 802A3F38  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802A3F3C  C0 3E 00 28 */	lfs f1, 0x28(r30)
lbl_802A3F40:
/* 802A3F40  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 802A3F44  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802A3F48  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802A3F4C  28 03 00 01 */	cmplwi r3, 1
/* 802A3F50  40 81 00 18 */	ble lbl_802A3F68
/* 802A3F54  38 03 FF FF */	addi r0, r3, -1
/* 802A3F58  90 1E 00 38 */	stw r0, 0x38(r30)
/* 802A3F5C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 802A3F60  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3F64  48 00 00 14 */	b lbl_802A3F78
lbl_802A3F68:
/* 802A3F68  40 82 00 10 */	bne lbl_802A3F78
/* 802A3F6C  38 00 00 00 */	li r0, 0
/* 802A3F70  90 1E 00 38 */	stw r0, 0x38(r30)
/* 802A3F74  C0 3E 00 34 */	lfs f1, 0x34(r30)
lbl_802A3F78:
/* 802A3F78  D0 3E 00 08 */	stfs f1, 8(r30)
/* 802A3F7C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 802A3F80  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802A3F84  28 03 00 01 */	cmplwi r3, 1
/* 802A3F88  40 81 00 18 */	ble lbl_802A3FA0
/* 802A3F8C  38 03 FF FF */	addi r0, r3, -1
/* 802A3F90  90 1E 00 50 */	stw r0, 0x50(r30)
/* 802A3F94  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 802A3F98  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3F9C  48 00 00 14 */	b lbl_802A3FB0
lbl_802A3FA0:
/* 802A3FA0  40 82 00 10 */	bne lbl_802A3FB0
/* 802A3FA4  38 00 00 00 */	li r0, 0
/* 802A3FA8  90 1E 00 50 */	stw r0, 0x50(r30)
/* 802A3FAC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
lbl_802A3FB0:
/* 802A3FB0  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 802A3FB4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802A3FB8  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 802A3FBC  28 03 00 01 */	cmplwi r3, 1
/* 802A3FC0  40 81 00 18 */	ble lbl_802A3FD8
/* 802A3FC4  38 03 FF FF */	addi r0, r3, -1
/* 802A3FC8  90 1E 00 44 */	stw r0, 0x44(r30)
/* 802A3FCC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 802A3FD0  EC 21 00 2A */	fadds f1, f1, f0
/* 802A3FD4  48 00 00 14 */	b lbl_802A3FE8
lbl_802A3FD8:
/* 802A3FD8  40 82 00 10 */	bne lbl_802A3FE8
/* 802A3FDC  38 00 00 00 */	li r0, 0
/* 802A3FE0  90 1E 00 44 */	stw r0, 0x44(r30)
/* 802A3FE4  C0 3E 00 40 */	lfs f1, 0x40(r30)
lbl_802A3FE8:
/* 802A3FE8  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 802A3FEC  83 FE 00 58 */	lwz r31, 0x58(r30)
/* 802A3FF0  48 00 00 10 */	b lbl_802A4000
lbl_802A3FF4:
/* 802A3FF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A3FF8  4B FF F8 95 */	bl JAIStreamMgr_calc___9JAIStreamFv
/* 802A3FFC  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A4000:
/* 802A4000  28 1F 00 00 */	cmplwi r31, 0
/* 802A4004  40 82 FF F0 */	bne lbl_802A3FF4
/* 802A4008  7F C3 F3 78 */	mr r3, r30
/* 802A400C  4B FF FD 65 */	bl freeDeadStream___12JAIStreamMgrFv
/* 802A4010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4014  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A4018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A401C  7C 08 03 A6 */	mtlr r0
/* 802A4020  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4024  4E 80 00 20 */	blr 
