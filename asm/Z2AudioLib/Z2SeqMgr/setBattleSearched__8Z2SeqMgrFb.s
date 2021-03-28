lbl_802B421C:
/* 802B421C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B4220  7C 08 02 A6 */	mflr r0
/* 802B4224  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B4228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B422C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B4230  7C 7E 1B 78 */	mr r30, r3
/* 802B4234  7C 9F 23 78 */	mr r31, r4
/* 802B4238  88 83 00 D0 */	lbz r4, 0xd0(r3)
/* 802B423C  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 802B4240  40 82 01 78 */	bne lbl_802B43B8
/* 802B4244  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B4248  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B424C  28 00 00 00 */	cmplwi r0, 0
/* 802B4250  41 82 01 68 */	beq lbl_802B43B8
/* 802B4254  54 83 DF FE */	rlwinm r3, r4, 0x1b, 0x1f, 0x1f
/* 802B4258  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802B425C  7C 03 00 40 */	cmplw r3, r0
/* 802B4260  41 82 01 58 */	beq lbl_802B43B8
/* 802B4264  88 9E 00 BF */	lbz r4, 0xbf(r30)
/* 802B4268  28 04 00 03 */	cmplwi r4, 3
/* 802B426C  41 82 01 4C */	beq lbl_802B43B8
/* 802B4270  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B4274  28 03 00 00 */	cmplwi r3, 0
/* 802B4278  41 82 00 10 */	beq lbl_802B4288
/* 802B427C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B4280  90 61 00 08 */	stw r3, 8(r1)
/* 802B4284  48 00 00 08 */	b lbl_802B428C
lbl_802B4288:
/* 802B4288  38 60 FF FF */	li r3, -1
lbl_802B428C:
/* 802B428C  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B4290  28 00 00 0F */	cmplwi r0, 0xf
/* 802B4294  40 82 01 18 */	bne lbl_802B43AC
/* 802B4298  28 04 00 01 */	cmplwi r4, 1
/* 802B429C  40 82 01 10 */	bne lbl_802B43AC
/* 802B42A0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802B42A4  41 82 00 88 */	beq lbl_802B432C
/* 802B42A8  7F C3 F3 78 */	mr r3, r30
/* 802B42AC  38 9E 00 04 */	addi r4, r30, 4
/* 802B42B0  38 A0 00 02 */	li r5, 2
/* 802B42B4  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B42B8  88 CD 82 E4 */	lbz r6, struct_80450864+0x0(r13)
/* 802B42BC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B42C0  FC 60 10 90 */	fmr f3, f2
/* 802B42C4  4B FF FD 29 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B42C8  7F C3 F3 78 */	mr r3, r30
/* 802B42CC  38 9E 00 04 */	addi r4, r30, 4
/* 802B42D0  38 A0 00 03 */	li r5, 3
/* 802B42D4  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B42D8  88 CD 82 E4 */	lbz r6, struct_80450864+0x0(r13)
/* 802B42DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B42E0  FC 60 10 90 */	fmr f3, f2
/* 802B42E4  4B FF FD 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B42E8  7F C3 F3 78 */	mr r3, r30
/* 802B42EC  38 9E 00 04 */	addi r4, r30, 4
/* 802B42F0  38 A0 00 0C */	li r5, 0xc
/* 802B42F4  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B42F8  88 CD 82 E4 */	lbz r6, struct_80450864+0x0(r13)
/* 802B42FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4300  FC 60 10 90 */	fmr f3, f2
/* 802B4304  4B FF FC E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4308  7F C3 F3 78 */	mr r3, r30
/* 802B430C  38 9E 00 04 */	addi r4, r30, 4
/* 802B4310  38 A0 00 0E */	li r5, 0xe
/* 802B4314  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B4318  88 CD 82 E4 */	lbz r6, struct_80450864+0x0(r13)
/* 802B431C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4320  FC 60 10 90 */	fmr f3, f2
/* 802B4324  4B FF FC C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B4328  48 00 00 84 */	b lbl_802B43AC
lbl_802B432C:
/* 802B432C  7F C3 F3 78 */	mr r3, r30
/* 802B4330  38 9E 00 04 */	addi r4, r30, 4
/* 802B4334  38 A0 00 02 */	li r5, 2
/* 802B4338  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B433C  88 CD 82 E5 */	lbz r6, struct_80450864+0x1(r13)
/* 802B4340  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4344  FC 60 10 90 */	fmr f3, f2
/* 802B4348  4B FF FC A5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B434C  7F C3 F3 78 */	mr r3, r30
/* 802B4350  38 9E 00 04 */	addi r4, r30, 4
/* 802B4354  38 A0 00 03 */	li r5, 3
/* 802B4358  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B435C  88 CD 82 E5 */	lbz r6, struct_80450864+0x1(r13)
/* 802B4360  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4364  FC 60 10 90 */	fmr f3, f2
/* 802B4368  4B FF FC 85 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B436C  7F C3 F3 78 */	mr r3, r30
/* 802B4370  38 9E 00 04 */	addi r4, r30, 4
/* 802B4374  38 A0 00 0C */	li r5, 0xc
/* 802B4378  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B437C  88 CD 82 E5 */	lbz r6, struct_80450864+0x1(r13)
/* 802B4380  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B4384  FC 60 10 90 */	fmr f3, f2
/* 802B4388  4B FF FC 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B438C  7F C3 F3 78 */	mr r3, r30
/* 802B4390  38 9E 00 04 */	addi r4, r30, 4
/* 802B4394  38 A0 00 0E */	li r5, 0xe
/* 802B4398  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B439C  88 CD 82 E5 */	lbz r6, struct_80450864+0x1(r13)
/* 802B43A0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B43A4  FC 60 10 90 */	fmr f3, f2
/* 802B43A8  4B FF FC 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B43AC:
/* 802B43AC  88 1E 00 D0 */	lbz r0, 0xd0(r30)
/* 802B43B0  53 E0 2E B4 */	rlwimi r0, r31, 5, 0x1a, 0x1a
/* 802B43B4  98 1E 00 D0 */	stb r0, 0xd0(r30)
lbl_802B43B8:
/* 802B43B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B43BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B43C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B43C4  7C 08 03 A6 */	mtlr r0
/* 802B43C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B43CC  4E 80 00 20 */	blr 
