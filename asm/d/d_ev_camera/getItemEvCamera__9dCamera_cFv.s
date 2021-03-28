lbl_80094240:
/* 80094240  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 80094244  7C 08 02 A6 */	mflr r0
/* 80094248  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8009424C  DB E1 02 90 */	stfd f31, 0x290(r1)
/* 80094250  F3 E1 02 98 */	psq_st f31, 664(r1), 0, 0 /* qr0 */
/* 80094254  93 E1 02 8C */	stw r31, 0x28c(r1)
/* 80094258  93 C1 02 88 */	stw r30, 0x288(r1)
/* 8009425C  7C 7F 1B 78 */	mr r31, r3
/* 80094260  C0 C2 8E B8 */	lfs f6, lit_5141(r2)
/* 80094264  D0 C1 01 8C */	stfs f6, 0x18c(r1)
/* 80094268  C0 A2 90 C4 */	lfs f5, lit_9410(r2)
/* 8009426C  D0 A1 01 90 */	stfs f5, 0x190(r1)
/* 80094270  C0 02 91 54 */	lfs f0, lit_10118(r2)
/* 80094274  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80094278  D0 C1 02 20 */	stfs f6, 0x220(r1)
/* 8009427C  D0 A1 02 24 */	stfs f5, 0x224(r1)
/* 80094280  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80094284  C0 22 91 58 */	lfs f1, lit_10119(r2)
/* 80094288  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 8009428C  C0 82 90 54 */	lfs f4, lit_8741(r2)
/* 80094290  D0 81 01 84 */	stfs f4, 0x184(r1)
/* 80094294  C0 02 91 5C */	lfs f0, lit_10120(r2)
/* 80094298  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8009429C  D0 21 02 2C */	stfs f1, 0x22c(r1)
/* 800942A0  D0 81 02 30 */	stfs f4, 0x230(r1)
/* 800942A4  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 800942A8  C0 02 91 60 */	lfs f0, lit_10121(r2)
/* 800942AC  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 800942B0  C0 62 8F 1C */	lfs f3, lit_7339(r2)
/* 800942B4  D0 61 01 78 */	stfs f3, 0x178(r1)
/* 800942B8  C0 22 8F 44 */	lfs f1, lit_8178(r2)
/* 800942BC  D0 21 01 7C */	stfs f1, 0x17c(r1)
/* 800942C0  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 800942C4  D0 61 02 3C */	stfs f3, 0x23c(r1)
/* 800942C8  D0 21 02 40 */	stfs f1, 0x240(r1)
/* 800942CC  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 800942D0  C0 42 91 64 */	lfs f2, lit_10122(r2)
/* 800942D4  D0 41 01 6C */	stfs f2, 0x16c(r1)
/* 800942D8  C0 02 8F 64 */	lfs f0, lit_8186(r2)
/* 800942DC  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 800942E0  D0 21 02 44 */	stfs f1, 0x244(r1)
/* 800942E4  D0 41 02 48 */	stfs f2, 0x248(r1)
/* 800942E8  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 800942EC  D0 C1 01 5C */	stfs f6, 0x15c(r1)
/* 800942F0  D0 A1 01 60 */	stfs f5, 0x160(r1)
/* 800942F4  C0 02 91 68 */	lfs f0, lit_10123(r2)
/* 800942F8  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 800942FC  D0 C1 02 50 */	stfs f6, 0x250(r1)
/* 80094300  D0 A1 02 54 */	stfs f5, 0x254(r1)
/* 80094304  D0 01 02 58 */	stfs f0, 0x258(r1)
/* 80094308  C0 22 91 6C */	lfs f1, lit_10124(r2)
/* 8009430C  D0 21 01 50 */	stfs f1, 0x150(r1)
/* 80094310  D0 81 01 54 */	stfs f4, 0x154(r1)
/* 80094314  C0 02 91 70 */	lfs f0, lit_10125(r2)
/* 80094318  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 8009431C  D0 21 02 5C */	stfs f1, 0x25c(r1)
/* 80094320  D0 81 02 60 */	stfs f4, 0x260(r1)
/* 80094324  D0 01 02 64 */	stfs f0, 0x264(r1)
/* 80094328  C0 22 90 58 */	lfs f1, lit_8742(r2)
/* 8009432C  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 80094330  D0 61 01 48 */	stfs f3, 0x148(r1)
/* 80094334  C0 02 90 FC */	lfs f0, lit_9424(r2)
/* 80094338  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 8009433C  D0 21 02 68 */	stfs f1, 0x268(r1)
/* 80094340  D0 61 02 6C */	stfs f3, 0x26c(r1)
/* 80094344  D0 01 02 70 */	stfs f0, 0x270(r1)
/* 80094348  C0 22 8F E4 */	lfs f1, lit_8218(r2)
/* 8009434C  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 80094350  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 80094354  C0 02 91 74 */	lfs f0, lit_10126(r2)
/* 80094358  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 8009435C  D0 21 02 74 */	stfs f1, 0x274(r1)
/* 80094360  D0 41 02 78 */	stfs f2, 0x278(r1)
/* 80094364  D0 01 02 7C */	stfs f0, 0x27c(r1)
/* 80094368  38 A1 01 B8 */	addi r5, r1, 0x1b8
/* 8009436C  3C 60 80 38 */	lis r3, lit_9811@ha
/* 80094370  38 63 AA 40 */	addi r3, r3, lit_9811@l
/* 80094374  38 83 FF FC */	addi r4, r3, -4
/* 80094378  38 00 00 0C */	li r0, 0xc
/* 8009437C  7C 09 03 A6 */	mtctr r0
lbl_80094380:
/* 80094380  80 64 00 04 */	lwz r3, 4(r4)
/* 80094384  84 04 00 08 */	lwzu r0, 8(r4)
/* 80094388  90 65 00 04 */	stw r3, 4(r5)
/* 8009438C  94 05 00 08 */	stwu r0, 8(r5)
/* 80094390  42 00 FF F0 */	bdnz lbl_80094380
/* 80094394  80 04 00 04 */	lwz r0, 4(r4)
/* 80094398  90 05 00 04 */	stw r0, 4(r5)
/* 8009439C  38 01 02 20 */	addi r0, r1, 0x220
/* 800943A0  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 800943A4  38 01 02 2C */	addi r0, r1, 0x22c
/* 800943A8  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 800943AC  38 01 02 38 */	addi r0, r1, 0x238
/* 800943B0  90 01 01 D0 */	stw r0, 0x1d0(r1)
/* 800943B4  38 01 02 44 */	addi r0, r1, 0x244
/* 800943B8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 800943BC  38 01 02 50 */	addi r0, r1, 0x250
/* 800943C0  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 800943C4  38 61 02 5C */	addi r3, r1, 0x25c
/* 800943C8  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 800943CC  90 01 01 F8 */	stw r0, 0x1f8(r1)
/* 800943D0  90 61 01 FC */	stw r3, 0x1fc(r1)
/* 800943D4  38 01 02 68 */	addi r0, r1, 0x268
/* 800943D8  90 01 02 0C */	stw r0, 0x20c(r1)
/* 800943DC  38 01 02 74 */	addi r0, r1, 0x274
/* 800943E0  90 01 02 10 */	stw r0, 0x210(r1)
/* 800943E4  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 800943E8  3C 60 80 38 */	lis r3, lit_9812@ha
/* 800943EC  38 63 AA A4 */	addi r3, r3, lit_9812@l
/* 800943F0  38 83 FF FC */	addi r4, r3, -4
/* 800943F4  38 00 00 03 */	li r0, 3
/* 800943F8  7C 09 03 A6 */	mtctr r0
lbl_800943FC:
/* 800943FC  80 64 00 04 */	lwz r3, 4(r4)
/* 80094400  84 04 00 08 */	lwzu r0, 8(r4)
/* 80094404  90 65 00 04 */	stw r3, 4(r5)
/* 80094408  94 05 00 08 */	stwu r0, 8(r5)
/* 8009440C  42 00 FF F0 */	bdnz lbl_800943FC
/* 80094410  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80094414  28 00 00 00 */	cmplwi r0, 0
/* 80094418  40 82 04 88 */	bne lbl_800948A0
/* 8009441C  7F E3 FB 78 */	mr r3, r31
/* 80094420  38 9F 03 F0 */	addi r4, r31, 0x3f0
/* 80094424  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094428  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8009442C  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80094430  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80094434  20 00 00 01 */	subfic r0, r0, 1
/* 80094438  7C 00 00 34 */	cntlzw r0, r0
/* 8009443C  54 06 D9 7E */	srwi r6, r0, 5
/* 80094440  4B FF 4C 4D */	bl getEvIntData__9dCamera_cFPiPci
/* 80094444  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094448  2C 00 00 02 */	cmpwi r0, 2
/* 8009444C  40 82 00 24 */	bne lbl_80094470
/* 80094450  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80094454  2C 00 00 01 */	cmpwi r0, 1
/* 80094458  41 82 00 10 */	beq lbl_80094468
/* 8009445C  38 00 00 03 */	li r0, 3
/* 80094460  90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 80094464  48 00 00 0C */	b lbl_80094470
lbl_80094468:
/* 80094468  38 00 00 04 */	li r0, 4
/* 8009446C  90 1F 03 F0 */	stw r0, 0x3f0(r31)
lbl_80094470:
/* 80094470  7F E3 FB 78 */	mr r3, r31
/* 80094474  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 80094478  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009447C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094480  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094484  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80094488  38 C1 01 C8 */	addi r6, r1, 0x1c8
/* 8009448C  7C C6 00 2E */	lwzx r6, r6, r0
/* 80094490  4B FF 4B FD */	bl getEvIntData__9dCamera_cFPiPci
/* 80094494  7F E3 FB 78 */	mr r3, r31
/* 80094498  38 9F 03 FC */	addi r4, r31, 0x3fc
/* 8009449C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800944A0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800944A4  38 A5 01 85 */	addi r5, r5, 0x185
/* 800944A8  4B FF 49 B1 */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 800944AC  90 7F 04 00 */	stw r3, 0x400(r31)
/* 800944B0  2C 03 00 00 */	cmpwi r3, 0
/* 800944B4  40 82 00 14 */	bne lbl_800944C8
/* 800944B8  38 01 01 A4 */	addi r0, r1, 0x1a4
/* 800944BC  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 800944C0  38 00 00 06 */	li r0, 6
/* 800944C4  90 1F 04 00 */	stw r0, 0x400(r31)
lbl_800944C8:
/* 800944C8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 800944CC  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800944D0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 800944D4  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 800944D8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 800944DC  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 800944E0  7F E3 FB 78 */	mr r3, r31
/* 800944E4  38 9F 04 04 */	addi r4, r31, 0x404
/* 800944E8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800944EC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800944F0  38 A5 00 DF */	addi r5, r5, 0xdf
/* 800944F4  38 C1 01 2C */	addi r6, r1, 0x12c
/* 800944F8  4B FF 4D 35 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 800944FC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80094500  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80094504  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80094508  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8009450C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80094510  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80094514  7F E3 FB 78 */	mr r3, r31
/* 80094518  38 9F 04 10 */	addi r4, r31, 0x410
/* 8009451C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094520  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094524  38 A5 00 D6 */	addi r5, r5, 0xd6
/* 80094528  38 C1 01 20 */	addi r6, r1, 0x120
/* 8009452C  4B FF 4D 01 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80094530  7F E3 FB 78 */	mr r3, r31
/* 80094534  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80094538  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 8009453C  38 85 00 36 */	addi r4, r5, 0x36
/* 80094540  38 A5 00 72 */	addi r5, r5, 0x72
/* 80094544  4B FF 50 B1 */	bl getEvActor__9dCamera_cFPcPc
/* 80094548  90 7F 03 F4 */	stw r3, 0x3f4(r31)
/* 8009454C  80 7F 03 F4 */	lwz r3, 0x3f4(r31)
/* 80094550  28 03 00 00 */	cmplwi r3, 0
/* 80094554  41 82 00 0C */	beq lbl_80094560
/* 80094558  80 03 00 04 */	lwz r0, 4(r3)
/* 8009455C  48 00 00 08 */	b lbl_80094564
lbl_80094560:
/* 80094560  38 00 FF FF */	li r0, -1
lbl_80094564:
/* 80094564  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 80094568  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 8009456C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80094570  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80094574  7C 63 00 2E */	lwzx r3, r3, r0
/* 80094578  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009457C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80094580  C0 03 00 04 */	lfs f0, 4(r3)
/* 80094584  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80094588  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009458C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80094590  7F E3 FB 78 */	mr r3, r31
/* 80094594  38 81 01 98 */	addi r4, r1, 0x198
/* 80094598  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009459C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800945A0  38 A5 00 0F */	addi r5, r5, 0xf
/* 800945A4  38 C1 01 14 */	addi r6, r1, 0x114
/* 800945A8  4B FF 4C 85 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 800945AC  38 61 01 08 */	addi r3, r1, 0x108
/* 800945B0  7F E4 FB 78 */	mr r4, r31
/* 800945B4  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 800945B8  38 C1 01 98 */	addi r6, r1, 0x198
/* 800945BC  48 0D 07 B1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800945C0  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 800945C4  D0 1F 04 2C */	stfs f0, 0x42c(r31)
/* 800945C8  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 800945CC  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 800945D0  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 800945D4  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 800945D8  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 800945DC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800945E0  38 61 01 CC */	addi r3, r1, 0x1cc
/* 800945E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 800945E8  2C 00 00 01 */	cmpwi r0, 1
/* 800945EC  40 82 00 F8 */	bne lbl_800946E4
/* 800945F0  38 61 00 FC */	addi r3, r1, 0xfc
/* 800945F4  7F E4 FB 78 */	mr r4, r31
/* 800945F8  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 800945FC  48 00 31 61 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80094600  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80094604  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80094608  38 A1 00 FC */	addi r5, r1, 0xfc
/* 8009460C  48 1D 25 29 */	bl __mi__4cXyzCFRC3Vec
/* 80094610  38 61 00 4C */	addi r3, r1, 0x4c
/* 80094614  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80094618  48 1D D2 69 */	bl __ct__7cSGlobeFRC4cXyz
/* 8009461C  38 61 00 34 */	addi r3, r1, 0x34
/* 80094620  7F E4 FB 78 */	mr r4, r31
/* 80094624  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 80094628  48 00 31 11 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8009462C  38 61 00 30 */	addi r3, r1, 0x30
/* 80094630  38 81 00 52 */	addi r4, r1, 0x52
/* 80094634  38 A1 00 34 */	addi r5, r1, 0x34
/* 80094638  48 1D CB 6D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8009463C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80094640  38 81 00 30 */	addi r4, r1, 0x30
/* 80094644  48 1D C9 25 */	bl __ct__7cSAngleFRC7cSAngle
/* 80094648  A8 61 00 3C */	lha r3, 0x3c(r1)
/* 8009464C  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80094650  7C 03 00 00 */	cmpw r3, r0
/* 80094654  40 80 00 20 */	bge lbl_80094674
/* 80094658  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 8009465C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80094660  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80094664  7C 63 00 2E */	lwzx r3, r3, r0
/* 80094668  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009466C  FC 00 00 50 */	fneg f0, f0
/* 80094670  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80094674:
/* 80094674  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80094678  7F E4 FB 78 */	mr r4, r31
/* 8009467C  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 80094680  3B C1 01 C0 */	addi r30, r1, 0x1c0
/* 80094684  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094688  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8009468C  7C DE 00 2E */	lwzx r6, r30, r0
/* 80094690  48 0D 06 DD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80094694  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80094698  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8009469C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 800946A0  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 800946A4  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 800946A8  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 800946AC  7F E3 FB 78 */	mr r3, r31
/* 800946B0  38 9F 04 2C */	addi r4, r31, 0x42c
/* 800946B4  38 A1 01 98 */	addi r5, r1, 0x198
/* 800946B8  38 C0 40 07 */	li r6, 0x4007
/* 800946BC  48 0D 14 35 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 800946C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800946C4  41 82 01 18 */	beq lbl_800947DC
/* 800946C8  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 800946CC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800946D0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 800946D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 800946D8  FC 00 00 50 */	fneg f0, f0
/* 800946DC  D0 03 00 00 */	stfs f0, 0(r3)
/* 800946E0  48 00 00 FC */	b lbl_800947DC
lbl_800946E4:
/* 800946E4  2C 00 FF FF */	cmpwi r0, -1
/* 800946E8  40 82 00 F4 */	bne lbl_800947DC
/* 800946EC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 800946F0  7F E4 FB 78 */	mr r4, r31
/* 800946F4  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 800946F8  48 00 30 65 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 800946FC  38 61 00 CC */	addi r3, r1, 0xcc
/* 80094700  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80094704  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80094708  48 1D 24 2D */	bl __mi__4cXyzCFRC3Vec
/* 8009470C  38 61 00 44 */	addi r3, r1, 0x44
/* 80094710  38 81 00 CC */	addi r4, r1, 0xcc
/* 80094714  48 1D D1 6D */	bl __ct__7cSGlobeFRC4cXyz
/* 80094718  38 61 00 2C */	addi r3, r1, 0x2c
/* 8009471C  7F E4 FB 78 */	mr r4, r31
/* 80094720  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 80094724  48 00 30 15 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80094728  38 61 00 28 */	addi r3, r1, 0x28
/* 8009472C  38 81 00 4A */	addi r4, r1, 0x4a
/* 80094730  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80094734  48 1D CA 71 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80094738  38 61 00 38 */	addi r3, r1, 0x38
/* 8009473C  38 81 00 28 */	addi r4, r1, 0x28
/* 80094740  48 1D C8 29 */	bl __ct__7cSAngleFRC7cSAngle
/* 80094744  A8 61 00 38 */	lha r3, 0x38(r1)
/* 80094748  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8009474C  7C 03 00 00 */	cmpw r3, r0
/* 80094750  40 81 00 20 */	ble lbl_80094770
/* 80094754  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094758  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8009475C  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80094760  7C 63 00 2E */	lwzx r3, r3, r0
/* 80094764  C0 03 00 00 */	lfs f0, 0(r3)
/* 80094768  FC 00 00 50 */	fneg f0, f0
/* 8009476C  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80094770:
/* 80094770  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80094774  7F E4 FB 78 */	mr r4, r31
/* 80094778  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 8009477C  3B C1 01 C0 */	addi r30, r1, 0x1c0
/* 80094780  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094784  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80094788  7C DE 00 2E */	lwzx r6, r30, r0
/* 8009478C  48 0D 05 E1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80094790  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80094794  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80094798  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8009479C  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 800947A0  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 800947A4  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 800947A8  7F E3 FB 78 */	mr r3, r31
/* 800947AC  38 9F 04 2C */	addi r4, r31, 0x42c
/* 800947B0  38 A1 01 98 */	addi r5, r1, 0x198
/* 800947B4  38 C0 40 07 */	li r6, 0x4007
/* 800947B8  48 0D 13 39 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 800947BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800947C0  41 82 00 1C */	beq lbl_800947DC
/* 800947C4  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 800947C8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800947CC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 800947D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800947D4  FC 00 00 50 */	fneg f0, f0
/* 800947D8  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800947DC:
/* 800947DC  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 800947E0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800947E4  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 800947E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 800947EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 800947F0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 800947F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800947F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800947FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80094800  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80094804  7F E3 FB 78 */	mr r3, r31
/* 80094808  38 81 01 98 */	addi r4, r1, 0x198
/* 8009480C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80094810  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80094814  38 A5 00 0B */	addi r5, r5, 0xb
/* 80094818  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 8009481C  4B FF 4A 11 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80094820  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80094824  7F E4 FB 78 */	mr r4, r31
/* 80094828  80 BF 03 F4 */	lwz r5, 0x3f4(r31)
/* 8009482C  38 C1 01 98 */	addi r6, r1, 0x198
/* 80094830  48 0D 05 3D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80094834  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80094838  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8009483C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80094840  D0 1F 04 3C */	stfs f0, 0x43c(r31)
/* 80094844  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80094848  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8009484C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80094850  38 9F 04 10 */	addi r4, r31, 0x410
/* 80094854  38 BF 04 04 */	addi r5, r31, 0x404
/* 80094858  48 1D 22 DD */	bl __mi__4cXyzCFRC3Vec
/* 8009485C  38 7F 04 24 */	addi r3, r31, 0x424
/* 80094860  38 81 00 9C */	addi r4, r1, 0x9c
/* 80094864  48 1D D2 0D */	bl Val__7cSGlobeFRC4cXyz
/* 80094868  38 61 00 90 */	addi r3, r1, 0x90
/* 8009486C  38 9F 04 38 */	addi r4, r31, 0x438
/* 80094870  38 BF 04 2C */	addi r5, r31, 0x42c
/* 80094874  48 1D 22 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80094878  38 7F 04 4C */	addi r3, r31, 0x44c
/* 8009487C  38 81 00 90 */	addi r4, r1, 0x90
/* 80094880  48 1D D1 F1 */	bl Val__7cSGlobeFRC4cXyz
/* 80094884  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80094888  80 9F 04 00 */	lwz r4, 0x400(r31)
/* 8009488C  80 BF 03 EC */	lwz r5, 0x3ec(r31)
/* 80094890  38 A5 00 01 */	addi r5, r5, 1
/* 80094894  48 00 2F E5 */	bl Init__14d2DBSplinePathFll
/* 80094898  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 8009489C  48 00 30 69 */	bl Step__14d2DBSplinePathFv
lbl_800948A0:
/* 800948A0  80 1F 03 F4 */	lwz r0, 0x3f4(r31)
/* 800948A4  28 00 00 00 */	cmplwi r0, 0
/* 800948A8  41 82 00 2C */	beq lbl_800948D4
/* 800948AC  80 1F 03 F8 */	lwz r0, 0x3f8(r31)
/* 800948B0  90 01 00 40 */	stw r0, 0x40(r1)
/* 800948B4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800948B8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800948BC  38 81 00 40 */	addi r4, r1, 0x40
/* 800948C0  4B F8 4F 39 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800948C4  28 03 00 00 */	cmplwi r3, 0
/* 800948C8  40 82 00 0C */	bne lbl_800948D4
/* 800948CC  38 60 00 01 */	li r3, 1
/* 800948D0  48 00 01 80 */	b lbl_80094A50
lbl_800948D4:
/* 800948D4  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 800948D8  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 800948DC  7C 03 00 40 */	cmplw r3, r0
/* 800948E0  40 80 01 6C */	bge lbl_80094A4C
/* 800948E4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 800948E8  48 00 30 1D */	bl Step__14d2DBSplinePathFv
/* 800948EC  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 800948F0  80 9F 03 FC */	lwz r4, 0x3fc(r31)
/* 800948F4  48 00 32 2D */	bl Calc__14d2DBSplinePathFPf
/* 800948F8  FF E0 08 90 */	fmr f31, f1
/* 800948FC  38 61 00 84 */	addi r3, r1, 0x84
/* 80094900  38 9F 04 2C */	addi r4, r31, 0x42c
/* 80094904  38 BF 04 04 */	addi r5, r31, 0x404
/* 80094908  48 1D 22 2D */	bl __mi__4cXyzCFRC3Vec
/* 8009490C  38 61 00 78 */	addi r3, r1, 0x78
/* 80094910  38 81 00 84 */	addi r4, r1, 0x84
/* 80094914  FC 20 F8 90 */	fmr f1, f31
/* 80094918  48 1D 22 6D */	bl __ml__4cXyzCFf
/* 8009491C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80094920  38 9F 04 04 */	addi r4, r31, 0x404
/* 80094924  38 A1 00 78 */	addi r5, r1, 0x78
/* 80094928  48 1D 21 BD */	bl __pl__4cXyzCFRC3Vec
/* 8009492C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80094930  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 80094934  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80094938  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8009493C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80094940  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 80094944  C0 3F 04 24 */	lfs f1, 0x424(r31)
/* 80094948  C0 1F 04 4C */	lfs f0, 0x44c(r31)
/* 8009494C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094950  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094954  EC 01 00 2A */	fadds f0, f1, f0
/* 80094958  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8009495C  38 61 00 24 */	addi r3, r1, 0x24
/* 80094960  38 9F 04 50 */	addi r4, r31, 0x450
/* 80094964  3B DF 04 28 */	addi r30, r31, 0x428
/* 80094968  7F C5 F3 78 */	mr r5, r30
/* 8009496C  48 1D C8 39 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80094970  38 61 00 20 */	addi r3, r1, 0x20
/* 80094974  38 81 00 24 */	addi r4, r1, 0x24
/* 80094978  FC 20 F8 90 */	fmr f1, f31
/* 8009497C  48 1D C8 E9 */	bl __ml__7cSAngleCFf
/* 80094980  38 61 00 1C */	addi r3, r1, 0x1c
/* 80094984  7F C4 F3 78 */	mr r4, r30
/* 80094988  38 A1 00 20 */	addi r5, r1, 0x20
/* 8009498C  48 1D C7 E9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80094990  38 61 00 0C */	addi r3, r1, 0xc
/* 80094994  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 80094998  48 1D C6 01 */	bl __ct__7cSAngleFs
/* 8009499C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 800949A0  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 800949A4  38 61 00 18 */	addi r3, r1, 0x18
/* 800949A8  38 9F 04 52 */	addi r4, r31, 0x452
/* 800949AC  3B DF 04 2A */	addi r30, r31, 0x42a
/* 800949B0  7F C5 F3 78 */	mr r5, r30
/* 800949B4  48 1D C7 F1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 800949B8  38 61 00 14 */	addi r3, r1, 0x14
/* 800949BC  38 81 00 18 */	addi r4, r1, 0x18
/* 800949C0  FC 20 F8 90 */	fmr f1, f31
/* 800949C4  48 1D C8 A1 */	bl __ml__7cSAngleCFf
/* 800949C8  38 61 00 10 */	addi r3, r1, 0x10
/* 800949CC  7F C4 F3 78 */	mr r4, r30
/* 800949D0  38 A1 00 14 */	addi r5, r1, 0x14
/* 800949D4  48 1D C7 A1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 800949D8  38 61 00 08 */	addi r3, r1, 8
/* 800949DC  A8 81 00 10 */	lha r4, 0x10(r1)
/* 800949E0  48 1D C5 B9 */	bl __ct__7cSAngleFs
/* 800949E4  A8 01 00 08 */	lha r0, 8(r1)
/* 800949E8  B0 1F 00 62 */	sth r0, 0x62(r31)
/* 800949EC  38 61 00 60 */	addi r3, r1, 0x60
/* 800949F0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 800949F4  48 1D D0 C1 */	bl Xyz__7cSGlobeCFv
/* 800949F8  38 61 00 54 */	addi r3, r1, 0x54
/* 800949FC  38 9F 00 64 */	addi r4, r31, 0x64
/* 80094A00  38 A1 00 60 */	addi r5, r1, 0x60
/* 80094A04  48 1D 20 E1 */	bl __pl__4cXyzCFRC3Vec
/* 80094A08  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80094A0C  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 80094A10  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80094A14  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80094A18  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80094A1C  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80094A20  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80094A24  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80094A28  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80094A2C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80094A30  7C 03 04 2E */	lfsx f0, r3, r0
/* 80094A34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094A38  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094A3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80094A40  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80094A44  38 60 00 00 */	li r3, 0
/* 80094A48  48 00 00 08 */	b lbl_80094A50
lbl_80094A4C:
/* 80094A4C  38 60 00 01 */	li r3, 1
lbl_80094A50:
/* 80094A50  E3 E1 02 98 */	psq_l f31, 664(r1), 0, 0 /* qr0 */
/* 80094A54  CB E1 02 90 */	lfd f31, 0x290(r1)
/* 80094A58  83 E1 02 8C */	lwz r31, 0x28c(r1)
/* 80094A5C  83 C1 02 88 */	lwz r30, 0x288(r1)
/* 80094A60  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 80094A64  7C 08 03 A6 */	mtlr r0
/* 80094A68  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 80094A6C  4E 80 00 20 */	blr 
