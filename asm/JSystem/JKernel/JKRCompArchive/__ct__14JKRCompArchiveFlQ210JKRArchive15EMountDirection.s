lbl_802D87D4:
/* 802D87D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D87D8  7C 08 02 A6 */	mflr r0
/* 802D87DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D87E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D87E4  48 08 99 F9 */	bl _savegpr_29
/* 802D87E8  7C 7D 1B 78 */	mr r29, r3
/* 802D87EC  7C 9E 23 78 */	mr r30, r4
/* 802D87F0  7C BF 2B 78 */	mr r31, r5
/* 802D87F4  38 A0 00 04 */	li r5, 4
/* 802D87F8  4B FF DA 9D */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D87FC  3C 60 80 3D */	lis r3, __vt__14JKRCompArchive@ha
/* 802D8800  38 03 C3 E8 */	addi r0, r3, __vt__14JKRCompArchive@l
/* 802D8804  90 1D 00 00 */	stw r0, 0(r29)
/* 802D8808  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D880C  7F A3 EB 78 */	mr r3, r29
/* 802D8810  7F C4 F3 78 */	mr r4, r30
/* 802D8814  48 00 01 A9 */	bl open__14JKRCompArchiveFl
/* 802D8818  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D881C  40 82 00 0C */	bne lbl_802D8828
/* 802D8820  7F A3 EB 78 */	mr r3, r29
/* 802D8824  48 00 00 40 */	b lbl_802D8864
lbl_802D8828:
/* 802D8828  3C 60 52 41 */	lis r3, 0x5241 /* 0x52415243@ha */
/* 802D882C  38 03 52 43 */	addi r0, r3, 0x5243 /* 0x52415243@l */
/* 802D8830  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D8834  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D8838  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D883C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D8840  7C 04 02 14 */	add r0, r4, r0
/* 802D8844  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D8848  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D884C  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D8850  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D8854  48 00 37 9D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D8858  38 00 00 01 */	li r0, 1
/* 802D885C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D8860  7F A3 EB 78 */	mr r3, r29
lbl_802D8864:
/* 802D8864  39 61 00 20 */	addi r11, r1, 0x20
/* 802D8868  48 08 99 C1 */	bl _restgpr_29
/* 802D886C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D8870  7C 08 03 A6 */	mtlr r0
/* 802D8874  38 21 00 20 */	addi r1, r1, 0x20
/* 802D8878  4E 80 00 20 */	blr 
