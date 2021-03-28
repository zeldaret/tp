lbl_802F11E8:
/* 802F11E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F11EC  7C 08 02 A6 */	mflr r0
/* 802F11F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F11F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802F11F8  48 07 0F D9 */	bl _savegpr_26
/* 802F11FC  7C 7A 1B 78 */	mr r26, r3
/* 802F1200  7C 9B 23 78 */	mr r27, r4
/* 802F1204  7C BC 2B 78 */	mr r28, r5
/* 802F1208  28 1B 00 08 */	cmplwi r27, 8
/* 802F120C  41 80 00 0C */	blt lbl_802F1218
/* 802F1210  38 60 00 00 */	li r3, 0
/* 802F1214  48 00 00 94 */	b lbl_802F12A8
lbl_802F1218:
/* 802F1218  28 1C 00 00 */	cmplwi r28, 0
/* 802F121C  41 82 00 70 */	beq lbl_802F128C
/* 802F1220  57 7D 10 3A */	slwi r29, r27, 2
/* 802F1224  7F DA EA 14 */	add r30, r26, r29
/* 802F1228  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 802F122C  28 03 00 00 */	cmplwi r3, 0
/* 802F1230  40 82 00 38 */	bne lbl_802F1268
/* 802F1234  38 60 00 18 */	li r3, 0x18
/* 802F1238  4B FD DA 15 */	bl __nw__FUl
/* 802F123C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802F1240  41 82 00 10 */	beq lbl_802F1250
/* 802F1244  7F 64 DB 78 */	mr r4, r27
/* 802F1248  7F 85 E3 78 */	mr r5, r28
/* 802F124C  4B FE D6 45 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802F1250:
/* 802F1250  93 FE 01 8C */	stw r31, 0x18c(r30)
/* 802F1254  80 1E 01 8C */	lwz r0, 0x18c(r30)
/* 802F1258  28 00 00 00 */	cmplwi r0, 0
/* 802F125C  40 82 00 14 */	bne lbl_802F1270
/* 802F1260  38 60 00 00 */	li r3, 0
/* 802F1264  48 00 00 44 */	b lbl_802F12A8
lbl_802F1268:
/* 802F1268  38 80 00 00 */	li r4, 0
/* 802F126C  4B FE D6 25 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802F1270:
/* 802F1270  7C 7A EA 14 */	add r3, r26, r29
/* 802F1274  80 63 01 6C */	lwz r3, 0x16c(r3)
/* 802F1278  28 03 00 00 */	cmplwi r3, 0
/* 802F127C  41 82 00 28 */	beq lbl_802F12A4
/* 802F1280  80 9E 01 8C */	lwz r4, 0x18c(r30)
/* 802F1284  4B FE D3 2D */	bl attachPalette__10JUTTextureFP10JUTPalette
/* 802F1288  48 00 00 1C */	b lbl_802F12A4
lbl_802F128C:
/* 802F128C  57 60 10 3A */	slwi r0, r27, 2
/* 802F1290  7F BA 02 14 */	add r29, r26, r0
/* 802F1294  80 7D 01 8C */	lwz r3, 0x18c(r29)
/* 802F1298  4B FD DA A5 */	bl __dl__FPv
/* 802F129C  38 00 00 00 */	li r0, 0
/* 802F12A0  90 1D 01 8C */	stw r0, 0x18c(r29)
lbl_802F12A4:
/* 802F12A4  38 60 00 01 */	li r3, 1
lbl_802F12A8:
/* 802F12A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F12AC  48 07 0F 71 */	bl _restgpr_26
/* 802F12B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F12B4  7C 08 03 A6 */	mtlr r0
/* 802F12B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802F12BC  4E 80 00 20 */	blr 
