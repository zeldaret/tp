lbl_80554CB0:
/* 80554CB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80554CB4  7C 08 02 A6 */	mflr r0
/* 80554CB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80554CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80554CC0  4B E0 D5 18 */	b _savegpr_28
/* 80554CC4  7C 7E 1B 78 */	mr r30, r3
/* 80554CC8  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80554CCC  3B A3 A5 B4 */	addi r29, r3, m__19daNpc_Kolin_Param_c@l
/* 80554CD0  38 7E 0F D8 */	addi r3, r30, 0xfd8
/* 80554CD4  38 1E 10 1C */	addi r0, r30, 0x101c
/* 80554CD8  7F E3 00 50 */	subf r31, r3, r0
/* 80554CDC  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80554CE0  28 03 00 00 */	cmplwi r3, 0
/* 80554CE4  41 82 00 08 */	beq lbl_80554CEC
/* 80554CE8  4B BF 0A 7C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80554CEC:
/* 80554CEC  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80554CF0  38 80 00 00 */	li r4, 0
/* 80554CF4  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80554CF8  7C A3 00 50 */	subf r5, r3, r0
/* 80554CFC  4B AA E7 5C */	b memset
/* 80554D00  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80554D04  4B BF 0B 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80554D08  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80554D0C  4B BF 0B 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80554D10  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80554D14  4B BF 09 C0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80554D18  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80554D1C  4B BF 09 B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80554D20  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80554D24  4B BF 1F 74 */	b initialize__15daNpcT_JntAnm_cFv
/* 80554D28  38 A0 00 00 */	li r5, 0
/* 80554D2C  38 60 00 00 */	li r3, 0
/* 80554D30  7C A4 2B 78 */	mr r4, r5
/* 80554D34  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80554D38  38 00 00 02 */	li r0, 2
/* 80554D3C  7C 09 03 A6 */	mtctr r0
lbl_80554D40:
/* 80554D40  7C DE 22 14 */	add r6, r30, r4
/* 80554D44  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80554D48  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80554D4C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80554D50  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80554D54  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80554D58  38 63 00 04 */	addi r3, r3, 4
/* 80554D5C  38 84 00 06 */	addi r4, r4, 6
/* 80554D60  42 00 FF E0 */	bdnz lbl_80554D40
/* 80554D64  38 00 00 00 */	li r0, 0
/* 80554D68  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80554D6C  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80554D70  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80554D74  38 00 FF FF */	li r0, -1
/* 80554D78  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80554D7C  38 00 00 01 */	li r0, 1
/* 80554D80  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80554D84  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 80554D88  4B D1 2B CC */	b cM_rndF__Ff
/* 80554D8C  FC 00 08 1E */	fctiwz f0, f1
/* 80554D90  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80554D94  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80554D98  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80554D9C  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 80554DA0  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80554DA4  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80554DA8  3B 80 00 00 */	li r28, 0
/* 80554DAC  3B A0 00 00 */	li r29, 0
lbl_80554DB0:
/* 80554DB0  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 80554DB4  7C 7E 1A 14 */	add r3, r30, r3
/* 80554DB8  4B BF 09 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80554DBC  3B 9C 00 01 */	addi r28, r28, 1
/* 80554DC0  2C 1C 00 05 */	cmpwi r28, 5
/* 80554DC4  3B BD 00 08 */	addi r29, r29, 8
/* 80554DC8  41 80 FF E8 */	blt lbl_80554DB0
/* 80554DCC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80554DD0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80554DD4  28 00 00 FF */	cmplwi r0, 0xff
/* 80554DD8  41 82 00 28 */	beq lbl_80554E00
/* 80554DDC  38 7E 0F B0 */	addi r3, r30, 0xfb0
/* 80554DE0  4B BF 0E 60 */	b initialize__13daNpcT_Path_cFv
/* 80554DE4  38 7E 0F B0 */	addi r3, r30, 0xfb0
/* 80554DE8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80554DEC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80554DF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80554DF4  7C 05 07 74 */	extsb r5, r0
/* 80554DF8  38 C0 00 00 */	li r6, 0
/* 80554DFC  4B BF 0E 78 */	b setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80554E00:
/* 80554E00  38 7E 0F D8 */	addi r3, r30, 0xfd8
/* 80554E04  38 80 00 00 */	li r4, 0
/* 80554E08  7F E5 FB 78 */	mr r5, r31
/* 80554E0C  4B AA E6 4C */	b memset
/* 80554E10  38 00 00 00 */	li r0, 0
/* 80554E14  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80554E18  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80554E1C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80554E20  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80554E24  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80554E28  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80554E2C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80554E30  41 82 00 10 */	beq lbl_80554E40
/* 80554E34  40 80 00 14 */	bge lbl_80554E48
/* 80554E38  48 00 00 10 */	b lbl_80554E48
/* 80554E3C  48 00 00 0C */	b lbl_80554E48
lbl_80554E40:
/* 80554E40  38 00 00 01 */	li r0, 1
/* 80554E44  98 1E 10 17 */	stb r0, 0x1017(r30)
lbl_80554E48:
/* 80554E48  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80554E4C  90 01 00 08 */	stw r0, 8(r1)
/* 80554E50  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80554E54  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80554E58  7F C3 F3 78 */	mr r3, r30
/* 80554E5C  38 81 00 08 */	addi r4, r1, 8
/* 80554E60  4B BF 5B 3C */	b setAngle__8daNpcT_cF5csXyz
/* 80554E64  38 60 00 1F */	li r3, 0x1f
/* 80554E68  4B BF 7C 44 */	b daNpcT_chkEvtBit__FUl
/* 80554E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80554E70  40 82 00 24 */	bne lbl_80554E94
/* 80554E74  38 60 00 0E */	li r3, 0xe
/* 80554E78  4B BF 7C 34 */	b daNpcT_chkEvtBit__FUl
/* 80554E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80554E80  40 82 00 1C */	bne lbl_80554E9C
/* 80554E84  38 60 00 14 */	li r3, 0x14
/* 80554E88  4B BF 7C 24 */	b daNpcT_chkEvtBit__FUl
/* 80554E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80554E90  40 82 00 0C */	bne lbl_80554E9C
lbl_80554E94:
/* 80554E94  38 60 00 16 */	li r3, 0x16
/* 80554E98  4B BF 7C 94 */	b daNpcT_offTmpBit__FUl
lbl_80554E9C:
/* 80554E9C  4B D1 29 D0 */	b cM_rnd__Fv
/* 80554EA0  D0 3E 10 10 */	stfs f1, 0x1010(r30)
/* 80554EA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80554EA8  4B E0 D3 7C */	b _restgpr_28
/* 80554EAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80554EB0  7C 08 03 A6 */	mtlr r0
/* 80554EB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80554EB8  4E 80 00 20 */	blr 
