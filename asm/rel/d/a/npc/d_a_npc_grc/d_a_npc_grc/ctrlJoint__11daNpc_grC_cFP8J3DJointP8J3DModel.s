lbl_809CBE8C:
/* 809CBE8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809CBE90  7C 08 02 A6 */	mflr r0
/* 809CBE94  90 01 00 34 */	stw r0, 0x34(r1)
/* 809CBE98  39 61 00 30 */	addi r11, r1, 0x30
/* 809CBE9C  4B 99 63 3C */	b _savegpr_28
/* 809CBEA0  7C 7F 1B 78 */	mr r31, r3
/* 809CBEA4  7C BC 2B 78 */	mr r28, r5
/* 809CBEA8  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809CBEAC  7C BD 2B 78 */	mr r29, r5
/* 809CBEB0  3C 60 80 9D */	lis r3, lit_4478@ha
/* 809CBEB4  38 83 F5 A0 */	addi r4, r3, lit_4478@l
/* 809CBEB8  80 64 00 00 */	lwz r3, 0(r4)
/* 809CBEBC  80 04 00 04 */	lwz r0, 4(r4)
/* 809CBEC0  90 61 00 08 */	stw r3, 8(r1)
/* 809CBEC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809CBEC8  80 04 00 08 */	lwz r0, 8(r4)
/* 809CBECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809CBED0  2C 05 00 00 */	cmpwi r5, 0
/* 809CBED4  40 82 00 B0 */	bne lbl_809CBF84
/* 809CBED8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809CBEDC  80 63 00 04 */	lwz r3, 4(r3)
/* 809CBEE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809CBEE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809CBEE8  38 63 00 30 */	addi r3, r3, 0x30
/* 809CBEEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809CBEF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809CBEF4  4B 97 A5 BC */	b PSMTXCopy
/* 809CBEF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CBEFC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 809CBF00  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809CBF04  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809CBF08  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809CBF0C  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809CBF10  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809CBF14  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809CBF18  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809CBF1C  80 63 00 04 */	lwz r3, 4(r3)
/* 809CBF20  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809CBF24  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809CBF28  38 63 00 90 */	addi r3, r3, 0x90
/* 809CBF2C  7F C4 F3 78 */	mr r4, r30
/* 809CBF30  4B 97 A5 80 */	b PSMTXCopy
/* 809CBF34  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809CBF38  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809CBF3C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809CBF40  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809CBF44  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809CBF48  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809CBF4C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809CBF50  80 63 00 04 */	lwz r3, 4(r3)
/* 809CBF54  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809CBF58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809CBF5C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809CBF60  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809CBF64  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809CBF68  4B 97 A5 48 */	b PSMTXCopy
/* 809CBF6C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809CBF70  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809CBF74  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809CBF78  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809CBF7C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809CBF80  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809CBF84:
/* 809CBF84  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809CBF88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809CBF8C  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809CBF90  7C 60 F2 14 */	add r3, r0, r30
/* 809CBF94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809CBF98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809CBF9C  4B 97 A5 14 */	b PSMTXCopy
/* 809CBFA0  2C 1D 00 02 */	cmpwi r29, 2
/* 809CBFA4  41 82 00 38 */	beq lbl_809CBFDC
/* 809CBFA8  40 80 00 10 */	bge lbl_809CBFB8
/* 809CBFAC  2C 1D 00 01 */	cmpwi r29, 1
/* 809CBFB0  40 80 00 10 */	bge lbl_809CBFC0
/* 809CBFB4  48 00 00 28 */	b lbl_809CBFDC
lbl_809CBFB8:
/* 809CBFB8  2C 1D 00 05 */	cmpwi r29, 5
/* 809CBFBC  40 80 00 20 */	bge lbl_809CBFDC
lbl_809CBFC0:
/* 809CBFC0  7F E3 FB 78 */	mr r3, r31
/* 809CBFC4  7F A4 EB 78 */	mr r4, r29
/* 809CBFC8  38 A1 00 08 */	addi r5, r1, 8
/* 809CBFCC  3C C0 80 9D */	lis r6, m__17daNpc_grC_Param_c@ha
/* 809CBFD0  38 C6 F5 1C */	addi r6, r6, m__17daNpc_grC_Param_c@l
/* 809CBFD4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809CBFD8  4B 78 73 A4 */	b setLookatMtx__8daNpcF_cFiPif
lbl_809CBFDC:
/* 809CBFDC  2C 1D 00 01 */	cmpwi r29, 1
/* 809CBFE0  40 82 00 30 */	bne lbl_809CC010
/* 809CBFE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CBFE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CBFEC  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809CBFF0  7C 00 00 D0 */	neg r0, r0
/* 809CBFF4  7C 04 07 34 */	extsh r4, r0
/* 809CBFF8  4B 64 04 3C */	b mDoMtx_YrotM__FPA4_fs
/* 809CBFFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC000  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC004  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809CC008  4B 64 04 C4 */	b mDoMtx_ZrotM__FPA4_fs
/* 809CC00C  48 00 00 34 */	b lbl_809CC040
lbl_809CC010:
/* 809CC010  2C 1D 00 04 */	cmpwi r29, 4
/* 809CC014  40 82 00 2C */	bne lbl_809CC040
/* 809CC018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC01C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC020  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809CC024  7C 00 00 D0 */	neg r0, r0
/* 809CC028  7C 04 07 34 */	extsh r4, r0
/* 809CC02C  4B 64 04 08 */	b mDoMtx_YrotM__FPA4_fs
/* 809CC030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC038  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809CC03C  4B 64 04 90 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809CC040:
/* 809CC040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC044  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC048  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809CC04C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809CC050  7C 80 F2 14 */	add r4, r0, r30
/* 809CC054  4B 97 A4 5C */	b PSMTXCopy
/* 809CC058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809CC05C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809CC060  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809CC064  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809CC068  4B 97 A4 48 */	b PSMTXCopy
/* 809CC06C  2C 1D 00 04 */	cmpwi r29, 4
/* 809CC070  41 82 00 0C */	beq lbl_809CC07C
/* 809CC074  2C 1D 00 07 */	cmpwi r29, 7
/* 809CC078  40 82 00 2C */	bne lbl_809CC0A4
lbl_809CC07C:
/* 809CC07C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809CC080  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809CC084  41 82 00 20 */	beq lbl_809CC0A4
/* 809CC088  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809CC08C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809CC090  80 83 00 08 */	lwz r4, 8(r3)
/* 809CC094  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809CC098  4B 64 18 F8 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809CC09C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809CC0A0  93 83 00 08 */	stw r28, 8(r3)
lbl_809CC0A4:
/* 809CC0A4  38 60 00 01 */	li r3, 1
/* 809CC0A8  39 61 00 30 */	addi r11, r1, 0x30
/* 809CC0AC  4B 99 61 78 */	b _restgpr_28
/* 809CC0B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809CC0B4  7C 08 03 A6 */	mtlr r0
/* 809CC0B8  38 21 00 30 */	addi r1, r1, 0x30
/* 809CC0BC  4E 80 00 20 */	blr 
