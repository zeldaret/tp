lbl_80A64FBC:
/* 80A64FBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A64FC0  7C 08 02 A6 */	mflr r0
/* 80A64FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A64FC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A64FCC  4B 8F D2 0D */	bl _savegpr_28
/* 80A64FD0  7C 7D 1B 78 */	mr r29, r3
/* 80A64FD4  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha /* 0x80A68EA4@ha */
/* 80A64FD8  3B E3 8E A4 */	addi r31, r3, m__17daNpc_Len_Param_c@l /* 0x80A68EA4@l */
/* 80A64FDC  38 7D 0F CC */	addi r3, r29, 0xfcc
/* 80A64FE0  38 1D 0F F0 */	addi r0, r29, 0xff0
/* 80A64FE4  7F C3 00 50 */	subf r30, r3, r0
/* 80A64FE8  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A64FEC  28 03 00 00 */	cmplwi r3, 0
/* 80A64FF0  41 82 00 08 */	beq lbl_80A64FF8
/* 80A64FF4  4B 6E 07 71 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A64FF8:
/* 80A64FF8  38 7D 0D 24 */	addi r3, r29, 0xd24
/* 80A64FFC  38 80 00 00 */	li r4, 0
/* 80A65000  38 1D 0E 38 */	addi r0, r29, 0xe38
/* 80A65004  7C A3 00 50 */	subf r5, r3, r0
/* 80A65008  4B 59 E4 51 */	bl memset
/* 80A6500C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A65010  4B 6E 08 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A65014  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A65018  4B 6E 08 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6501C  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80A65020  4B 6E 06 B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A65024  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80A65028  4B 6E 06 AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A6502C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A65030  4B 6E 1C 69 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A65034  38 60 00 00 */	li r3, 0
/* 80A65038  38 80 00 00 */	li r4, 0
/* 80A6503C  7C 87 23 78 */	mr r7, r4
/* 80A65040  7C 86 23 78 */	mr r6, r4
/* 80A65044  7C 85 23 78 */	mr r5, r4
/* 80A65048  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A6504C  38 00 00 02 */	li r0, 2
/* 80A65050  7C 09 03 A6 */	mtctr r0
lbl_80A65054:
/* 80A65054  7D 1D 22 14 */	add r8, r29, r4
/* 80A65058  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80A6505C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80A65060  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80A65064  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A65068  7C 1D 05 2E */	stfsx f0, r29, r0
/* 80A6506C  38 63 00 04 */	addi r3, r3, 4
/* 80A65070  38 84 00 06 */	addi r4, r4, 6
/* 80A65074  42 00 FF E0 */	bdnz lbl_80A65054
/* 80A65078  38 00 00 00 */	li r0, 0
/* 80A6507C  B0 1D 0D 1C */	sth r0, 0xd1c(r29)
/* 80A65080  B0 1D 0D 1E */	sth r0, 0xd1e(r29)
/* 80A65084  98 1D 0D 20 */	stb r0, 0xd20(r29)
/* 80A65088  38 00 FF FF */	li r0, -1
/* 80A6508C  90 1D 0D 90 */	stw r0, 0xd90(r29)
/* 80A65090  38 00 00 01 */	li r0, 1
/* 80A65094  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80A65098  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A6509C  4B 80 28 B9 */	bl cM_rndF__Ff
/* 80A650A0  FC 00 08 1E */	fctiwz f0, f1
/* 80A650A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A650A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A650AC  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80A650B0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A650B4  D0 1D 0D E0 */	stfs f0, 0xde0(r29)
/* 80A650B8  D0 1D 0D E4 */	stfs f0, 0xde4(r29)
/* 80A650BC  3B 80 00 00 */	li r28, 0
/* 80A650C0  3B E0 00 00 */	li r31, 0
lbl_80A650C4:
/* 80A650C4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A650C8  7C 7D 1A 14 */	add r3, r29, r3
/* 80A650CC  4B 6E 06 09 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A650D0  3B 9C 00 01 */	addi r28, r28, 1
/* 80A650D4  2C 1C 00 04 */	cmpwi r28, 4
/* 80A650D8  3B FF 00 08 */	addi r31, r31, 8
/* 80A650DC  41 80 FF E8 */	blt lbl_80A650C4
/* 80A650E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A650E4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80A650E8  28 00 00 FF */	cmplwi r0, 0xff
/* 80A650EC  41 82 00 28 */	beq lbl_80A65114
/* 80A650F0  38 7D 0F A4 */	addi r3, r29, 0xfa4
/* 80A650F4  4B 6E 0B 4D */	bl initialize__13daNpcT_Path_cFv
/* 80A650F8  38 7D 0F A4 */	addi r3, r29, 0xfa4
/* 80A650FC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A65100  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A65104  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80A65108  7C 05 07 74 */	extsb r5, r0
/* 80A6510C  38 C0 00 00 */	li r6, 0
/* 80A65110  4B 6E 0B 65 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80A65114:
/* 80A65114  38 7D 0F CC */	addi r3, r29, 0xfcc
/* 80A65118  38 80 00 00 */	li r4, 0
/* 80A6511C  7F C5 F3 78 */	mr r5, r30
/* 80A65120  4B 59 E3 39 */	bl memset
/* 80A65124  38 60 00 00 */	li r3, 0
/* 80A65128  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80A6512C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80A65130  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80A65134  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80A65138  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A6513C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A65140  90 01 00 08 */	stw r0, 8(r1)
/* 80A65144  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80A65148  7F A3 EB 78 */	mr r3, r29
/* 80A6514C  38 81 00 08 */	addi r4, r1, 8
/* 80A65150  4B 6E 58 4D */	bl setAngle__8daNpcT_cF5csXyz
/* 80A65154  39 61 00 30 */	addi r11, r1, 0x30
/* 80A65158  4B 8F D0 CD */	bl _restgpr_28
/* 80A6515C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A65160  7C 08 03 A6 */	mtlr r0
/* 80A65164  38 21 00 30 */	addi r1, r1, 0x30
/* 80A65168  4E 80 00 20 */	blr 
