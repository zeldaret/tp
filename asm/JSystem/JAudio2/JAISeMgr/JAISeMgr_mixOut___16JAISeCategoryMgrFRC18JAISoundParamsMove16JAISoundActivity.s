lbl_8029FF18:
/* 8029FF18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8029FF1C  7C 08 02 A6 */	mflr r0
/* 8029FF20  90 01 00 44 */	stw r0, 0x44(r1)
/* 8029FF24  39 61 00 40 */	addi r11, r1, 0x40
/* 8029FF28  48 0C 22 B5 */	bl _savegpr_29
/* 8029FF2C  7C 7E 1B 78 */	mr r30, r3
/* 8029FF30  7C BD 2B 78 */	mr r29, r5
/* 8029FF34  C0 02 BD 8C */	lfs f0, lit_1040(r2)
/* 8029FF38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8029FF3C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8029FF40  C0 22 BD 90 */	lfs f1, lit_1041(r2)
/* 8029FF44  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8029FF48  C0 02 BD 94 */	lfs f0, lit_1042(r2)
/* 8029FF4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8029FF50  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8029FF54  38 61 00 18 */	addi r3, r1, 0x18
/* 8029FF58  38 BE 00 08 */	addi r5, r30, 8
/* 8029FF5C  4B FF E5 21 */	bl combine__14JASSoundParamsFRC14JASSoundParamsRC14JASSoundParams
/* 8029FF60  83 FE 00 58 */	lwz r31, 0x58(r30)
/* 8029FF64  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 8029FF68  7C 1E 03 78 */	mr r30, r0
/* 8029FF6C  2C 00 00 00 */	cmpwi r0, 0
/* 8029FF70  40 81 00 A4 */	ble lbl_802A0014
/* 8029FF74  48 00 00 28 */	b lbl_8029FF9C
lbl_8029FF78:
/* 8029FF78  88 1D 00 00 */	lbz r0, 0(r29)
/* 8029FF7C  98 01 00 14 */	stb r0, 0x14(r1)
/* 8029FF80  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FF84  38 80 00 01 */	li r4, 1
/* 8029FF88  38 A1 00 18 */	addi r5, r1, 0x18
/* 8029FF8C  38 C1 00 14 */	addi r6, r1, 0x14
/* 8029FF90  4B FF F3 75 */	bl JAISeCategoryMgr_mixOut___5JAISeFbRC14JASSoundParams16JAISoundActivity
/* 8029FF94  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 8029FF98  3B DE FF FF */	addi r30, r30, -1
lbl_8029FF9C:
/* 8029FF9C  28 1F 00 00 */	cmplwi r31, 0
/* 8029FFA0  41 82 00 44 */	beq lbl_8029FFE4
/* 8029FFA4  2C 1E 00 00 */	cmpwi r30, 0
/* 8029FFA8  40 81 00 3C */	ble lbl_8029FFE4
/* 8029FFAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FFB0  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 8029FFB4  3C 03 00 01 */	addis r0, r3, 1
/* 8029FFB8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8029FFBC  40 82 FF BC */	bne lbl_8029FF78
/* 8029FFC0  48 00 00 24 */	b lbl_8029FFE4
lbl_8029FFC4:
/* 8029FFC4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8029FFC8  98 01 00 10 */	stb r0, 0x10(r1)
/* 8029FFCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FFD0  38 80 00 00 */	li r4, 0
/* 8029FFD4  38 A1 00 18 */	addi r5, r1, 0x18
/* 8029FFD8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8029FFDC  4B FF F3 29 */	bl JAISeCategoryMgr_mixOut___5JAISeFbRC14JASSoundParams16JAISoundActivity
/* 8029FFE0  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8029FFE4:
/* 8029FFE4  28 1F 00 00 */	cmplwi r31, 0
/* 8029FFE8  40 82 FF DC */	bne lbl_8029FFC4
/* 8029FFEC  48 00 00 70 */	b lbl_802A005C
/* 8029FFF0  48 00 00 24 */	b lbl_802A0014
lbl_8029FFF4:
/* 8029FFF4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8029FFF8  98 01 00 0C */	stb r0, 0xc(r1)
/* 8029FFFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A0000  38 80 00 01 */	li r4, 1
/* 802A0004  38 A1 00 18 */	addi r5, r1, 0x18
/* 802A0008  38 C1 00 0C */	addi r6, r1, 0xc
/* 802A000C  4B FF F2 F9 */	bl JAISeCategoryMgr_mixOut___5JAISeFbRC14JASSoundParams16JAISoundActivity
/* 802A0010  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A0014:
/* 802A0014  28 1F 00 00 */	cmplwi r31, 0
/* 802A0018  41 82 00 3C */	beq lbl_802A0054
/* 802A001C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A0020  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 802A0024  3C 03 00 01 */	addis r0, r3, 1
/* 802A0028  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A002C  40 82 FF C8 */	bne lbl_8029FFF4
/* 802A0030  48 00 00 24 */	b lbl_802A0054
lbl_802A0034:
/* 802A0034  88 1D 00 00 */	lbz r0, 0(r29)
/* 802A0038  98 01 00 08 */	stb r0, 8(r1)
/* 802A003C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A0040  38 80 00 00 */	li r4, 0
/* 802A0044  38 A1 00 18 */	addi r5, r1, 0x18
/* 802A0048  38 C1 00 08 */	addi r6, r1, 8
/* 802A004C  4B FF F2 B9 */	bl JAISeCategoryMgr_mixOut___5JAISeFbRC14JASSoundParams16JAISoundActivity
/* 802A0050  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A0054:
/* 802A0054  28 1F 00 00 */	cmplwi r31, 0
/* 802A0058  40 82 FF DC */	bne lbl_802A0034
lbl_802A005C:
/* 802A005C  39 61 00 40 */	addi r11, r1, 0x40
/* 802A0060  48 0C 21 C9 */	bl _restgpr_29
/* 802A0064  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A0068  7C 08 03 A6 */	mtlr r0
/* 802A006C  38 21 00 40 */	addi r1, r1, 0x40
/* 802A0070  4E 80 00 20 */	blr 
