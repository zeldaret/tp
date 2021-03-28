lbl_80A01FEC:
/* 80A01FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A01FF0  7C 08 02 A6 */	mflr r0
/* 80A01FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A01FF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A01FFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A02000  7C 7F 1B 78 */	mr r31, r3
/* 80A02004  3C 60 80 A0 */	lis r3, m__17daNpc_Hoz_Param_c@ha
/* 80A02008  3B C3 66 50 */	addi r30, r3, m__17daNpc_Hoz_Param_c@l
/* 80A0200C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A02010  38 80 00 00 */	li r4, 0
/* 80A02014  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A02018  7C A3 00 50 */	subf r5, r3, r0
/* 80A0201C  4B 60 14 3C */	b memset
/* 80A02020  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A02024  4B 74 38 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A02028  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A0202C  4B 74 38 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A02030  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A02034  4B 74 36 A0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A02038  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A0203C  4B 74 36 98 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A02040  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A02044  4B 74 4C 54 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A02048  38 60 00 00 */	li r3, 0
/* 80A0204C  38 80 00 00 */	li r4, 0
/* 80A02050  7C 87 23 78 */	mr r7, r4
/* 80A02054  7C 86 23 78 */	mr r6, r4
/* 80A02058  7C 85 23 78 */	mr r5, r4
/* 80A0205C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A02060  38 00 00 02 */	li r0, 2
/* 80A02064  7C 09 03 A6 */	mtctr r0
lbl_80A02068:
/* 80A02068  7D 1F 22 14 */	add r8, r31, r4
/* 80A0206C  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80A02070  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80A02074  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80A02078  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A0207C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A02080  38 63 00 04 */	addi r3, r3, 4
/* 80A02084  38 84 00 06 */	addi r4, r4, 6
/* 80A02088  42 00 FF E0 */	bdnz lbl_80A02068
/* 80A0208C  38 00 00 00 */	li r0, 0
/* 80A02090  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A02094  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A02098  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A0209C  38 00 FF FF */	li r0, -1
/* 80A020A0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A020A4  38 00 00 01 */	li r0, 1
/* 80A020A8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A020AC  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A020B0  4B 86 58 A4 */	b cM_rndF__Ff
/* 80A020B4  FC 00 08 1E */	fctiwz f0, f1
/* 80A020B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A020BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A020C0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A020C4  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80A020C8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A020CC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A020D0  38 7F 0F AC */	addi r3, r31, 0xfac
/* 80A020D4  38 80 00 00 */	li r4, 0
/* 80A020D8  38 1F 0F C4 */	addi r0, r31, 0xfc4
/* 80A020DC  7C A3 00 50 */	subf r5, r3, r0
/* 80A020E0  4B 60 13 78 */	b memset
/* 80A020E4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A020E8  28 03 00 00 */	cmplwi r3, 0
/* 80A020EC  41 82 00 08 */	beq lbl_80A020F4
/* 80A020F0  4B 74 36 74 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A020F4:
/* 80A020F4  7F E3 FB 78 */	mr r3, r31
/* 80A020F8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A020FC  4B 74 89 1C */	b setAngle__8daNpcT_cFs
/* 80A02100  38 00 00 00 */	li r0, 0
/* 80A02104  98 1F 0F 8A */	stb r0, 0xf8a(r31)
/* 80A02108  98 1F 0F 8B */	stb r0, 0xf8b(r31)
/* 80A0210C  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A02110  98 1F 0F 8D */	stb r0, 0xf8d(r31)
/* 80A02114  98 1F 0F 8E */	stb r0, 0xf8e(r31)
/* 80A02118  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A0211C  4B 74 35 B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A02120  38 00 00 00 */	li r0, 0
/* 80A02124  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 80A02128  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A0212C  28 00 00 04 */	cmplwi r0, 4
/* 80A02130  41 82 00 0C */	beq lbl_80A0213C
/* 80A02134  28 00 00 06 */	cmplwi r0, 6
/* 80A02138  40 82 00 34 */	bne lbl_80A0216C
lbl_80A0213C:
/* 80A0213C  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A02140  60 00 00 02 */	ori r0, r0, 2
/* 80A02144  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A02148  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A0214C  60 00 00 04 */	ori r0, r0, 4
/* 80A02150  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A02154  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80A02158  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A0215C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80A02160  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A02164  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80A02168  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80A0216C:
/* 80A0216C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A02170  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A02174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A02178  7C 08 03 A6 */	mtlr r0
/* 80A0217C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A02180  4E 80 00 20 */	blr 
