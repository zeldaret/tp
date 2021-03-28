lbl_8098F414:
/* 8098F414  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8098F418  7C 08 02 A6 */	mflr r0
/* 8098F41C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8098F420  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8098F424  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8098F428  7C 7E 1B 78 */	mr r30, r3
/* 8098F42C  3C 80 80 99 */	lis r4, cNullVec__6Z2Calc@ha
/* 8098F430  3B E4 1D DC */	addi r31, r4, cNullVec__6Z2Calc@l
/* 8098F434  A8 03 0E 04 */	lha r0, 0xe04(r3)
/* 8098F438  2C 00 00 00 */	cmpwi r0, 0
/* 8098F43C  41 82 00 20 */	beq lbl_8098F45C
/* 8098F440  40 80 00 10 */	bge lbl_8098F450
/* 8098F444  2C 00 FF FF */	cmpwi r0, -1
/* 8098F448  40 80 00 CC */	bge lbl_8098F514
/* 8098F44C  48 00 02 F0 */	b lbl_8098F73C
lbl_8098F450:
/* 8098F450  2C 00 00 02 */	cmpwi r0, 2
/* 8098F454  40 80 02 E8 */	bge lbl_8098F73C
/* 8098F458  48 00 00 C8 */	b lbl_8098F520
lbl_8098F45C:
/* 8098F45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F464  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8098F468  4B 69 D7 74 */	b getTimerPtr__14dComIfG_play_cFv
/* 8098F46C  28 03 00 00 */	cmplwi r3, 0
/* 8098F470  40 82 00 38 */	bne lbl_8098F4A8
/* 8098F474  38 00 00 01 */	li r0, 1
/* 8098F478  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F47C  80 7F 04 88 */	lwz r3, 0x488(r31)
/* 8098F480  80 1F 04 8C */	lwz r0, 0x48c(r31)
/* 8098F484  90 61 00 30 */	stw r3, 0x30(r1)
/* 8098F488  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098F48C  80 1F 04 90 */	lwz r0, 0x490(r31)
/* 8098F490  90 01 00 38 */	stw r0, 0x38(r1)
/* 8098F494  7F C3 F3 78 */	mr r3, r30
/* 8098F498  38 81 00 30 */	addi r4, r1, 0x30
/* 8098F49C  4B FF F1 29 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F4A0  38 60 00 01 */	li r3, 1
/* 8098F4A4  48 00 02 9C */	b lbl_8098F740
lbl_8098F4A8:
/* 8098F4A8  7F C3 F3 78 */	mr r3, r30
/* 8098F4AC  38 80 00 0E */	li r4, 0xe
/* 8098F4B0  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098F4B4  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098F4B8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098F4BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098F4C0  7D 89 03 A6 */	mtctr r12
/* 8098F4C4  4E 80 04 21 */	bctrl 
/* 8098F4C8  7F C3 F3 78 */	mr r3, r30
/* 8098F4CC  38 80 00 11 */	li r4, 0x11
/* 8098F4D0  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098F4D4  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098F4D8  38 A0 00 00 */	li r5, 0
/* 8098F4DC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098F4E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098F4E4  7D 89 03 A6 */	mtctr r12
/* 8098F4E8  4E 80 04 21 */	bctrl 
/* 8098F4EC  7F C3 F3 78 */	mr r3, r30
/* 8098F4F0  38 80 00 00 */	li r4, 0
/* 8098F4F4  4B FF F1 79 */	bl setLookMode__11daNpcChin_cFi
/* 8098F4F8  7F C3 F3 78 */	mr r3, r30
/* 8098F4FC  38 80 65 47 */	li r4, 0x6547
/* 8098F500  4B 7C 4D 50 */	b setAngle__8daNpcF_cFs
/* 8098F504  38 00 00 01 */	li r0, 1
/* 8098F508  98 1E 0E 08 */	stb r0, 0xe08(r30)
/* 8098F50C  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098F510  48 00 02 2C */	b lbl_8098F73C
lbl_8098F514:
/* 8098F514  38 00 00 00 */	li r0, 0
/* 8098F518  98 1E 0E 08 */	stb r0, 0xe08(r30)
/* 8098F51C  48 00 02 20 */	b lbl_8098F73C
lbl_8098F520:
/* 8098F520  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8098F524  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8098F528  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8098F52C  80 04 05 8C */	lwz r0, 0x58c(r4)
/* 8098F530  64 00 40 00 */	oris r0, r0, 0x4000
/* 8098F534  90 04 05 8C */	stw r0, 0x58c(r4)
/* 8098F538  38 00 FF FF */	li r0, -1
/* 8098F53C  90 01 00 08 */	stw r0, 8(r1)
/* 8098F540  38 81 00 08 */	addi r4, r1, 8
/* 8098F544  48 00 05 F9 */	bl isGameEnd__11daNpcChin_cFRi
/* 8098F548  2C 03 00 01 */	cmpwi r3, 1
/* 8098F54C  40 82 00 50 */	bne lbl_8098F59C
/* 8098F550  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098F554  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098F558  80 63 00 00 */	lwz r3, 0(r3)
/* 8098F55C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098F560  4B 92 03 24 */	b subBgmStop__8Z2SeqMgrFv
/* 8098F564  38 60 00 06 */	li r3, 6
/* 8098F568  4B 6A 02 34 */	b dComIfG_TimerDeleteRequest__Fi
/* 8098F56C  38 00 00 02 */	li r0, 2
/* 8098F570  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F574  80 7F 04 94 */	lwz r3, 0x494(r31)
/* 8098F578  80 1F 04 98 */	lwz r0, 0x498(r31)
/* 8098F57C  90 61 00 24 */	stw r3, 0x24(r1)
/* 8098F580  90 01 00 28 */	stw r0, 0x28(r1)
/* 8098F584  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8098F588  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8098F58C  7F C3 F3 78 */	mr r3, r30
/* 8098F590  38 81 00 24 */	addi r4, r1, 0x24
/* 8098F594  4B FF F0 31 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F598  48 00 01 A4 */	b lbl_8098F73C
lbl_8098F59C:
/* 8098F59C  2C 03 00 02 */	cmpwi r3, 2
/* 8098F5A0  40 82 00 94 */	bne lbl_8098F634
/* 8098F5A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098F5A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098F5AC  80 63 00 00 */	lwz r3, 0(r3)
/* 8098F5B0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098F5B4  4B 92 02 D0 */	b subBgmStop__8Z2SeqMgrFv
/* 8098F5B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098F5BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098F5C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8098F5C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098F5C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009D@ha */
/* 8098F5CC  38 84 00 9D */	addi r4, r4, 0x009D /* 0x0100009D@l */
/* 8098F5D0  4B 91 FE CC */	b subBgmStart__8Z2SeqMgrFUl
/* 8098F5D4  88 1E 0E 07 */	lbz r0, 0xe07(r30)
/* 8098F5D8  7C 00 07 74 */	extsb r0, r0
/* 8098F5DC  2C 00 00 02 */	cmpwi r0, 2
/* 8098F5E0  41 82 00 0C */	beq lbl_8098F5EC
/* 8098F5E4  2C 00 00 01 */	cmpwi r0, 1
/* 8098F5E8  40 82 00 14 */	bne lbl_8098F5FC
lbl_8098F5EC:
/* 8098F5EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F5F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F5F4  80 01 00 08 */	lwz r0, 8(r1)
/* 8098F5F8  90 03 09 44 */	stw r0, 0x944(r3)
lbl_8098F5FC:
/* 8098F5FC  38 60 00 06 */	li r3, 6
/* 8098F600  4B 6A 01 9C */	b dComIfG_TimerDeleteRequest__Fi
/* 8098F604  38 00 00 03 */	li r0, 3
/* 8098F608  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F60C  80 7F 04 A0 */	lwz r3, 0x4a0(r31)
/* 8098F610  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 8098F614  90 61 00 18 */	stw r3, 0x18(r1)
/* 8098F618  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098F61C  80 1F 04 A8 */	lwz r0, 0x4a8(r31)
/* 8098F620  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098F624  7F C3 F3 78 */	mr r3, r30
/* 8098F628  38 81 00 18 */	addi r4, r1, 0x18
/* 8098F62C  4B FF EF 99 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F630  48 00 01 0C */	b lbl_8098F73C
lbl_8098F634:
/* 8098F634  80 7E 0E 0C */	lwz r3, 0xe0c(r30)
/* 8098F638  48 26 AF D4 */	b SphSeProc__12_GlSph_Mng_cFv
/* 8098F63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F644  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8098F648  28 00 00 00 */	cmplwi r0, 0
/* 8098F64C  41 82 00 A8 */	beq lbl_8098F6F4
/* 8098F650  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8098F654  28 00 00 01 */	cmplwi r0, 1
/* 8098F658  40 82 00 E4 */	bne lbl_8098F73C
/* 8098F65C  38 00 00 00 */	li r0, 0
/* 8098F660  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 8098F664  28 04 00 01 */	cmplwi r4, 1
/* 8098F668  41 82 00 0C */	beq lbl_8098F674
/* 8098F66C  28 04 00 02 */	cmplwi r4, 2
/* 8098F670  40 82 00 08 */	bne lbl_8098F678
lbl_8098F674:
/* 8098F674  38 00 00 01 */	li r0, 1
lbl_8098F678:
/* 8098F678  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8098F67C  41 82 00 14 */	beq lbl_8098F690
/* 8098F680  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8098F684  4B 6B 91 6C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 8098F688  2C 03 00 00 */	cmpwi r3, 0
/* 8098F68C  41 82 00 B0 */	beq lbl_8098F73C
lbl_8098F690:
/* 8098F690  38 60 00 06 */	li r3, 6
/* 8098F694  4B 69 FF 2C */	b dComIfG_TimerStop__Fi
/* 8098F698  38 00 00 04 */	li r0, 4
/* 8098F69C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F6A0  7F C3 F3 78 */	mr r3, r30
/* 8098F6A4  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 8098F6A8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8098F6AC  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8098F6B0  54 00 10 3A */	slwi r0, r0, 2
/* 8098F6B4  38 BF 02 EC */	addi r5, r31, 0x2ec
/* 8098F6B8  7C A5 00 2E */	lwzx r5, r5, r0
/* 8098F6BC  38 C0 00 02 */	li r6, 2
/* 8098F6C0  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8098F6C4  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8098F6C8  4B 7C 42 8C */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 8098F6CC  80 7F 04 AC */	lwz r3, 0x4ac(r31)
/* 8098F6D0  80 1F 04 B0 */	lwz r0, 0x4b0(r31)
/* 8098F6D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8098F6D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098F6DC  80 1F 04 B4 */	lwz r0, 0x4b4(r31)
/* 8098F6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098F6E4  7F C3 F3 78 */	mr r3, r30
/* 8098F6E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8098F6EC  4B FF EE D9 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F6F0  48 00 00 4C */	b lbl_8098F73C
lbl_8098F6F4:
/* 8098F6F4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8098F6F8  28 00 00 00 */	cmplwi r0, 0
/* 8098F6FC  41 82 00 10 */	beq lbl_8098F70C
/* 8098F700  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 8098F704  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8098F708  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_8098F70C:
/* 8098F70C  7F C3 F3 78 */	mr r3, r30
/* 8098F710  88 9E 0E 06 */	lbz r4, 0xe06(r30)
/* 8098F714  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8098F718  54 00 10 3A */	slwi r0, r0, 2
/* 8098F71C  38 BF 02 EC */	addi r5, r31, 0x2ec
/* 8098F720  7C A5 00 2E */	lwzx r5, r5, r0
/* 8098F724  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8098F728  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8098F72C  38 E0 00 04 */	li r7, 4
/* 8098F730  39 00 00 FF */	li r8, 0xff
/* 8098F734  39 20 00 02 */	li r9, 2
/* 8098F738  4B 7C 41 44 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_8098F73C:
/* 8098F73C  38 60 00 01 */	li r3, 1
lbl_8098F740:
/* 8098F740  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8098F744  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8098F748  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8098F74C  7C 08 03 A6 */	mtlr r0
/* 8098F750  38 21 00 50 */	addi r1, r1, 0x50
/* 8098F754  4E 80 00 20 */	blr 
