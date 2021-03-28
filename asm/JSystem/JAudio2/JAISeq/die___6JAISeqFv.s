lbl_802A1180:
/* 802A1180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1184  7C 08 02 A6 */	mflr r0
/* 802A1188  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A118C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A1190  48 0C 10 45 */	bl _savegpr_27
/* 802A1194  7C 7D 1B 78 */	mr r29, r3
/* 802A1198  3B C0 00 00 */	li r30, 0
/* 802A119C  3B 80 00 00 */	li r28, 0
lbl_802A11A0:
/* 802A11A0  3B FC 02 F0 */	addi r31, r28, 0x2f0
/* 802A11A4  7F 7D F8 2E */	lwzx r27, r29, r31
/* 802A11A8  28 1B 00 00 */	cmplwi r27, 0
/* 802A11AC  41 82 00 5C */	beq lbl_802A1208
/* 802A11B0  88 0D 8D 98 */	lbz r0, data_80451318(r13)
/* 802A11B4  7C 00 07 75 */	extsb. r0, r0
/* 802A11B8  40 82 00 34 */	bne lbl_802A11EC
/* 802A11BC  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A11C0  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A11C4  4B FE F6 85 */	bl __ct__17JASGenericMemPoolFv
/* 802A11C8  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A11CC  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A11D0  3C 80 80 2A */	lis r4, func_802A1268@ha
/* 802A11D4  38 84 12 68 */	addi r4, r4, func_802A1268@l
/* 802A11D8  3C A0 80 43 */	lis r5, lit_896@ha
/* 802A11DC  38 A5 40 A4 */	addi r5, r5, lit_896@l
/* 802A11E0  48 0C 0A 45 */	bl __register_global_object
/* 802A11E4  38 00 00 01 */	li r0, 1
/* 802A11E8  98 0D 8D 98 */	stb r0, data_80451318(r13)
lbl_802A11EC:
/* 802A11EC  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A11F0  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A11F4  7F 64 DB 78 */	mr r4, r27
/* 802A11F8  38 A0 00 64 */	li r5, 0x64
/* 802A11FC  4B FE F7 99 */	bl free__17JASGenericMemPoolFPvUl
/* 802A1200  38 00 00 00 */	li r0, 0
/* 802A1204  7C 1D F9 2E */	stwx r0, r29, r31
lbl_802A1208:
/* 802A1208  3B DE 00 01 */	addi r30, r30, 1
/* 802A120C  2C 1E 00 20 */	cmpwi r30, 0x20
/* 802A1210  3B 9C 00 04 */	addi r28, r28, 4
/* 802A1214  41 80 FF 8C */	blt lbl_802A11A0
/* 802A1218  80 9D 03 A8 */	lwz r4, 0x3a8(r29)
/* 802A121C  28 04 00 00 */	cmplwi r4, 0
/* 802A1220  41 82 00 20 */	beq lbl_802A1240
/* 802A1224  80 7D 03 A4 */	lwz r3, 0x3a4(r29)
/* 802A1228  81 83 00 00 */	lwz r12, 0(r3)
/* 802A122C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A1230  7D 89 03 A6 */	mtctr r12
/* 802A1234  4E 80 04 21 */	bctrl 
/* 802A1238  38 00 00 00 */	li r0, 0
/* 802A123C  90 1D 03 A8 */	stw r0, 0x3a8(r29)
lbl_802A1240:
/* 802A1240  7F A3 EB 78 */	mr r3, r29
/* 802A1244  4B FF FC 05 */	bl releaseChildTracks___6JAISeqFv
/* 802A1248  7F A3 EB 78 */	mr r3, r29
/* 802A124C  48 00 13 A5 */	bl die_JAISound___8JAISoundFv
/* 802A1250  39 61 00 20 */	addi r11, r1, 0x20
/* 802A1254  48 0C 0F CD */	bl _restgpr_27
/* 802A1258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A125C  7C 08 03 A6 */	mtlr r0
/* 802A1260  38 21 00 20 */	addi r1, r1, 0x20
/* 802A1264  4E 80 00 20 */	blr 
