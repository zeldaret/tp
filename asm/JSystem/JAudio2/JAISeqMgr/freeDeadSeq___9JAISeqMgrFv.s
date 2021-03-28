lbl_802A1A08:
/* 802A1A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1A0C  7C 08 02 A6 */	mflr r0
/* 802A1A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A1A14  39 61 00 20 */	addi r11, r1, 0x20
/* 802A1A18  48 0C 07 C5 */	bl _savegpr_29
/* 802A1A1C  7C 7D 1B 78 */	mr r29, r3
/* 802A1A20  80 83 00 64 */	lwz r4, 0x64(r3)
/* 802A1A24  48 00 00 B0 */	b lbl_802A1AD4
lbl_802A1A28:
/* 802A1A28  83 E4 00 00 */	lwz r31, 0(r4)
/* 802A1A2C  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 802A1A30  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 802A1A34  28 00 00 06 */	cmplwi r0, 6
/* 802A1A38  40 82 00 98 */	bne lbl_802A1AD0
/* 802A1A3C  38 7D 00 64 */	addi r3, r29, 0x64
/* 802A1A40  48 03 A7 1D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802A1A44  28 1F 00 00 */	cmplwi r31, 0
/* 802A1A48  41 82 00 88 */	beq lbl_802A1AD0
/* 802A1A4C  3C 60 80 3D */	lis r3, __vt__6JAISeq@ha
/* 802A1A50  38 03 98 F4 */	addi r0, r3, __vt__6JAISeq@l
/* 802A1A54  90 1F 00 00 */	stw r0, 0(r31)
/* 802A1A58  34 1F 00 A8 */	addic. r0, r31, 0xa8
/* 802A1A5C  41 82 00 10 */	beq lbl_802A1A6C
/* 802A1A60  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A1A64  38 80 FF FF */	li r4, -1
/* 802A1A68  4B FE F8 B5 */	bl __dt__8JASTrackFv
lbl_802A1A6C:
/* 802A1A6C  34 1F 00 98 */	addic. r0, r31, 0x98
/* 802A1A70  41 82 00 10 */	beq lbl_802A1A80
/* 802A1A74  38 7F 00 98 */	addi r3, r31, 0x98
/* 802A1A78  38 80 00 00 */	li r4, 0
/* 802A1A7C  48 03 A3 99 */	bl __dt__10JSUPtrLinkFv
lbl_802A1A80:
/* 802A1A80  88 0D 8D A0 */	lbz r0, data_80451320(r13)
/* 802A1A84  7C 00 07 75 */	extsb. r0, r0
/* 802A1A88  40 82 00 34 */	bne lbl_802A1ABC
/* 802A1A8C  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A1A90  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A1A94  4B FE ED B5 */	bl __ct__17JASGenericMemPoolFv
/* 802A1A98  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A1A9C  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A1AA0  3C 80 80 2A */	lis r4, func_802A1AF4@ha
/* 802A1AA4  38 84 1A F4 */	addi r4, r4, func_802A1AF4@l
/* 802A1AA8  3C A0 80 43 */	lis r5, lit_715@ha
/* 802A1AAC  38 A5 40 C0 */	addi r5, r5, lit_715@l
/* 802A1AB0  48 0C 01 75 */	bl __register_global_object
/* 802A1AB4  38 00 00 01 */	li r0, 1
/* 802A1AB8  98 0D 8D A0 */	stb r0, data_80451320(r13)
lbl_802A1ABC:
/* 802A1ABC  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A1AC0  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A1AC4  7F E4 FB 78 */	mr r4, r31
/* 802A1AC8  38 A0 03 AC */	li r5, 0x3ac
/* 802A1ACC  4B FE EE C9 */	bl free__17JASGenericMemPoolFPvUl
lbl_802A1AD0:
/* 802A1AD0  7F C4 F3 78 */	mr r4, r30
lbl_802A1AD4:
/* 802A1AD4  28 04 00 00 */	cmplwi r4, 0
/* 802A1AD8  40 82 FF 50 */	bne lbl_802A1A28
/* 802A1ADC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A1AE0  48 0C 07 49 */	bl _restgpr_29
/* 802A1AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A1AE8  7C 08 03 A6 */	mtlr r0
/* 802A1AEC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A1AF0  4E 80 00 20 */	blr 
