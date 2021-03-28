lbl_8051309C:
/* 8051309C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805130A0  7C 08 02 A6 */	mflr r0
/* 805130A4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805130A8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805130AC  4B E4 F1 14 */	b _savegpr_22
/* 805130B0  7C 7F 1B 78 */	mr r31, r3
/* 805130B4  3C 60 80 52 */	lis r3, lit_1109@ha
/* 805130B8  3B 03 91 40 */	addi r24, r3, lit_1109@l
/* 805130BC  3C 60 80 52 */	lis r3, lit_4208@ha
/* 805130C0  3B C3 85 84 */	addi r30, r3, lit_4208@l
/* 805130C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805130C8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805130CC  82 FD 5D AC */	lwz r23, 0x5dac(r29)
/* 805130D0  88 1D 5D B0 */	lbz r0, 0x5db0(r29)
/* 805130D4  7C 00 07 74 */	extsb r0, r0
/* 805130D8  38 7D 5D 74 */	addi r3, r29, 0x5d74
/* 805130DC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805130E0  7F 83 00 2E */	lwzx r28, r3, r0
/* 805130E4  82 DD 5D 74 */	lwz r22, 0x5d74(r29)
/* 805130E8  38 00 01 00 */	li r0, 0x100
/* 805130EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805130F0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 805130F4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 805130F8  38 81 00 10 */	addi r4, r1, 0x10
/* 805130FC  4B B0 66 FC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80513100  7C 79 1B 78 */	mr r25, r3
/* 80513104  3B 60 00 00 */	li r27, 0
/* 80513108  3B 40 00 00 */	li r26, 0
/* 8051310C  A8 7F 12 A4 */	lha r3, 0x12a4(r31)
/* 80513110  38 03 00 01 */	addi r0, r3, 1
/* 80513114  28 00 00 24 */	cmplwi r0, 0x24
/* 80513118  41 81 14 50 */	bgt lbl_80514568
/* 8051311C  3C 60 80 52 */	lis r3, lit_10414@ha
/* 80513120  38 63 8E 3C */	addi r3, r3, lit_10414@l
/* 80513124  54 00 10 3A */	slwi r0, r0, 2
/* 80513128  7C 03 00 2E */	lwzx r0, r3, r0
/* 8051312C  7C 09 03 A6 */	mtctr r0
/* 80513130  4E 80 04 20 */	bctr 
lbl_80513134:
/* 80513134  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80513138  28 00 00 02 */	cmplwi r0, 2
/* 8051313C  41 82 00 2C */	beq lbl_80513168
/* 80513140  7F E3 FB 78 */	mr r3, r31
/* 80513144  38 80 00 02 */	li r4, 2
/* 80513148  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8051314C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80513150  38 C0 00 00 */	li r6, 0
/* 80513154  4B B0 87 B4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80513158  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8051315C  60 00 00 02 */	ori r0, r0, 2
/* 80513160  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80513164  48 00 14 C4 */	b lbl_80514628
lbl_80513168:
/* 80513168  38 7C 02 48 */	addi r3, r28, 0x248
/* 8051316C  4B C4 E3 64 */	b Stop__9dCamera_cFv
/* 80513170  38 00 00 02 */	li r0, 2
/* 80513174  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513178  38 00 00 00 */	li r0, 0
/* 8051317C  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513180  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80513184  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80513188  38 7C 02 48 */	addi r3, r28, 0x248
/* 8051318C  38 80 00 03 */	li r4, 3
/* 80513190  4B C4 FE 7C */	b SetTrimSize__9dCamera_cFl
/* 80513194  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80513198  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 8051319C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805131A0  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 805131A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805131A8  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805131AC  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 805131B0  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 805131B4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805131B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805131BC  EC 02 00 2A */	fadds f0, f2, f0
/* 805131C0  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 805131C4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805131C8  D0 1F 13 00 */	stfs f0, 0x1300(r31)
/* 805131CC  A8 1F 09 7C */	lha r0, 0x97c(r31)
/* 805131D0  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_805131D4:
/* 805131D4  A8 7F 12 A6 */	lha r3, 0x12a6(r31)
/* 805131D8  2C 03 00 55 */	cmpwi r3, 0x55
/* 805131DC  40 80 00 98 */	bge lbl_80513274
/* 805131E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805131E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805131E8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805131EC  4B AF 91 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 805131F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805131F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805131F8  38 80 06 40 */	li r4, 0x640
/* 805131FC  4B AF 91 A0 */	b mDoMtx_XrotM__FPA4_fs
/* 80513200  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80513204  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80513208  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8051320C  C0 1F 13 00 */	lfs f0, 0x1300(r31)
/* 80513210  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80513214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80513218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8051321C  38 81 00 98 */	addi r4, r1, 0x98
/* 80513220  38 BF 12 A8 */	addi r5, r31, 0x12a8
/* 80513224  4B E3 3B 48 */	b PSMTXMultVec
/* 80513228  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 8051322C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80513230  7C 65 1B 78 */	mr r5, r3
/* 80513234  4B E3 3E 5C */	b PSVECAdd
/* 80513238  38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 8051323C  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 80513240  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80513244  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80513248  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051324C  EC 22 00 2A */	fadds f1, f2, f0
/* 80513250  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80513254  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 80513258  4B D5 C7 E4 */	b cLib_addCalc2__FPffff
/* 8051325C  38 7F 13 00 */	addi r3, r31, 0x1300
/* 80513260  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80513264  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80513268  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 8051326C  4B D5 C7 D0 */	b cLib_addCalc2__FPffff
/* 80513270  48 00 12 F8 */	b lbl_80514568
lbl_80513274:
/* 80513274  88 18 00 C0 */	lbz r0, 0xc0(r24)
/* 80513278  28 00 00 7C */	cmplwi r0, 0x7c
/* 8051327C  40 82 01 5C */	bne lbl_805133D8
/* 80513280  38 00 00 01 */	li r0, 1
/* 80513284  98 18 00 A6 */	stb r0, 0xa6(r24)
/* 80513288  38 A0 00 00 */	li r5, 0
/* 8051328C  90 B8 00 EC */	stw r5, 0xec(r24)
/* 80513290  7C A3 2B 78 */	mr r3, r5
/* 80513294  38 98 00 C4 */	addi r4, r24, 0xc4
/* 80513298  38 00 00 02 */	li r0, 2
/* 8051329C  7C 09 03 A6 */	mtctr r0
lbl_805132A0:
/* 805132A0  7C A4 19 2E */	stwx r5, r4, r3
/* 805132A4  38 63 00 04 */	addi r3, r3, 4
/* 805132A8  42 00 FF F8 */	bdnz lbl_805132A0
/* 805132AC  3C 60 80 51 */	lis r3, s_wb_sub2__FPvPv@ha
/* 805132B0  38 63 2B 40 */	addi r3, r3, s_wb_sub2__FPvPv@l
/* 805132B4  7F E4 FB 78 */	mr r4, r31
/* 805132B8  4B B0 E0 80 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805132BC  80 B8 00 C4 */	lwz r5, 0xc4(r24)
/* 805132C0  28 05 00 00 */	cmplwi r5, 0
/* 805132C4  41 82 01 00 */	beq lbl_805133C4
/* 805132C8  38 78 00 C4 */	addi r3, r24, 0xc4
/* 805132CC  80 83 00 04 */	lwz r4, 4(r3)
/* 805132D0  28 04 00 00 */	cmplwi r4, 0
/* 805132D4  41 82 00 F0 */	beq lbl_805133C4
/* 805132D8  38 61 00 5C */	addi r3, r1, 0x5c
/* 805132DC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805132E0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 805132E4  4B D5 38 50 */	b __mi__4cXyzCFRC3Vec
/* 805132E8  38 61 00 50 */	addi r3, r1, 0x50
/* 805132EC  38 81 00 5C */	addi r4, r1, 0x5c
/* 805132F0  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 805132F4  4B D5 38 90 */	b __ml__4cXyzCFf
/* 805132F8  38 61 00 44 */	addi r3, r1, 0x44
/* 805132FC  80 98 00 C4 */	lwz r4, 0xc4(r24)
/* 80513300  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80513304  38 A1 00 50 */	addi r5, r1, 0x50
/* 80513308  4B D5 37 DC */	b __pl__4cXyzCFRC3Vec
/* 8051330C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80513310  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513314  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80513318  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 8051331C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80513320  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513324  C0 3F 12 B8 */	lfs f1, 0x12b8(r31)
/* 80513328  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8051332C  EC 01 00 2A */	fadds f0, f1, f0
/* 80513330  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80513334  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513338  2C 00 00 55 */	cmpwi r0, 0x55
/* 8051333C  40 82 00 40 */	bne lbl_8051337C
/* 80513340  C0 1F 12 B4 */	lfs f0, 0x12b4(r31)
/* 80513344  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80513348  C0 1F 12 B8 */	lfs f0, 0x12b8(r31)
/* 8051334C  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 80513350  C0 1F 12 BC */	lfs f0, 0x12bc(r31)
/* 80513354  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 80513358  C0 3F 12 AC */	lfs f1, 0x12ac(r31)
/* 8051335C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80513360  EC 01 00 2A */	fadds f0, f1, f0
/* 80513364  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 80513368  C0 3F 12 B0 */	lfs f1, 0x12b0(r31)
/* 8051336C  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 80513370  EC 01 00 2A */	fadds f0, f1, f0
/* 80513374  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 80513378  48 00 00 4C */	b lbl_805133C4
lbl_8051337C:
/* 8051337C  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 80513380  C0 3F 12 B4 */	lfs f1, 0x12b4(r31)
/* 80513384  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80513388  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8051338C  4B D5 C6 B0 */	b cLib_addCalc2__FPffff
/* 80513390  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 80513394  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80513398  C0 1F 12 B8 */	lfs f0, 0x12b8(r31)
/* 8051339C  EC 23 00 2A */	fadds f1, f3, f0
/* 805133A0  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 805133A4  4B D5 C6 98 */	b cLib_addCalc2__FPffff
/* 805133A8  38 7F 12 B0 */	addi r3, r31, 0x12b0
/* 805133AC  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 805133B0  C0 1F 12 BC */	lfs f0, 0x12bc(r31)
/* 805133B4  EC 21 00 2A */	fadds f1, f1, f0
/* 805133B8  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 805133BC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805133C0  4B D5 C6 7C */	b cLib_addCalc2__FPffff
lbl_805133C4:
/* 805133C4  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805133C8  2C 00 00 DC */	cmpwi r0, 0xdc
/* 805133CC  40 82 11 9C */	bne lbl_80514568
/* 805133D0  3B 60 00 01 */	li r27, 1
/* 805133D4  48 00 11 94 */	b lbl_80514568
lbl_805133D8:
/* 805133D8  2C 03 00 8C */	cmpwi r3, 0x8c
/* 805133DC  40 82 11 8C */	bne lbl_80514568
/* 805133E0  3B 60 00 01 */	li r27, 1
/* 805133E4  48 00 11 84 */	b lbl_80514568
lbl_805133E8:
/* 805133E8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805133EC  28 00 00 02 */	cmplwi r0, 2
/* 805133F0  41 82 00 2C */	beq lbl_8051341C
/* 805133F4  7F E3 FB 78 */	mr r3, r31
/* 805133F8  38 80 00 02 */	li r4, 2
/* 805133FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80513400  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80513404  38 C0 00 00 */	li r6, 0
/* 80513408  4B B0 85 00 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8051340C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80513410  60 00 00 02 */	ori r0, r0, 2
/* 80513414  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80513418  48 00 12 10 */	b lbl_80514628
lbl_8051341C:
/* 8051341C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80513420  4B C4 E0 B0 */	b Stop__9dCamera_cFv
/* 80513424  38 00 00 0B */	li r0, 0xb
/* 80513428  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 8051342C  38 00 00 00 */	li r0, 0
/* 80513430  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513434  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80513438  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 8051343C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80513440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80513444  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80513448  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8051344C  90 03 5D 7C */	stw r0, 0x5d7c(r3)
/* 80513450  38 7C 02 48 */	addi r3, r28, 0x248
/* 80513454  38 80 00 03 */	li r4, 3
/* 80513458  4B C4 FB B4 */	b SetTrimSize__9dCamera_cFl
/* 8051345C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80513460  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513464  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80513468  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 8051346C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80513470  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513474  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 80513478  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 8051347C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80513480  EC 01 00 28 */	fsubs f0, f1, f0
/* 80513484  EC 02 00 2A */	fadds f0, f2, f0
/* 80513488  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 8051348C  C0 16 00 D8 */	lfs f0, 0xd8(r22)
/* 80513490  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80513494  C0 16 00 DC */	lfs f0, 0xdc(r22)
/* 80513498  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 8051349C  C0 16 00 E0 */	lfs f0, 0xe0(r22)
/* 805134A0  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805134A4  A8 1F 09 7C */	lha r0, 0x97c(r31)
/* 805134A8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805134AC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805134B0  D0 1F 13 00 */	stfs f0, 0x1300(r31)
lbl_805134B4:
/* 805134B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805134B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805134BC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805134C0  4B AF 8F 1C */	b mDoMtx_YrotS__FPA4_fs
/* 805134C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805134C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805134CC  38 80 06 40 */	li r4, 0x640
/* 805134D0  4B AF 8E CC */	b mDoMtx_XrotM__FPA4_fs
/* 805134D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805134D8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805134DC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805134E0  C0 1F 13 00 */	lfs f0, 0x1300(r31)
/* 805134E4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805134E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805134EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805134F0  38 81 00 98 */	addi r4, r1, 0x98
/* 805134F4  38 A1 00 8C */	addi r5, r1, 0x8c
/* 805134F8  4B E3 38 74 */	b PSMTXMultVec
/* 805134FC  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80513500  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80513504  EC 01 00 2A */	fadds f0, f1, f0
/* 80513508  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8051350C  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80513510  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80513514  EC 01 00 2A */	fadds f0, f1, f0
/* 80513518  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8051351C  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80513520  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80513524  EC 01 00 2A */	fadds f0, f1, f0
/* 80513528  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8051352C  38 7F 13 00 */	addi r3, r31, 0x1300
/* 80513530  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80513534  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80513538  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 8051353C  4B D5 C5 00 */	b cLib_addCalc2__FPffff
/* 80513540  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513544  2C 00 00 14 */	cmpwi r0, 0x14
/* 80513548  40 80 00 20 */	bge lbl_80513568
/* 8051354C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80513550  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80513554  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80513558  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 8051355C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80513560  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 80513564  48 00 00 2C */	b lbl_80513590
lbl_80513568:
/* 80513568  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 8051356C  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80513570  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80513574  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80513578  4B D5 C4 C4 */	b cLib_addCalc2__FPffff
/* 8051357C  38 7F 12 B0 */	addi r3, r31, 0x12b0
/* 80513580  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80513584  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80513588  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 8051358C  4B D5 C4 B0 */	b cLib_addCalc2__FPffff
lbl_80513590:
/* 80513590  38 7F 12 B4 */	addi r3, r31, 0x12b4
/* 80513594  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 80513598  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 8051359C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 805135A0  4B D5 C4 9C */	b cLib_addCalc2__FPffff
/* 805135A4  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 805135A8  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 805135AC  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 805135B0  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 805135B4  4B D5 C4 88 */	b cLib_addCalc2__FPffff
/* 805135B8  38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 805135BC  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 805135C0  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 805135C4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805135C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805135CC  EC 22 00 2A */	fadds f1, f2, f0
/* 805135D0  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 805135D4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805135D8  4B D5 C4 64 */	b cLib_addCalc2__FPffff
/* 805135DC  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805135E0  2C 00 00 64 */	cmpwi r0, 0x64
/* 805135E4  40 82 0F 84 */	bne lbl_80514568
/* 805135E8  3B 60 00 01 */	li r27, 1
/* 805135EC  48 00 0F 7C */	b lbl_80514568
lbl_805135F0:
/* 805135F0  7E E3 BB 78 */	mr r3, r23
/* 805135F4  81 97 06 28 */	lwz r12, 0x628(r23)
/* 805135F8  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 805135FC  7D 89 03 A6 */	mtctr r12
/* 80513600  4E 80 04 21 */	bctrl 
/* 80513604  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80513608  40 82 0F 60 */	bne lbl_80514568
/* 8051360C  38 00 00 15 */	li r0, 0x15
/* 80513610  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513614  38 00 00 00 */	li r0, 0
/* 80513618  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 8051361C  48 00 0F 4C */	b lbl_80514568
lbl_80513620:
/* 80513620  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80513624  28 00 00 02 */	cmplwi r0, 2
/* 80513628  41 82 00 2C */	beq lbl_80513654
/* 8051362C  7F E3 FB 78 */	mr r3, r31
/* 80513630  38 80 00 02 */	li r4, 2
/* 80513634  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80513638  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8051363C  38 C0 00 00 */	li r6, 0
/* 80513640  4B B0 82 C8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80513644  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80513648  60 00 00 02 */	ori r0, r0, 2
/* 8051364C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80513650  48 00 0F D8 */	b lbl_80514628
lbl_80513654:
/* 80513654  38 7C 02 48 */	addi r3, r28, 0x248
/* 80513658  4B C4 DE 78 */	b Stop__9dCamera_cFv
/* 8051365C  38 00 00 15 */	li r0, 0x15
/* 80513660  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513664  38 00 00 00 */	li r0, 0
/* 80513668  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 8051366C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80513670  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80513674  38 7C 02 48 */	addi r3, r28, 0x248
/* 80513678  38 80 00 03 */	li r4, 3
/* 8051367C  4B C4 F9 90 */	b SetTrimSize__9dCamera_cFl
/* 80513680  C0 16 00 E4 */	lfs f0, 0xe4(r22)
/* 80513684  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513688  C0 16 00 E8 */	lfs f0, 0xe8(r22)
/* 8051368C  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80513690  C0 16 00 EC */	lfs f0, 0xec(r22)
/* 80513694  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513698  C0 16 00 D8 */	lfs f0, 0xd8(r22)
/* 8051369C  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805136A0  C0 16 00 DC */	lfs f0, 0xdc(r22)
/* 805136A4  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805136A8  C0 16 00 E0 */	lfs f0, 0xe0(r22)
/* 805136AC  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805136B0  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 805136B4  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 805136B8  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 805136BC  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 805136C0  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 805136C4  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 805136C8  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 805136CC  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 805136D0  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 805136D4  D0 1F 12 C4 */	stfs f0, 0x12c4(r31)
/* 805136D8  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 805136DC  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 805136E0  7F E3 FB 78 */	mr r3, r31
/* 805136E4  4B FF F9 19 */	bl cam_spd_set__FP10e_rd_class
/* 805136E8  38 7F 12 E4 */	addi r3, r31, 0x12e4
/* 805136EC  7C 64 1B 78 */	mr r4, r3
/* 805136F0  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 805136F4  4B E3 39 E4 */	b PSVECScale
/* 805136F8  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 805136FC  D0 1F 12 F0 */	stfs f0, 0x12f0(r31)
/* 80513700  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80513704  D0 1F 12 F4 */	stfs f0, 0x12f4(r31)
/* 80513708  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 8051370C  D0 1F 12 F8 */	stfs f0, 0x12f8(r31)
/* 80513710  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80513714  D0 1F 12 F4 */	stfs f0, 0x12f4(r31)
/* 80513718  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8051371C  38 00 00 03 */	li r0, 3
/* 80513720  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80513724  38 80 00 00 */	li r4, 0
/* 80513728  90 83 06 0C */	stw r4, 0x60c(r3)
/* 8051372C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80513730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80513734  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80513738  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8051373C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80513740  41 82 00 24 */	beq lbl_80513764
/* 80513744  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80513748  38 00 00 47 */	li r0, 0x47
/* 8051374C  90 03 06 14 */	stw r0, 0x614(r3)
/* 80513750  90 83 06 0C */	stw r4, 0x60c(r3)
/* 80513754  90 83 06 10 */	stw r4, 0x610(r3)
/* 80513758  B0 83 06 0A */	sth r4, 0x60a(r3)
/* 8051375C  38 00 00 13 */	li r0, 0x13
/* 80513760  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
lbl_80513764:
/* 80513764  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80513768  38 9F 12 F0 */	addi r4, r31, 0x12f0
/* 8051376C  A8 B7 04 E6 */	lha r5, 0x4e6(r23)
/* 80513770  38 C0 00 00 */	li r6, 0
/* 80513774  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80513778  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8051377C  7D 89 03 A6 */	mtctr r12
/* 80513780  4E 80 04 21 */	bctrl 
/* 80513784  A8 1F 12 A4 */	lha r0, 0x12a4(r31)
/* 80513788  2C 00 00 13 */	cmpwi r0, 0x13
/* 8051378C  41 82 0D DC */	beq lbl_80514568
/* 80513790  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513794  2C 00 00 01 */	cmpwi r0, 1
/* 80513798  40 82 00 34 */	bne lbl_805137CC
/* 8051379C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805137A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805137A4  80 63 00 00 */	lwz r3, 0(r3)
/* 805137A8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805137AC  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000055@ha */
/* 805137B0  38 84 00 55 */	addi r4, r4, 0x0055 /* 0x02000055@l */
/* 805137B4  4B D9 C3 E0 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 805137B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805137BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805137C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805137C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805137C8  4B D9 C6 50 */	b bgmStreamPlay__8Z2SeqMgrFv
lbl_805137CC:
/* 805137CC  7F E3 FB 78 */	mr r3, r31
/* 805137D0  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 805137D4  4B FF F7 45 */	bl cam_3d_morf__FP10e_rd_classf
/* 805137D8  38 7F 13 0C */	addi r3, r31, 0x130c
/* 805137DC  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 805137E0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805137E4  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 805137E8  4B D5 C2 54 */	b cLib_addCalc2__FPffff
/* 805137EC  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805137F0  2C 00 00 46 */	cmpwi r0, 0x46
/* 805137F4  40 82 00 1C */	bne lbl_80513810
/* 805137F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805137FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80513800  38 80 00 4B */	li r4, 0x4b
/* 80513804  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80513808  7C 05 07 74 */	extsb r5, r0
/* 8051380C  4B B2 19 F4 */	b onSwitch__10dSv_info_cFii
lbl_80513810:
/* 80513810  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513814  2C 00 00 46 */	cmpwi r0, 0x46
/* 80513818  41 80 00 3C */	blt lbl_80513854
/* 8051381C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80513820  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80513824  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80513828  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8051382C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80513830  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80513834  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80513838  38 81 00 8C */	addi r4, r1, 0x8c
/* 8051383C  38 A0 E0 51 */	li r5, -8111
/* 80513840  38 C0 00 00 */	li r6, 0
/* 80513844  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80513848  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8051384C  7D 89 03 A6 */	mtctr r12
/* 80513850  4E 80 04 21 */	bctrl 
lbl_80513854:
/* 80513854  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513858  2C 00 00 78 */	cmpwi r0, 0x78
/* 8051385C  41 82 00 1C */	beq lbl_80513878
/* 80513860  2C 00 00 82 */	cmpwi r0, 0x82
/* 80513864  41 82 00 14 */	beq lbl_80513878
/* 80513868  2C 00 00 8C */	cmpwi r0, 0x8c
/* 8051386C  41 82 00 0C */	beq lbl_80513878
/* 80513870  2C 00 00 96 */	cmpwi r0, 0x96
/* 80513874  40 82 00 14 */	bne lbl_80513888
lbl_80513878:
/* 80513878  3C 60 80 51 */	lis r3, s_lv9dn_sub__FPvPv@ha
/* 8051387C  38 63 2B B0 */	addi r3, r3, s_lv9dn_sub__FPvPv@l
/* 80513880  7F E4 FB 78 */	mr r4, r31
/* 80513884  4B B0 DA B4 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513888:
/* 80513888  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 8051388C  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80513890  40 81 00 1C */	ble lbl_805138AC
/* 80513894  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80513898  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 8051389C  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805138A0  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805138A4  4B D5 C1 98 */	b cLib_addCalc2__FPffff
/* 805138A8  48 00 00 18 */	b lbl_805138C0
lbl_805138AC:
/* 805138AC  38 7F 13 08 */	addi r3, r31, 0x1308
/* 805138B0  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 805138B4  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805138B8  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805138BC  4B D5 C1 80 */	b cLib_addCalc2__FPffff
lbl_805138C0:
/* 805138C0  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805138C4  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 805138C8  40 82 0C A0 */	bne lbl_80514568
/* 805138CC  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 805138D0  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 805138D4  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 805138D8  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 805138DC  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805138E0  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 805138E4  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805138E8  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 805138EC  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 805138F0  D0 1F 12 C4 */	stfs f0, 0x12c4(r31)
/* 805138F4  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 805138F8  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 805138FC  7F E3 FB 78 */	mr r3, r31
/* 80513900  4B FF F6 FD */	bl cam_spd_set__FP10e_rd_class
/* 80513904  38 00 00 16 */	li r0, 0x16
/* 80513908  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 8051390C  38 00 00 00 */	li r0, 0
/* 80513910  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513914  3C 60 80 51 */	lis r3, s_lv9rd_sub__FPvPv@ha
/* 80513918  38 63 2C BC */	addi r3, r3, s_lv9rd_sub__FPvPv@l
/* 8051391C  7F E4 FB 78 */	mr r4, r31
/* 80513920  4B B0 DA 18 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80513924  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80513928  38 00 00 17 */	li r0, 0x17
/* 8051392C  90 03 06 14 */	stw r0, 0x614(r3)
/* 80513930  38 00 00 00 */	li r0, 0
/* 80513934  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80513938  90 03 06 10 */	stw r0, 0x610(r3)
/* 8051393C  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 80513940  48 00 0C 28 */	b lbl_80514568
lbl_80513944:
/* 80513944  7F E3 FB 78 */	mr r3, r31
/* 80513948  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 8051394C  4B FF F5 CD */	bl cam_3d_morf__FP10e_rd_classf
/* 80513950  38 7F 13 0C */	addi r3, r31, 0x130c
/* 80513954  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80513958  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8051395C  C0 7E 01 E0 */	lfs f3, 0x1e0(r30)
/* 80513960  4B D5 C0 DC */	b cLib_addCalc2__FPffff
/* 80513964  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80513968  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 8051396C  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80513970  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80513974  4B D5 C0 C8 */	b cLib_addCalc2__FPffff
/* 80513978  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 8051397C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80513980  40 82 00 14 */	bne lbl_80513994
/* 80513984  3C 60 80 51 */	lis r3, s_lv9dn_sub2__FPvPv@ha
/* 80513988  38 63 2C 10 */	addi r3, r3, s_lv9dn_sub2__FPvPv@l
/* 8051398C  7F E4 FB 78 */	mr r4, r31
/* 80513990  4B B0 D9 A8 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513994:
/* 80513994  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513998  2C 00 00 11 */	cmpwi r0, 0x11
/* 8051399C  41 82 00 1C */	beq lbl_805139B8
/* 805139A0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805139A4  41 82 00 14 */	beq lbl_805139B8
/* 805139A8  2C 00 00 25 */	cmpwi r0, 0x25
/* 805139AC  41 82 00 0C */	beq lbl_805139B8
/* 805139B0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805139B4  40 82 00 14 */	bne lbl_805139C8
lbl_805139B8:
/* 805139B8  3C 60 80 51 */	lis r3, s_lv9dn_sub__FPvPv@ha
/* 805139BC  38 63 2B B0 */	addi r3, r3, s_lv9dn_sub__FPvPv@l
/* 805139C0  7F E4 FB 78 */	mr r4, r31
/* 805139C4  4B B0 D9 74 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_805139C8:
/* 805139C8  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805139CC  2C 00 00 37 */	cmpwi r0, 0x37
/* 805139D0  40 82 0B 98 */	bne lbl_80514568
/* 805139D4  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 805139D8  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 805139DC  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 805139E0  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 805139E4  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 805139E8  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805139EC  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 805139F0  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805139F4  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 805139F8  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805139FC  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80513A00  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 80513A04  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80513A08  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80513A0C  38 00 00 17 */	li r0, 0x17
/* 80513A10  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513A14  38 00 00 00 */	li r0, 0
/* 80513A18  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513A1C  48 00 0B 4C */	b lbl_80514568
lbl_80513A20:
/* 80513A20  38 00 00 01 */	li r0, 1
/* 80513A24  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80513A28  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513A2C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80513A30  40 82 00 0C */	bne lbl_80513A3C
/* 80513A34  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 80513A38  D0 1F 09 80 */	stfs f0, 0x980(r31)
lbl_80513A3C:
/* 80513A3C  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513A40  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513A44  40 80 00 14 */	bge lbl_80513A58
/* 80513A48  C0 3F 12 AC */	lfs f1, 0x12ac(r31)
/* 80513A4C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80513A50  EC 01 00 2A */	fadds f0, f1, f0
/* 80513A54  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
lbl_80513A58:
/* 80513A58  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513A5C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513A60  40 82 00 34 */	bne lbl_80513A94
/* 80513A64  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 80513A68  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513A6C  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 80513A70  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80513A74  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 80513A78  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513A7C  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80513A80  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80513A84  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 80513A88  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 80513A8C  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80513A90  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
lbl_80513A94:
/* 80513A94  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513A98  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513A9C  41 80 00 18 */	blt lbl_80513AB4
/* 80513AA0  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80513AA4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80513AA8  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80513AAC  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80513AB0  4B D5 BF 8C */	b cLib_addCalc2__FPffff
lbl_80513AB4:
/* 80513AB4  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513AB8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80513ABC  40 82 0A AC */	bne lbl_80514568
/* 80513AC0  38 60 00 00 */	li r3, 0
/* 80513AC4  98 7F 09 A4 */	stb r3, 0x9a4(r31)
/* 80513AC8  38 00 00 18 */	li r0, 0x18
/* 80513ACC  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513AD0  B0 7F 12 A6 */	sth r3, 0x12a6(r31)
/* 80513AD4  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80513AD8  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 80513ADC  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80513AE0  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 80513AE4  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80513AE8  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 80513AEC  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80513AF0  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 80513AF4  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80513AF8  D0 1F 12 C4 */	stfs f0, 0x12c4(r31)
/* 80513AFC  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 80513B00  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 80513B04  7F E3 FB 78 */	mr r3, r31
/* 80513B08  4B FF F4 F5 */	bl cam_spd_set__FP10e_rd_class
/* 80513B0C  48 00 0A 5C */	b lbl_80514568
lbl_80513B10:
/* 80513B10  38 00 00 01 */	li r0, 1
/* 80513B14  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80513B18  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80513B1C  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 80513B20  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513B24  2C 00 00 04 */	cmpwi r0, 4
/* 80513B28  41 80 0A 40 */	blt lbl_80514568
/* 80513B2C  38 00 00 C8 */	li r0, 0xc8
/* 80513B30  98 1F 13 04 */	stb r0, 0x1304(r31)
/* 80513B34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80513B38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80513B3C  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513B40  1C 00 05 00 */	mulli r0, r0, 0x500
/* 80513B44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80513B48  7C 63 02 14 */	add r3, r3, r0
/* 80513B4C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80513B50  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 80513B54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80513B58  FC 00 00 1E */	fctiwz f0, f0
/* 80513B5C  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80513B60  83 41 00 AC */	lwz r26, 0xac(r1)
/* 80513B64  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 80513B68  D0 1F 13 0C */	stfs f0, 0x130c(r31)
/* 80513B6C  7F E3 FB 78 */	mr r3, r31
/* 80513B70  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80513B74  4B FF F3 A5 */	bl cam_3d_morf__FP10e_rd_classf
/* 80513B78  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513B7C  2C 00 00 04 */	cmpwi r0, 4
/* 80513B80  40 82 00 14 */	bne lbl_80513B94
/* 80513B84  3C 60 80 51 */	lis r3, s_lv9arrow_sub__FPvPv@ha
/* 80513B88  38 63 2E 74 */	addi r3, r3, s_lv9arrow_sub__FPvPv@l
/* 80513B8C  7F E4 FB 78 */	mr r4, r31
/* 80513B90  4B B0 D7 A8 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513B94:
/* 80513B94  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513B98  2C 00 00 0A */	cmpwi r0, 0xa
/* 80513B9C  40 82 00 14 */	bne lbl_80513BB0
/* 80513BA0  3C 60 80 51 */	lis r3, s_lv9dn_sub2__FPvPv@ha
/* 80513BA4  38 63 2C 10 */	addi r3, r3, s_lv9dn_sub2__FPvPv@l
/* 80513BA8  7F E4 FB 78 */	mr r4, r31
/* 80513BAC  4B B0 D7 8C */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513BB0:
/* 80513BB0  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513BB4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80513BB8  40 82 00 4C */	bne lbl_80513C04
/* 80513BBC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80513BC0  38 00 00 14 */	li r0, 0x14
/* 80513BC4  90 03 06 14 */	stw r0, 0x614(r3)
/* 80513BC8  38 00 00 01 */	li r0, 1
/* 80513BCC  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80513BD0  38 00 00 00 */	li r0, 0
/* 80513BD4  90 03 06 10 */	stw r0, 0x610(r3)
/* 80513BD8  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 80513BDC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050035@ha */
/* 80513BE0  38 03 00 35 */	addi r0, r3, 0x0035 /* 0x00050035@l */
/* 80513BE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80513BE8  38 79 05 74 */	addi r3, r25, 0x574
/* 80513BEC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80513BF0  38 A0 FF FF */	li r5, -1
/* 80513BF4  81 99 05 74 */	lwz r12, 0x574(r25)
/* 80513BF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80513BFC  7D 89 03 A6 */	mtctr r12
/* 80513C00  4E 80 04 21 */	bctrl 
lbl_80513C04:
/* 80513C04  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513C08  2C 00 00 29 */	cmpwi r0, 0x29
/* 80513C0C  40 82 00 14 */	bne lbl_80513C20
/* 80513C10  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80513C14  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80513C18  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80513C1C  4B AF 43 BC */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_80513C20:
/* 80513C20  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513C24  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80513C28  40 82 09 40 */	bne lbl_80514568
/* 80513C2C  38 00 00 19 */	li r0, 0x19
/* 80513C30  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513C34  38 00 00 00 */	li r0, 0
/* 80513C38  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513C3C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020080@ha */
/* 80513C40  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00020080@l */
/* 80513C44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80513C48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80513C4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80513C50  80 63 00 00 */	lwz r3, 0(r3)
/* 80513C54  38 81 00 18 */	addi r4, r1, 0x18
/* 80513C58  38 A0 00 00 */	li r5, 0
/* 80513C5C  38 C0 00 00 */	li r6, 0
/* 80513C60  38 E0 00 00 */	li r7, 0
/* 80513C64  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80513C68  FC 40 08 90 */	fmr f2, f1
/* 80513C6C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80513C70  FC 80 18 90 */	fmr f4, f3
/* 80513C74  39 00 00 00 */	li r8, 0
/* 80513C78  4B D9 7D 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80513C7C  38 00 00 00 */	li r0, 0
/* 80513C80  98 1F 13 04 */	stb r0, 0x1304(r31)
/* 80513C84  48 00 08 E4 */	b lbl_80514568
lbl_80513C88:
/* 80513C88  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513C8C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513C90  40 82 00 88 */	bne lbl_80513D18
/* 80513C94  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 80513C98  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80513C9C  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80513CA0  4B AF 43 38 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80513CA4  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80513CA8  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80513CAC  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80513CB0  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513CB4  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 80513CB8  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80513CBC  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 80513CC0  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513CC4  C0 7E 02 44 */	lfs f3, 0x244(r30)
/* 80513CC8  D0 7F 12 A8 */	stfs f3, 0x12a8(r31)
/* 80513CCC  C0 5E 02 48 */	lfs f2, 0x248(r30)
/* 80513CD0  D0 5F 12 AC */	stfs f2, 0x12ac(r31)
/* 80513CD4  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 80513CD8  D0 3F 12 B0 */	stfs f1, 0x12b0(r31)
/* 80513CDC  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 80513CE0  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 80513CE4  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 80513CE8  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 80513CEC  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 80513CF0  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 80513CF4  D0 7F 12 C0 */	stfs f3, 0x12c0(r31)
/* 80513CF8  D0 5F 12 C4 */	stfs f2, 0x12c4(r31)
/* 80513CFC  D0 3F 12 C8 */	stfs f1, 0x12c8(r31)
/* 80513D00  7F E3 FB 78 */	mr r3, r31
/* 80513D04  4B FF F2 F9 */	bl cam_spd_set__FP10e_rd_class
/* 80513D08  3C 60 80 51 */	lis r3, s_lv9arrow_sub2__FPvPv@ha
/* 80513D0C  38 63 2E C0 */	addi r3, r3, s_lv9arrow_sub2__FPvPv@l
/* 80513D10  7F E4 FB 78 */	mr r4, r31
/* 80513D14  4B B0 D6 24 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513D18:
/* 80513D18  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513D1C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80513D20  40 82 08 48 */	bne lbl_80514568
/* 80513D24  38 00 00 1A */	li r0, 0x1a
/* 80513D28  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513D2C  38 60 00 00 */	li r3, 0
/* 80513D30  B0 7F 12 A6 */	sth r3, 0x12a6(r31)
/* 80513D34  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80513D38  38 00 00 48 */	li r0, 0x48
/* 80513D3C  90 04 06 14 */	stw r0, 0x614(r4)
/* 80513D40  38 00 00 03 */	li r0, 3
/* 80513D44  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80513D48  90 64 06 10 */	stw r3, 0x610(r4)
/* 80513D4C  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80513D50  48 00 08 18 */	b lbl_80514568
lbl_80513D54:
/* 80513D54  7F E3 FB 78 */	mr r3, r31
/* 80513D58  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80513D5C  4B FF F1 BD */	bl cam_3d_morf__FP10e_rd_classf
/* 80513D60  38 7F 13 0C */	addi r3, r31, 0x130c
/* 80513D64  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80513D68  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80513D6C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80513D70  4B D5 BC CC */	b cLib_addCalc2__FPffff
/* 80513D74  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513D78  2C 00 00 37 */	cmpwi r0, 0x37
/* 80513D7C  40 82 07 EC */	bne lbl_80514568
/* 80513D80  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 80513D84  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80513D88  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80513D8C  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80513D90  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 80513D94  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80513D98  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 80513D9C  D0 7F 12 A8 */	stfs f3, 0x12a8(r31)
/* 80513DA0  C0 5E 02 6C */	lfs f2, 0x26c(r30)
/* 80513DA4  D0 5F 12 AC */	stfs f2, 0x12ac(r31)
/* 80513DA8  C0 3E 02 70 */	lfs f1, 0x270(r30)
/* 80513DAC  D0 3F 12 B0 */	stfs f1, 0x12b0(r31)
/* 80513DB0  C0 1E 02 74 */	lfs f0, 0x274(r30)
/* 80513DB4  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 80513DB8  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 80513DBC  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 80513DC0  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 80513DC4  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 80513DC8  D0 7F 12 C0 */	stfs f3, 0x12c0(r31)
/* 80513DCC  D0 5F 12 C4 */	stfs f2, 0x12c4(r31)
/* 80513DD0  D0 3F 12 C8 */	stfs f1, 0x12c8(r31)
/* 80513DD4  7F E3 FB 78 */	mr r3, r31
/* 80513DD8  4B FF F2 25 */	bl cam_spd_set__FP10e_rd_class
/* 80513DDC  38 00 00 1B */	li r0, 0x1b
/* 80513DE0  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513DE4  38 00 00 00 */	li r0, 0
/* 80513DE8  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513DEC  48 00 07 7C */	b lbl_80514568
lbl_80513DF0:
/* 80513DF0  3C 60 80 51 */	lis r3, s_lv9rd_sub3__FPvPv@ha
/* 80513DF4  38 63 2E 08 */	addi r3, r3, s_lv9rd_sub3__FPvPv@l
/* 80513DF8  7F E4 FB 78 */	mr r4, r31
/* 80513DFC  4B B0 D5 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80513E00  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513E04  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513E08  40 82 00 20 */	bne lbl_80513E28
/* 80513E0C  38 00 00 0E */	li r0, 0xe
/* 80513E10  98 18 01 F8 */	stb r0, 0x1f8(r24)
/* 80513E14  3C 60 80 51 */	lis r3, s_lv9rd_sub2__FPvPv@ha
/* 80513E18  38 63 2D 14 */	addi r3, r3, s_lv9rd_sub2__FPvPv@l
/* 80513E1C  7F E4 FB 78 */	mr r4, r31
/* 80513E20  4B B0 D5 18 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80513E24  48 00 00 24 */	b lbl_80513E48
lbl_80513E28:
/* 80513E28  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80513E2C  40 82 00 1C */	bne lbl_80513E48
/* 80513E30  38 00 00 0D */	li r0, 0xd
/* 80513E34  98 18 01 F8 */	stb r0, 0x1f8(r24)
/* 80513E38  3C 60 80 51 */	lis r3, s_lv9rd_sub2__FPvPv@ha
/* 80513E3C  38 63 2D 14 */	addi r3, r3, s_lv9rd_sub2__FPvPv@l
/* 80513E40  7F E4 FB 78 */	mr r4, r31
/* 80513E44  4B B0 D4 F4 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513E48:
/* 80513E48  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513E4C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80513E50  41 82 00 1C */	beq lbl_80513E6C
/* 80513E54  2C 00 00 14 */	cmpwi r0, 0x14
/* 80513E58  41 82 00 14 */	beq lbl_80513E6C
/* 80513E5C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80513E60  41 82 00 0C */	beq lbl_80513E6C
/* 80513E64  2C 00 00 28 */	cmpwi r0, 0x28
/* 80513E68  40 82 00 14 */	bne lbl_80513E7C
lbl_80513E6C:
/* 80513E6C  3C 60 80 51 */	lis r3, s_lv9dn_sub__FPvPv@ha
/* 80513E70  38 63 2B B0 */	addi r3, r3, s_lv9dn_sub__FPvPv@l
/* 80513E74  7F E4 FB 78 */	mr r4, r31
/* 80513E78  4B B0 D4 C0 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513E7C:
/* 80513E7C  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513E80  2C 00 00 64 */	cmpwi r0, 0x64
/* 80513E84  40 80 00 1C */	bge lbl_80513EA0
/* 80513E88  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80513E8C  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80513E90  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80513E94  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80513E98  4B D5 BB A4 */	b cLib_addCalc2__FPffff
/* 80513E9C  48 00 00 F8 */	b lbl_80513F94
lbl_80513EA0:
/* 80513EA0  2C 00 00 78 */	cmpwi r0, 0x78
/* 80513EA4  41 80 00 F0 */	blt lbl_80513F94
/* 80513EA8  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80513EAC  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80513EB0  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80513EB4  C0 7E 02 80 */	lfs f3, 0x280(r30)
/* 80513EB8  4B D5 BB 84 */	b cLib_addCalc2__FPffff
/* 80513EBC  7F E3 FB 78 */	mr r3, r31
/* 80513EC0  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80513EC4  4B FF F0 55 */	bl cam_3d_morf__FP10e_rd_classf
/* 80513EC8  38 7F 13 0C */	addi r3, r31, 0x130c
/* 80513ECC  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80513ED0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80513ED4  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80513ED8  4B D5 BB 64 */	b cLib_addCalc2__FPffff
/* 80513EDC  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513EE0  2C 00 00 B1 */	cmpwi r0, 0xb1
/* 80513EE4  40 82 00 64 */	bne lbl_80513F48
/* 80513EE8  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 80513EEC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80513EF0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80513EF4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80513EF8  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 80513EFC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80513F00  38 00 00 00 */	li r0, 0
/* 80513F04  90 01 00 08 */	stw r0, 8(r1)
/* 80513F08  38 60 02 21 */	li r3, 0x221
/* 80513F0C  38 80 00 00 */	li r4, 0
/* 80513F10  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80513F14  38 C0 FF FF */	li r6, -1
/* 80513F18  38 E0 00 00 */	li r7, 0
/* 80513F1C  39 00 00 00 */	li r8, 0
/* 80513F20  39 20 FF FF */	li r9, -1
/* 80513F24  39 40 00 00 */	li r10, 0
/* 80513F28  4B B0 5E DC */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80513F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80513F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80513F34  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80513F38  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80513F3C  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80513F40  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 80513F44  4B B2 0A 48 */	b onEventBit__11dSv_event_cFUs
lbl_80513F48:
/* 80513F48  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513F4C  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80513F50  40 82 00 44 */	bne lbl_80513F94
/* 80513F54  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80513F58  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80513F5C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80513F60  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80513F64  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80513F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80513F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80513F70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80513F74  38 80 00 08 */	li r4, 8
/* 80513F78  38 A0 00 4F */	li r5, 0x4f
/* 80513F7C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80513F80  4B B5 BA A4 */	b StartShock__12dVibration_cFii4cXyz
/* 80513F84  3C 60 80 51 */	lis r3, s_lv9dn_sub3__FPvPv@ha
/* 80513F88  38 63 2C 70 */	addi r3, r3, s_lv9dn_sub3__FPvPv@l
/* 80513F8C  7F E4 FB 78 */	mr r4, r31
/* 80513F90  4B B0 D3 A8 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80513F94:
/* 80513F94  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513F98  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 80513F9C  40 82 05 CC */	bne lbl_80514568
/* 80513FA0  38 00 00 1C */	li r0, 0x1c
/* 80513FA4  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80513FA8  38 00 00 00 */	li r0, 0
/* 80513FAC  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80513FB0  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 80513FB4  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 80513FB8  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 80513FBC  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 80513FC0  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80513FC4  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 80513FC8  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80513FCC  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 80513FD0  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80513FD4  D0 1F 12 C4 */	stfs f0, 0x12c4(r31)
/* 80513FD8  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80513FDC  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 80513FE0  7F E3 FB 78 */	mr r3, r31
/* 80513FE4  4B FF F0 19 */	bl cam_spd_set__FP10e_rd_class
lbl_80513FE8:
/* 80513FE8  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80513FEC  2C 00 00 01 */	cmpwi r0, 1
/* 80513FF0  40 82 00 1C */	bne lbl_8051400C
/* 80513FF4  38 00 00 14 */	li r0, 0x14
/* 80513FF8  90 17 06 14 */	stw r0, 0x614(r23)
/* 80513FFC  38 00 00 00 */	li r0, 0
/* 80514000  90 17 06 0C */	stw r0, 0x60c(r23)
/* 80514004  90 17 06 10 */	stw r0, 0x610(r23)
/* 80514008  B0 17 06 0A */	sth r0, 0x60a(r23)
lbl_8051400C:
/* 8051400C  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514010  2C 00 00 19 */	cmpwi r0, 0x19
/* 80514014  40 80 00 40 */	bge lbl_80514054
/* 80514018  7F E3 FB 78 */	mr r3, r31
/* 8051401C  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80514020  4B FF EE F9 */	bl cam_3d_morf__FP10e_rd_classf
/* 80514024  38 7F 13 0C */	addi r3, r31, 0x130c
/* 80514028  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 8051402C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80514030  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80514034  4B D5 BA 08 */	b cLib_addCalc2__FPffff
/* 80514038  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 8051403C  2C 00 00 17 */	cmpwi r0, 0x17
/* 80514040  40 82 05 28 */	bne lbl_80514568
/* 80514044  A0 19 06 BE */	lhz r0, 0x6be(r25)
/* 80514048  60 00 01 00 */	ori r0, r0, 0x100
/* 8051404C  B0 19 06 BE */	sth r0, 0x6be(r25)
/* 80514050  48 00 05 18 */	b lbl_80514568
lbl_80514054:
/* 80514054  40 82 00 0C */	bne lbl_80514060
/* 80514058  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051405C  D0 1F 13 0C */	stfs f0, 0x130c(r31)
lbl_80514060:
/* 80514060  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 80514064  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80514068  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8051406C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80514070  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80514074  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80514078  38 7F 12 B4 */	addi r3, r31, 0x12b4
/* 8051407C  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80514080  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80514084  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80514088  EC 63 00 32 */	fmuls f3, f3, f0
/* 8051408C  4B D5 B9 B0 */	b cLib_addCalc2__FPffff
/* 80514090  38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 80514094  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80514098  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 8051409C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805140A0  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 805140A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805140A8  4B D5 B9 94 */	b cLib_addCalc2__FPffff
/* 805140AC  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 805140B0  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 805140B4  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 805140B8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805140BC  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 805140C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805140C4  4B D5 B9 78 */	b cLib_addCalc2__FPffff
/* 805140C8  38 7F 13 0C */	addi r3, r31, 0x130c
/* 805140CC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805140D0  FC 40 08 90 */	fmr f2, f1
/* 805140D4  C0 7E 02 30 */	lfs f3, 0x230(r30)
/* 805140D8  4B D5 B9 64 */	b cLib_addCalc2__FPffff
/* 805140DC  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805140E0  2C 00 00 37 */	cmpwi r0, 0x37
/* 805140E4  41 80 00 6C */	blt lbl_80514150
/* 805140E8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805140EC  40 82 00 2C */	bne lbl_80514118
/* 805140F0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050036@ha */
/* 805140F4  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00050036@l */
/* 805140F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805140FC  38 79 05 74 */	addi r3, r25, 0x574
/* 80514100  38 81 00 14 */	addi r4, r1, 0x14
/* 80514104  38 A0 FF FF */	li r5, -1
/* 80514108  81 99 05 74 */	lwz r12, 0x574(r25)
/* 8051410C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80514110  7D 89 03 A6 */	mtctr r12
/* 80514114  4E 80 04 21 */	bctrl 
lbl_80514118:
/* 80514118  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 8051411C  2C 00 00 87 */	cmpwi r0, 0x87
/* 80514120  40 80 00 1C */	bge lbl_8051413C
/* 80514124  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80514128  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8051412C  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80514130  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80514134  4B D5 B9 08 */	b cLib_addCalc2__FPffff
/* 80514138  48 00 00 18 */	b lbl_80514150
lbl_8051413C:
/* 8051413C  38 7F 13 08 */	addi r3, r31, 0x1308
/* 80514140  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80514144  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80514148  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 8051414C  4B D5 B8 F0 */	b cLib_addCalc2__FPffff
lbl_80514150:
/* 80514150  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514154  2C 00 00 CD */	cmpwi r0, 0xcd
/* 80514158  40 82 04 10 */	bne lbl_80514568
/* 8051415C  38 00 00 1D */	li r0, 0x1d
/* 80514160  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80514164  38 60 00 00 */	li r3, 0
/* 80514168  B0 7F 12 A6 */	sth r3, 0x12a6(r31)
/* 8051416C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80514170  38 00 00 01 */	li r0, 1
/* 80514174  90 04 06 14 */	stw r0, 0x614(r4)
/* 80514178  90 64 06 0C */	stw r3, 0x60c(r4)
/* 8051417C  90 64 06 10 */	stw r3, 0x610(r4)
/* 80514180  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80514184  48 00 03 E4 */	b lbl_80514568
lbl_80514188:
/* 80514188  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8051418C  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80514190  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80514194  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80514198  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 8051419C  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805141A0  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 805141A4  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805141A8  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 805141AC  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805141B0  C0 59 04 D4 */	lfs f2, 0x4d4(r25)
/* 805141B4  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 805141B8  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 805141BC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805141C0  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805141C4  2C 00 00 00 */	cmpwi r0, 0
/* 805141C8  40 82 00 14 */	bne lbl_805141DC
/* 805141CC  D0 3F 12 B4 */	stfs f1, 0x12b4(r31)
/* 805141D0  D0 5F 12 B8 */	stfs f2, 0x12b8(r31)
/* 805141D4  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805141D8  48 00 03 90 */	b lbl_80514568
lbl_805141DC:
/* 805141DC  38 7F 12 B4 */	addi r3, r31, 0x12b4
/* 805141E0  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 805141E4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805141E8  4B D5 B8 54 */	b cLib_addCalc2__FPffff
/* 805141EC  38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 805141F0  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 805141F4  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 805141F8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805141FC  4B D5 B8 40 */	b cLib_addCalc2__FPffff
/* 80514200  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 80514204  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80514208  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 8051420C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80514210  4B D5 B8 2C */	b cLib_addCalc2__FPffff
/* 80514214  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514218  2C 00 00 8C */	cmpwi r0, 0x8c
/* 8051421C  40 82 03 4C */	bne lbl_80514568
/* 80514220  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 80514224  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 80514228  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 8051422C  D0 1F 12 D0 */	stfs f0, 0x12d0(r31)
/* 80514230  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 80514234  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 80514238  C0 1F 12 A8 */	lfs f0, 0x12a8(r31)
/* 8051423C  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 80514240  C0 1F 12 AC */	lfs f0, 0x12ac(r31)
/* 80514244  D0 1F 12 C4 */	stfs f0, 0x12c4(r31)
/* 80514248  C0 1F 12 B0 */	lfs f0, 0x12b0(r31)
/* 8051424C  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 80514250  7F E3 FB 78 */	mr r3, r31
/* 80514254  4B FF ED A9 */	bl cam_spd_set__FP10e_rd_class
/* 80514258  38 00 00 1E */	li r0, 0x1e
/* 8051425C  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80514260  38 00 00 00 */	li r0, 0
/* 80514264  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80514268  48 00 03 00 */	b lbl_80514568
lbl_8051426C:
/* 8051426C  7F E3 FB 78 */	mr r3, r31
/* 80514270  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80514274  4B FF EC A5 */	bl cam_3d_morf__FP10e_rd_classf
/* 80514278  38 7F 13 0C */	addi r3, r31, 0x130c
/* 8051427C  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80514280  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80514284  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80514288  4B D5 B7 B4 */	b cLib_addCalc2__FPffff
/* 8051428C  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514290  2C 00 00 46 */	cmpwi r0, 0x46
/* 80514294  40 82 02 D4 */	bne lbl_80514568
/* 80514298  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 8051429C  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 805142A0  C0 5E 02 C0 */	lfs f2, 0x2c0(r30)
/* 805142A4  D0 5F 12 B8 */	stfs f2, 0x12b8(r31)
/* 805142A8  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 805142AC  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805142B0  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 805142B4  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805142B8  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 805142BC  D0 3F 12 AC */	stfs f1, 0x12ac(r31)
/* 805142C0  C0 1E 02 D0 */	lfs f0, 0x2d0(r30)
/* 805142C4  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805142C8  C0 1E 02 D4 */	lfs f0, 0x2d4(r30)
/* 805142CC  D0 1F 12 CC */	stfs f0, 0x12cc(r31)
/* 805142D0  D0 5F 12 D0 */	stfs f2, 0x12d0(r31)
/* 805142D4  C0 1E 02 D8 */	lfs f0, 0x2d8(r30)
/* 805142D8  D0 1F 12 D4 */	stfs f0, 0x12d4(r31)
/* 805142DC  C0 1E 02 DC */	lfs f0, 0x2dc(r30)
/* 805142E0  D0 1F 12 C0 */	stfs f0, 0x12c0(r31)
/* 805142E4  D0 3F 12 C4 */	stfs f1, 0x12c4(r31)
/* 805142E8  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 805142EC  D0 1F 12 C8 */	stfs f0, 0x12c8(r31)
/* 805142F0  7F E3 FB 78 */	mr r3, r31
/* 805142F4  4B FF ED 09 */	bl cam_spd_set__FP10e_rd_class
/* 805142F8  38 00 00 1F */	li r0, 0x1f
/* 805142FC  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80514300  38 00 00 00 */	li r0, 0
/* 80514304  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80514308  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 8051430C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80514310  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80514314  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80514318  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 8051431C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80514320  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80514324  38 81 00 8C */	addi r4, r1, 0x8c
/* 80514328  38 A0 21 3F */	li r5, 0x213f
/* 8051432C  38 C0 00 00 */	li r6, 0
/* 80514330  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80514334  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80514338  7D 89 03 A6 */	mtctr r12
/* 8051433C  4E 80 04 21 */	bctrl 
/* 80514340  48 00 02 28 */	b lbl_80514568
lbl_80514344:
/* 80514344  7F E3 FB 78 */	mr r3, r31
/* 80514348  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8051434C  4B FF EB CD */	bl cam_3d_morf__FP10e_rd_classf
/* 80514350  38 7F 13 0C */	addi r3, r31, 0x130c
/* 80514354  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80514358  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8051435C  C0 7E 02 EC */	lfs f3, 0x2ec(r30)
/* 80514360  4B D5 B6 DC */	b cLib_addCalc2__FPffff
/* 80514364  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514368  2C 00 00 46 */	cmpwi r0, 0x46
/* 8051436C  40 82 01 FC */	bne lbl_80514568
/* 80514370  38 00 00 20 */	li r0, 0x20
/* 80514374  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80514378  38 00 00 00 */	li r0, 0
/* 8051437C  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80514380  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 80514384  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80514388  C0 1E 02 F4 */	lfs f0, 0x2f4(r30)
/* 8051438C  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80514390  C0 1E 02 F8 */	lfs f0, 0x2f8(r30)
/* 80514394  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80514398  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 8051439C  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805143A0  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 805143A4  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805143A8  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 805143AC  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805143B0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805143B4  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 805143B8  48 00 01 B0 */	b lbl_80514568
lbl_805143BC:
/* 805143BC  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805143C0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805143C4  40 82 01 A4 */	bne lbl_80514568
/* 805143C8  C0 1E 03 08 */	lfs f0, 0x308(r30)
/* 805143CC  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 805143D0  C0 1E 03 0C */	lfs f0, 0x30c(r30)
/* 805143D4  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 805143D8  C0 1E 03 10 */	lfs f0, 0x310(r30)
/* 805143DC  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805143E0  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 805143E4  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805143E8  C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 805143EC  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805143F0  C0 1E 03 1C */	lfs f0, 0x31c(r30)
/* 805143F4  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805143F8  38 00 00 21 */	li r0, 0x21
/* 805143FC  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 80514400  38 00 00 00 */	li r0, 0
/* 80514404  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80514408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051440C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80514410  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80514414  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80514418  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8051441C  A0 84 00 EA */	lhz r4, 0xea(r4)
/* 80514420  4B B2 05 6C */	b onEventBit__11dSv_event_cFUs
/* 80514424  48 00 01 44 */	b lbl_80514568
lbl_80514428:
/* 80514428  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 8051442C  2C 00 00 41 */	cmpwi r0, 0x41
/* 80514430  40 82 00 24 */	bne lbl_80514454
/* 80514434  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80514438  38 00 00 3C */	li r0, 0x3c
/* 8051443C  90 03 06 14 */	stw r0, 0x614(r3)
/* 80514440  38 00 00 01 */	li r0, 1
/* 80514444  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80514448  38 00 00 00 */	li r0, 0
/* 8051444C  90 03 06 10 */	stw r0, 0x610(r3)
/* 80514450  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80514454:
/* 80514454  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514458  2C 00 00 46 */	cmpwi r0, 0x46
/* 8051445C  40 82 01 0C */	bne lbl_80514568
/* 80514460  C0 1E 03 20 */	lfs f0, 0x320(r30)
/* 80514464  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 80514468  C0 1E 03 24 */	lfs f0, 0x324(r30)
/* 8051446C  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 80514470  C0 1E 03 28 */	lfs f0, 0x328(r30)
/* 80514474  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 80514478  C0 1E 03 2C */	lfs f0, 0x32c(r30)
/* 8051447C  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 80514480  C0 1E 03 30 */	lfs f0, 0x330(r30)
/* 80514484  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 80514488  C0 1E 03 34 */	lfs f0, 0x334(r30)
/* 8051448C  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 80514490  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 80514494  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80514498  38 00 00 22 */	li r0, 0x22
/* 8051449C  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 805144A0  38 00 00 00 */	li r0, 0
/* 805144A4  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 805144A8  48 00 00 C0 */	b lbl_80514568
lbl_805144AC:
/* 805144AC  38 7F 13 08 */	addi r3, r31, 0x1308
/* 805144B0  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 805144B4  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 805144B8  C0 7E 03 38 */	lfs f3, 0x338(r30)
/* 805144BC  4B D5 B5 80 */	b cLib_addCalc2__FPffff
/* 805144C0  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 805144C4  2C 00 00 50 */	cmpwi r0, 0x50
/* 805144C8  40 82 00 A0 */	bne lbl_80514568
/* 805144CC  C0 1E 03 3C */	lfs f0, 0x33c(r30)
/* 805144D0  D0 1F 12 B4 */	stfs f0, 0x12b4(r31)
/* 805144D4  C0 1E 03 40 */	lfs f0, 0x340(r30)
/* 805144D8  D0 1F 12 B8 */	stfs f0, 0x12b8(r31)
/* 805144DC  C0 1E 03 44 */	lfs f0, 0x344(r30)
/* 805144E0  D0 1F 12 BC */	stfs f0, 0x12bc(r31)
/* 805144E4  C0 1E 03 48 */	lfs f0, 0x348(r30)
/* 805144E8  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805144EC  C0 1E 03 4C */	lfs f0, 0x34c(r30)
/* 805144F0  D0 1F 12 AC */	stfs f0, 0x12ac(r31)
/* 805144F4  C0 1E 03 50 */	lfs f0, 0x350(r30)
/* 805144F8  D0 1F 12 B0 */	stfs f0, 0x12b0(r31)
/* 805144FC  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80514500  D0 1F 13 08 */	stfs f0, 0x1308(r31)
/* 80514504  38 00 00 23 */	li r0, 0x23
/* 80514508  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
/* 8051450C  38 00 00 00 */	li r0, 0
/* 80514510  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
/* 80514514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80514518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051451C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80514520  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80514524  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80514528  A0 84 00 E8 */	lhz r4, 0xe8(r4)
/* 8051452C  4B B2 04 60 */	b onEventBit__11dSv_event_cFUs
/* 80514530  48 00 00 38 */	b lbl_80514568
lbl_80514534:
/* 80514534  A8 1F 12 A6 */	lha r0, 0x12a6(r31)
/* 80514538  2C 00 00 78 */	cmpwi r0, 0x78
/* 8051453C  40 82 00 2C */	bne lbl_80514568
/* 80514540  3B 60 00 01 */	li r27, 1
/* 80514544  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80514548  54 04 46 3E */	srwi r4, r0, 0x18
/* 8051454C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80514550  41 82 00 18 */	beq lbl_80514568
/* 80514554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80514558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051455C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80514560  7C 05 07 74 */	extsb r5, r0
/* 80514564  4B B2 0C 9C */	b onSwitch__10dSv_info_cFii
lbl_80514568:
/* 80514568  7F 60 07 75 */	extsb. r0, r27
/* 8051456C  41 82 00 44 */	beq lbl_805145B0
/* 80514570  38 7C 02 48 */	addi r3, r28, 0x248
/* 80514574  4B C4 CF 38 */	b Start__9dCamera_cFv
/* 80514578  38 7C 02 48 */	addi r3, r28, 0x248
/* 8051457C  38 80 00 00 */	li r4, 0
/* 80514580  4B C4 EA 8C */	b SetTrimSize__9dCamera_cFl
/* 80514584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80514588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051458C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80514590  4B B2 DE D8 */	b reset__14dEvt_control_cFv
/* 80514594  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80514598  38 00 00 02 */	li r0, 2
/* 8051459C  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805145A0  38 00 00 01 */	li r0, 1
/* 805145A4  90 03 06 14 */	stw r0, 0x614(r3)
/* 805145A8  38 00 FF FF */	li r0, -1
/* 805145AC  B0 1F 12 A4 */	sth r0, 0x12a4(r31)
lbl_805145B0:
/* 805145B0  A8 1F 12 A4 */	lha r0, 0x12a4(r31)
/* 805145B4  2C 00 00 00 */	cmpwi r0, 0
/* 805145B8  40 81 00 70 */	ble lbl_80514628
/* 805145BC  C0 BF 12 B4 */	lfs f5, 0x12b4(r31)
/* 805145C0  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 805145C4  C0 9F 12 B8 */	lfs f4, 0x12b8(r31)
/* 805145C8  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 805145CC  C0 7F 12 BC */	lfs f3, 0x12bc(r31)
/* 805145D0  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 805145D4  C0 5F 12 A8 */	lfs f2, 0x12a8(r31)
/* 805145D8  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 805145DC  C0 3F 12 AC */	lfs f1, 0x12ac(r31)
/* 805145E0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 805145E4  C0 1F 12 B0 */	lfs f0, 0x12b0(r31)
/* 805145E8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805145EC  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 805145F0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 805145F4  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 805145F8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805145FC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80514600  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80514604  38 7C 02 48 */	addi r3, r28, 0x248
/* 80514608  38 81 00 2C */	addi r4, r1, 0x2c
/* 8051460C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80514610  7F 46 D3 78 */	mr r6, r26
/* 80514614  C0 3F 13 08 */	lfs f1, 0x1308(r31)
/* 80514618  4B C6 C5 28 */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 8051461C  A8 7F 12 A6 */	lha r3, 0x12a6(r31)
/* 80514620  38 03 00 01 */	addi r0, r3, 1
/* 80514624  B0 1F 12 A6 */	sth r0, 0x12a6(r31)
lbl_80514628:
/* 80514628  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8051462C  4B E4 DB E0 */	b _restgpr_22
/* 80514630  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80514634  7C 08 03 A6 */	mtlr r0
/* 80514638  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8051463C  4E 80 00 20 */	blr 
