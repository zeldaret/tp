lbl_8098F758:
/* 8098F758  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8098F75C  7C 08 02 A6 */	mflr r0
/* 8098F760  90 01 00 64 */	stw r0, 0x64(r1)
/* 8098F764  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8098F768  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8098F76C  7C 7E 1B 78 */	mr r30, r3
/* 8098F770  3C 60 80 99 */	lis r3, cNullVec__6Z2Calc@ha
/* 8098F774  3B E3 1D DC */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8098F778  38 00 00 00 */	li r0, 0
/* 8098F77C  90 01 00 08 */	stw r0, 8(r1)
/* 8098F780  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 8098F784  2C 00 00 04 */	cmpwi r0, 4
/* 8098F788  41 82 01 80 */	beq lbl_8098F908
/* 8098F78C  40 80 00 1C */	bge lbl_8098F7A8
/* 8098F790  2C 00 00 02 */	cmpwi r0, 2
/* 8098F794  41 82 00 C0 */	beq lbl_8098F854
/* 8098F798  40 80 00 68 */	bge lbl_8098F800
/* 8098F79C  2C 00 00 01 */	cmpwi r0, 1
/* 8098F7A0  40 80 00 18 */	bge lbl_8098F7B8
/* 8098F7A4  48 00 03 3C */	b lbl_8098FAE0
lbl_8098F7A8:
/* 8098F7A8  2C 00 00 06 */	cmpwi r0, 6
/* 8098F7AC  41 82 02 5C */	beq lbl_8098FA08
/* 8098F7B0  40 80 03 30 */	bge lbl_8098FAE0
/* 8098F7B4  48 00 02 00 */	b lbl_8098F9B4
lbl_8098F7B8:
/* 8098F7B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F7BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F7C0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F7C4  4B 6B 2C A4 */	b reset__14dEvt_control_cFv
/* 8098F7C8  38 00 00 00 */	li r0, 0
/* 8098F7CC  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F7D0  38 00 FF FF */	li r0, -1
/* 8098F7D4  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098F7D8  80 7F 04 B8 */	lwz r3, 0x4b8(r31)
/* 8098F7DC  80 1F 04 BC */	lwz r0, 0x4bc(r31)
/* 8098F7E0  90 61 00 48 */	stw r3, 0x48(r1)
/* 8098F7E4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8098F7E8  80 1F 04 C0 */	lwz r0, 0x4c0(r31)
/* 8098F7EC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8098F7F0  7F C3 F3 78 */	mr r3, r30
/* 8098F7F4  38 81 00 48 */	addi r4, r1, 0x48
/* 8098F7F8  4B FF ED CD */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F7FC  48 00 03 28 */	b lbl_8098FB24
lbl_8098F800:
/* 8098F800  38 00 04 39 */	li r0, 0x439
/* 8098F804  B0 1E 0E 00 */	sth r0, 0xe00(r30)
/* 8098F808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F80C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F810  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F814  4B 6B 2C 54 */	b reset__14dEvt_control_cFv
/* 8098F818  38 60 00 00 */	li r3, 0
/* 8098F81C  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 8098F820  38 00 FF FF */	li r0, -1
/* 8098F824  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098F828  98 7E 0E 06 */	stb r3, 0xe06(r30)
/* 8098F82C  80 7F 04 C4 */	lwz r3, 0x4c4(r31)
/* 8098F830  80 1F 04 C8 */	lwz r0, 0x4c8(r31)
/* 8098F834  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8098F838  90 01 00 40 */	stw r0, 0x40(r1)
/* 8098F83C  80 1F 04 CC */	lwz r0, 0x4cc(r31)
/* 8098F840  90 01 00 44 */	stw r0, 0x44(r1)
/* 8098F844  7F C3 F3 78 */	mr r3, r30
/* 8098F848  38 81 00 3C */	addi r4, r1, 0x3c
/* 8098F84C  4B FF ED 79 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F850  48 00 02 D4 */	b lbl_8098FB24
lbl_8098F854:
/* 8098F854  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 8098F858  7C 00 07 35 */	extsh. r0, r0
/* 8098F85C  40 82 00 58 */	bne lbl_8098F8B4
/* 8098F860  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8098F864  38 81 00 08 */	addi r4, r1, 8
/* 8098F868  4B 8B AC C0 */	b getEventId__10dMsgFlow_cFPi
/* 8098F86C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8098F870  28 00 00 12 */	cmplwi r0, 0x12
/* 8098F874  40 82 00 40 */	bne lbl_8098F8B4
/* 8098F878  80 01 00 08 */	lwz r0, 8(r1)
/* 8098F87C  98 1E 0E 07 */	stb r0, 0xe07(r30)
/* 8098F880  38 00 00 01 */	li r0, 1
/* 8098F884  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F888  7F C3 F3 78 */	mr r3, r30
/* 8098F88C  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 8098F890  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8098F894  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 8098F898  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 8098F89C  38 A5 00 32 */	addi r5, r5, 0x32
/* 8098F8A0  38 C0 00 02 */	li r6, 2
/* 8098F8A4  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8098F8A8  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8098F8AC  4B 7C 40 A8 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 8098F8B0  48 00 02 74 */	b lbl_8098FB24
lbl_8098F8B4:
/* 8098F8B4  38 00 04 39 */	li r0, 0x439
/* 8098F8B8  B0 1E 0E 00 */	sth r0, 0xe00(r30)
/* 8098F8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F8C4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F8C8  4B 6B 2B A0 */	b reset__14dEvt_control_cFv
/* 8098F8CC  38 60 00 00 */	li r3, 0
/* 8098F8D0  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 8098F8D4  38 00 FF FF */	li r0, -1
/* 8098F8D8  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098F8DC  98 7E 0E 06 */	stb r3, 0xe06(r30)
/* 8098F8E0  80 7F 04 D0 */	lwz r3, 0x4d0(r31)
/* 8098F8E4  80 1F 04 D4 */	lwz r0, 0x4d4(r31)
/* 8098F8E8  90 61 00 30 */	stw r3, 0x30(r1)
/* 8098F8EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098F8F0  80 1F 04 D8 */	lwz r0, 0x4d8(r31)
/* 8098F8F4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8098F8F8  7F C3 F3 78 */	mr r3, r30
/* 8098F8FC  38 81 00 30 */	addi r4, r1, 0x30
/* 8098F900  4B FF EC C5 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F904  48 00 02 20 */	b lbl_8098FB24
lbl_8098F908:
/* 8098F908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F910  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F914  4B 6B 2B 54 */	b reset__14dEvt_control_cFv
/* 8098F918  38 00 00 00 */	li r0, 0
/* 8098F91C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F920  38 00 FF FF */	li r0, -1
/* 8098F924  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098F928  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 8098F92C  7C 00 07 35 */	extsh. r0, r0
/* 8098F930  40 82 00 54 */	bne lbl_8098F984
/* 8098F934  38 60 00 06 */	li r3, 6
/* 8098F938  4B 69 FE 64 */	b dComIfG_TimerDeleteRequest__Fi
/* 8098F93C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098F940  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098F944  80 63 00 00 */	lwz r3, 0(r3)
/* 8098F948  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098F94C  4B 91 FF 38 */	b subBgmStop__8Z2SeqMgrFv
/* 8098F950  38 00 00 05 */	li r0, 5
/* 8098F954  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098F958  7F C3 F3 78 */	mr r3, r30
/* 8098F95C  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 8098F960  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8098F964  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 8098F968  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 8098F96C  38 A5 00 69 */	addi r5, r5, 0x69
/* 8098F970  38 C0 00 01 */	li r6, 1
/* 8098F974  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8098F978  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8098F97C  4B 7C 3F D8 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 8098F980  48 00 01 A4 */	b lbl_8098FB24
lbl_8098F984:
/* 8098F984  38 60 00 06 */	li r3, 6
/* 8098F988  4B 69 FC B0 */	b dComIfG_TimerReStart__Fi
/* 8098F98C  80 7F 04 DC */	lwz r3, 0x4dc(r31)
/* 8098F990  80 1F 04 E0 */	lwz r0, 0x4e0(r31)
/* 8098F994  90 61 00 24 */	stw r3, 0x24(r1)
/* 8098F998  90 01 00 28 */	stw r0, 0x28(r1)
/* 8098F99C  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 8098F9A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8098F9A4  7F C3 F3 78 */	mr r3, r30
/* 8098F9A8  38 81 00 24 */	addi r4, r1, 0x24
/* 8098F9AC  4B FF EC 19 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F9B0  48 00 01 74 */	b lbl_8098FB24
lbl_8098F9B4:
/* 8098F9B4  38 00 04 39 */	li r0, 0x439
/* 8098F9B8  B0 1E 0E 00 */	sth r0, 0xe00(r30)
/* 8098F9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098F9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098F9C4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F9C8  4B 6B 2A A0 */	b reset__14dEvt_control_cFv
/* 8098F9CC  38 60 00 00 */	li r3, 0
/* 8098F9D0  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 8098F9D4  38 00 FF FF */	li r0, -1
/* 8098F9D8  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098F9DC  98 7E 0E 06 */	stb r3, 0xe06(r30)
/* 8098F9E0  80 7F 04 E8 */	lwz r3, 0x4e8(r31)
/* 8098F9E4  80 1F 04 EC */	lwz r0, 0x4ec(r31)
/* 8098F9E8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8098F9EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098F9F0  80 1F 04 F0 */	lwz r0, 0x4f0(r31)
/* 8098F9F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098F9F8  7F C3 F3 78 */	mr r3, r30
/* 8098F9FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8098FA00  4B FF EB C5 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098FA04  48 00 01 20 */	b lbl_8098FB24
lbl_8098FA08:
/* 8098FA08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FA0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FA10  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098FA14  4B 6B 2A 54 */	b reset__14dEvt_control_cFv
/* 8098FA18  38 60 00 00 */	li r3, 0
/* 8098FA1C  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 8098FA20  38 00 FF FF */	li r0, -1
/* 8098FA24  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098FA28  98 7E 0E 24 */	stb r3, 0xe24(r30)
/* 8098FA2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FA30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FA34  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8098FA38  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8098FA3C  7C 04 07 74 */	extsb r4, r0
/* 8098FA40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8098FA44  7C 05 07 74 */	extsb r5, r0
/* 8098FA48  4B 6A 57 B8 */	b onSwitch__10dSv_info_cFii
/* 8098FA4C  38 00 00 00 */	li r0, 0
/* 8098FA50  98 1E 0E 06 */	stb r0, 0xe06(r30)
/* 8098FA54  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 8098FA58  7C 00 07 35 */	extsh. r0, r0
/* 8098FA5C  40 82 00 50 */	bne lbl_8098FAAC
/* 8098FA60  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8098FA64  38 81 00 08 */	addi r4, r1, 8
/* 8098FA68  4B 8B AA C0 */	b getEventId__10dMsgFlow_cFPi
/* 8098FA6C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8098FA70  28 00 00 12 */	cmplwi r0, 0x12
/* 8098FA74  40 82 00 38 */	bne lbl_8098FAAC
/* 8098FA78  38 00 00 01 */	li r0, 1
/* 8098FA7C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098FA80  7F C3 F3 78 */	mr r3, r30
/* 8098FA84  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 8098FA88  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8098FA8C  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 8098FA90  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 8098FA94  38 A5 00 32 */	addi r5, r5, 0x32
/* 8098FA98  38 C0 00 02 */	li r6, 2
/* 8098FA9C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8098FAA0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8098FAA4  4B 7C 3E B0 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 8098FAA8  48 00 00 7C */	b lbl_8098FB24
lbl_8098FAAC:
/* 8098FAAC  38 00 00 07 */	li r0, 7
/* 8098FAB0  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098FAB4  7F C3 F3 78 */	mr r3, r30
/* 8098FAB8  38 9F 02 CC */	addi r4, r31, 0x2cc
/* 8098FABC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8098FAC0  3C A0 80 99 */	lis r5, struct_80991D40+0x0@ha
/* 8098FAC4  38 A5 1D 40 */	addi r5, r5, struct_80991D40+0x0@l
/* 8098FAC8  38 A5 00 81 */	addi r5, r5, 0x81
/* 8098FACC  38 C0 00 02 */	li r6, 2
/* 8098FAD0  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8098FAD4  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8098FAD8  4B 7C 3E 7C */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 8098FADC  48 00 00 48 */	b lbl_8098FB24
lbl_8098FAE0:
/* 8098FAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FAE8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098FAEC  4B 6B 29 7C */	b reset__14dEvt_control_cFv
/* 8098FAF0  38 00 00 00 */	li r0, 0
/* 8098FAF4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 8098FAF8  38 00 FF FF */	li r0, -1
/* 8098FAFC  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 8098FB00  80 7F 04 F4 */	lwz r3, 0x4f4(r31)
/* 8098FB04  80 1F 04 F8 */	lwz r0, 0x4f8(r31)
/* 8098FB08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8098FB0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098FB10  80 1F 04 FC */	lwz r0, 0x4fc(r31)
/* 8098FB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098FB18  7F C3 F3 78 */	mr r3, r30
/* 8098FB1C  38 81 00 0C */	addi r4, r1, 0xc
/* 8098FB20  4B FF EA A5 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
lbl_8098FB24:
/* 8098FB24  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8098FB28  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8098FB2C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8098FB30  7C 08 03 A6 */	mtlr r0
/* 8098FB34  38 21 00 60 */	addi r1, r1, 0x60
/* 8098FB38  4E 80 00 20 */	blr 
