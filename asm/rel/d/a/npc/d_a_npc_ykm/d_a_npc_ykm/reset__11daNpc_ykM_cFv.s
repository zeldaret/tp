lbl_80B548A8:
/* 80B548A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B548AC  7C 08 02 A6 */	mflr r0
/* 80B548B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B548B4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B548B8  4B 80 D9 1D */	bl _savegpr_27
/* 80B548BC  7C 7E 1B 78 */	mr r30, r3
/* 80B548C0  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B548C4  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B548C8  38 7E 14 E4 */	addi r3, r30, 0x14e4
/* 80B548CC  38 1E 15 88 */	addi r0, r30, 0x1588
/* 80B548D0  7F 83 00 50 */	subf r28, r3, r0
/* 80B548D4  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B548D8  28 03 00 00 */	cmplwi r3, 0
/* 80B548DC  41 82 00 08 */	beq lbl_80B548E4
/* 80B548E0  4B 5F 0E 85 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B548E4:
/* 80B548E4  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80B548E8  38 80 00 00 */	li r4, 0
/* 80B548EC  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80B548F0  7C A3 00 50 */	subf r5, r3, r0
/* 80B548F4  4B 4A EB 65 */	bl memset
/* 80B548F8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B548FC  4B 5F 0F 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B54900  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B54904  4B 5F 0F 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B54908  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B5490C  4B 5F 0D C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B54910  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80B54914  4B 5F 0D C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B54918  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B5491C  4B 5F 23 7D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B54920  38 A0 00 00 */	li r5, 0
/* 80B54924  38 60 00 00 */	li r3, 0
/* 80B54928  7C A4 2B 78 */	mr r4, r5
/* 80B5492C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B54930  38 00 00 02 */	li r0, 2
/* 80B54934  7C 09 03 A6 */	mtctr r0
lbl_80B54938:
/* 80B54938  7C DE 22 14 */	add r6, r30, r4
/* 80B5493C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B54940  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B54944  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B54948  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B5494C  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80B54950  38 63 00 04 */	addi r3, r3, 4
/* 80B54954  38 84 00 06 */	addi r4, r4, 6
/* 80B54958  42 00 FF E0 */	bdnz lbl_80B54938
/* 80B5495C  38 00 00 00 */	li r0, 0
/* 80B54960  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80B54964  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80B54968  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80B5496C  38 00 FF FF */	li r0, -1
/* 80B54970  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80B54974  38 00 00 01 */	li r0, 1
/* 80B54978  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80B5497C  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80B54980  4B 71 2F D5 */	bl cM_rndF__Ff
/* 80B54984  FC 00 08 1E */	fctiwz f0, f1
/* 80B54988  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B5498C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B54990  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80B54994  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80B54998  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80B5499C  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80B549A0  3B 60 00 00 */	li r27, 0
/* 80B549A4  3B A0 00 00 */	li r29, 0
lbl_80B549A8:
/* 80B549A8  38 7D 14 78 */	addi r3, r29, 0x1478
/* 80B549AC  7C 7E 1A 14 */	add r3, r30, r3
/* 80B549B0  4B 5F 0D 25 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B549B4  3B 7B 00 01 */	addi r27, r27, 1
/* 80B549B8  2C 1B 00 08 */	cmpwi r27, 8
/* 80B549BC  3B BD 00 08 */	addi r29, r29, 8
/* 80B549C0  41 80 FF E8 */	blt lbl_80B549A8
/* 80B549C4  38 7E 14 E4 */	addi r3, r30, 0x14e4
/* 80B549C8  38 80 00 00 */	li r4, 0
/* 80B549CC  7F 85 E3 78 */	mr r5, r28
/* 80B549D0  4B 4A EA 89 */	bl memset
/* 80B549D4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B549D8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B549DC  28 00 00 FF */	cmplwi r0, 0xff
/* 80B549E0  41 82 00 60 */	beq lbl_80B54A40
/* 80B549E4  38 7E 14 B8 */	addi r3, r30, 0x14b8
/* 80B549E8  4B 5F 12 59 */	bl initialize__13daNpcT_Path_cFv
/* 80B549EC  38 7E 14 B8 */	addi r3, r30, 0x14b8
/* 80B549F0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B549F4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B549F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B549FC  7C 05 07 74 */	extsb r5, r0
/* 80B54A00  38 C0 00 00 */	li r6, 0
/* 80B54A04  4B 5F 12 71 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
/* 80B54A08  38 00 00 00 */	li r0, 0
/* 80B54A0C  90 1E 14 E0 */	stw r0, 0x14e0(r30)
/* 80B54A10  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B54A14  28 00 00 04 */	cmplwi r0, 4
/* 80B54A18  40 82 00 28 */	bne lbl_80B54A40
/* 80B54A1C  80 7E 14 B8 */	lwz r3, 0x14b8(r30)
/* 80B54A20  A0 03 00 02 */	lhz r0, 2(r3)
/* 80B54A24  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B54A28  41 82 00 18 */	beq lbl_80B54A40
/* 80B54A2C  A0 63 00 02 */	lhz r3, 2(r3)
/* 80B54A30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B54A34  7C 04 07 74 */	extsb r4, r0
/* 80B54A38  4B 4F CD B5 */	bl dPath_GetRoomPath__Fii
/* 80B54A3C  90 7E 14 E0 */	stw r3, 0x14e0(r30)
lbl_80B54A40:
/* 80B54A40  38 60 00 00 */	li r3, 0
/* 80B54A44  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B54A48  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B54A4C  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B54A50  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80B54A54  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B54A58  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B54A5C  2C 00 00 04 */	cmpwi r0, 4
/* 80B54A60  41 82 00 58 */	beq lbl_80B54AB8
/* 80B54A64  40 80 00 14 */	bge lbl_80B54A78
/* 80B54A68  2C 00 00 02 */	cmpwi r0, 2
/* 80B54A6C  41 82 00 1C */	beq lbl_80B54A88
/* 80B54A70  40 80 00 30 */	bge lbl_80B54AA0
/* 80B54A74  48 00 00 84 */	b lbl_80B54AF8
lbl_80B54A78:
/* 80B54A78  2C 00 00 06 */	cmpwi r0, 6
/* 80B54A7C  41 82 00 60 */	beq lbl_80B54ADC
/* 80B54A80  40 80 00 78 */	bge lbl_80B54AF8
/* 80B54A84  48 00 00 3C */	b lbl_80B54AC0
lbl_80B54A88:
/* 80B54A88  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80B54A8C  D0 1E 15 68 */	stfs f0, 0x1568(r30)
/* 80B54A90  38 00 00 01 */	li r0, 1
/* 80B54A94  98 1E 15 79 */	stb r0, 0x1579(r30)
/* 80B54A98  98 7E 00 FF */	stb r3, 0xff(r30)
/* 80B54A9C  48 00 00 5C */	b lbl_80B54AF8
lbl_80B54AA0:
/* 80B54AA0  38 00 00 01 */	li r0, 1
/* 80B54AA4  98 1E 0E 25 */	stb r0, 0xe25(r30)
/* 80B54AA8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54AAC  64 00 08 00 */	oris r0, r0, 0x800
/* 80B54AB0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80B54AB4  48 00 00 44 */	b lbl_80B54AF8
lbl_80B54AB8:
/* 80B54AB8  98 7E 00 FF */	stb r3, 0xff(r30)
/* 80B54ABC  48 00 00 3C */	b lbl_80B54AF8
lbl_80B54AC0:
/* 80B54AC0  38 60 00 01 */	li r3, 1
/* 80B54AC4  98 7E 0E 25 */	stb r3, 0xe25(r30)
/* 80B54AC8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54ACC  64 00 08 00 */	oris r0, r0, 0x800
/* 80B54AD0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80B54AD4  98 7E 00 FF */	stb r3, 0xff(r30)
/* 80B54AD8  48 00 00 20 */	b lbl_80B54AF8
lbl_80B54ADC:
/* 80B54ADC  38 00 00 01 */	li r0, 1
/* 80B54AE0  98 1E 0E 25 */	stb r0, 0xe25(r30)
/* 80B54AE4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54AE8  64 00 08 00 */	oris r0, r0, 0x800
/* 80B54AEC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80B54AF0  38 00 00 02 */	li r0, 2
/* 80B54AF4  98 1E 00 FF */	stb r0, 0xff(r30)
lbl_80B54AF8:
/* 80B54AF8  38 60 00 53 */	li r3, 0x53
/* 80B54AFC  4B 5F 80 31 */	bl daNpcT_offTmpBit__FUl
/* 80B54B00  38 60 00 54 */	li r3, 0x54
/* 80B54B04  4B 5F 80 29 */	bl daNpcT_offTmpBit__FUl
/* 80B54B08  38 60 00 55 */	li r3, 0x55
/* 80B54B0C  4B 5F 80 21 */	bl daNpcT_offTmpBit__FUl
/* 80B54B10  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B54B14  90 01 00 08 */	stw r0, 8(r1)
/* 80B54B18  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80B54B1C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B54B20  7F C3 F3 78 */	mr r3, r30
/* 80B54B24  38 81 00 08 */	addi r4, r1, 8
/* 80B54B28  4B 5F 5E 75 */	bl setAngle__8daNpcT_cF5csXyz
/* 80B54B2C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B54B30  4B 80 D6 F1 */	bl _restgpr_27
/* 80B54B34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B54B38  7C 08 03 A6 */	mtlr r0
/* 80B54B3C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B54B40  4E 80 00 20 */	blr 
