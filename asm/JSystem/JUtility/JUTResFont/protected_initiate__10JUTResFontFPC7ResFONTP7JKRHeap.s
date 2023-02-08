lbl_802DF13C:
/* 802DF13C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF140  7C 08 02 A6 */	mflr r0
/* 802DF144  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF148  39 61 00 20 */	addi r11, r1, 0x20
/* 802DF14C  48 08 30 91 */	bl _savegpr_29
/* 802DF150  7C 7D 1B 78 */	mr r29, r3
/* 802DF154  7C 9E 23 78 */	mr r30, r4
/* 802DF158  7C BF 2B 78 */	mr r31, r5
/* 802DF15C  4B FF FF 31 */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DF160  7F A3 EB 78 */	mr r3, r29
/* 802DF164  4B FF FF 4D */	bl initialize_state__10JUTResFontFv
/* 802DF168  7F A3 EB 78 */	mr r3, r29
/* 802DF16C  4B FF FB B9 */	bl initialize_state__7JUTFontFv
/* 802DF170  28 1E 00 00 */	cmplwi r30, 0
/* 802DF174  40 82 00 0C */	bne lbl_802DF180
/* 802DF178  38 60 00 00 */	li r3, 0
/* 802DF17C  48 00 00 B4 */	b lbl_802DF230
lbl_802DF180:
/* 802DF180  93 DD 00 48 */	stw r30, 0x48(r29)
/* 802DF184  38 00 00 01 */	li r0, 1
/* 802DF188  98 1D 00 04 */	stb r0, 4(r29)
/* 802DF18C  7F A3 EB 78 */	mr r3, r29
/* 802DF190  48 00 00 B9 */	bl countBlock__10JUTResFontFv
/* 802DF194  A0 9D 00 64 */	lhz r4, 0x64(r29)
/* 802DF198  A0 7D 00 60 */	lhz r3, 0x60(r29)
/* 802DF19C  A0 1D 00 62 */	lhz r0, 0x62(r29)
/* 802DF1A0  7C 00 22 14 */	add r0, r0, r4
/* 802DF1A4  7C 03 02 14 */	add r0, r3, r0
/* 802DF1A8  54 03 10 3A */	slwi r3, r0, 2
/* 802DF1AC  7F E4 FB 78 */	mr r4, r31
/* 802DF1B0  38 A0 00 00 */	li r5, 0
/* 802DF1B4  4B FE FB 5D */	bl __nwa__FUlP7JKRHeapi
/* 802DF1B8  90 7D 00 50 */	stw r3, 0x50(r29)
/* 802DF1BC  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 802DF1C0  28 03 00 00 */	cmplwi r3, 0
/* 802DF1C4  40 82 00 0C */	bne lbl_802DF1D0
/* 802DF1C8  38 60 00 00 */	li r3, 0
/* 802DF1CC  48 00 00 64 */	b lbl_802DF230
lbl_802DF1D0:
/* 802DF1D0  A0 1D 00 60 */	lhz r0, 0x60(r29)
/* 802DF1D4  28 00 00 00 */	cmplwi r0, 0
/* 802DF1D8  41 82 00 14 */	beq lbl_802DF1EC
/* 802DF1DC  90 7D 00 54 */	stw r3, 0x54(r29)
/* 802DF1E0  A0 1D 00 60 */	lhz r0, 0x60(r29)
/* 802DF1E4  54 00 10 3A */	slwi r0, r0, 2
/* 802DF1E8  7C 63 02 14 */	add r3, r3, r0
lbl_802DF1EC:
/* 802DF1EC  A0 1D 00 62 */	lhz r0, 0x62(r29)
/* 802DF1F0  28 00 00 00 */	cmplwi r0, 0
/* 802DF1F4  41 82 00 14 */	beq lbl_802DF208
/* 802DF1F8  90 7D 00 58 */	stw r3, 0x58(r29)
/* 802DF1FC  A0 1D 00 62 */	lhz r0, 0x62(r29)
/* 802DF200  54 00 10 3A */	slwi r0, r0, 2
/* 802DF204  7C 63 02 14 */	add r3, r3, r0
lbl_802DF208:
/* 802DF208  A0 1D 00 64 */	lhz r0, 0x64(r29)
/* 802DF20C  28 00 00 00 */	cmplwi r0, 0
/* 802DF210  41 82 00 08 */	beq lbl_802DF218
/* 802DF214  90 7D 00 5C */	stw r3, 0x5c(r29)
lbl_802DF218:
/* 802DF218  7F A3 EB 78 */	mr r3, r29
/* 802DF21C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802DF220  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802DF224  7D 89 03 A6 */	mtctr r12
/* 802DF228  4E 80 04 21 */	bctrl 
/* 802DF22C  38 60 00 01 */	li r3, 1
lbl_802DF230:
/* 802DF230  39 61 00 20 */	addi r11, r1, 0x20
/* 802DF234  48 08 2F F5 */	bl _restgpr_29
/* 802DF238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF23C  7C 08 03 A6 */	mtlr r0
/* 802DF240  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF244  4E 80 00 20 */	blr 
