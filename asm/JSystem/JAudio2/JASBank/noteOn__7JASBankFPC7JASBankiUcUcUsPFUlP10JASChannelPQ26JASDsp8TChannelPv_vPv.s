lbl_80297930:
/* 80297930  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80297934  7C 08 02 A6 */	mflr r0
/* 80297938  90 01 00 64 */	stw r0, 0x64(r1)
/* 8029793C  39 61 00 60 */	addi r11, r1, 0x60
/* 80297940  48 0C A8 85 */	bl _savegpr_23
/* 80297944  7C 7A 1B 78 */	mr r26, r3
/* 80297948  7C DB 33 78 */	mr r27, r6
/* 8029794C  7C FC 3B 78 */	mr r28, r7
/* 80297950  7D 1D 43 78 */	mr r29, r8
/* 80297954  7D 3E 4B 78 */	mr r30, r9
/* 80297958  2C 04 00 F0 */	cmpwi r4, 0xf0
/* 8029795C  41 80 00 24 */	blt lbl_80297980
/* 80297960  38 64 FF 10 */	addi r3, r4, -240
/* 80297964  7C A4 2B 78 */	mr r4, r5
/* 80297968  7F 65 DB 78 */	mr r5, r27
/* 8029796C  7F 86 E3 78 */	mr r6, r28
/* 80297970  7F A7 EB 78 */	mr r7, r29
/* 80297974  7F C8 F3 78 */	mr r8, r30
/* 80297978  48 00 02 C9 */	bl noteOnOsc__7JASBankFiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 8029797C  48 00 02 AC */	b lbl_80297C28
lbl_80297980:
/* 80297980  28 1A 00 00 */	cmplwi r26, 0
/* 80297984  40 82 00 0C */	bne lbl_80297990
/* 80297988  38 60 00 00 */	li r3, 0
/* 8029798C  48 00 02 9C */	b lbl_80297C28
lbl_80297990:
/* 80297990  C0 02 BC 30 */	lfs f0, lit_248(r2)
/* 80297994  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80297998  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8029799C  C0 22 BC 34 */	lfs f1, lit_249(r2)
/* 802979A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802979A4  C0 02 BC 38 */	lfs f0, lit_250(r2)
/* 802979A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802979AC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802979B0  38 00 00 00 */	li r0, 0
/* 802979B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802979B8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802979BC  B0 01 00 26 */	sth r0, 0x26(r1)
/* 802979C0  98 01 00 28 */	stb r0, 0x28(r1)
/* 802979C4  98 01 00 29 */	stb r0, 0x29(r1)
/* 802979C8  98 01 00 2A */	stb r0, 0x2a(r1)
/* 802979CC  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 802979D0  7F E5 FB 78 */	mr r5, r31
/* 802979D4  57 66 06 3E */	clrlwi r6, r27, 0x18
/* 802979D8  38 E1 00 0C */	addi r7, r1, 0xc
/* 802979DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802979E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802979E4  7D 89 03 A6 */	mtctr r12
/* 802979E8  4E 80 04 21 */	bctrl 
/* 802979EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802979F0  40 82 00 0C */	bne lbl_802979FC
/* 802979F4  38 60 00 00 */	li r3, 0
/* 802979F8  48 00 02 30 */	b lbl_80297C28
lbl_802979FC:
/* 802979FC  80 7A 00 04 */	lwz r3, 4(r26)
/* 80297A00  28 03 00 00 */	cmplwi r3, 0
/* 80297A04  40 82 00 0C */	bne lbl_80297A10
/* 80297A08  38 60 00 00 */	li r3, 0
/* 80297A0C  48 00 02 1C */	b lbl_80297C28
lbl_80297A10:
/* 80297A10  A0 81 00 26 */	lhz r4, 0x26(r1)
/* 80297A14  81 83 00 00 */	lwz r12, 0(r3)
/* 80297A18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80297A1C  7D 89 03 A6 */	mtctr r12
/* 80297A20  4E 80 04 21 */	bctrl 
/* 80297A24  7C 77 1B 79 */	or. r23, r3, r3
/* 80297A28  40 82 00 0C */	bne lbl_80297A34
/* 80297A2C  38 60 00 00 */	li r3, 0
/* 80297A30  48 00 01 F8 */	b lbl_80297C28
lbl_80297A34:
/* 80297A34  81 83 00 00 */	lwz r12, 0(r3)
/* 80297A38  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80297A3C  7D 89 03 A6 */	mtctr r12
/* 80297A40  4E 80 04 21 */	bctrl 
/* 80297A44  7C 78 1B 79 */	or. r24, r3, r3
/* 80297A48  40 82 00 0C */	bne lbl_80297A54
/* 80297A4C  38 60 00 00 */	li r3, 0
/* 80297A50  48 00 01 D8 */	b lbl_80297C28
lbl_80297A54:
/* 80297A54  7E E3 BB 78 */	mr r3, r23
/* 80297A58  81 97 00 00 */	lwz r12, 0(r23)
/* 80297A5C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80297A60  7D 89 03 A6 */	mtctr r12
/* 80297A64  4E 80 04 21 */	bctrl 
/* 80297A68  7C 79 1B 79 */	or. r25, r3, r3
/* 80297A6C  40 82 00 0C */	bne lbl_80297A78
/* 80297A70  38 60 00 00 */	li r3, 0
/* 80297A74  48 00 01 B4 */	b lbl_80297C28
lbl_80297A78:
/* 80297A78  88 0D 8C E2 */	lbz r0, struct_80451260+0x2(r13)
/* 80297A7C  7C 00 07 75 */	extsb. r0, r0
/* 80297A80  40 82 00 34 */	bne lbl_80297AB4
/* 80297A84  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 80297A88  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 80297A8C  4B FF 8D BD */	bl __ct__17JASGenericMemPoolFv
/* 80297A90  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 80297A94  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 80297A98  3C 80 80 29 */	lis r4, func_802978DC@ha
/* 80297A9C  38 84 78 DC */	addi r4, r4, func_802978DC@l
/* 80297AA0  3C A0 80 43 */	lis r5, lit_156@ha
/* 80297AA4  38 A5 1B 48 */	addi r5, r5, lit_156@l
/* 80297AA8  48 0C A1 7D */	bl __register_global_object
/* 80297AAC  38 00 00 01 */	li r0, 1
/* 80297AB0  98 0D 8C E2 */	stb r0, struct_80451260+0x2(r13)
lbl_80297AB4:
/* 80297AB4  48 0A 5C 41 */	bl OSDisableInterrupts
/* 80297AB8  90 61 00 08 */	stw r3, 8(r1)
/* 80297ABC  3C 60 80 43 */	lis r3, data_80431B34@ha
/* 80297AC0  38 63 1B 34 */	addi r3, r3, data_80431B34@l
/* 80297AC4  38 80 01 08 */	li r4, 0x108
/* 80297AC8  4B FF 8E 81 */	bl alloc__17JASGenericMemPoolFUl
/* 80297ACC  7C 77 1B 78 */	mr r23, r3
/* 80297AD0  80 61 00 08 */	lwz r3, 8(r1)
/* 80297AD4  48 0A 5C 49 */	bl OSRestoreInterrupts
/* 80297AD8  28 17 00 00 */	cmplwi r23, 0
/* 80297ADC  41 82 00 18 */	beq lbl_80297AF4
/* 80297AE0  7E E3 BB 78 */	mr r3, r23
/* 80297AE4  7F A4 EB 78 */	mr r4, r29
/* 80297AE8  7F C5 F3 78 */	mr r5, r30
/* 80297AEC  48 00 2D 15 */	bl __ct__10JASChannelFPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 80297AF0  7C 77 1B 78 */	mr r23, r3
lbl_80297AF4:
/* 80297AF4  28 17 00 00 */	cmplwi r23, 0
/* 80297AF8  40 82 00 0C */	bne lbl_80297B04
/* 80297AFC  38 60 00 00 */	li r3, 0
/* 80297B00  48 00 01 28 */	b lbl_80297C28
lbl_80297B04:
/* 80297B04  B3 97 00 98 */	sth r28, 0x98(r23)
/* 80297B08  88 18 00 00 */	lbz r0, 0(r24)
/* 80297B0C  98 17 00 E0 */	stb r0, 0xe0(r23)
/* 80297B10  88 18 00 01 */	lbz r0, 1(r24)
/* 80297B14  98 17 00 E1 */	stb r0, 0xe1(r23)
/* 80297B18  88 18 00 02 */	lbz r0, 2(r24)
/* 80297B1C  98 17 00 E2 */	stb r0, 0xe2(r23)
/* 80297B20  C0 18 00 04 */	lfs f0, 4(r24)
/* 80297B24  D0 17 00 E4 */	stfs f0, 0xe4(r23)
/* 80297B28  80 18 00 08 */	lwz r0, 8(r24)
/* 80297B2C  90 17 00 E8 */	stw r0, 0xe8(r23)
/* 80297B30  80 18 00 0C */	lwz r0, 0xc(r24)
/* 80297B34  90 17 00 EC */	stw r0, 0xec(r23)
/* 80297B38  80 18 00 10 */	lwz r0, 0x10(r24)
/* 80297B3C  90 17 00 F0 */	stw r0, 0xf0(r23)
/* 80297B40  80 18 00 14 */	lwz r0, 0x14(r24)
/* 80297B44  90 17 00 F4 */	stw r0, 0xf4(r23)
/* 80297B48  80 18 00 18 */	lwz r0, 0x18(r24)
/* 80297B4C  90 17 00 F8 */	stw r0, 0xf8(r23)
/* 80297B50  A8 18 00 1C */	lha r0, 0x1c(r24)
/* 80297B54  B0 17 00 FC */	sth r0, 0xfc(r23)
/* 80297B58  A8 18 00 1E */	lha r0, 0x1e(r24)
/* 80297B5C  B0 17 00 FE */	sth r0, 0xfe(r23)
/* 80297B60  80 18 00 20 */	lwz r0, 0x20(r24)
/* 80297B64  90 17 01 00 */	stw r0, 0x100(r23)
/* 80297B68  93 37 01 04 */	stw r25, 0x104(r23)
/* 80297B6C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 80297B70  90 17 00 DC */	stw r0, 0xdc(r23)
/* 80297B74  93 57 00 18 */	stw r26, 0x18(r23)
/* 80297B78  48 00 4E 71 */	bl getDacRate__9JASDriverFv
/* 80297B7C  C0 18 00 04 */	lfs f0, 4(r24)
/* 80297B80  EC 20 08 24 */	fdivs f1, f0, f1
/* 80297B84  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80297B88  EC 00 00 72 */	fmuls f0, f0, f1
/* 80297B8C  D0 17 00 BC */	stfs f0, 0xbc(r23)
/* 80297B90  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 80297B94  28 00 00 00 */	cmplwi r0, 0
/* 80297B98  40 82 00 10 */	bne lbl_80297BA8
/* 80297B9C  88 18 00 01 */	lbz r0, 1(r24)
/* 80297BA0  7C 00 F8 50 */	subf r0, r0, r31
/* 80297BA4  B0 17 00 C8 */	sth r0, 0xc8(r23)
lbl_80297BA8:
/* 80297BA8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80297BAC  D0 17 00 B4 */	stfs f0, 0xb4(r23)
/* 80297BB0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80297BB4  B0 17 00 CA */	sth r0, 0xca(r23)
/* 80297BB8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80297BBC  D0 17 00 C0 */	stfs f0, 0xc0(r23)
/* 80297BC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80297BC4  D0 17 00 B8 */	stfs f0, 0xb8(r23)
/* 80297BC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80297BCC  D0 17 00 C4 */	stfs f0, 0xc4(r23)
/* 80297BD0  3B 20 00 00 */	li r25, 0
/* 80297BD4  3B 00 00 00 */	li r24, 0
/* 80297BD8  48 00 00 20 */	b lbl_80297BF8
lbl_80297BDC:
/* 80297BDC  7E E3 BB 78 */	mr r3, r23
/* 80297BE0  7F 24 CB 78 */	mr r4, r25
/* 80297BE4  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80297BE8  7C A5 C0 2E */	lwzx r5, r5, r24
/* 80297BEC  48 00 2F 79 */	bl setOscInit__10JASChannelFUlPCQ213JASOscillator4Data
/* 80297BF0  3B 39 00 01 */	addi r25, r25, 1
/* 80297BF4  3B 18 00 04 */	addi r24, r24, 4
lbl_80297BF8:
/* 80297BF8  88 01 00 29 */	lbz r0, 0x29(r1)
/* 80297BFC  7C 19 00 40 */	cmplw r25, r0
/* 80297C00  41 80 FF DC */	blt lbl_80297BDC
/* 80297C04  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 80297C08  B0 17 00 32 */	sth r0, 0x32(r23)
/* 80297C0C  7E E3 BB 78 */	mr r3, r23
/* 80297C10  48 00 2D E1 */	bl play__10JASChannelFv
/* 80297C14  2C 03 00 00 */	cmpwi r3, 0
/* 80297C18  41 82 00 0C */	beq lbl_80297C24
/* 80297C1C  7E E3 BB 78 */	mr r3, r23
/* 80297C20  48 00 00 08 */	b lbl_80297C28
lbl_80297C24:
/* 80297C24  38 60 00 00 */	li r3, 0
lbl_80297C28:
/* 80297C28  39 61 00 60 */	addi r11, r1, 0x60
/* 80297C2C  48 0C A5 E5 */	bl _restgpr_23
/* 80297C30  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80297C34  7C 08 03 A6 */	mtlr r0
/* 80297C38  38 21 00 60 */	addi r1, r1, 0x60
/* 80297C3C  4E 80 00 20 */	blr 
