lbl_809BC028:
/* 809BC028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BC02C  7C 08 02 A6 */	mflr r0
/* 809BC030  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BC034  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC038  4B 9A 61 A4 */	b _savegpr_29
/* 809BC03C  7C 7F 1B 78 */	mr r31, r3
/* 809BC040  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha
/* 809BC044  3B C3 E4 A0 */	addi r30, r3, m__17daNpc_Gnd_Param_c@l
/* 809BC048  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809BC04C  38 80 00 00 */	li r4, 0
/* 809BC050  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809BC054  7C A3 00 50 */	subf r5, r3, r0
/* 809BC058  4B 64 74 00 */	b memset
/* 809BC05C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809BC060  4B 78 98 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BC064  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809BC068  4B 78 98 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BC06C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BC070  4B 78 96 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809BC074  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809BC078  4B 78 96 5C */	b initialize__18daNpcT_ActorMngr_cFv
/* 809BC07C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BC080  4B 78 AC 18 */	b initialize__15daNpcT_JntAnm_cFv
/* 809BC084  38 A0 00 00 */	li r5, 0
/* 809BC088  38 60 00 00 */	li r3, 0
/* 809BC08C  7C A4 2B 78 */	mr r4, r5
/* 809BC090  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809BC094  38 00 00 02 */	li r0, 2
/* 809BC098  7C 09 03 A6 */	mtctr r0
lbl_809BC09C:
/* 809BC09C  7C DF 22 14 */	add r6, r31, r4
/* 809BC0A0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809BC0A4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809BC0A8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809BC0AC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809BC0B0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809BC0B4  38 63 00 04 */	addi r3, r3, 4
/* 809BC0B8  38 84 00 06 */	addi r4, r4, 6
/* 809BC0BC  42 00 FF E0 */	bdnz lbl_809BC09C
/* 809BC0C0  38 00 00 00 */	li r0, 0
/* 809BC0C4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809BC0C8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809BC0CC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809BC0D0  38 00 FF FF */	li r0, -1
/* 809BC0D4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809BC0D8  38 00 00 01 */	li r0, 1
/* 809BC0DC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809BC0E0  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 809BC0E4  4B 8A B8 70 */	b cM_rndF__Ff
/* 809BC0E8  FC 00 08 1E */	fctiwz f0, f1
/* 809BC0EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 809BC0F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809BC0F4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809BC0F8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809BC0FC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809BC100  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809BC104  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809BC108  38 80 00 00 */	li r4, 0
/* 809BC10C  38 1F 0F 9C */	addi r0, r31, 0xf9c
/* 809BC110  7C A3 00 50 */	subf r5, r3, r0
/* 809BC114  4B 64 73 44 */	b memset
/* 809BC118  3B A0 00 00 */	li r29, 0
/* 809BC11C  3B C0 00 00 */	li r30, 0
lbl_809BC120:
/* 809BC120  38 1E 09 6C */	addi r0, r30, 0x96c
/* 809BC124  7C 7F 00 2E */	lwzx r3, r31, r0
/* 809BC128  28 03 00 00 */	cmplwi r3, 0
/* 809BC12C  41 82 00 08 */	beq lbl_809BC134
/* 809BC130  4B 78 96 34 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809BC134:
/* 809BC134  3B BD 00 01 */	addi r29, r29, 1
/* 809BC138  2C 1D 00 02 */	cmpwi r29, 2
/* 809BC13C  3B DE 00 04 */	addi r30, r30, 4
/* 809BC140  41 80 FF E0 */	blt lbl_809BC120
/* 809BC144  7F E3 FB 78 */	mr r3, r31
/* 809BC148  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809BC14C  4B 78 E8 CC */	b setAngle__8daNpcT_cFs
/* 809BC150  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC154  4B 9A 60 D4 */	b _restgpr_29
/* 809BC158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BC15C  7C 08 03 A6 */	mtlr r0
/* 809BC160  38 21 00 20 */	addi r1, r1, 0x20
/* 809BC164  4E 80 00 20 */	blr 
