lbl_802D7168:
/* 802D7168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D716C  7C 08 02 A6 */	mflr r0
/* 802D7170  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7174  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7178  48 08 B0 61 */	bl _savegpr_28
/* 802D717C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7180  7C 9F 23 78 */	mr r31, r4
/* 802D7184  41 82 01 08 */	beq lbl_802D728C
/* 802D7188  3C 60 80 3D */	lis r3, __vt__14JKRAramArchive@ha /* 0x803CC348@ha */
/* 802D718C  38 03 C3 48 */	addi r0, r3, __vt__14JKRAramArchive@l /* 0x803CC348@l */
/* 802D7190  90 1E 00 00 */	stw r0, 0(r30)
/* 802D7194  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 802D7198  28 00 00 01 */	cmplwi r0, 1
/* 802D719C  40 82 00 D4 */	bne lbl_802D7270
/* 802D71A0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 802D71A4  28 00 00 00 */	cmplwi r0, 0
/* 802D71A8  41 82 00 4C */	beq lbl_802D71F4
/* 802D71AC  83 BE 00 4C */	lwz r29, 0x4c(r30)
/* 802D71B0  3B 80 00 00 */	li r28, 0
/* 802D71B4  48 00 00 20 */	b lbl_802D71D4
lbl_802D71B8:
/* 802D71B8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D71BC  28 03 00 00 */	cmplwi r3, 0
/* 802D71C0  41 82 00 0C */	beq lbl_802D71CC
/* 802D71C4  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D71C8  4B FF 73 39 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D71CC:
/* 802D71CC  3B BD 00 14 */	addi r29, r29, 0x14
/* 802D71D0  3B 9C 00 01 */	addi r28, r28, 1
lbl_802D71D4:
/* 802D71D4  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 802D71D8  80 03 00 08 */	lwz r0, 8(r3)
/* 802D71DC  7C 1C 00 40 */	cmplw r28, r0
/* 802D71E0  41 80 FF D8 */	blt lbl_802D71B8
/* 802D71E4  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D71E8  4B FF 73 19 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D71EC  38 00 00 00 */	li r0, 0
/* 802D71F0  90 1E 00 44 */	stw r0, 0x44(r30)
lbl_802D71F4:
/* 802D71F4  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802D71F8  28 03 00 00 */	cmplwi r3, 0
/* 802D71FC  41 82 00 14 */	beq lbl_802D7210
/* 802D7200  38 80 00 00 */	li r4, 0
/* 802D7204  4B FF 72 FD */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D7208  38 00 00 00 */	li r0, 0
/* 802D720C  90 1E 00 50 */	stw r0, 0x50(r30)
lbl_802D7210:
/* 802D7210  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802D7214  28 03 00 00 */	cmplwi r3, 0
/* 802D7218  41 82 00 1C */	beq lbl_802D7234
/* 802D721C  41 82 00 18 */	beq lbl_802D7234
/* 802D7220  38 80 00 01 */	li r4, 1
/* 802D7224  81 83 00 00 */	lwz r12, 0(r3)
/* 802D7228  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D722C  7D 89 03 A6 */	mtctr r12
/* 802D7230  4E 80 04 21 */	bctrl 
lbl_802D7234:
/* 802D7234  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 802D7238  28 03 00 00 */	cmplwi r3, 0
/* 802D723C  41 82 00 1C */	beq lbl_802D7258
/* 802D7240  41 82 00 18 */	beq lbl_802D7258
/* 802D7244  38 80 00 01 */	li r4, 1
/* 802D7248  81 83 00 00 */	lwz r12, 0(r3)
/* 802D724C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D7250  7D 89 03 A6 */	mtctr r12
/* 802D7254  4E 80 04 21 */	bctrl 
lbl_802D7258:
/* 802D7258  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D725C  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l /* 0x80434354@l */
/* 802D7260  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D7264  48 00 4E F9 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D7268  38 00 00 00 */	li r0, 0
/* 802D726C  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_802D7270:
/* 802D7270  7F C3 F3 78 */	mr r3, r30
/* 802D7274  38 80 00 00 */	li r4, 0
/* 802D7278  4B FF F0 BD */	bl __dt__10JKRArchiveFv
/* 802D727C  7F E0 07 35 */	extsh. r0, r31
/* 802D7280  40 81 00 0C */	ble lbl_802D728C
/* 802D7284  7F C3 F3 78 */	mr r3, r30
/* 802D7288  4B FF 7A B5 */	bl __dl__FPv
lbl_802D728C:
/* 802D728C  7F C3 F3 78 */	mr r3, r30
/* 802D7290  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7294  48 08 AF 91 */	bl _restgpr_28
/* 802D7298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D729C  7C 08 03 A6 */	mtlr r0
/* 802D72A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D72A4  4E 80 00 20 */	blr 
