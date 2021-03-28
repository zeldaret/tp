lbl_809636C0:
/* 809636C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809636C4  7C 08 02 A6 */	mflr r0
/* 809636C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809636CC  39 61 00 30 */	addi r11, r1, 0x30
/* 809636D0  4B 9F EB 08 */	b _savegpr_28
/* 809636D4  7C 7F 1B 78 */	mr r31, r3
/* 809636D8  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 809636DC  3B C3 7E 20 */	addi r30, r3, m__18daNpc_Bans_Param_c@l
/* 809636E0  38 7F 12 44 */	addi r3, r31, 0x1244
/* 809636E4  38 1F 12 6C */	addi r0, r31, 0x126c
/* 809636E8  7F A3 00 50 */	subf r29, r3, r0
/* 809636EC  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809636F0  28 03 00 00 */	cmplwi r3, 0
/* 809636F4  41 82 00 08 */	beq lbl_809636FC
/* 809636F8  4B 7E 20 6C */	b initialize__15daNpcT_MatAnm_cFv
lbl_809636FC:
/* 809636FC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80963700  38 80 00 00 */	li r4, 0
/* 80963704  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80963708  7C A3 00 50 */	subf r5, r3, r0
/* 8096370C  4B 69 FD 4C */	b memset
/* 80963710  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80963714  4B 7E 21 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80963718  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8096371C  4B 7E 21 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80963720  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80963724  4B 7E 1F B0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80963728  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8096372C  4B 7E 1F A8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80963730  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80963734  4B 7E 35 64 */	b initialize__15daNpcT_JntAnm_cFv
/* 80963738  38 A0 00 00 */	li r5, 0
/* 8096373C  38 60 00 00 */	li r3, 0
/* 80963740  7C A4 2B 78 */	mr r4, r5
/* 80963744  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80963748  38 00 00 02 */	li r0, 2
/* 8096374C  7C 09 03 A6 */	mtctr r0
lbl_80963750:
/* 80963750  7C DF 22 14 */	add r6, r31, r4
/* 80963754  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80963758  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8096375C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80963760  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80963764  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80963768  38 63 00 04 */	addi r3, r3, 4
/* 8096376C  38 84 00 06 */	addi r4, r4, 6
/* 80963770  42 00 FF E0 */	bdnz lbl_80963750
/* 80963774  38 00 00 00 */	li r0, 0
/* 80963778  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8096377C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80963780  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80963784  38 00 FF FF */	li r0, -1
/* 80963788  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8096378C  38 00 00 01 */	li r0, 1
/* 80963790  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80963794  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80963798  4B 90 41 BC */	b cM_rndF__Ff
/* 8096379C  FC 00 08 1E */	fctiwz f0, f1
/* 809637A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809637A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809637A8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809637AC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 809637B0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809637B4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809637B8  3B 80 00 00 */	li r28, 0
/* 809637BC  3B C0 00 00 */	li r30, 0
lbl_809637C0:
/* 809637C0  38 7E 12 04 */	addi r3, r30, 0x1204
/* 809637C4  7C 7F 1A 14 */	add r3, r31, r3
/* 809637C8  4B 7E 1F 0C */	b initialize__18daNpcT_ActorMngr_cFv
/* 809637CC  3B 9C 00 01 */	addi r28, r28, 1
/* 809637D0  2C 1C 00 08 */	cmpwi r28, 8
/* 809637D4  3B DE 00 08 */	addi r30, r30, 8
/* 809637D8  41 80 FF E8 */	blt lbl_809637C0
/* 809637DC  38 7F 12 44 */	addi r3, r31, 0x1244
/* 809637E0  38 80 00 00 */	li r4, 0
/* 809637E4  7F A5 EB 78 */	mr r5, r29
/* 809637E8  4B 69 FC 70 */	b memset
/* 809637EC  38 00 00 00 */	li r0, 0
/* 809637F0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 809637F4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 809637F8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 809637FC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80963800  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80963804  38 60 00 39 */	li r3, 0x39
/* 80963808  4B 7E 93 24 */	b daNpcT_offTmpBit__FUl
/* 8096380C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80963810  90 01 00 08 */	stw r0, 8(r1)
/* 80963814  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80963818  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8096381C  7F E3 FB 78 */	mr r3, r31
/* 80963820  38 81 00 08 */	addi r4, r1, 8
/* 80963824  4B 7E 71 78 */	b setAngle__8daNpcT_cF5csXyz
/* 80963828  39 61 00 30 */	addi r11, r1, 0x30
/* 8096382C  4B 9F E9 F8 */	b _restgpr_28
/* 80963830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80963834  7C 08 03 A6 */	mtlr r0
/* 80963838  38 21 00 30 */	addi r1, r1, 0x30
/* 8096383C  4E 80 00 20 */	blr 
