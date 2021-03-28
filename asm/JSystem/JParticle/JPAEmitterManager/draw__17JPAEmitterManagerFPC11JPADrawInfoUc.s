lbl_8027E028:
/* 8027E028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027E02C  7C 08 02 A6 */	mflr r0
/* 8027E030  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027E034  39 61 00 20 */	addi r11, r1, 0x20
/* 8027E038  48 0E 41 A5 */	bl _savegpr_29
/* 8027E03C  7C 7D 1B 78 */	mr r29, r3
/* 8027E040  7C 9E 23 78 */	mr r30, r4
/* 8027E044  7C BF 2B 78 */	mr r31, r5
/* 8027E048  7F C3 F3 78 */	mr r3, r30
/* 8027E04C  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8027E050  38 84 01 84 */	addi r4, r4, 0x184
/* 8027E054  48 0C 84 5D */	bl PSMTXCopy
/* 8027E058  38 7E 00 30 */	addi r3, r30, 0x30
/* 8027E05C  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8027E060  38 84 01 B4 */	addi r4, r4, 0x1b4
/* 8027E064  48 0C 84 4D */	bl PSMTXCopy
/* 8027E068  7F A3 EB 78 */	mr r3, r29
/* 8027E06C  48 00 03 89 */	bl calcYBBCam__17JPAEmitterManagerFv
/* 8027E070  38 60 00 00 */	li r3, 0
/* 8027E074  38 80 00 00 */	li r4, 0
/* 8027E078  38 A0 00 00 */	li r5, 0
/* 8027E07C  38 C0 00 00 */	li r6, 0
/* 8027E080  38 E0 00 01 */	li r7, 1
/* 8027E084  39 00 00 00 */	li r8, 0
/* 8027E088  48 0E 12 25 */	bl GXSetTevColorOp
/* 8027E08C  38 60 00 00 */	li r3, 0
/* 8027E090  38 80 00 00 */	li r4, 0
/* 8027E094  38 A0 00 00 */	li r5, 0
/* 8027E098  38 C0 00 00 */	li r6, 0
/* 8027E09C  38 E0 00 01 */	li r7, 1
/* 8027E0A0  39 00 00 00 */	li r8, 0
/* 8027E0A4  48 0E 12 71 */	bl GXSetTevAlphaOp
/* 8027E0A8  38 60 00 00 */	li r3, 0
/* 8027E0AC  38 80 00 01 */	li r4, 1
/* 8027E0B0  38 A0 00 01 */	li r5, 1
/* 8027E0B4  48 0D E8 89 */	bl GXEnableTexOffsets
/* 8027E0B8  38 60 00 01 */	li r3, 1
/* 8027E0BC  38 80 00 01 */	li r4, 1
/* 8027E0C0  38 A0 00 01 */	li r5, 1
/* 8027E0C4  48 0D E8 79 */	bl GXEnableTexOffsets
/* 8027E0C8  38 60 00 02 */	li r3, 2
/* 8027E0CC  38 80 00 01 */	li r4, 1
/* 8027E0D0  38 A0 00 01 */	li r5, 1
/* 8027E0D4  48 0D E8 69 */	bl GXEnableTexOffsets
/* 8027E0D8  38 60 00 00 */	li r3, 0
/* 8027E0DC  48 0D E8 A9 */	bl GXSetCullMode
/* 8027E0E0  38 60 00 00 */	li r3, 0
/* 8027E0E4  48 0D E8 C9 */	bl GXSetCoPlanar
/* 8027E0E8  48 0D D4 A5 */	bl GXClearVtxDesc
/* 8027E0EC  38 60 00 09 */	li r3, 9
/* 8027E0F0  38 80 00 02 */	li r4, 2
/* 8027E0F4  48 0D CD C5 */	bl GXSetVtxDesc
/* 8027E0F8  38 60 00 0D */	li r3, 0xd
/* 8027E0FC  38 80 00 02 */	li r4, 2
/* 8027E100  48 0D CD B9 */	bl GXSetVtxDesc
/* 8027E104  38 60 00 00 */	li r3, 0
/* 8027E108  38 80 00 09 */	li r4, 9
/* 8027E10C  38 A0 00 01 */	li r5, 1
/* 8027E110  38 C0 00 01 */	li r6, 1
/* 8027E114  38 E0 00 00 */	li r7, 0
/* 8027E118  48 0D D4 AD */	bl GXSetVtxAttrFmt
/* 8027E11C  38 60 00 00 */	li r3, 0
/* 8027E120  38 80 00 0D */	li r4, 0xd
/* 8027E124  38 A0 00 01 */	li r5, 1
/* 8027E128  38 C0 00 01 */	li r6, 1
/* 8027E12C  38 E0 00 00 */	li r7, 0
/* 8027E130  48 0D D4 95 */	bl GXSetVtxAttrFmt
/* 8027E134  38 60 00 01 */	li r3, 1
/* 8027E138  38 80 00 09 */	li r4, 9
/* 8027E13C  38 A0 00 01 */	li r5, 1
/* 8027E140  38 C0 00 04 */	li r6, 4
/* 8027E144  38 E0 00 00 */	li r7, 0
/* 8027E148  48 0D D4 7D */	bl GXSetVtxAttrFmt
/* 8027E14C  38 60 00 01 */	li r3, 1
/* 8027E150  38 80 00 0D */	li r4, 0xd
/* 8027E154  38 A0 00 01 */	li r5, 1
/* 8027E158  38 C0 00 04 */	li r6, 4
/* 8027E15C  38 E0 00 00 */	li r7, 0
/* 8027E160  48 0D D4 65 */	bl GXSetVtxAttrFmt
/* 8027E164  38 60 00 00 */	li r3, 0
/* 8027E168  48 0E 21 85 */	bl GXSetCurrentMtx
/* 8027E16C  38 60 00 04 */	li r3, 4
/* 8027E170  38 80 00 00 */	li r4, 0
/* 8027E174  38 A0 00 00 */	li r5, 0
/* 8027E178  38 C0 00 01 */	li r6, 1
/* 8027E17C  38 E0 00 00 */	li r7, 0
/* 8027E180  39 00 00 00 */	li r8, 0
/* 8027E184  39 20 00 02 */	li r9, 2
/* 8027E188  48 0D F9 E5 */	bl GXSetChanCtrl
/* 8027E18C  38 60 00 05 */	li r3, 5
/* 8027E190  38 80 00 00 */	li r4, 0
/* 8027E194  38 A0 00 00 */	li r5, 0
/* 8027E198  38 C0 00 01 */	li r6, 1
/* 8027E19C  38 E0 00 00 */	li r7, 0
/* 8027E1A0  39 00 00 00 */	li r8, 0
/* 8027E1A4  39 20 00 02 */	li r9, 2
/* 8027E1A8  48 0D F9 C5 */	bl GXSetChanCtrl
/* 8027E1AC  38 60 00 00 */	li r3, 0
/* 8027E1B0  48 0D F9 81 */	bl GXSetNumChans
/* 8027E1B4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8027E1B8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8027E1BC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027E1C0  7F E3 00 2E */	lwzx r31, r3, r0
/* 8027E1C4  48 00 00 3C */	b lbl_8027E200
lbl_8027E1C8:
/* 8027E1C8  80 BF 00 00 */	lwz r5, 0(r31)
/* 8027E1CC  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 8027E1D0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8027E1D4  40 82 00 28 */	bne lbl_8027E1FC
/* 8027E1D8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8027E1DC  88 05 01 13 */	lbz r0, 0x113(r5)
/* 8027E1E0  54 00 10 3A */	slwi r0, r0, 2
/* 8027E1E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8027E1E8  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8027E1EC  90 03 00 08 */	stw r0, 8(r3)
/* 8027E1F0  80 65 00 E8 */	lwz r3, 0xe8(r5)
/* 8027E1F4  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8027E1F8  4B FF 78 9D */	bl draw__11JPAResourceFP18JPAEmitterWorkDataP14JPABaseEmitter
lbl_8027E1FC:
/* 8027E1FC  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8027E200:
/* 8027E200  28 1F 00 00 */	cmplwi r31, 0
/* 8027E204  40 82 FF C4 */	bne lbl_8027E1C8
/* 8027E208  39 61 00 20 */	addi r11, r1, 0x20
/* 8027E20C  48 0E 40 1D */	bl _restgpr_29
/* 8027E210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E214  7C 08 03 A6 */	mtlr r0
/* 8027E218  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E21C  4E 80 00 20 */	blr 
