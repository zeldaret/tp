lbl_802FC118:
/* 802FC118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FC11C  7C 08 02 A6 */	mflr r0
/* 802FC120  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FC124  39 61 00 20 */	addi r11, r1, 0x20
/* 802FC128  48 06 60 B1 */	bl _savegpr_28
/* 802FC12C  7C 7C 1B 78 */	mr r28, r3
/* 802FC130  7C 9D 23 78 */	mr r29, r4
/* 802FC134  7C BE 2B 78 */	mr r30, r5
/* 802FC138  7C DF 33 78 */	mr r31, r6
/* 802FC13C  4B FF 9A BD */	bl __ct__7J2DPaneFv
/* 802FC140  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha /* 0x803CD1D8@ha */
/* 802FC144  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l /* 0x803CD1D8@l */
/* 802FC148  90 1C 00 00 */	stw r0, 0(r28)
/* 802FC14C  38 7C 01 0A */	addi r3, r28, 0x10a
/* 802FC150  3C 80 80 30 */	lis r4, func_802FF204@ha /* 0x802FF204@ha */
/* 802FC154  38 84 F2 04 */	addi r4, r4, func_802FF204@l /* 0x802FF204@l */
/* 802FC158  38 A0 00 00 */	li r5, 0
/* 802FC15C  38 C0 00 04 */	li r6, 4
/* 802FC160  38 E0 00 04 */	li r7, 4
/* 802FC164  48 06 5B FD */	bl __construct_array
/* 802FC168  38 00 00 00 */	li r0, 0
/* 802FC16C  90 1C 01 2C */	stw r0, 0x12c(r28)
/* 802FC170  38 00 FF FF */	li r0, -1
/* 802FC174  90 1C 01 30 */	stw r0, 0x130(r28)
/* 802FC178  90 1C 01 34 */	stw r0, 0x134(r28)
/* 802FC17C  38 7C 01 38 */	addi r3, r28, 0x138
/* 802FC180  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 802FC184  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 802FC188  38 A0 00 00 */	li r5, 0
/* 802FC18C  38 C0 00 04 */	li r6, 4
/* 802FC190  38 E0 00 04 */	li r7, 4
/* 802FC194  48 06 5B CD */	bl __construct_array
/* 802FC198  38 00 FF FF */	li r0, -1
/* 802FC19C  90 1C 01 48 */	stw r0, 0x148(r28)
/* 802FC1A0  90 1C 01 4C */	stw r0, 0x14c(r28)
/* 802FC1A4  7F 83 E3 78 */	mr r3, r28
/* 802FC1A8  7F A4 EB 78 */	mr r4, r29
/* 802FC1AC  7F C5 F3 78 */	mr r5, r30
/* 802FC1B0  7F E6 FB 78 */	mr r6, r31
/* 802FC1B4  48 00 07 35 */	bl private_readStream__10J2DPictureFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802FC1B8  7F 83 E3 78 */	mr r3, r28
/* 802FC1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802FC1C0  48 06 60 65 */	bl _restgpr_28
/* 802FC1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FC1C8  7C 08 03 A6 */	mtlr r0
/* 802FC1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802FC1D0  4E 80 00 20 */	blr 
