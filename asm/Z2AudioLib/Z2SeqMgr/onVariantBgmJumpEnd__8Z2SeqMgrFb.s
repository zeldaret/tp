lbl_802B299C:
/* 802B299C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B29A0  7C 08 02 A6 */	mflr r0
/* 802B29A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B29A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B29AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802B29B0  7C 7E 1B 78 */	mr r30, r3
/* 802B29B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802B29B8  41 82 00 84 */	beq lbl_802B2A3C
/* 802B29BC  3B E0 00 00 */	li r31, 0
/* 802B29C0  88 1E 00 BD */	lbz r0, 0xbd(r30)
/* 802B29C4  28 00 00 03 */	cmplwi r0, 3
/* 802B29C8  40 82 00 10 */	bne lbl_802B29D8
/* 802B29CC  3B E0 00 2D */	li r31, 0x2d
/* 802B29D0  38 00 00 01 */	li r0, 1
/* 802B29D4  98 1E 00 BD */	stb r0, 0xbd(r30)
lbl_802B29D8:
/* 802B29D8  7F C3 F3 78 */	mr r3, r30
/* 802B29DC  38 9E 00 04 */	addi r4, r30, 4
/* 802B29E0  38 A0 00 08 */	li r5, 8
/* 802B29E4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B29E8  7F E6 FB 78 */	mr r6, r31
/* 802B29EC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B29F0  FC 60 10 90 */	fmr f3, f2
/* 802B29F4  48 00 15 F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B29F8  7F C3 F3 78 */	mr r3, r30
/* 802B29FC  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A00  38 A0 00 09 */	li r5, 9
/* 802B2A04  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2A08  7F E6 FB 78 */	mr r6, r31
/* 802B2A0C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2A10  FC 60 10 90 */	fmr f3, f2
/* 802B2A14  48 00 15 D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2A18  7F C3 F3 78 */	mr r3, r30
/* 802B2A1C  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A20  38 A0 00 0A */	li r5, 0xa
/* 802B2A24  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2A28  7F E6 FB 78 */	mr r6, r31
/* 802B2A2C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2A30  FC 60 10 90 */	fmr f3, f2
/* 802B2A34  48 00 15 B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2A38  48 00 00 20 */	b lbl_802B2A58
lbl_802B2A3C:
/* 802B2A3C  38 9E 00 04 */	addi r4, r30, 4
/* 802B2A40  38 A0 00 00 */	li r5, 0
/* 802B2A44  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2A48  38 C0 00 00 */	li r6, 0
/* 802B2A4C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2A50  FC 60 10 90 */	fmr f3, f2
/* 802B2A54  48 00 15 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B2A58:
/* 802B2A58  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B2A5C  38 63 07 28 */	addi r3, r3, 0x728
/* 802B2A60  4B FE F2 31 */	bl calc__9JAISeqMgrFv
/* 802B2A64  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B2A68  38 63 07 28 */	addi r3, r3, 0x728
/* 802B2A6C  4B FE F4 91 */	bl mixOut__9JAISeqMgrFv
/* 802B2A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B2A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B2A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B2A7C  7C 08 03 A6 */	mtlr r0
/* 802B2A80  38 21 00 10 */	addi r1, r1, 0x10
/* 802B2A84  4E 80 00 20 */	blr 
