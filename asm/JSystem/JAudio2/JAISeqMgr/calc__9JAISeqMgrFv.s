lbl_802A1C90:
/* 802A1C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1C94  7C 08 02 A6 */	mflr r0
/* 802A1C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A1CA4  7C 7E 1B 78 */	mr r30, r3
/* 802A1CA8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802A1CAC  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A1CB0  28 03 00 01 */	cmplwi r3, 1
/* 802A1CB4  40 81 00 18 */	ble lbl_802A1CCC
/* 802A1CB8  38 03 FF FF */	addi r0, r3, -1
/* 802A1CBC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802A1CC0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802A1CC4  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1CC8  48 00 00 14 */	b lbl_802A1CDC
lbl_802A1CCC:
/* 802A1CCC  40 82 00 10 */	bne lbl_802A1CDC
/* 802A1CD0  38 00 00 00 */	li r0, 0
/* 802A1CD4  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802A1CD8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
lbl_802A1CDC:
/* 802A1CDC  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 802A1CE0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 802A1CE4  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 802A1CE8  28 03 00 01 */	cmplwi r3, 1
/* 802A1CEC  40 81 00 18 */	ble lbl_802A1D04
/* 802A1CF0  38 03 FF FF */	addi r0, r3, -1
/* 802A1CF4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802A1CF8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 802A1CFC  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1D00  48 00 00 14 */	b lbl_802A1D14
lbl_802A1D04:
/* 802A1D04  40 82 00 10 */	bne lbl_802A1D14
/* 802A1D08  38 00 00 00 */	li r0, 0
/* 802A1D0C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802A1D10  C0 3E 00 38 */	lfs f1, 0x38(r30)
lbl_802A1D14:
/* 802A1D14  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 802A1D18  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 802A1D1C  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 802A1D20  28 03 00 01 */	cmplwi r3, 1
/* 802A1D24  40 81 00 18 */	ble lbl_802A1D3C
/* 802A1D28  38 03 FF FF */	addi r0, r3, -1
/* 802A1D2C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 802A1D30  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 802A1D34  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1D38  48 00 00 14 */	b lbl_802A1D4C
lbl_802A1D3C:
/* 802A1D3C  40 82 00 10 */	bne lbl_802A1D4C
/* 802A1D40  38 00 00 00 */	li r0, 0
/* 802A1D44  90 1E 00 48 */	stw r0, 0x48(r30)
/* 802A1D48  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_802A1D4C:
/* 802A1D4C  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 802A1D50  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 802A1D54  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 802A1D58  28 03 00 01 */	cmplwi r3, 1
/* 802A1D5C  40 81 00 18 */	ble lbl_802A1D74
/* 802A1D60  38 03 FF FF */	addi r0, r3, -1
/* 802A1D64  90 1E 00 60 */	stw r0, 0x60(r30)
/* 802A1D68  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 802A1D6C  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1D70  48 00 00 14 */	b lbl_802A1D84
lbl_802A1D74:
/* 802A1D74  40 82 00 10 */	bne lbl_802A1D84
/* 802A1D78  38 00 00 00 */	li r0, 0
/* 802A1D7C  90 1E 00 60 */	stw r0, 0x60(r30)
/* 802A1D80  C0 3E 00 5C */	lfs f1, 0x5c(r30)
lbl_802A1D84:
/* 802A1D84  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 802A1D88  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 802A1D8C  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 802A1D90  28 03 00 01 */	cmplwi r3, 1
/* 802A1D94  40 81 00 18 */	ble lbl_802A1DAC
/* 802A1D98  38 03 FF FF */	addi r0, r3, -1
/* 802A1D9C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 802A1DA0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 802A1DA4  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1DA8  48 00 00 14 */	b lbl_802A1DBC
lbl_802A1DAC:
/* 802A1DAC  40 82 00 10 */	bne lbl_802A1DBC
/* 802A1DB0  38 00 00 00 */	li r0, 0
/* 802A1DB4  90 1E 00 54 */	stw r0, 0x54(r30)
/* 802A1DB8  C0 3E 00 50 */	lfs f1, 0x50(r30)
lbl_802A1DBC:
/* 802A1DBC  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 802A1DC0  83 FE 00 64 */	lwz r31, 0x64(r30)
/* 802A1DC4  48 00 00 10 */	b lbl_802A1DD4
lbl_802A1DC8:
/* 802A1DC8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A1DCC  4B FF F2 C1 */	bl JAISeqMgr_calc___6JAISeqFv
/* 802A1DD0  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A1DD4:
/* 802A1DD4  28 1F 00 00 */	cmplwi r31, 0
/* 802A1DD8  40 82 FF F0 */	bne lbl_802A1DC8
/* 802A1DDC  7F C3 F3 78 */	mr r3, r30
/* 802A1DE0  4B FF FC 29 */	bl freeDeadSeq___9JAISeqMgrFv
/* 802A1DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1DE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A1DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1DF0  7C 08 03 A6 */	mtlr r0
/* 802A1DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1DF8  4E 80 00 20 */	blr 
