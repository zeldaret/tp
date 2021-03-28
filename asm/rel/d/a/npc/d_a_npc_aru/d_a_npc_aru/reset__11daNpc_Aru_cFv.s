lbl_809527CC:
/* 809527CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809527D0  7C 08 02 A6 */	mflr r0
/* 809527D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809527D8  39 61 00 30 */	addi r11, r1, 0x30
/* 809527DC  4B A0 F9 FC */	b _savegpr_28
/* 809527E0  7C 7F 1B 78 */	mr r31, r3
/* 809527E4  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha
/* 809527E8  3B C3 76 D0 */	addi r30, r3, m__17daNpc_Aru_Param_c@l
/* 809527EC  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 809527F0  38 1F 0F D4 */	addi r0, r31, 0xfd4
/* 809527F4  7F A3 00 50 */	subf r29, r3, r0
/* 809527F8  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809527FC  28 03 00 00 */	cmplwi r3, 0
/* 80952800  41 82 00 08 */	beq lbl_80952808
/* 80952804  4B 7F 2F 60 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80952808:
/* 80952808  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8095280C  38 80 00 00 */	li r4, 0
/* 80952810  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80952814  7C A3 00 50 */	subf r5, r3, r0
/* 80952818  4B 6B 0C 40 */	b memset
/* 8095281C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80952820  4B 7F 30 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80952824  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80952828  4B 7F 30 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8095282C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80952830  4B 7F 2E A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80952834  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80952838  4B 7F 2E 9C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8095283C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80952840  4B 7F 44 58 */	b initialize__15daNpcT_JntAnm_cFv
/* 80952844  38 A0 00 00 */	li r5, 0
/* 80952848  38 60 00 00 */	li r3, 0
/* 8095284C  7C A4 2B 78 */	mr r4, r5
/* 80952850  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80952854  38 00 00 02 */	li r0, 2
/* 80952858  7C 09 03 A6 */	mtctr r0
lbl_8095285C:
/* 8095285C  7C DF 22 14 */	add r6, r31, r4
/* 80952860  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80952864  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80952868  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8095286C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80952870  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80952874  38 63 00 04 */	addi r3, r3, 4
/* 80952878  38 84 00 06 */	addi r4, r4, 6
/* 8095287C  42 00 FF E0 */	bdnz lbl_8095285C
/* 80952880  38 00 00 00 */	li r0, 0
/* 80952884  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80952888  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8095288C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80952890  38 00 FF FF */	li r0, -1
/* 80952894  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80952898  38 00 00 01 */	li r0, 1
/* 8095289C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809528A0  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 809528A4  4B 91 50 B0 */	b cM_rndF__Ff
/* 809528A8  FC 00 08 1E */	fctiwz f0, f1
/* 809528AC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809528B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809528B4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809528B8  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 809528BC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809528C0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809528C4  3B 80 00 00 */	li r28, 0
/* 809528C8  3B C0 00 00 */	li r30, 0
lbl_809528CC:
/* 809528CC  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 809528D0  7C 7F 1A 14 */	add r3, r31, r3
/* 809528D4  4B 7F 2E 00 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809528D8  3B 9C 00 01 */	addi r28, r28, 1
/* 809528DC  2C 1C 00 04 */	cmpwi r28, 4
/* 809528E0  3B DE 00 08 */	addi r30, r30, 8
/* 809528E4  41 80 FF E8 */	blt lbl_809528CC
/* 809528E8  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 809528EC  38 80 00 00 */	li r4, 0
/* 809528F0  7F A5 EB 78 */	mr r5, r29
/* 809528F4  4B 6B 0B 64 */	b memset
/* 809528F8  38 00 00 00 */	li r0, 0
/* 809528FC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80952900  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80952904  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80952908  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8095290C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80952910  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80952914  2C 00 00 02 */	cmpwi r0, 2
/* 80952918  41 82 00 4C */	beq lbl_80952964
/* 8095291C  40 80 00 10 */	bge lbl_8095292C
/* 80952920  2C 00 00 00 */	cmpwi r0, 0
/* 80952924  41 82 00 18 */	beq lbl_8095293C
/* 80952928  48 00 00 B4 */	b lbl_809529DC
lbl_8095292C:
/* 8095292C  2C 00 00 04 */	cmpwi r0, 4
/* 80952930  41 82 00 9C */	beq lbl_809529CC
/* 80952934  40 80 00 A8 */	bge lbl_809529DC
/* 80952938  48 00 00 54 */	b lbl_8095298C
lbl_8095293C:
/* 8095293C  38 00 FF FF */	li r0, -1
/* 80952940  90 1F 0F BC */	stw r0, 0xfbc(r31)
/* 80952944  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80952948  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095294C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80952950  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80952954  4B 7F 2D 8C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80952958  38 00 00 1E */	li r0, 0x1e
/* 8095295C  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80952960  48 00 00 7C */	b lbl_809529DC
lbl_80952964:
/* 80952964  38 00 FF FF */	li r0, -1
/* 80952968  90 1F 0F BC */	stw r0, 0xfbc(r31)
/* 8095296C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80952970  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80952974  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80952978  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095297C  4B 7F 2D 64 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80952980  38 00 00 1E */	li r0, 0x1e
/* 80952984  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80952988  48 00 00 54 */	b lbl_809529DC
lbl_8095298C:
/* 8095298C  38 60 02 3D */	li r3, 0x23d
/* 80952990  4B 7F A1 1C */	b daNpcT_chkEvtBit__FUl
/* 80952994  2C 03 00 00 */	cmpwi r3, 0
/* 80952998  40 82 00 44 */	bne lbl_809529DC
/* 8095299C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809529A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809529A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809529A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809529AC  81 8C 02 94 */	lwz r12, 0x294(r12)
/* 809529B0  7D 89 03 A6 */	mtctr r12
/* 809529B4  4E 80 04 21 */	bctrl 
/* 809529B8  2C 03 00 00 */	cmpwi r3, 0
/* 809529BC  41 82 00 20 */	beq lbl_809529DC
/* 809529C0  38 60 02 3D */	li r3, 0x23d
/* 809529C4  4B 7F A0 68 */	b daNpcT_onEvtBit__FUl
/* 809529C8  48 00 00 14 */	b lbl_809529DC
lbl_809529CC:
/* 809529CC  38 00 FF FF */	li r0, -1
/* 809529D0  90 1F 0F BC */	stw r0, 0xfbc(r31)
/* 809529D4  38 00 00 1E */	li r0, 0x1e
/* 809529D8  90 1F 0D C4 */	stw r0, 0xdc4(r31)
lbl_809529DC:
/* 809529DC  7F E3 FB 78 */	mr r3, r31
/* 809529E0  48 00 11 AD */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 809529E4  2C 03 00 00 */	cmpwi r3, 0
/* 809529E8  40 82 00 CC */	bne lbl_80952AB4
/* 809529EC  7F E3 FB 78 */	mr r3, r31
/* 809529F0  48 00 12 19 */	bl chkSkipFenceStage__11daNpc_Aru_cFv
/* 809529F4  2C 03 00 00 */	cmpwi r3, 0
/* 809529F8  40 82 00 D4 */	bne lbl_80952ACC
/* 809529FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80952A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80952A04  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80952A08  3C 80 80 95 */	lis r4, struct_8095781C+0x0@ha
/* 80952A0C  38 84 78 1C */	addi r4, r4, struct_8095781C+0x0@l
/* 80952A10  38 84 00 C1 */	addi r4, r4, 0xc1
/* 80952A14  4B A1 5F 80 */	b strcmp
/* 80952A18  2C 03 00 00 */	cmpwi r3, 0
/* 80952A1C  40 82 00 24 */	bne lbl_80952A40
/* 80952A20  38 60 00 00 */	li r3, 0
/* 80952A24  4B 6D 9F 58 */	b getLayerNo__14dComIfG_play_cFi
/* 80952A28  2C 03 00 02 */	cmpwi r3, 2
/* 80952A2C  41 82 00 A0 */	beq lbl_80952ACC
/* 80952A30  38 60 00 00 */	li r3, 0
/* 80952A34  4B 6D 9F 48 */	b getLayerNo__14dComIfG_play_cFi
/* 80952A38  2C 03 00 0D */	cmpwi r3, 0xd
/* 80952A3C  41 82 00 90 */	beq lbl_80952ACC
lbl_80952A40:
/* 80952A40  38 60 00 A9 */	li r3, 0xa9
/* 80952A44  4B 7F A0 68 */	b daNpcT_chkEvtBit__FUl
/* 80952A48  2C 03 00 00 */	cmpwi r3, 0
/* 80952A4C  40 82 00 80 */	bne lbl_80952ACC
/* 80952A50  38 60 00 5B */	li r3, 0x5b
/* 80952A54  4B 7F A0 D8 */	b daNpcT_offTmpBit__FUl
/* 80952A58  38 60 00 97 */	li r3, 0x97
/* 80952A5C  4B 7F A0 D0 */	b daNpcT_offTmpBit__FUl
/* 80952A60  38 60 00 98 */	li r3, 0x98
/* 80952A64  4B 7F A0 C8 */	b daNpcT_offTmpBit__FUl
/* 80952A68  38 60 00 99 */	li r3, 0x99
/* 80952A6C  4B 7F A0 C0 */	b daNpcT_offTmpBit__FUl
/* 80952A70  38 60 00 B3 */	li r3, 0xb3
/* 80952A74  4B 7F A0 B8 */	b daNpcT_offTmpBit__FUl
/* 80952A78  38 60 00 B4 */	li r3, 0xb4
/* 80952A7C  4B 7F A0 B0 */	b daNpcT_offTmpBit__FUl
/* 80952A80  38 60 02 5B */	li r3, 0x25b
/* 80952A84  4B 7F A0 28 */	b daNpcT_chkEvtBit__FUl
/* 80952A88  2C 03 00 00 */	cmpwi r3, 0
/* 80952A8C  40 82 00 40 */	bne lbl_80952ACC
/* 80952A90  38 60 00 AF */	li r3, 0xaf
/* 80952A94  4B 7F A0 98 */	b daNpcT_offTmpBit__FUl
/* 80952A98  38 60 00 B0 */	li r3, 0xb0
/* 80952A9C  4B 7F A0 90 */	b daNpcT_offTmpBit__FUl
/* 80952AA0  38 60 00 B1 */	li r3, 0xb1
/* 80952AA4  4B 7F A0 88 */	b daNpcT_offTmpBit__FUl
/* 80952AA8  38 60 00 B2 */	li r3, 0xb2
/* 80952AAC  4B 7F A0 80 */	b daNpcT_offTmpBit__FUl
/* 80952AB0  48 00 00 1C */	b lbl_80952ACC
lbl_80952AB4:
/* 80952AB4  7F E3 FB 78 */	mr r3, r31
/* 80952AB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80952ABC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80952AC0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80952AC4  4B 6C 7C 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80952AC8  B0 61 00 12 */	sth r3, 0x12(r1)
lbl_80952ACC:
/* 80952ACC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80952AD0  90 01 00 08 */	stw r0, 8(r1)
/* 80952AD4  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80952AD8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80952ADC  7F E3 FB 78 */	mr r3, r31
/* 80952AE0  38 81 00 08 */	addi r4, r1, 8
/* 80952AE4  4B 7F 7E B8 */	b setAngle__8daNpcT_cF5csXyz
/* 80952AE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80952AEC  4B A0 F7 38 */	b _restgpr_28
/* 80952AF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80952AF4  7C 08 03 A6 */	mtlr r0
/* 80952AF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80952AFC  4E 80 00 20 */	blr 
