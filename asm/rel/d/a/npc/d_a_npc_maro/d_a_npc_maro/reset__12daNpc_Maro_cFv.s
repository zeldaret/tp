lbl_8055C614:
/* 8055C614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055C618  7C 08 02 A6 */	mflr r0
/* 8055C61C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055C620  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C624  4B E0 5B B5 */	bl _savegpr_28
/* 8055C628  7C 7F 1B 78 */	mr r31, r3
/* 8055C62C  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055C630  3B C3 4B AC */	addi r30, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055C634  38 7F 11 0C */	addi r3, r31, 0x110c
/* 8055C638  38 1F 11 3C */	addi r0, r31, 0x113c
/* 8055C63C  7F A3 00 50 */	subf r29, r3, r0
/* 8055C640  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8055C644  28 03 00 00 */	cmplwi r3, 0
/* 8055C648  41 82 00 08 */	beq lbl_8055C650
/* 8055C64C  4B BE 91 19 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8055C650:
/* 8055C650  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8055C654  38 80 00 00 */	li r4, 0
/* 8055C658  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8055C65C  7C A3 00 50 */	subf r5, r3, r0
/* 8055C660  4B AA 6D F9 */	bl memset
/* 8055C664  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8055C668  4B BE 92 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055C66C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8055C670  4B BE 92 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055C674  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8055C678  4B BE 90 5D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8055C67C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8055C680  4B BE 90 55 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8055C684  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055C688  4B BE A6 11 */	bl initialize__15daNpcT_JntAnm_cFv
/* 8055C68C  38 A0 00 00 */	li r5, 0
/* 8055C690  38 60 00 00 */	li r3, 0
/* 8055C694  7C A4 2B 78 */	mr r4, r5
/* 8055C698  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8055C69C  38 00 00 02 */	li r0, 2
/* 8055C6A0  7C 09 03 A6 */	mtctr r0
lbl_8055C6A4:
/* 8055C6A4  7C DF 22 14 */	add r6, r31, r4
/* 8055C6A8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8055C6AC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8055C6B0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8055C6B4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8055C6B8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8055C6BC  38 63 00 04 */	addi r3, r3, 4
/* 8055C6C0  38 84 00 06 */	addi r4, r4, 6
/* 8055C6C4  42 00 FF E0 */	bdnz lbl_8055C6A4
/* 8055C6C8  38 00 00 00 */	li r0, 0
/* 8055C6CC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8055C6D0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8055C6D4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8055C6D8  38 00 FF FF */	li r0, -1
/* 8055C6DC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8055C6E0  38 00 00 01 */	li r0, 1
/* 8055C6E4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8055C6E8  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8055C6EC  4B D0 B2 69 */	bl cM_rndF__Ff
/* 8055C6F0  FC 00 08 1E */	fctiwz f0, f1
/* 8055C6F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8055C6F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8055C6FC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8055C700  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8055C704  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8055C708  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8055C70C  3B 80 00 00 */	li r28, 0
/* 8055C710  3B C0 00 00 */	li r30, 0
lbl_8055C714:
/* 8055C714  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 8055C718  7C 7F 1A 14 */	add r3, r31, r3
/* 8055C71C  4B BE 8F B9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8055C720  3B 9C 00 01 */	addi r28, r28, 1
/* 8055C724  2C 1C 00 09 */	cmpwi r28, 9
/* 8055C728  3B DE 00 08 */	addi r30, r30, 8
/* 8055C72C  41 80 FF E8 */	blt lbl_8055C714
/* 8055C730  38 7F 11 0C */	addi r3, r31, 0x110c
/* 8055C734  38 80 00 00 */	li r4, 0
/* 8055C738  7F A5 EB 78 */	mr r5, r29
/* 8055C73C  4B AA 6D 1D */	bl memset
/* 8055C740  38 60 00 00 */	li r3, 0
/* 8055C744  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8055C748  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8055C74C  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8055C750  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8055C754  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8055C758  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 8055C75C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8055C760  41 82 00 4C */	beq lbl_8055C7AC
/* 8055C764  40 80 00 64 */	bge lbl_8055C7C8
/* 8055C768  2C 00 00 01 */	cmpwi r0, 1
/* 8055C76C  41 82 00 20 */	beq lbl_8055C78C
/* 8055C770  40 80 00 58 */	bge lbl_8055C7C8
/* 8055C774  2C 00 00 00 */	cmpwi r0, 0
/* 8055C778  40 80 00 0C */	bge lbl_8055C784
/* 8055C77C  48 00 00 4C */	b lbl_8055C7C8
/* 8055C780  48 00 00 48 */	b lbl_8055C7C8
lbl_8055C784:
/* 8055C784  98 7F 00 FF */	stb r3, 0xff(r31)
/* 8055C788  48 00 00 40 */	b lbl_8055C7C8
lbl_8055C78C:
/* 8055C78C  38 60 00 1F */	li r3, 0x1f
/* 8055C790  4B BF 03 1D */	bl daNpcT_chkEvtBit__FUl
/* 8055C794  7C 60 00 34 */	cntlzw r0, r3
/* 8055C798  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8055C79C  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8055C7A0  38 00 00 01 */	li r0, 1
/* 8055C7A4  98 1F 00 FF */	stb r0, 0xff(r31)
/* 8055C7A8  48 00 00 20 */	b lbl_8055C7C8
lbl_8055C7AC:
/* 8055C7AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055C7B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055C7B4  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8055C7B8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8055C7BC  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8055C7C0  38 A0 00 00 */	li r5, 0
/* 8055C7C4  4B AD 82 1D */	bl setEventReg__11dSv_event_cFUsUc
lbl_8055C7C8:
/* 8055C7C8  38 00 FF FF */	li r0, -1
/* 8055C7CC  90 1F 10 BC */	stw r0, 0x10bc(r31)
/* 8055C7D0  38 60 00 3C */	li r3, 0x3c
/* 8055C7D4  4B BF 03 59 */	bl daNpcT_offTmpBit__FUl
/* 8055C7D8  38 60 00 3F */	li r3, 0x3f
/* 8055C7DC  4B BF 03 51 */	bl daNpcT_offTmpBit__FUl
/* 8055C7E0  38 60 00 40 */	li r3, 0x40
/* 8055C7E4  4B BF 03 49 */	bl daNpcT_offTmpBit__FUl
/* 8055C7E8  38 60 00 41 */	li r3, 0x41
/* 8055C7EC  4B BF 03 41 */	bl daNpcT_offTmpBit__FUl
/* 8055C7F0  38 60 00 42 */	li r3, 0x42
/* 8055C7F4  4B BF 03 39 */	bl daNpcT_offTmpBit__FUl
/* 8055C7F8  38 60 00 64 */	li r3, 0x64
/* 8055C7FC  4B BF 03 31 */	bl daNpcT_offTmpBit__FUl
/* 8055C800  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8055C804  90 01 00 08 */	stw r0, 8(r1)
/* 8055C808  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8055C80C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8055C810  7F E3 FB 78 */	mr r3, r31
/* 8055C814  38 81 00 08 */	addi r4, r1, 8
/* 8055C818  4B BE E1 85 */	bl setAngle__8daNpcT_cF5csXyz
/* 8055C81C  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C820  4B E0 5A 05 */	bl _restgpr_28
/* 8055C824  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055C828  7C 08 03 A6 */	mtlr r0
/* 8055C82C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055C830  4E 80 00 20 */	blr 
