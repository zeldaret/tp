lbl_80626320:
/* 80626320  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80626324  7C 08 02 A6 */	mflr r0
/* 80626328  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8062632C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80626330  4B D3 BE A8 */	b _savegpr_28
/* 80626334  7C 7F 1B 78 */	mr r31, r3
/* 80626338  3C 80 80 63 */	lis r4, lit_3920@ha
/* 8062633C  3B C4 E6 34 */	addi r30, r4, lit_3920@l
/* 80626340  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80626344  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80626348  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 8062634C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80626350  7C 00 07 74 */	extsb r0, r0
/* 80626354  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80626358  7C 84 02 14 */	add r4, r4, r0
/* 8062635C  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 80626360  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 80626364  2C 00 00 0B */	cmpwi r0, 0xb
/* 80626368  41 82 08 80 */	beq lbl_80626BE8
/* 8062636C  40 80 00 3C */	bge lbl_806263A8
/* 80626370  2C 00 00 03 */	cmpwi r0, 3
/* 80626374  41 82 05 4C */	beq lbl_806268C0
/* 80626378  40 80 00 1C */	bge lbl_80626394
/* 8062637C  2C 00 00 01 */	cmpwi r0, 1
/* 80626380  41 82 02 30 */	beq lbl_806265B0
/* 80626384  40 80 03 EC */	bge lbl_80626770
/* 80626388  2C 00 00 00 */	cmpwi r0, 0
/* 8062638C  40 80 00 54 */	bge lbl_806263E0
/* 80626390  48 00 0D 10 */	b lbl_806270A0
lbl_80626394:
/* 80626394  2C 00 00 0A */	cmpwi r0, 0xa
/* 80626398  40 80 07 C0 */	bge lbl_80626B58
/* 8062639C  2C 00 00 05 */	cmpwi r0, 5
/* 806263A0  40 80 0D 00 */	bge lbl_806270A0
/* 806263A4  48 00 06 1C */	b lbl_806269C0
lbl_806263A8:
/* 806263A8  2C 00 00 10 */	cmpwi r0, 0x10
/* 806263AC  41 82 0C 5C */	beq lbl_80627008
/* 806263B0  40 80 00 1C */	bge lbl_806263CC
/* 806263B4  2C 00 00 0E */	cmpwi r0, 0xe
/* 806263B8  41 82 0C E8 */	beq lbl_806270A0
/* 806263BC  40 80 0A 9C */	bge lbl_80626E58
/* 806263C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 806263C4  40 80 09 78 */	bge lbl_80626D3C
/* 806263C8  48 00 09 00 */	b lbl_80626CC8
lbl_806263CC:
/* 806263CC  2C 00 00 66 */	cmpwi r0, 0x66
/* 806263D0  40 80 0C D0 */	bge lbl_806270A0
/* 806263D4  2C 00 00 64 */	cmpwi r0, 0x64
/* 806263D8  40 80 01 D8 */	bge lbl_806265B0
/* 806263DC  48 00 0C C4 */	b lbl_806270A0
lbl_806263E0:
/* 806263E0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 806263E4  28 00 00 02 */	cmplwi r0, 2
/* 806263E8  41 82 00 28 */	beq lbl_80626410
/* 806263EC  38 80 00 02 */	li r4, 2
/* 806263F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806263F4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806263F8  38 C0 00 00 */	li r6, 0
/* 806263FC  4B 9F 55 0C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80626400  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80626404  60 00 00 02 */	ori r0, r0, 2
/* 80626408  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8062640C  48 00 0C DC */	b lbl_806270E8
lbl_80626410:
/* 80626410  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80626414  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80626418  80 63 00 00 */	lwz r3, 0(r3)
/* 8062641C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80626420  38 80 00 01 */	li r4, 1
/* 80626424  4B C8 B9 D0 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 80626428  38 7D 02 48 */	addi r3, r29, 0x248
/* 8062642C  4B B3 B0 A4 */	b Stop__9dCamera_cFv
/* 80626430  38 7D 02 48 */	addi r3, r29, 0x248
/* 80626434  38 80 00 03 */	li r4, 3
/* 80626438  4B B3 CB D4 */	b SetTrimSize__9dCamera_cFl
/* 8062643C  38 00 00 1E */	li r0, 0x1e
/* 80626440  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80626444  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80626448  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 8062644C  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80626450  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 80626454  38 00 10 00 */	li r0, 0x1000
/* 80626458  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 8062645C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626460  D0 3F 07 10 */	stfs f1, 0x710(r31)
/* 80626464  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 80626468  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 8062646C  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 80626470  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80626474  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 80626478  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8062647C  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80626480  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80626484  D0 1F 07 0C */	stfs f0, 0x70c(r31)
/* 80626488  38 00 00 03 */	li r0, 3
/* 8062648C  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 80626490  38 00 00 00 */	li r0, 0
/* 80626494  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80626498  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8062649C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806264A0  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 806264A4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806264A8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806264AC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806264B0  7F 83 E3 78 */	mr r3, r28
/* 806264B4  38 81 00 88 */	addi r4, r1, 0x88
/* 806264B8  38 A0 80 00 */	li r5, -32768
/* 806264BC  38 C0 00 00 */	li r6, 0
/* 806264C0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 806264C4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806264C8  7D 89 03 A6 */	mtctr r12
/* 806264CC  4E 80 04 21 */	bctrl 
/* 806264D0  38 00 00 04 */	li r0, 4
/* 806264D4  90 1C 06 14 */	stw r0, 0x614(r28)
/* 806264D8  38 00 00 01 */	li r0, 1
/* 806264DC  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 806264E0  38 00 00 00 */	li r0, 0
/* 806264E4  90 1C 06 10 */	stw r0, 0x610(r28)
/* 806264E8  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 806264EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806264F0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806264F4  7F E3 FB 78 */	mr r3, r31
/* 806264F8  38 80 00 0A */	li r4, 0xa
/* 806264FC  38 A0 00 00 */	li r5, 0
/* 80626500  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80626504  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626508  4B FF A3 C1 */	bl setBck__8daB_TN_cFiUcff
/* 8062650C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039D@ha */
/* 80626510  38 03 03 9D */	addi r0, r3, 0x039D /* 0x0007039D@l */
/* 80626514  90 01 00 30 */	stw r0, 0x30(r1)
/* 80626518  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062651C  38 81 00 30 */	addi r4, r1, 0x30
/* 80626520  38 A0 FF FF */	li r5, -1
/* 80626524  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626528  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062652C  7D 89 03 A6 */	mtctr r12
/* 80626530  4E 80 04 21 */	bctrl 
/* 80626534  38 00 00 64 */	li r0, 0x64
/* 80626538  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062653C  38 60 00 00 */	li r3, 0
/* 80626540  38 80 00 00 */	li r4, 0
/* 80626544  38 00 00 10 */	li r0, 0x10
/* 80626548  7C 09 03 A6 */	mtctr r0
lbl_8062654C:
/* 8062654C  38 04 09 FC */	addi r0, r4, 0x9fc
/* 80626550  7C 1F 02 2E */	lhzx r0, r31, r0
/* 80626554  28 00 00 03 */	cmplwi r0, 3
/* 80626558  41 80 00 48 */	blt lbl_806265A0
/* 8062655C  28 00 00 05 */	cmplwi r0, 5
/* 80626560  41 81 00 40 */	bgt lbl_806265A0
/* 80626564  38 03 07 5C */	addi r0, r3, 0x75c
/* 80626568  7C 5F 04 2E */	lfsx f2, r31, r0
/* 8062656C  FC 00 12 10 */	fabs f0, f2
/* 80626570  FC 00 00 18 */	frsp f0, f0
/* 80626574  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80626578  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8062657C  40 80 00 24 */	bge lbl_806265A0
/* 80626580  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80626584  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80626588  40 80 00 10 */	bge lbl_80626598
/* 8062658C  EC 02 08 28 */	fsubs f0, f2, f1
/* 80626590  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80626594  48 00 00 0C */	b lbl_806265A0
lbl_80626598:
/* 80626598  EC 02 08 2A */	fadds f0, f2, f1
/* 8062659C  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_806265A0:
/* 806265A0  38 63 00 0C */	addi r3, r3, 0xc
/* 806265A4  38 84 00 02 */	addi r4, r4, 2
/* 806265A8  42 00 FF A4 */	bdnz lbl_8062654C
/* 806265AC  48 00 0B 3C */	b lbl_806270E8
lbl_806265B0:
/* 806265B0  2C 00 00 64 */	cmpwi r0, 0x64
/* 806265B4  40 82 00 30 */	bne lbl_806265E4
/* 806265B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806265BC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806265C0  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 806265C4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806265C8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806265CC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806265D0  38 00 00 00 */	li r0, 0
/* 806265D4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806265D8  38 00 00 65 */	li r0, 0x65
/* 806265DC  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 806265E0  48 00 00 60 */	b lbl_80626640
lbl_806265E4:
/* 806265E4  2C 00 00 65 */	cmpwi r0, 0x65
/* 806265E8  40 82 00 18 */	bne lbl_80626600
/* 806265EC  7F E3 FB 78 */	mr r3, r31
/* 806265F0  80 9F 0A 78 */	lwz r4, 0xa78(r31)
/* 806265F4  4B FF 8C 0D */	bl setBreakPart__8daB_TN_cFi
/* 806265F8  38 00 00 01 */	li r0, 1
/* 806265FC  90 1F 06 F4 */	stw r0, 0x6f4(r31)
lbl_80626600:
/* 80626600  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626604  80 63 00 04 */	lwz r3, 4(r3)
/* 80626608  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062660C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626610  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626614  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626618  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062661C  4B D1 FE 94 */	b PSMTXCopy
/* 80626620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626628  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062662C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80626630  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80626634  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80626638  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062663C  D0 1F 07 18 */	stfs f0, 0x718(r31)
lbl_80626640:
/* 80626640  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626644  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 80626648  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8062664C  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80626650  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 80626654  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626658  38 63 00 0C */	addi r3, r3, 0xc
/* 8062665C  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80626660  4B D0 1D CC */	b checkPass__12J3DFrameCtrlFf
/* 80626664  2C 03 00 00 */	cmpwi r3, 0
/* 80626668  40 82 00 1C */	bne lbl_80626684
/* 8062666C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626670  38 63 00 0C */	addi r3, r3, 0xc
/* 80626674  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 80626678  4B D0 1D B4 */	b checkPass__12J3DFrameCtrlFf
/* 8062667C  2C 03 00 00 */	cmpwi r3, 0
/* 80626680  41 82 00 30 */	beq lbl_806266B0
lbl_80626684:
/* 80626684  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80626688  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062668C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80626690  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626694  38 81 00 2C */	addi r4, r1, 0x2c
/* 80626698  38 A0 00 00 */	li r5, 0
/* 8062669C  38 C0 FF FF */	li r6, -1
/* 806266A0  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 806266A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806266A8  7D 89 03 A6 */	mtctr r12
/* 806266AC  4E 80 04 21 */	bctrl 
lbl_806266B0:
/* 806266B0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806266B4  38 63 00 0C */	addi r3, r3, 0xc
/* 806266B8  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 806266BC  4B D0 1D 70 */	b checkPass__12J3DFrameCtrlFf
/* 806266C0  2C 03 00 00 */	cmpwi r3, 0
/* 806266C4  40 82 00 1C */	bne lbl_806266E0
/* 806266C8  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806266CC  38 63 00 0C */	addi r3, r3, 0xc
/* 806266D0  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 806266D4  4B D0 1D 58 */	b checkPass__12J3DFrameCtrlFf
/* 806266D8  2C 03 00 00 */	cmpwi r3, 0
/* 806266DC  41 82 00 30 */	beq lbl_8062670C
lbl_806266E0:
/* 806266E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 806266E4  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 806266E8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806266EC  38 7F 06 4C */	addi r3, r31, 0x64c
/* 806266F0  38 81 00 28 */	addi r4, r1, 0x28
/* 806266F4  38 A0 00 00 */	li r5, 0
/* 806266F8  38 C0 FF FF */	li r6, -1
/* 806266FC  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626700  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80626704  7D 89 03 A6 */	mtctr r12
/* 80626708  4E 80 04 21 */	bctrl 
lbl_8062670C:
/* 8062670C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626710  38 80 00 01 */	li r4, 1
/* 80626714  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80626718  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062671C  40 82 00 18 */	bne lbl_80626734
/* 80626720  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626724  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80626728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062672C  41 82 00 08 */	beq lbl_80626734
/* 80626730  38 80 00 00 */	li r4, 0
lbl_80626734:
/* 80626734  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80626738  41 82 09 68 */	beq lbl_806270A0
/* 8062673C  7F E3 FB 78 */	mr r3, r31
/* 80626740  38 80 00 1E */	li r4, 0x1e
/* 80626744  38 A0 00 00 */	li r5, 0
/* 80626748  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8062674C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626750  4B FF A1 79 */	bl setBck__8daB_TN_cFiUcff
/* 80626754  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80626758  3C 63 00 01 */	addis r3, r3, 1
/* 8062675C  38 03 80 00 */	addi r0, r3, -32768
/* 80626760  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80626764  38 00 00 02 */	li r0, 2
/* 80626768  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062676C  48 00 09 34 */	b lbl_806270A0
lbl_80626770:
/* 80626770  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626774  80 63 00 04 */	lwz r3, 4(r3)
/* 80626778  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062677C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626780  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626784  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626788  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062678C  4B D1 FD 24 */	b PSMTXCopy
/* 80626790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626798  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062679C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 806267A0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806267A4  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 806267A8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806267AC  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 806267B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806267B4  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 806267B8  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 806267BC  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 806267C0  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 806267C4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806267C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806267CC  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 806267D0  4B D0 1C 5C */	b checkPass__12J3DFrameCtrlFf
/* 806267D4  2C 03 00 00 */	cmpwi r3, 0
/* 806267D8  41 82 00 1C */	beq lbl_806267F4
/* 806267DC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806267E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806267E4  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 806267E8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806267EC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 806267F0  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_806267F4:
/* 806267F4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806267F8  38 63 00 0C */	addi r3, r3, 0xc
/* 806267FC  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80626800  4B D0 1C 2C */	b checkPass__12J3DFrameCtrlFf
/* 80626804  2C 03 00 00 */	cmpwi r3, 0
/* 80626808  41 82 00 2C */	beq lbl_80626834
/* 8062680C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A1@ha */
/* 80626810  38 03 03 A1 */	addi r0, r3, 0x03A1 /* 0x000703A1@l */
/* 80626814  90 01 00 24 */	stw r0, 0x24(r1)
/* 80626818  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062681C  38 81 00 24 */	addi r4, r1, 0x24
/* 80626820  38 A0 FF FF */	li r5, -1
/* 80626824  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626828  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062682C  7D 89 03 A6 */	mtctr r12
/* 80626830  4E 80 04 21 */	bctrl 
lbl_80626834:
/* 80626834  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626838  38 80 00 01 */	li r4, 1
/* 8062683C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80626840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80626844  40 82 00 18 */	bne lbl_8062685C
/* 80626848  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062684C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80626850  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80626854  41 82 00 08 */	beq lbl_8062685C
/* 80626858  38 80 00 00 */	li r4, 0
lbl_8062685C:
/* 8062685C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80626860  41 82 08 40 */	beq lbl_806270A0
/* 80626864  80 1F 0B 24 */	lwz r0, 0xb24(r31)
/* 80626868  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8062686C  41 82 08 34 */	beq lbl_806270A0
/* 80626870  7F E3 FB 78 */	mr r3, r31
/* 80626874  38 80 00 1F */	li r4, 0x1f
/* 80626878  38 A0 00 00 */	li r5, 0
/* 8062687C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80626880  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626884  4B FF A0 45 */	bl setBck__8daB_TN_cFiUcff
/* 80626888  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062688C  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80626890  90 01 00 20 */	stw r0, 0x20(r1)
/* 80626894  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626898  38 81 00 20 */	addi r4, r1, 0x20
/* 8062689C  38 A0 00 00 */	li r5, 0
/* 806268A0  38 C0 FF FF */	li r6, -1
/* 806268A4  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 806268A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806268AC  7D 89 03 A6 */	mtctr r12
/* 806268B0  4E 80 04 21 */	bctrl 
/* 806268B4  38 00 00 03 */	li r0, 3
/* 806268B8  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 806268BC  48 00 07 E4 */	b lbl_806270A0
lbl_806268C0:
/* 806268C0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806268C4  80 63 00 04 */	lwz r3, 4(r3)
/* 806268C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806268CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806268D0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806268D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806268D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806268DC  4B D1 FB D4 */	b PSMTXCopy
/* 806268E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806268E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806268E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806268EC  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 806268F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806268F4  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 806268F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806268FC  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80626900  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626904  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 80626908  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8062690C  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80626910  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 80626914  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80626918  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 8062691C  4B C4 9E 24 */	b cLib_chaseF__FPfff
/* 80626920  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626924  38 63 00 0C */	addi r3, r3, 0xc
/* 80626928  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 8062692C  4B D0 1B 00 */	b checkPass__12J3DFrameCtrlFf
/* 80626930  2C 03 00 00 */	cmpwi r3, 0
/* 80626934  41 82 00 30 */	beq lbl_80626964
/* 80626938  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 8062693C  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80626940  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80626944  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626948  38 81 00 1C */	addi r4, r1, 0x1c
/* 8062694C  38 A0 00 00 */	li r5, 0
/* 80626950  38 C0 FF FF */	li r6, -1
/* 80626954  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626958  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062695C  7D 89 03 A6 */	mtctr r12
/* 80626960  4E 80 04 21 */	bctrl 
lbl_80626964:
/* 80626964  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626968  38 80 00 01 */	li r4, 1
/* 8062696C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80626970  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80626974  40 82 00 18 */	bne lbl_8062698C
/* 80626978  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062697C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80626980  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80626984  41 82 00 08 */	beq lbl_8062698C
/* 80626988  38 80 00 00 */	li r4, 0
lbl_8062698C:
/* 8062698C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80626990  41 82 07 10 */	beq lbl_806270A0
/* 80626994  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80626998  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8062699C  7F E3 FB 78 */	mr r3, r31
/* 806269A0  38 80 00 29 */	li r4, 0x29
/* 806269A4  38 A0 00 00 */	li r5, 0
/* 806269A8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 806269AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806269B0  4B FF 9F 19 */	bl setBck__8daB_TN_cFiUcff
/* 806269B4  38 00 00 04 */	li r0, 4
/* 806269B8  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 806269BC  48 00 06 E4 */	b lbl_806270A0
lbl_806269C0:
/* 806269C0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 806269C4  38 63 00 0C */	addi r3, r3, 0xc
/* 806269C8  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 806269CC  4B D0 1A 60 */	b checkPass__12J3DFrameCtrlFf
/* 806269D0  2C 03 00 00 */	cmpwi r3, 0
/* 806269D4  41 82 00 30 */	beq lbl_80626A04
/* 806269D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 806269DC  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 806269E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806269E4  38 7F 06 4C */	addi r3, r31, 0x64c
/* 806269E8  38 81 00 18 */	addi r4, r1, 0x18
/* 806269EC  38 A0 00 00 */	li r5, 0
/* 806269F0  38 C0 FF FF */	li r6, -1
/* 806269F4  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 806269F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806269FC  7D 89 03 A6 */	mtctr r12
/* 80626A00  4E 80 04 21 */	bctrl 
lbl_80626A04:
/* 80626A04  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626A08  38 63 00 0C */	addi r3, r3, 0xc
/* 80626A0C  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80626A10  4B D0 1A 1C */	b checkPass__12J3DFrameCtrlFf
/* 80626A14  2C 03 00 00 */	cmpwi r3, 0
/* 80626A18  41 82 00 2C */	beq lbl_80626A44
/* 80626A1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039E@ha */
/* 80626A20  38 03 03 9E */	addi r0, r3, 0x039E /* 0x0007039E@l */
/* 80626A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80626A28  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626A2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80626A30  38 A0 FF FF */	li r5, -1
/* 80626A34  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626A38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80626A3C  7D 89 03 A6 */	mtctr r12
/* 80626A40  4E 80 04 21 */	bctrl 
lbl_80626A44:
/* 80626A44  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626A48  38 63 00 0C */	addi r3, r3, 0xc
/* 80626A4C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80626A50  4B D0 19 DC */	b checkPass__12J3DFrameCtrlFf
/* 80626A54  2C 03 00 00 */	cmpwi r3, 0
/* 80626A58  41 82 00 30 */	beq lbl_80626A88
/* 80626A5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80626A60  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80626A64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80626A68  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626A6C  38 81 00 10 */	addi r4, r1, 0x10
/* 80626A70  38 A0 00 00 */	li r5, 0
/* 80626A74  38 C0 FF FF */	li r6, -1
/* 80626A78  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626A7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80626A80  7D 89 03 A6 */	mtctr r12
/* 80626A84  4E 80 04 21 */	bctrl 
lbl_80626A88:
/* 80626A88  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626A8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80626A90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80626A94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626A98  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626A9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626AA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80626AA4  4B D1 FA 0C */	b PSMTXCopy
/* 80626AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626AB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80626AB4  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80626AB8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80626ABC  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80626AC0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80626AC4  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80626AC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626ACC  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 80626AD0  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80626AD4  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80626AD8  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 80626ADC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626AE0  38 63 00 0C */	addi r3, r3, 0xc
/* 80626AE4  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 80626AE8  4B D0 19 44 */	b checkPass__12J3DFrameCtrlFf
/* 80626AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80626AF0  41 82 00 0C */	beq lbl_80626AFC
/* 80626AF4  38 00 00 02 */	li r0, 2
/* 80626AF8  B0 1F 0A 16 */	sth r0, 0xa16(r31)
lbl_80626AFC:
/* 80626AFC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626B00  38 63 00 0C */	addi r3, r3, 0xc
/* 80626B04  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80626B08  4B D0 19 24 */	b checkPass__12J3DFrameCtrlFf
/* 80626B0C  2C 03 00 00 */	cmpwi r3, 0
/* 80626B10  41 82 05 90 */	beq lbl_806270A0
/* 80626B14  38 00 00 0A */	li r0, 0xa
/* 80626B18  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80626B1C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80626B20  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 80626B24  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80626B28  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 80626B2C  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80626B30  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 80626B34  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80626B38  D0 1F 07 0C */	stfs f0, 0x70c(r31)
/* 80626B3C  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80626B40  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80626B44  C0 1F 07 FC */	lfs f0, 0x7fc(r31)
/* 80626B48  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80626B4C  C0 1F 08 00 */	lfs f0, 0x800(r31)
/* 80626B50  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80626B54  48 00 05 4C */	b lbl_806270A0
lbl_80626B58:
/* 80626B58  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80626B5C  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 80626B60  C0 1F 07 FC */	lfs f0, 0x7fc(r31)
/* 80626B64  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 80626B68  C0 1F 08 00 */	lfs f0, 0x800(r31)
/* 80626B6C  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80626B70  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626B74  38 80 00 01 */	li r4, 1
/* 80626B78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80626B7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80626B80  40 82 00 18 */	bne lbl_80626B98
/* 80626B84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626B88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80626B8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80626B90  41 82 00 08 */	beq lbl_80626B98
/* 80626B94  38 80 00 00 */	li r4, 0
lbl_80626B98:
/* 80626B98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80626B9C  41 82 05 04 */	beq lbl_806270A0
/* 80626BA0  38 00 00 10 */	li r0, 0x10
/* 80626BA4  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80626BA8  38 00 00 02 */	li r0, 2
/* 80626BAC  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80626BB0  38 00 00 00 */	li r0, 0
/* 80626BB4  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80626BB8  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80626BBC  7F E3 FB 78 */	mr r3, r31
/* 80626BC0  38 80 00 2A */	li r4, 0x2a
/* 80626BC4  38 A0 00 02 */	li r5, 2
/* 80626BC8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80626BCC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626BD0  4B FF 9C F9 */	bl setBck__8daB_TN_cFiUcff
/* 80626BD4  38 00 00 3C */	li r0, 0x3c
/* 80626BD8  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80626BDC  38 00 00 0B */	li r0, 0xb
/* 80626BE0  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80626BE4  48 00 04 BC */	b lbl_806270A0
lbl_80626BE8:
/* 80626BE8  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80626BEC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80626BF0  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 80626BF4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80626BF8  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 80626BFC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80626C00  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80626C04  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626C08  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80626C0C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626C10  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80626C14  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626C18  38 7F 07 04 */	addi r3, r31, 0x704
/* 80626C1C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626C20  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80626C24  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80626C28  4B C4 95 50 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626C2C  38 61 00 64 */	addi r3, r1, 0x64
/* 80626C30  38 9F 07 04 */	addi r4, r31, 0x704
/* 80626C34  38 A1 00 70 */	addi r5, r1, 0x70
/* 80626C38  4B C3 FE FC */	b __mi__4cXyzCFRC3Vec
/* 80626C3C  38 7F 07 10 */	addi r3, r31, 0x710
/* 80626C40  38 81 00 64 */	addi r4, r1, 0x64
/* 80626C44  7C 65 1B 78 */	mr r5, r3
/* 80626C48  4B D2 04 48 */	b PSVECAdd
/* 80626C4C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80626C50  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80626C54  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80626C58  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80626C5C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80626C60  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80626C64  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80626C68  EC 01 00 2A */	fadds f0, f1, f0
/* 80626C6C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80626C70  38 7F 07 10 */	addi r3, r31, 0x710
/* 80626C74  38 81 00 88 */	addi r4, r1, 0x88
/* 80626C78  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80626C7C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80626C80  4B C4 94 F8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626C84  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80626C88  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80626C8C  40 82 00 1C */	bne lbl_80626CA8
/* 80626C90  38 00 00 19 */	li r0, 0x19
/* 80626C94  90 1C 06 14 */	stw r0, 0x614(r28)
/* 80626C98  38 00 00 00 */	li r0, 0
/* 80626C9C  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80626CA0  90 1C 06 10 */	stw r0, 0x610(r28)
/* 80626CA4  B0 1C 06 0A */	sth r0, 0x60a(r28)
lbl_80626CA8:
/* 80626CA8  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80626CAC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80626CB0  40 82 03 F0 */	bne lbl_806270A0
/* 80626CB4  38 00 00 1E */	li r0, 0x1e
/* 80626CB8  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80626CBC  38 00 00 0C */	li r0, 0xc
/* 80626CC0  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80626CC4  48 00 03 DC */	b lbl_806270A0
lbl_80626CC8:
/* 80626CC8  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626CCC  80 63 00 04 */	lwz r3, 4(r3)
/* 80626CD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80626CD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626CD8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626CDC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626CE0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80626CE4  4B D1 F7 CC */	b PSMTXCopy
/* 80626CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626CF0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80626CF4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626CF8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80626CFC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626D00  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80626D04  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626D08  38 7F 07 10 */	addi r3, r31, 0x710
/* 80626D0C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626D10  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80626D14  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80626D18  4B C4 94 60 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626D1C  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80626D20  2C 00 00 00 */	cmpwi r0, 0
/* 80626D24  40 82 03 7C */	bne lbl_806270A0
/* 80626D28  38 00 00 28 */	li r0, 0x28
/* 80626D2C  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80626D30  38 00 00 0D */	li r0, 0xd
/* 80626D34  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80626D38  48 00 03 68 */	b lbl_806270A0
lbl_80626D3C:
/* 80626D3C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626D40  80 63 00 04 */	lwz r3, 4(r3)
/* 80626D44  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80626D48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626D4C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626D50  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626D54  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80626D58  4B D1 F7 58 */	b PSMTXCopy
/* 80626D5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626D60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626D64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80626D68  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626D6C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80626D70  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80626D74  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80626D78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626D7C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80626D80  EC 01 00 28 */	fsubs f0, f1, f0
/* 80626D84  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626D88  38 7F 07 10 */	addi r3, r31, 0x710
/* 80626D8C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626D90  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80626D94  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80626D98  4B C4 93 E0 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626D9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80626DA0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626DA4  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80626DA8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626DAC  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80626DB0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626DB4  38 7F 07 04 */	addi r3, r31, 0x704
/* 80626DB8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626DBC  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80626DC0  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80626DC4  4B C4 93 B4 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626DC8  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 80626DCC  2C 00 00 00 */	cmpwi r0, 0
/* 80626DD0  40 82 02 D0 */	bne lbl_806270A0
/* 80626DD4  7F E3 FB 78 */	mr r3, r31
/* 80626DD8  38 80 00 26 */	li r4, 0x26
/* 80626DDC  38 A0 00 00 */	li r5, 0
/* 80626DE0  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80626DE4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626DE8  4B FF 9A E1 */	bl setBck__8daB_TN_cFiUcff
/* 80626DEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039F@ha */
/* 80626DF0  38 03 03 9F */	addi r0, r3, 0x039F /* 0x0007039F@l */
/* 80626DF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80626DF8  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626DFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80626E00  38 A0 FF FF */	li r5, -1
/* 80626E04  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626E08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80626E0C  7D 89 03 A6 */	mtctr r12
/* 80626E10  4E 80 04 21 */	bctrl 
/* 80626E14  38 00 00 0F */	li r0, 0xf
/* 80626E18  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80626E1C  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80626E20  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80626E24  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80626E28  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80626E2C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80626E30  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80626E34  7F 83 E3 78 */	mr r3, r28
/* 80626E38  38 81 00 88 */	addi r4, r1, 0x88
/* 80626E3C  38 A0 70 00 */	li r5, 0x7000
/* 80626E40  38 C0 00 00 */	li r6, 0
/* 80626E44  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80626E48  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80626E4C  7D 89 03 A6 */	mtctr r12
/* 80626E50  4E 80 04 21 */	bctrl 
/* 80626E54  48 00 02 4C */	b lbl_806270A0
lbl_80626E58:
/* 80626E58  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626E5C  80 63 00 04 */	lwz r3, 4(r3)
/* 80626E60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80626E64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80626E68  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80626E6C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80626E70  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80626E74  4B D1 F6 3C */	b PSMTXCopy
/* 80626E78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80626E7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80626E80  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80626E84  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626E88  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80626E8C  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80626E90  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80626E94  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626E98  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80626E9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80626EA0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626EA4  38 7F 07 10 */	addi r3, r31, 0x710
/* 80626EA8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626EAC  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80626EB0  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80626EB4  4B C4 92 C4 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626EB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80626EBC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80626EC0  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80626EC4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80626EC8  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80626ECC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80626ED0  38 7F 07 04 */	addi r3, r31, 0x704
/* 80626ED4  38 81 00 7C */	addi r4, r1, 0x7c
/* 80626ED8  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80626EDC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80626EE0  4B C4 92 98 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80626EE4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626EE8  38 63 00 0C */	addi r3, r3, 0xc
/* 80626EEC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80626EF0  4B D0 15 3C */	b checkPass__12J3DFrameCtrlFf
/* 80626EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80626EF8  41 82 00 84 */	beq lbl_80626F7C
/* 80626EFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703AC@ha */
/* 80626F00  38 03 03 AC */	addi r0, r3, 0x03AC /* 0x000703AC@l */
/* 80626F04  90 01 00 08 */	stw r0, 8(r1)
/* 80626F08  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80626F0C  38 81 00 08 */	addi r4, r1, 8
/* 80626F10  38 A0 00 00 */	li r5, 0
/* 80626F14  38 C0 FF FF */	li r6, -1
/* 80626F18  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 80626F1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80626F20  7D 89 03 A6 */	mtctr r12
/* 80626F24  4E 80 04 21 */	bctrl 
/* 80626F28  38 00 00 01 */	li r0, 1
/* 80626F2C  B0 1F 0A 1A */	sth r0, 0xa1a(r31)
/* 80626F30  38 00 00 02 */	li r0, 2
/* 80626F34  B0 1F 0A 18 */	sth r0, 0xa18(r31)
/* 80626F38  3C 60 80 63 */	lis r3, stringBase0@ha
/* 80626F3C  38 63 E8 E8 */	addi r3, r3, stringBase0@l
/* 80626F40  38 80 00 28 */	li r4, 0x28
/* 80626F44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80626F48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80626F4C  3C A5 00 02 */	addis r5, r5, 2
/* 80626F50  38 C0 00 80 */	li r6, 0x80
/* 80626F54  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80626F58  4B A1 53 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80626F5C  7C 64 1B 78 */	mr r4, r3
/* 80626F60  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80626F64  38 A0 00 00 */	li r5, 0
/* 80626F68  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626F6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626F70  FC 60 08 90 */	fmr f3, f1
/* 80626F74  C0 9E 00 68 */	lfs f4, 0x68(r30)
/* 80626F78  4B 9E 9E F8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80626F7C:
/* 80626F7C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80626F80  38 80 00 01 */	li r4, 1
/* 80626F84  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80626F88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80626F8C  40 82 00 18 */	bne lbl_80626FA4
/* 80626F90  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80626F94  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80626F98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80626F9C  41 82 00 08 */	beq lbl_80626FA4
/* 80626FA0  38 80 00 00 */	li r4, 0
lbl_80626FA4:
/* 80626FA4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80626FA8  41 82 00 F8 */	beq lbl_806270A0
/* 80626FAC  38 60 00 00 */	li r3, 0
/* 80626FB0  38 00 00 04 */	li r0, 4
/* 80626FB4  7C 09 03 A6 */	mtctr r0
lbl_80626FB8:
/* 80626FB8  38 83 37 7C */	addi r4, r3, 0x377c
/* 80626FBC  7C 1F 20 2E */	lwzx r0, r31, r4
/* 80626FC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80626FC4  7C 1F 21 2E */	stwx r0, r31, r4
/* 80626FC8  38 63 01 38 */	addi r3, r3, 0x138
/* 80626FCC  42 00 FF EC */	bdnz lbl_80626FB8
/* 80626FD0  80 1F 3C 5C */	lwz r0, 0x3c5c(r31)
/* 80626FD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80626FD8  90 1F 3C 5C */	stw r0, 0x3c5c(r31)
/* 80626FDC  7F E3 FB 78 */	mr r3, r31
/* 80626FE0  38 80 00 2A */	li r4, 0x2a
/* 80626FE4  38 A0 00 02 */	li r5, 2
/* 80626FE8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80626FEC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80626FF0  4B FF 98 D9 */	bl setBck__8daB_TN_cFiUcff
/* 80626FF4  38 00 00 1E */	li r0, 0x1e
/* 80626FF8  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80626FFC  38 00 00 10 */	li r0, 0x10
/* 80627000  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 80627004  48 00 00 E4 */	b lbl_806270E8
lbl_80627008:
/* 80627008  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062700C  2C 00 00 00 */	cmpwi r0, 0
/* 80627010  40 82 00 90 */	bne lbl_806270A0
/* 80627014  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 80627018  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8062701C  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 80627020  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80627024  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 80627028  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8062702C  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80627030  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80627034  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 80627038  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8062703C  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 80627040  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80627044  38 7D 02 48 */	addi r3, r29, 0x248
/* 80627048  38 81 00 58 */	addi r4, r1, 0x58
/* 8062704C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80627050  4B B5 9B C8 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80627054  38 7D 02 48 */	addi r3, r29, 0x248
/* 80627058  4B B3 A4 54 */	b Start__9dCamera_cFv
/* 8062705C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80627060  38 80 00 00 */	li r4, 0
/* 80627064  4B B3 BF A8 */	b SetTrimSize__9dCamera_cFl
/* 80627068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062706C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80627070  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80627074  4B A1 B3 F4 */	b reset__14dEvt_control_cFv
/* 80627078  7F E3 FB 78 */	mr r3, r31
/* 8062707C  38 80 00 09 */	li r4, 9
/* 80627080  38 A0 00 00 */	li r5, 0
/* 80627084  4B FF 99 45 */	bl setActionMode__8daB_TN_cFii
/* 80627088  7F E3 FB 78 */	mr r3, r31
/* 8062708C  38 80 00 10 */	li r4, 0x10
/* 80627090  48 00 09 0D */	bl initChaseL__8daB_TN_cFi
/* 80627094  80 1F 36 18 */	lwz r0, 0x3618(r31)
/* 80627098  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8062709C  90 1F 36 18 */	stw r0, 0x3618(r31)
lbl_806270A0:
/* 806270A0  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 806270A4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806270A8  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 806270AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806270B0  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 806270B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806270B8  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 806270BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806270C0  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 806270C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806270C8  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 806270CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806270D0  38 7D 02 48 */	addi r3, r29, 0x248
/* 806270D4  38 81 00 40 */	addi r4, r1, 0x40
/* 806270D8  38 A1 00 34 */	addi r5, r1, 0x34
/* 806270DC  C0 3F 07 1C */	lfs f1, 0x71c(r31)
/* 806270E0  38 C0 00 00 */	li r6, 0
/* 806270E4  4B B5 99 FC */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_806270E8:
/* 806270E8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806270EC  4B D3 B1 38 */	b _restgpr_28
/* 806270F0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806270F4  7C 08 03 A6 */	mtlr r0
/* 806270F8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806270FC  4E 80 00 20 */	blr 
