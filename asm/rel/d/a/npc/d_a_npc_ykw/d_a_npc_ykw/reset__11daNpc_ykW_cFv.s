lbl_80B5FE6C:
/* 80B5FE6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B5FE70  7C 08 02 A6 */	mflr r0
/* 80B5FE74  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B5FE78  39 61 00 60 */	addi r11, r1, 0x60
/* 80B5FE7C  4B 80 23 5C */	b _savegpr_28
/* 80B5FE80  7C 7D 1B 78 */	mr r29, r3
/* 80B5FE84  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B5FE88  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l
/* 80B5FE8C  38 7D 0F D8 */	addi r3, r29, 0xfd8
/* 80B5FE90  38 1D 10 74 */	addi r0, r29, 0x1074
/* 80B5FE94  7F C3 00 50 */	subf r30, r3, r0
/* 80B5FE98  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B5FE9C  28 03 00 00 */	cmplwi r3, 0
/* 80B5FEA0  41 82 00 08 */	beq lbl_80B5FEA8
/* 80B5FEA4  4B 5E 58 C0 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B5FEA8:
/* 80B5FEA8  38 7D 0D 24 */	addi r3, r29, 0xd24
/* 80B5FEAC  38 80 00 00 */	li r4, 0
/* 80B5FEB0  38 1D 0E 38 */	addi r0, r29, 0xe38
/* 80B5FEB4  7C A3 00 50 */	subf r5, r3, r0
/* 80B5FEB8  4B 4A 35 A0 */	b memset
/* 80B5FEBC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B5FEC0  4B 5E 59 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5FEC4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B5FEC8  4B 5E 59 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5FECC  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80B5FED0  4B 5E 58 04 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B5FED4  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80B5FED8  4B 5E 57 FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B5FEDC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B5FEE0  4B 5E 6D B8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B5FEE4  38 60 00 00 */	li r3, 0
/* 80B5FEE8  38 80 00 00 */	li r4, 0
/* 80B5FEEC  7C 87 23 78 */	mr r7, r4
/* 80B5FEF0  7C 86 23 78 */	mr r6, r4
/* 80B5FEF4  7C 85 23 78 */	mr r5, r4
/* 80B5FEF8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B5FEFC  38 00 00 02 */	li r0, 2
/* 80B5FF00  7C 09 03 A6 */	mtctr r0
lbl_80B5FF04:
/* 80B5FF04  7D 1D 22 14 */	add r8, r29, r4
/* 80B5FF08  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80B5FF0C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80B5FF10  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80B5FF14  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B5FF18  7C 1D 05 2E */	stfsx f0, r29, r0
/* 80B5FF1C  38 63 00 04 */	addi r3, r3, 4
/* 80B5FF20  38 84 00 06 */	addi r4, r4, 6
/* 80B5FF24  42 00 FF E0 */	bdnz lbl_80B5FF04
/* 80B5FF28  38 00 00 00 */	li r0, 0
/* 80B5FF2C  B0 1D 0D 1C */	sth r0, 0xd1c(r29)
/* 80B5FF30  B0 1D 0D 1E */	sth r0, 0xd1e(r29)
/* 80B5FF34  98 1D 0D 20 */	stb r0, 0xd20(r29)
/* 80B5FF38  38 00 FF FF */	li r0, -1
/* 80B5FF3C  90 1D 0D 90 */	stw r0, 0xd90(r29)
/* 80B5FF40  38 00 00 01 */	li r0, 1
/* 80B5FF44  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80B5FF48  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80B5FF4C  4B 70 7A 08 */	b cM_rndF__Ff
/* 80B5FF50  FC 00 08 1E */	fctiwz f0, f1
/* 80B5FF54  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B5FF58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5FF5C  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80B5FF60  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B5FF64  D0 1D 0D E0 */	stfs f0, 0xde0(r29)
/* 80B5FF68  D0 1D 0D E4 */	stfs f0, 0xde4(r29)
/* 80B5FF6C  3B 80 00 00 */	li r28, 0
/* 80B5FF70  3B E0 00 00 */	li r31, 0
lbl_80B5FF74:
/* 80B5FF74  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B5FF78  7C 7D 1A 14 */	add r3, r29, r3
/* 80B5FF7C  4B 5E 57 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B5FF80  3B 9C 00 01 */	addi r28, r28, 1
/* 80B5FF84  2C 1C 00 05 */	cmpwi r28, 5
/* 80B5FF88  3B FF 00 08 */	addi r31, r31, 8
/* 80B5FF8C  41 80 FF E8 */	blt lbl_80B5FF74
/* 80B5FF90  38 7D 0F D8 */	addi r3, r29, 0xfd8
/* 80B5FF94  38 80 00 00 */	li r4, 0
/* 80B5FF98  7F C5 F3 78 */	mr r5, r30
/* 80B5FF9C  4B 4A 34 BC */	b memset
/* 80B5FFA0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B5FFA4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B5FFA8  28 00 00 FF */	cmplwi r0, 0xff
/* 80B5FFAC  41 82 00 60 */	beq lbl_80B6000C
/* 80B5FFB0  38 7D 0F AC */	addi r3, r29, 0xfac
/* 80B5FFB4  4B 5E 5C 8C */	b initialize__13daNpcT_Path_cFv
/* 80B5FFB8  38 7D 0F AC */	addi r3, r29, 0xfac
/* 80B5FFBC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B5FFC0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B5FFC4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B5FFC8  7C 05 07 74 */	extsb r5, r0
/* 80B5FFCC  38 C0 00 00 */	li r6, 0
/* 80B5FFD0  4B 5E 5C A4 */	b setPathInfo__13daNpcT_Path_cFUcScUc
/* 80B5FFD4  38 00 00 00 */	li r0, 0
/* 80B5FFD8  90 1D 0F D4 */	stw r0, 0xfd4(r29)
/* 80B5FFDC  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B5FFE0  28 00 00 03 */	cmplwi r0, 3
/* 80B5FFE4  40 82 00 28 */	bne lbl_80B6000C
/* 80B5FFE8  80 7D 0F AC */	lwz r3, 0xfac(r29)
/* 80B5FFEC  A0 03 00 02 */	lhz r0, 2(r3)
/* 80B5FFF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B5FFF4  41 82 00 18 */	beq lbl_80B6000C
/* 80B5FFF8  A0 63 00 02 */	lhz r3, 2(r3)
/* 80B5FFFC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B60000  7C 04 07 74 */	extsb r4, r0
/* 80B60004  4B 4F 17 E8 */	b dPath_GetRoomPath__Fii
/* 80B60008  90 7D 0F D4 */	stw r3, 0xfd4(r29)
lbl_80B6000C:
/* 80B6000C  38 60 00 00 */	li r3, 0
/* 80B60010  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B60014  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B60018  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B6001C  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80B60020  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B60024  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B60028  2C 00 00 03 */	cmpwi r0, 3
/* 80B6002C  41 82 00 F4 */	beq lbl_80B60120
/* 80B60030  40 80 00 10 */	bge lbl_80B60040
/* 80B60034  2C 00 00 02 */	cmpwi r0, 2
/* 80B60038  40 80 00 1C */	bge lbl_80B60054
/* 80B6003C  48 00 01 40 */	b lbl_80B6017C
lbl_80B60040:
/* 80B60040  2C 00 00 07 */	cmpwi r0, 7
/* 80B60044  40 80 01 38 */	bge lbl_80B6017C
/* 80B60048  2C 00 00 05 */	cmpwi r0, 5
/* 80B6004C  40 80 01 18 */	bge lbl_80B60164
/* 80B60050  48 00 00 D8 */	b lbl_80B60128
lbl_80B60054:
/* 80B60054  38 60 00 6C */	li r3, 0x6c
/* 80B60058  4B 5E CA 54 */	b daNpcT_chkEvtBit__FUl
/* 80B6005C  2C 03 00 00 */	cmpwi r3, 0
/* 80B60060  41 82 01 1C */	beq lbl_80B6017C
/* 80B60064  80 7D 0F AC */	lwz r3, 0xfac(r29)
/* 80B60068  80 83 00 08 */	lwz r4, 8(r3)
/* 80B6006C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B60070  38 03 FF FE */	addi r0, r3, -2
/* 80B60074  54 00 20 36 */	slwi r0, r0, 4
/* 80B60078  7C 84 02 14 */	add r4, r4, r0
/* 80B6007C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B60080  80 04 00 08 */	lwz r0, 8(r4)
/* 80B60084  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B60088  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B6008C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B60090  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B60094  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80B60098  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B6009C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B600A0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B600A4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B600A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B600AC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80B600B0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B600B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B600B8  7F A3 EB 78 */	mr r3, r29
/* 80B600BC  38 81 00 18 */	addi r4, r1, 0x18
/* 80B600C0  4B 5E A8 48 */	b setPos__8daNpcT_cF4cXyz
/* 80B600C4  38 00 00 01 */	li r0, 1
/* 80B600C8  98 1D 10 64 */	stb r0, 0x1064(r29)
/* 80B600CC  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80B600D0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B600D4  28 04 00 FF */	cmplwi r4, 0xff
/* 80B600D8  41 82 00 3C */	beq lbl_80B60114
/* 80B600DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B600E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B600E4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B600E8  7C 05 07 74 */	extsb r5, r0
/* 80B600EC  4B 4D 52 74 */	b isSwitch__10dSv_info_cCFii
/* 80B600F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B600F4  40 82 00 20 */	bne lbl_80B60114
/* 80B600F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B600FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B60100  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80B60104  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B60108  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B6010C  7C 05 07 74 */	extsb r5, r0
/* 80B60110  4B 4D 50 F0 */	b onSwitch__10dSv_info_cFii
lbl_80B60114:
/* 80B60114  38 00 00 02 */	li r0, 2
/* 80B60118  98 1D 10 66 */	stb r0, 0x1066(r29)
/* 80B6011C  48 00 00 60 */	b lbl_80B6017C
lbl_80B60120:
/* 80B60120  98 7D 00 FF */	stb r3, 0xff(r29)
/* 80B60124  48 00 00 58 */	b lbl_80B6017C
lbl_80B60128:
/* 80B60128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6012C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B60130  38 63 09 58 */	addi r3, r3, 0x958
/* 80B60134  38 80 00 03 */	li r4, 3
/* 80B60138  4B 4D 47 FC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80B6013C  2C 03 00 00 */	cmpwi r3, 0
/* 80B60140  41 82 00 0C */	beq lbl_80B6014C
/* 80B60144  38 00 00 01 */	li r0, 1
/* 80B60148  98 1D 10 6F */	stb r0, 0x106f(r29)
lbl_80B6014C:
/* 80B6014C  38 00 00 01 */	li r0, 1
/* 80B60150  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 80B60154  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B60158  64 00 08 00 */	oris r0, r0, 0x800
/* 80B6015C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B60160  48 00 00 1C */	b lbl_80B6017C
lbl_80B60164:
/* 80B60164  38 00 00 01 */	li r0, 1
/* 80B60168  98 1D 00 FF */	stb r0, 0xff(r29)
/* 80B6016C  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 80B60170  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B60174  64 00 08 00 */	oris r0, r0, 0x800
/* 80B60178  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_80B6017C:
/* 80B6017C  38 60 00 53 */	li r3, 0x53
/* 80B60180  4B 5E C9 AC */	b daNpcT_offTmpBit__FUl
/* 80B60184  38 60 00 54 */	li r3, 0x54
/* 80B60188  4B 5E C9 A4 */	b daNpcT_offTmpBit__FUl
/* 80B6018C  38 60 00 55 */	li r3, 0x55
/* 80B60190  4B 5E C9 9C */	b daNpcT_offTmpBit__FUl
/* 80B60194  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B60198  90 01 00 08 */	stw r0, 8(r1)
/* 80B6019C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80B601A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B601A4  7F A3 EB 78 */	mr r3, r29
/* 80B601A8  38 81 00 08 */	addi r4, r1, 8
/* 80B601AC  4B 5E A7 F0 */	b setAngle__8daNpcT_cF5csXyz
/* 80B601B0  39 61 00 60 */	addi r11, r1, 0x60
/* 80B601B4  4B 80 20 70 */	b _restgpr_28
/* 80B601B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B601BC  7C 08 03 A6 */	mtlr r0
/* 80B601C0  38 21 00 60 */	addi r1, r1, 0x60
/* 80B601C4  4E 80 00 20 */	blr 
