lbl_80A937A8:
/* 80A937A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A937AC  7C 08 02 A6 */	mflr r0
/* 80A937B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A937B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A937B8  4B 8C EA 21 */	bl _savegpr_28
/* 80A937BC  7C 7F 1B 78 */	mr r31, r3
/* 80A937C0  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A937C4  3B C3 6A 6C */	addi r30, r3, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A937C8  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A937CC  38 1F 0F C8 */	addi r0, r31, 0xfc8
/* 80A937D0  7F A3 00 50 */	subf r29, r3, r0
/* 80A937D4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A937D8  28 03 00 00 */	cmplwi r3, 0
/* 80A937DC  41 82 00 08 */	beq lbl_80A937E4
/* 80A937E0  4B 6B 1F 85 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A937E4:
/* 80A937E4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A937E8  38 80 00 00 */	li r4, 0
/* 80A937EC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A937F0  7C A3 00 50 */	subf r5, r3, r0
/* 80A937F4  4B 56 FC 65 */	bl memset
/* 80A937F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A937FC  4B 6B 20 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93800  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A93804  4B 6B 20 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93808  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9380C  4B 6B 1E C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A93810  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A93814  4B 6B 1E C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A93818  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9381C  4B 6B 34 7D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A93820  38 A0 00 00 */	li r5, 0
/* 80A93824  38 60 00 00 */	li r3, 0
/* 80A93828  7C A4 2B 78 */	mr r4, r5
/* 80A9382C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A93830  38 00 00 02 */	li r0, 2
/* 80A93834  7C 09 03 A6 */	mtctr r0
lbl_80A93838:
/* 80A93838  7C DF 22 14 */	add r6, r31, r4
/* 80A9383C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A93840  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A93844  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A93848  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A9384C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A93850  38 63 00 04 */	addi r3, r3, 4
/* 80A93854  38 84 00 06 */	addi r4, r4, 6
/* 80A93858  42 00 FF E0 */	bdnz lbl_80A93838
/* 80A9385C  38 00 00 00 */	li r0, 0
/* 80A93860  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A93864  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A93868  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A9386C  38 00 FF FF */	li r0, -1
/* 80A93870  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A93874  38 00 00 01 */	li r0, 1
/* 80A93878  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A9387C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A93880  4B 7D 40 D5 */	bl cM_rndF__Ff
/* 80A93884  FC 00 08 1E */	fctiwz f0, f1
/* 80A93888  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A9388C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A93890  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A93894  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A93898  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A9389C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A938A0  3B 80 00 00 */	li r28, 0
/* 80A938A4  3B C0 00 00 */	li r30, 0
lbl_80A938A8:
/* 80A938A8  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A938AC  7C 7F 1A 14 */	add r3, r31, r3
/* 80A938B0  4B 6B 1E 25 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A938B4  3B 9C 00 01 */	addi r28, r28, 1
/* 80A938B8  2C 1C 00 02 */	cmpwi r28, 2
/* 80A938BC  3B DE 00 08 */	addi r30, r30, 8
/* 80A938C0  41 80 FF E8 */	blt lbl_80A938A8
/* 80A938C4  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A938C8  38 80 00 00 */	li r4, 0
/* 80A938CC  7F A5 EB 78 */	mr r5, r29
/* 80A938D0  4B 56 FB 89 */	bl memset
/* 80A938D4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A938D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A938DC  41 82 00 08 */	beq lbl_80A938E4
/* 80A938E0  48 00 00 0C */	b lbl_80A938EC
lbl_80A938E4:
/* 80A938E4  38 00 00 00 */	li r0, 0
/* 80A938E8  98 1F 0F 9E */	stb r0, 0xf9e(r31)
lbl_80A938EC:
/* 80A938EC  7F E3 FB 78 */	mr r3, r31
/* 80A938F0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A938F4  4B 6B 71 25 */	bl setAngle__8daNpcT_cFs
/* 80A938F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A938FC  4B 8C E9 29 */	bl _restgpr_28
/* 80A93900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A93904  7C 08 03 A6 */	mtlr r0
/* 80A93908  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9390C  4E 80 00 20 */	blr 
