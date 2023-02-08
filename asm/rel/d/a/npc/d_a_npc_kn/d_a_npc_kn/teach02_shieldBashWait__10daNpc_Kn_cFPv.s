lbl_80A3EFE0:
/* 80A3EFE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3EFE4  7C 08 02 A6 */	mflr r0
/* 80A3EFE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3EFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3EFF0  4B 92 31 E9 */	bl _savegpr_28
/* 80A3EFF4  7C 7E 1B 78 */	mr r30, r3
/* 80A3EFF8  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3EFFC  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3F000  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A3F004  2C 00 00 02 */	cmpwi r0, 2
/* 80A3F008  41 82 00 FC */	beq lbl_80A3F104
/* 80A3F00C  40 80 03 30 */	bge lbl_80A3F33C
/* 80A3F010  2C 00 00 00 */	cmpwi r0, 0
/* 80A3F014  40 80 00 0C */	bge lbl_80A3F020
/* 80A3F018  48 00 03 24 */	b lbl_80A3F33C
/* 80A3F01C  48 00 03 20 */	b lbl_80A3F33C
lbl_80A3F020:
/* 80A3F020  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F024  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F028  41 82 00 24 */	beq lbl_80A3F04C
/* 80A3F02C  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F030  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F034  4B 70 68 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F038  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F03C  38 00 00 01 */	li r0, 1
/* 80A3F040  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F044  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F048  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F04C:
/* 80A3F04C  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3F050  2C 00 00 09 */	cmpwi r0, 9
/* 80A3F054  41 82 00 24 */	beq lbl_80A3F078
/* 80A3F058  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F05C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F060  4B 70 68 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F064  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F068  38 00 00 09 */	li r0, 9
/* 80A3F06C  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F070  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F074  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3F078:
/* 80A3F078  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3F07C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F080  41 82 00 28 */	beq lbl_80A3F0A8
/* 80A3F084  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A3F088  4B 70 66 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3F08C  38 00 00 00 */	li r0, 0
/* 80A3F090  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3F094  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F098  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3F09C  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3F0A0  38 00 00 01 */	li r0, 1
/* 80A3F0A4  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A3F0A8:
/* 80A3F0A8  38 60 00 00 */	li r3, 0
/* 80A3F0AC  98 7E 0D 33 */	stb r3, 0xd33(r30)
/* 80A3F0B0  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A3F0B4  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A3F0B8  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A3F0BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3F0C0  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A3F0C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3F0C8  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A3F0CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3F0D0  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A3F0D4  98 7E 15 BC */	stb r3, 0x15bc(r30)
/* 80A3F0D8  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A3F0DC  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A3F0E0  4B FF CC 85 */	bl func_80A3BD64
/* 80A3F0E4  B0 7E 15 D0 */	sth r3, 0x15d0(r30)
/* 80A3F0E8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F0EC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A3F0F0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A3F0F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A3F0F8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A3F0FC  38 00 00 02 */	li r0, 2
/* 80A3F100  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A3F104:
/* 80A3F104  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A3F108  4B 64 47 29 */	bl Move__10dCcD_GSttsFv
/* 80A3F10C  80 1E 12 7C */	lwz r0, 0x127c(r30)
/* 80A3F110  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80A3F114  41 82 00 BC */	beq lbl_80A3F1D0
/* 80A3F118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3F11C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3F120  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A3F124  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A3F128  28 00 00 29 */	cmplwi r0, 0x29
/* 80A3F12C  40 82 00 A4 */	bne lbl_80A3F1D0
/* 80A3F130  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A3F134  38 9E 05 50 */	addi r4, r30, 0x550
/* 80A3F138  4B 83 1A CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3F13C  7C 64 1B 78 */	mr r4, r3
/* 80A3F140  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3F144  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3F148  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3F14C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3F150  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A3F154  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3F158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F15C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F160  4B 5C D2 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A3F164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3F168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3F16C  38 81 00 08 */	addi r4, r1, 8
/* 80A3F170  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A3F174  4B 90 7B F9 */	bl PSMTXMultVec
/* 80A3F178  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A3F17C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3F180  7C 65 1B 78 */	mr r5, r3
/* 80A3F184  4B 90 7F 0D */	bl PSVECAdd
/* 80A3F188  38 00 00 01 */	li r0, 1
/* 80A3F18C  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A3F190  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3F194  81 9E 12 18 */	lwz r12, 0x1218(r30)
/* 80A3F198  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A3F19C  7D 89 03 A6 */	mtctr r12
/* 80A3F1A0  4E 80 04 21 */	bctrl 
/* 80A3F1A4  38 00 00 06 */	li r0, 6
/* 80A3F1A8  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A3F1AC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3F1B0  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A3F1B4  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A3F1B8  38 A0 00 28 */	li r5, 0x28
/* 80A3F1BC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3F1C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3F1C4  7D 89 03 A6 */	mtctr r12
/* 80A3F1C8  4E 80 04 21 */	bctrl 
/* 80A3F1CC  48 00 01 70 */	b lbl_80A3F33C
lbl_80A3F1D0:
/* 80A3F1D0  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A3F1D4  4B FF CB 75 */	bl func_80A3BD48
/* 80A3F1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3F1DC  41 82 00 14 */	beq lbl_80A3F1F0
/* 80A3F1E0  7F C3 F3 78 */	mr r3, r30
/* 80A3F1E4  4B FE D9 4D */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A3F1E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3F1EC  41 82 00 B4 */	beq lbl_80A3F2A0
lbl_80A3F1F0:
/* 80A3F1F0  3B 80 00 00 */	li r28, 0
/* 80A3F1F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3F1F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3F1FC  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A3F200  4B 63 45 E5 */	bl LockonTruth__12dAttention_cFv
/* 80A3F204  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3F208  41 82 00 08 */	beq lbl_80A3F210
/* 80A3F20C  3B 80 00 01 */	li r28, 1
lbl_80A3F210:
/* 80A3F210  7F C3 F3 78 */	mr r3, r30
/* 80A3F214  4B FE D9 1D */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A3F218  2C 03 00 00 */	cmpwi r3, 0
/* 80A3F21C  41 82 00 10 */	beq lbl_80A3F22C
/* 80A3F220  38 00 00 04 */	li r0, 4
/* 80A3F224  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3F228  48 00 00 0C */	b lbl_80A3F234
lbl_80A3F22C:
/* 80A3F22C  38 00 00 01 */	li r0, 1
/* 80A3F230  B0 1E 0E 36 */	sth r0, 0xe36(r30)
lbl_80A3F234:
/* 80A3F234  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F238  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F23C  41 82 00 24 */	beq lbl_80A3F260
/* 80A3F240  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F244  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F248  4B 70 66 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F24C  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F250  38 00 00 01 */	li r0, 1
/* 80A3F254  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F258  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F25C  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F260:
/* 80A3F260  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F264  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F268  4B 70 66 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F26C  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F270  38 00 00 00 */	li r0, 0
/* 80A3F274  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F278  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F27C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3F280  2C 1C 00 00 */	cmpwi r28, 0
/* 80A3F284  41 82 00 10 */	beq lbl_80A3F294
/* 80A3F288  38 00 02 C0 */	li r0, 0x2c0
/* 80A3F28C  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3F290  48 00 00 AC */	b lbl_80A3F33C
lbl_80A3F294:
/* 80A3F294  38 00 02 BF */	li r0, 0x2bf
/* 80A3F298  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3F29C  48 00 00 A0 */	b lbl_80A3F33C
lbl_80A3F2A0:
/* 80A3F2A0  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3F2A4  4B 64 51 BD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80A3F2A8  28 03 00 00 */	cmplwi r3, 0
/* 80A3F2AC  41 82 00 84 */	beq lbl_80A3F330
/* 80A3F2B0  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3F2B4  4B 64 52 45 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80A3F2B8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80A3F2BC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A3F2C0  40 82 00 70 */	bne lbl_80A3F330
/* 80A3F2C4  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3F2C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A3F2CC  41 82 00 24 */	beq lbl_80A3F2F0
/* 80A3F2D0  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3F2D4  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3F2D8  4B 70 65 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F2DC  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3F2E0  38 00 00 01 */	li r0, 1
/* 80A3F2E4  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3F2E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F2EC  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3F2F0:
/* 80A3F2F0  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3F2F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3F2F8  4B 70 65 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3F2FC  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3F300  38 00 00 1B */	li r0, 0x1b
/* 80A3F304  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3F308  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3F30C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3F310  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3F314  3C 80 00 04 */	lis r4, 4
/* 80A3F318  38 A0 00 28 */	li r5, 0x28
/* 80A3F31C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3F320  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3F324  7D 89 03 A6 */	mtctr r12
/* 80A3F328  4E 80 04 21 */	bctrl 
/* 80A3F32C  48 00 00 10 */	b lbl_80A3F33C
lbl_80A3F330:
/* 80A3F330  7F C3 F3 78 */	mr r3, r30
/* 80A3F334  38 80 00 01 */	li r4, 1
/* 80A3F338  4B FF 89 E9 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A3F33C:
/* 80A3F33C  38 60 00 01 */	li r3, 1
/* 80A3F340  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3F344  4B 92 2E E1 */	bl _restgpr_28
/* 80A3F348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3F34C  7C 08 03 A6 */	mtlr r0
/* 80A3F350  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3F354  4E 80 00 20 */	blr 
