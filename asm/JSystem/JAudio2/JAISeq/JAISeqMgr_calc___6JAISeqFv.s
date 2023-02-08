lbl_802A108C:
/* 802A108C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1090  7C 08 02 A6 */	mflr r0
/* 802A1094  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A1098  39 61 00 20 */	addi r11, r1, 0x20
/* 802A109C  48 0C 11 41 */	bl _savegpr_29
/* 802A10A0  7C 7D 1B 78 */	mr r29, r3
/* 802A10A4  88 03 02 BD */	lbz r0, 0x2bd(r3)
/* 802A10A8  28 00 00 02 */	cmplwi r0, 2
/* 802A10AC  41 82 00 1C */	beq lbl_802A10C8
/* 802A10B0  88 1D 02 BD */	lbz r0, 0x2bd(r29)
/* 802A10B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802A10B8  40 82 00 1C */	bne lbl_802A10D4
/* 802A10BC  88 1D 00 1E */	lbz r0, 0x1e(r29)
/* 802A10C0  28 00 00 02 */	cmplwi r0, 2
/* 802A10C4  40 82 00 10 */	bne lbl_802A10D4
lbl_802A10C8:
/* 802A10C8  7F A3 EB 78 */	mr r3, r29
/* 802A10CC  48 00 00 B5 */	bl die___6JAISeqFv
/* 802A10D0  48 00 00 98 */	b lbl_802A1168
lbl_802A10D4:
/* 802A10D4  7F A3 EB 78 */	mr r3, r29
/* 802A10D8  48 00 15 E1 */	bl calc_JAISound___8JAISoundFv
/* 802A10DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A10E0  41 82 00 88 */	beq lbl_802A1168
/* 802A10E4  C0 3D 03 70 */	lfs f1, 0x370(r29)
/* 802A10E8  80 7D 03 7C */	lwz r3, 0x37c(r29)
/* 802A10EC  28 03 00 01 */	cmplwi r3, 1
/* 802A10F0  40 81 00 18 */	ble lbl_802A1108
/* 802A10F4  38 03 FF FF */	addi r0, r3, -1
/* 802A10F8  90 1D 03 7C */	stw r0, 0x37c(r29)
/* 802A10FC  C0 1D 03 74 */	lfs f0, 0x374(r29)
/* 802A1100  EC 21 00 2A */	fadds f1, f1, f0
/* 802A1104  48 00 00 14 */	b lbl_802A1118
lbl_802A1108:
/* 802A1108  40 82 00 10 */	bne lbl_802A1118
/* 802A110C  38 00 00 00 */	li r0, 0
/* 802A1110  90 1D 03 7C */	stw r0, 0x37c(r29)
/* 802A1114  C0 3D 03 78 */	lfs f1, 0x378(r29)
lbl_802A1118:
/* 802A1118  D0 3D 03 70 */	stfs f1, 0x370(r29)
/* 802A111C  3B C0 00 00 */	li r30, 0
/* 802A1120  3B E0 00 00 */	li r31, 0
lbl_802A1124:
/* 802A1124  38 1F 02 F0 */	addi r0, r31, 0x2f0
/* 802A1128  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802A112C  28 03 00 00 */	cmplwi r3, 0
/* 802A1130  41 82 00 08 */	beq lbl_802A1138
/* 802A1134  48 00 1A 49 */	bl calc__13JAISoundChildFv
lbl_802A1138:
/* 802A1138  3B DE 00 01 */	addi r30, r30, 1
/* 802A113C  2C 1E 00 20 */	cmpwi r30, 0x20
/* 802A1140  3B FF 00 04 */	addi r31, r31, 4
/* 802A1144  41 80 FF E0 */	blt lbl_802A1124
/* 802A1148  80 7D 03 A8 */	lwz r3, 0x3a8(r29)
/* 802A114C  28 03 00 00 */	cmplwi r3, 0
/* 802A1150  41 82 00 18 */	beq lbl_802A1168
/* 802A1154  7F A4 EB 78 */	mr r4, r29
/* 802A1158  81 83 00 00 */	lwz r12, 0(r3)
/* 802A115C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A1160  7D 89 03 A6 */	mtctr r12
/* 802A1164  4E 80 04 21 */	bctrl 
lbl_802A1168:
/* 802A1168  39 61 00 20 */	addi r11, r1, 0x20
/* 802A116C  48 0C 10 BD */	bl _restgpr_29
/* 802A1170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A1174  7C 08 03 A6 */	mtlr r0
/* 802A1178  38 21 00 20 */	addi r1, r1, 0x20
/* 802A117C  4E 80 00 20 */	blr 
