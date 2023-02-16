lbl_802B556C:
/* 802B556C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B5570  7C 08 02 A6 */	mflr r0
/* 802B5574  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B5578  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802B557C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802B5580  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802B5584  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 802B5588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B558C  7C 7F 1B 78 */	mr r31, r3
/* 802B5590  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802B5594  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B5598  28 00 00 00 */	cmplwi r0, 0
/* 802B559C  41 82 01 90 */	beq lbl_802B572C
/* 802B55A0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802B55A4  28 00 00 00 */	cmplwi r0, 0
/* 802B55A8  41 82 01 84 */	beq lbl_802B572C
/* 802B55AC  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B55B0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802B55B4  41 82 00 10 */	beq lbl_802B55C4
/* 802B55B8  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B55BC  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
/* 802B55C0  48 00 00 0C */	b lbl_802B55CC
lbl_802B55C4:
/* 802B55C4  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B55C8  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
lbl_802B55CC:
/* 802B55CC  7F E3 FB 78 */	mr r3, r31
/* 802B55D0  7F E4 FB 78 */	mr r4, r31
/* 802B55D4  38 A0 00 05 */	li r5, 5
/* 802B55D8  FC 20 F8 90 */	fmr f1, f31
/* 802B55DC  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B55E0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B55E4  FC 60 10 90 */	fmr f3, f2
/* 802B55E8  4B FF EA 05 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B55EC  7F E3 FB 78 */	mr r3, r31
/* 802B55F0  7F E4 FB 78 */	mr r4, r31
/* 802B55F4  38 A0 00 06 */	li r5, 6
/* 802B55F8  FC 20 F8 90 */	fmr f1, f31
/* 802B55FC  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5600  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5604  FC 60 10 90 */	fmr f3, f2
/* 802B5608  4B FF E9 E5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B560C  7F E3 FB 78 */	mr r3, r31
/* 802B5610  7F E4 FB 78 */	mr r4, r31
/* 802B5614  38 A0 00 07 */	li r5, 7
/* 802B5618  FC 20 F8 90 */	fmr f1, f31
/* 802B561C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5620  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5624  FC 60 10 90 */	fmr f3, f2
/* 802B5628  4B FF E9 C5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B562C  7F E3 FB 78 */	mr r3, r31
/* 802B5630  7F E4 FB 78 */	mr r4, r31
/* 802B5634  38 A0 00 08 */	li r5, 8
/* 802B5638  FC 20 F8 90 */	fmr f1, f31
/* 802B563C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5640  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5644  FC 60 10 90 */	fmr f3, f2
/* 802B5648  4B FF E9 A5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B564C  7F E3 FB 78 */	mr r3, r31
/* 802B5650  7F E4 FB 78 */	mr r4, r31
/* 802B5654  38 A0 00 09 */	li r5, 9
/* 802B5658  FC 20 F8 90 */	fmr f1, f31
/* 802B565C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5660  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5664  FC 60 10 90 */	fmr f3, f2
/* 802B5668  4B FF E9 85 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B566C  7F E3 FB 78 */	mr r3, r31
/* 802B5670  7F E4 FB 78 */	mr r4, r31
/* 802B5674  38 A0 00 0A */	li r5, 0xa
/* 802B5678  FC 20 F8 90 */	fmr f1, f31
/* 802B567C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5680  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5684  FC 60 10 90 */	fmr f3, f2
/* 802B5688  4B FF E9 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B568C  7F E3 FB 78 */	mr r3, r31
/* 802B5690  7F E4 FB 78 */	mr r4, r31
/* 802B5694  38 A0 00 0B */	li r5, 0xb
/* 802B5698  FC 20 F8 90 */	fmr f1, f31
/* 802B569C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B56A0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B56A4  FC 60 10 90 */	fmr f3, f2
/* 802B56A8  4B FF E9 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B56AC  7F E3 FB 78 */	mr r3, r31
/* 802B56B0  7F E4 FB 78 */	mr r4, r31
/* 802B56B4  38 A0 00 0C */	li r5, 0xc
/* 802B56B8  FC 20 F0 90 */	fmr f1, f30
/* 802B56BC  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B56C0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B56C4  FC 60 10 90 */	fmr f3, f2
/* 802B56C8  4B FF E9 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B56CC  7F E3 FB 78 */	mr r3, r31
/* 802B56D0  7F E4 FB 78 */	mr r4, r31
/* 802B56D4  38 A0 00 0D */	li r5, 0xd
/* 802B56D8  FC 20 F0 90 */	fmr f1, f30
/* 802B56DC  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B56E0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B56E4  FC 60 10 90 */	fmr f3, f2
/* 802B56E8  4B FF E9 05 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B56EC  7F E3 FB 78 */	mr r3, r31
/* 802B56F0  7F E4 FB 78 */	mr r4, r31
/* 802B56F4  38 A0 00 0E */	li r5, 0xe
/* 802B56F8  FC 20 F0 90 */	fmr f1, f30
/* 802B56FC  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5700  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5704  FC 60 10 90 */	fmr f3, f2
/* 802B5708  4B FF E8 E5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B570C  7F E3 FB 78 */	mr r3, r31
/* 802B5710  7F E4 FB 78 */	mr r4, r31
/* 802B5714  38 A0 00 0F */	li r5, 0xf
/* 802B5718  FC 20 F0 90 */	fmr f1, f30
/* 802B571C  88 DF 00 C3 */	lbz r6, 0xc3(r31)
/* 802B5720  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5724  FC 60 10 90 */	fmr f3, f2
/* 802B5728  4B FF E8 C5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B572C:
/* 802B572C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802B5730  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802B5734  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 802B5738  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802B573C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B5740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B5744  7C 08 03 A6 */	mtlr r0
/* 802B5748  38 21 00 30 */	addi r1, r1, 0x30
/* 802B574C  4E 80 00 20 */	blr 
