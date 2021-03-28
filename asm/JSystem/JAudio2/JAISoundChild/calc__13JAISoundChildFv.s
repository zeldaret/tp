lbl_802A2B7C:
/* 802A2B7C  C0 23 00 00 */	lfs f1, 0(r3)
/* 802A2B80  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802A2B84  28 04 00 01 */	cmplwi r4, 1
/* 802A2B88  40 81 00 18 */	ble lbl_802A2BA0
/* 802A2B8C  38 04 FF FF */	addi r0, r4, -1
/* 802A2B90  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2B94  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802A2B98  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2B9C  48 00 00 14 */	b lbl_802A2BB0
lbl_802A2BA0:
/* 802A2BA0  40 82 00 10 */	bne lbl_802A2BB0
/* 802A2BA4  38 00 00 00 */	li r0, 0
/* 802A2BA8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2BAC  C0 23 00 18 */	lfs f1, 0x18(r3)
lbl_802A2BB0:
/* 802A2BB0  D0 23 00 00 */	stfs f1, 0(r3)
/* 802A2BB4  C0 23 00 08 */	lfs f1, 8(r3)
/* 802A2BB8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 802A2BBC  28 04 00 01 */	cmplwi r4, 1
/* 802A2BC0  40 81 00 18 */	ble lbl_802A2BD8
/* 802A2BC4  38 04 FF FF */	addi r0, r4, -1
/* 802A2BC8  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2BCC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802A2BD0  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2BD4  48 00 00 14 */	b lbl_802A2BE8
lbl_802A2BD8:
/* 802A2BD8  40 82 00 10 */	bne lbl_802A2BE8
/* 802A2BDC  38 00 00 00 */	li r0, 0
/* 802A2BE0  90 03 00 28 */	stw r0, 0x28(r3)
/* 802A2BE4  C0 23 00 24 */	lfs f1, 0x24(r3)
lbl_802A2BE8:
/* 802A2BE8  D0 23 00 08 */	stfs f1, 8(r3)
/* 802A2BEC  C0 23 00 04 */	lfs f1, 4(r3)
/* 802A2BF0  80 83 00 34 */	lwz r4, 0x34(r3)
/* 802A2BF4  28 04 00 01 */	cmplwi r4, 1
/* 802A2BF8  40 81 00 18 */	ble lbl_802A2C10
/* 802A2BFC  38 04 FF FF */	addi r0, r4, -1
/* 802A2C00  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2C04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802A2C08  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C0C  48 00 00 14 */	b lbl_802A2C20
lbl_802A2C10:
/* 802A2C10  40 82 00 10 */	bne lbl_802A2C20
/* 802A2C14  38 00 00 00 */	li r0, 0
/* 802A2C18  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2C1C  C0 23 00 30 */	lfs f1, 0x30(r3)
lbl_802A2C20:
/* 802A2C20  D0 23 00 04 */	stfs f1, 4(r3)
/* 802A2C24  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802A2C28  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 802A2C2C  28 04 00 01 */	cmplwi r4, 1
/* 802A2C30  40 81 00 18 */	ble lbl_802A2C48
/* 802A2C34  38 04 FF FF */	addi r0, r4, -1
/* 802A2C38  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2C3C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802A2C40  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C44  48 00 00 14 */	b lbl_802A2C58
lbl_802A2C48:
/* 802A2C48  40 82 00 10 */	bne lbl_802A2C58
/* 802A2C4C  38 00 00 00 */	li r0, 0
/* 802A2C50  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802A2C54  C0 23 00 48 */	lfs f1, 0x48(r3)
lbl_802A2C58:
/* 802A2C58  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802A2C5C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802A2C60  80 83 00 40 */	lwz r4, 0x40(r3)
/* 802A2C64  28 04 00 01 */	cmplwi r4, 1
/* 802A2C68  40 81 00 18 */	ble lbl_802A2C80
/* 802A2C6C  38 04 FF FF */	addi r0, r4, -1
/* 802A2C70  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2C74  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802A2C78  EC 21 00 2A */	fadds f1, f1, f0
/* 802A2C7C  48 00 00 14 */	b lbl_802A2C90
lbl_802A2C80:
/* 802A2C80  40 82 00 10 */	bne lbl_802A2C90
/* 802A2C84  38 00 00 00 */	li r0, 0
/* 802A2C88  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2C8C  C0 23 00 3C */	lfs f1, 0x3c(r3)
lbl_802A2C90:
/* 802A2C90  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802A2C94  4E 80 00 20 */	blr 
