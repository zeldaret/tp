lbl_8029F9C4:
/* 8029F9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F9C8  7C 08 02 A6 */	mflr r0
/* 8029F9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F9D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8029F9D8  7C 7E 1B 78 */	mr r30, r3
/* 8029F9DC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8029F9E0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8029F9E4  28 03 00 01 */	cmplwi r3, 1
/* 8029F9E8  40 81 00 18 */	ble lbl_8029FA00
/* 8029F9EC  38 03 FF FF */	addi r0, r3, -1
/* 8029F9F0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8029F9F4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8029F9F8  EC 21 00 2A */	fadds f1, f1, f0
/* 8029F9FC  48 00 00 14 */	b lbl_8029FA10
lbl_8029FA00:
/* 8029FA00  40 82 00 10 */	bne lbl_8029FA10
/* 8029FA04  38 00 00 00 */	li r0, 0
/* 8029FA08  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8029FA0C  C0 3E 00 20 */	lfs f1, 0x20(r30)
lbl_8029FA10:
/* 8029FA10  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8029FA14  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8029FA18  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 8029FA1C  28 03 00 01 */	cmplwi r3, 1
/* 8029FA20  40 81 00 18 */	ble lbl_8029FA38
/* 8029FA24  38 03 FF FF */	addi r0, r3, -1
/* 8029FA28  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8029FA2C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8029FA30  EC 21 00 2A */	fadds f1, f1, f0
/* 8029FA34  48 00 00 14 */	b lbl_8029FA48
lbl_8029FA38:
/* 8029FA38  40 82 00 10 */	bne lbl_8029FA48
/* 8029FA3C  38 00 00 00 */	li r0, 0
/* 8029FA40  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8029FA44  C0 3E 00 2C */	lfs f1, 0x2c(r30)
lbl_8029FA48:
/* 8029FA48  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8029FA4C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8029FA50  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8029FA54  28 03 00 01 */	cmplwi r3, 1
/* 8029FA58  40 81 00 18 */	ble lbl_8029FA70
/* 8029FA5C  38 03 FF FF */	addi r0, r3, -1
/* 8029FA60  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8029FA64  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8029FA68  EC 21 00 2A */	fadds f1, f1, f0
/* 8029FA6C  48 00 00 14 */	b lbl_8029FA80
lbl_8029FA70:
/* 8029FA70  40 82 00 10 */	bne lbl_8029FA80
/* 8029FA74  38 00 00 00 */	li r0, 0
/* 8029FA78  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8029FA7C  C0 3E 00 38 */	lfs f1, 0x38(r30)
lbl_8029FA80:
/* 8029FA80  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8029FA84  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8029FA88  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8029FA8C  28 03 00 01 */	cmplwi r3, 1
/* 8029FA90  40 81 00 18 */	ble lbl_8029FAA8
/* 8029FA94  38 03 FF FF */	addi r0, r3, -1
/* 8029FA98  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8029FA9C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8029FAA0  EC 21 00 2A */	fadds f1, f1, f0
/* 8029FAA4  48 00 00 14 */	b lbl_8029FAB8
lbl_8029FAA8:
/* 8029FAA8  40 82 00 10 */	bne lbl_8029FAB8
/* 8029FAAC  38 00 00 00 */	li r0, 0
/* 8029FAB0  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8029FAB4  C0 3E 00 50 */	lfs f1, 0x50(r30)
lbl_8029FAB8:
/* 8029FAB8  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 8029FABC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8029FAC0  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 8029FAC4  28 03 00 01 */	cmplwi r3, 1
/* 8029FAC8  40 81 00 18 */	ble lbl_8029FAE0
/* 8029FACC  38 03 FF FF */	addi r0, r3, -1
/* 8029FAD0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8029FAD4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8029FAD8  EC 21 00 2A */	fadds f1, f1, f0
/* 8029FADC  48 00 00 14 */	b lbl_8029FAF0
lbl_8029FAE0:
/* 8029FAE0  40 82 00 10 */	bne lbl_8029FAF0
/* 8029FAE4  38 00 00 00 */	li r0, 0
/* 8029FAE8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8029FAEC  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_8029FAF0:
/* 8029FAF0  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8029FAF4  83 FE 00 58 */	lwz r31, 0x58(r30)
/* 8029FAF8  48 00 00 10 */	b lbl_8029FB08
lbl_8029FAFC:
/* 8029FAFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FB00  4B FF F9 CD */	bl JAISeCategoryMgr_calc___5JAISeFv
/* 8029FB04  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8029FB08:
/* 8029FB08  28 1F 00 00 */	cmplwi r31, 0
/* 8029FB0C  40 82 FF F0 */	bne lbl_8029FAFC
/* 8029FB10  7F C3 F3 78 */	mr r3, r30
/* 8029FB14  48 00 02 2D */	bl sortByPriority___16JAISeCategoryMgrFv
/* 8029FB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FB1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029FB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FB24  7C 08 03 A6 */	mtlr r0
/* 8029FB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FB2C  4E 80 00 20 */	blr 
