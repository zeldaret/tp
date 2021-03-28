lbl_802A1FE8:
/* 802A1FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1FEC  7C 08 02 A6 */	mflr r0
/* 802A1FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1FF8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A1FFC  7C BE 2B 78 */	mr r30, r5
/* 802A2000  83 E4 00 98 */	lwz r31, 0x98(r4)
/* 802A2004  28 1F 00 00 */	cmplwi r31, 0
/* 802A2008  41 82 00 CC */	beq lbl_802A20D4
/* 802A200C  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 802A2010  28 00 00 06 */	cmplwi r0, 6
/* 802A2014  41 82 00 34 */	beq lbl_802A2048
/* 802A2018  28 04 00 00 */	cmplwi r4, 0
/* 802A201C  41 82 00 08 */	beq lbl_802A2024
/* 802A2020  38 84 00 98 */	addi r4, r4, 0x98
lbl_802A2024:
/* 802A2024  38 63 00 64 */	addi r3, r3, 0x64
/* 802A2028  48 03 9F 25 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A202C  28 1E 00 00 */	cmplwi r30, 0
/* 802A2030  41 82 00 10 */	beq lbl_802A2040
/* 802A2034  7F E3 FB 78 */	mr r3, r31
/* 802A2038  7F C4 F3 78 */	mr r4, r30
/* 802A203C  48 00 01 81 */	bl attachHandle__8JAISoundFP14JAISoundHandle
lbl_802A2040:
/* 802A2040  38 60 00 01 */	li r3, 1
/* 802A2044  48 00 00 94 */	b lbl_802A20D8
lbl_802A2048:
/* 802A2048  28 1F 00 00 */	cmplwi r31, 0
/* 802A204C  41 82 00 88 */	beq lbl_802A20D4
/* 802A2050  3C 60 80 3D */	lis r3, __vt__6JAISeq@ha
/* 802A2054  38 03 98 F4 */	addi r0, r3, __vt__6JAISeq@l
/* 802A2058  90 1F 00 00 */	stw r0, 0(r31)
/* 802A205C  34 1F 00 A8 */	addic. r0, r31, 0xa8
/* 802A2060  41 82 00 10 */	beq lbl_802A2070
/* 802A2064  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A2068  38 80 FF FF */	li r4, -1
/* 802A206C  4B FE F2 B1 */	bl __dt__8JASTrackFv
lbl_802A2070:
/* 802A2070  34 1F 00 98 */	addic. r0, r31, 0x98
/* 802A2074  41 82 00 10 */	beq lbl_802A2084
/* 802A2078  38 7F 00 98 */	addi r3, r31, 0x98
/* 802A207C  38 80 00 00 */	li r4, 0
/* 802A2080  48 03 9D 95 */	bl __dt__10JSUPtrLinkFv
lbl_802A2084:
/* 802A2084  88 0D 8D A0 */	lbz r0, data_80451320(r13)
/* 802A2088  7C 00 07 75 */	extsb. r0, r0
/* 802A208C  40 82 00 34 */	bne lbl_802A20C0
/* 802A2090  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A2094  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A2098  4B FE E7 B1 */	bl __ct__17JASGenericMemPoolFv
/* 802A209C  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A20A0  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A20A4  3C 80 80 2A */	lis r4, func_802A1AF4@ha
/* 802A20A8  38 84 1A F4 */	addi r4, r4, func_802A1AF4@l
/* 802A20AC  3C A0 80 43 */	lis r5, lit_715@ha
/* 802A20B0  38 A5 40 C0 */	addi r5, r5, lit_715@l
/* 802A20B4  48 0B FB 71 */	bl __register_global_object
/* 802A20B8  38 00 00 01 */	li r0, 1
/* 802A20BC  98 0D 8D A0 */	stb r0, data_80451320(r13)
lbl_802A20C0:
/* 802A20C0  3C 60 80 43 */	lis r3, data_804340CC@ha
/* 802A20C4  38 63 40 CC */	addi r3, r3, data_804340CC@l
/* 802A20C8  7F E4 FB 78 */	mr r4, r31
/* 802A20CC  38 A0 03 AC */	li r5, 0x3ac
/* 802A20D0  4B FE E8 C5 */	bl free__17JASGenericMemPoolFPvUl
lbl_802A20D4:
/* 802A20D4  38 60 00 00 */	li r3, 0
lbl_802A20D8:
/* 802A20D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A20DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A20E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A20E4  7C 08 03 A6 */	mtlr r0
/* 802A20E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A20EC  4E 80 00 20 */	blr 
