lbl_80A2EF8C:
/* 80A2EF8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2EF90  7C 08 02 A6 */	mflr r0
/* 80A2EF94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2EF98  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2EF9C  4B 93 32 40 */	b _savegpr_29
/* 80A2EFA0  7C 7E 1B 78 */	mr r30, r3
/* 80A2EFA4  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A2EFA8  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A2EFAC  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A2EFB0  2C 00 00 02 */	cmpwi r0, 2
/* 80A2EFB4  41 82 00 C0 */	beq lbl_80A2F074
/* 80A2EFB8  40 80 00 10 */	bge lbl_80A2EFC8
/* 80A2EFBC  2C 00 00 00 */	cmpwi r0, 0
/* 80A2EFC0  40 80 00 14 */	bge lbl_80A2EFD4
/* 80A2EFC4  48 00 02 6C */	b lbl_80A2F230
lbl_80A2EFC8:
/* 80A2EFC8  2C 00 00 04 */	cmpwi r0, 4
/* 80A2EFCC  40 80 02 64 */	bge lbl_80A2F230
/* 80A2EFD0  48 00 02 54 */	b lbl_80A2F224
lbl_80A2EFD4:
/* 80A2EFD4  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2EFD8  2C 00 00 01 */	cmpwi r0, 1
/* 80A2EFDC  41 82 00 24 */	beq lbl_80A2F000
/* 80A2EFE0  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2EFE4  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2EFE8  4B 71 68 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2EFEC  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2EFF0  38 00 00 01 */	li r0, 1
/* 80A2EFF4  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2EFF8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2EFFC  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2F000:
/* 80A2F000  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2F004  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2F008  4B 71 68 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F00C  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2F010  38 00 00 0B */	li r0, 0xb
/* 80A2F014  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2F018  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2F01C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2F020  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A2F024  2C 00 00 00 */	cmpwi r0, 0
/* 80A2F028  41 82 00 24 */	beq lbl_80A2F04C
/* 80A2F02C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2F030  4B 71 66 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2F034  38 00 00 00 */	li r0, 0
/* 80A2F038  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A2F03C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2F040  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A2F044  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2F048  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A2F04C:
/* 80A2F04C  38 00 00 00 */	li r0, 0
/* 80A2F050  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2F054  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A2F058  A8 03 00 90 */	lha r0, 0x90(r3)
/* 80A2F05C  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A2F060  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80A2F064  60 00 00 80 */	ori r0, r0, 0x80
/* 80A2F068  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80A2F06C  38 00 00 02 */	li r0, 2
/* 80A2F070  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A2F074:
/* 80A2F074  7F C3 F3 78 */	mr r3, r30
/* 80A2F078  48 00 8A 91 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A2F07C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80A2F080  D0 1E 15 C0 */	stfs f0, 0x15c0(r30)
/* 80A2F084  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80A2F088  D0 1E 15 C4 */	stfs f0, 0x15c4(r30)
/* 80A2F08C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2F090  D0 1E 15 C8 */	stfs f0, 0x15c8(r30)
/* 80A2F094  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A2F098  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2F09C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2F0A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2F0A4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A2F0A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A2F0AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A2F0B0  4B 91 74 00 */	b PSMTXCopy
/* 80A2F0B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A2F0B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2F0BC  38 9E 15 C0 */	addi r4, r30, 0x15c0
/* 80A2F0C0  7C 85 23 78 */	mr r5, r4
/* 80A2F0C4  4B 91 7C A8 */	b PSMTXMultVec
/* 80A2F0C8  C0 1E 15 C0 */	lfs f0, 0x15c0(r30)
/* 80A2F0CC  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80A2F0D0  C0 1E 15 C4 */	lfs f0, 0x15c4(r30)
/* 80A2F0D4  D0 1E 05 78 */	stfs f0, 0x578(r30)
/* 80A2F0D8  C0 1E 15 C8 */	lfs f0, 0x15c8(r30)
/* 80A2F0DC  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80A2F0E0  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A2F0E4  4B 65 47 4C */	b Move__10dCcD_GSttsFv
/* 80A2F0E8  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2F0EC  4B 65 53 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A2F0F0  28 03 00 00 */	cmplwi r3, 0
/* 80A2F0F4  41 82 00 B8 */	beq lbl_80A2F1AC
/* 80A2F0F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2F0FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2F100  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A2F104  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A2F108  28 00 00 05 */	cmplwi r0, 5
/* 80A2F10C  40 82 00 A0 */	bne lbl_80A2F1AC
/* 80A2F110  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A2F114  38 9E 05 50 */	addi r4, r30, 0x550
/* 80A2F118  4B 84 1A EC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A2F11C  7C 64 1B 78 */	mr r4, r3
/* 80A2F120  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2F124  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2F128  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2F12C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A2F130  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A2F134  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2F138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A2F13C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2F140  4B 5D D2 9C */	b mDoMtx_YrotS__FPA4_fs
/* 80A2F144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A2F148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2F14C  38 81 00 08 */	addi r4, r1, 8
/* 80A2F150  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A2F154  4B 91 7C 18 */	b PSMTXMultVec
/* 80A2F158  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A2F15C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A2F160  7C 65 1B 78 */	mr r5, r3
/* 80A2F164  4B 91 7F 2C */	b PSVECAdd
/* 80A2F168  38 00 00 01 */	li r0, 1
/* 80A2F16C  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A2F170  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2F174  81 9E 12 18 */	lwz r12, 0x1218(r30)
/* 80A2F178  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A2F17C  7D 89 03 A6 */	mtctr r12
/* 80A2F180  4E 80 04 21 */	bctrl 
/* 80A2F184  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A2F188  3C 80 00 04 */	lis r4, 4
/* 80A2F18C  38 A0 00 1E */	li r5, 0x1e
/* 80A2F190  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A2F194  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A2F198  7D 89 03 A6 */	mtctr r12
/* 80A2F19C  4E 80 04 21 */	bctrl 
/* 80A2F1A0  38 00 00 0B */	li r0, 0xb
/* 80A2F1A4  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A2F1A8  48 00 00 88 */	b lbl_80A2F230
lbl_80A2F1AC:
/* 80A2F1AC  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A2F1B0  48 00 CB 99 */	bl func_80A3BD48
/* 80A2F1B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2F1B8  40 82 00 78 */	bne lbl_80A2F230
/* 80A2F1BC  38 00 00 01 */	li r0, 1
/* 80A2F1C0  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A2F1C4  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2F1C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A2F1CC  41 82 00 24 */	beq lbl_80A2F1F0
/* 80A2F1D0  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2F1D4  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2F1D8  4B 71 66 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F1DC  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2F1E0  38 00 00 01 */	li r0, 1
/* 80A2F1E4  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2F1E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2F1EC  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2F1F0:
/* 80A2F1F0  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2F1F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2F1F8  4B 71 66 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2F1FC  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2F200  38 00 00 00 */	li r0, 0
/* 80A2F204  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2F208  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2F20C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2F210  38 00 02 F2 */	li r0, 0x2f2
/* 80A2F214  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A2F218  38 00 00 09 */	li r0, 9
/* 80A2F21C  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A2F220  48 00 00 10 */	b lbl_80A2F230
lbl_80A2F224:
/* 80A2F224  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80A2F228  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80A2F22C  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_80A2F230:
/* 80A2F230  38 60 00 01 */	li r3, 1
/* 80A2F234  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2F238  4B 93 2F F0 */	b _restgpr_29
/* 80A2F23C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2F240  7C 08 03 A6 */	mtlr r0
/* 80A2F244  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2F248  4E 80 00 20 */	blr 
