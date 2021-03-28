lbl_8029A918:
/* 8029A918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A91C  7C 08 02 A6 */	mflr r0
/* 8029A920  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029A928  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029A92C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029A930  7C 9E 23 78 */	mr r30, r4
/* 8029A934  41 82 00 A0 */	beq lbl_8029A9D4
/* 8029A938  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029A93C  28 03 00 00 */	cmplwi r3, 0
/* 8029A940  41 82 00 08 */	beq lbl_8029A948
/* 8029A944  48 00 29 FD */	bl drop__13JASDSPChannelFv
lbl_8029A948:
/* 8029A948  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 8029A94C  28 0C 00 00 */	cmplwi r12, 0
/* 8029A950  41 82 00 1C */	beq lbl_8029A96C
/* 8029A954  38 60 00 02 */	li r3, 2
/* 8029A958  7F E4 FB 78 */	mr r4, r31
/* 8029A95C  38 A0 00 00 */	li r5, 0
/* 8029A960  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8029A964  7D 89 03 A6 */	mtctr r12
/* 8029A968  4E 80 04 21 */	bctrl 
lbl_8029A96C:
/* 8029A96C  7F C0 07 35 */	extsh. r0, r30
/* 8029A970  40 81 00 64 */	ble lbl_8029A9D4
/* 8029A974  88 0D 8C E2 */	lbz r0, struct_80451260+0x2(r13)
/* 8029A978  7C 00 07 75 */	extsb. r0, r0
/* 8029A97C  40 82 00 34 */	bne lbl_8029A9B0
/* 8029A980  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 8029A984  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 8029A988  4B FF 5E C1 */	bl __ct__17JASGenericMemPoolFv
/* 8029A98C  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 8029A990  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 8029A994  3C 80 80 29 */	lis r4, func_802978DC@ha
/* 8029A998  38 84 78 DC */	addi r4, r4, func_802978DC@l
/* 8029A99C  3C A0 80 43 */	lis r5, lit_556@ha
/* 8029A9A0  38 A5 1C 30 */	addi r5, r5, lit_556@l
/* 8029A9A4  48 0C 72 81 */	bl __register_global_object
/* 8029A9A8  38 00 00 01 */	li r0, 1
/* 8029A9AC  98 0D 8C E2 */	stb r0, struct_80451260+0x2(r13)
lbl_8029A9B0:
/* 8029A9B0  48 0A 2D 45 */	bl OSDisableInterrupts
/* 8029A9B4  90 61 00 08 */	stw r3, 8(r1)
/* 8029A9B8  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 8029A9BC  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 8029A9C0  7F E4 FB 78 */	mr r4, r31
/* 8029A9C4  38 A0 01 08 */	li r5, 0x108
/* 8029A9C8  4B FF 5F CD */	bl free__17JASGenericMemPoolFPvUl
/* 8029A9CC  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A9D0  48 0A 2D 4D */	bl OSRestoreInterrupts
lbl_8029A9D4:
/* 8029A9D4  7F E3 FB 78 */	mr r3, r31
/* 8029A9D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029A9DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029A9E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A9E4  7C 08 03 A6 */	mtlr r0
/* 8029A9E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A9EC  4E 80 00 20 */	blr 
