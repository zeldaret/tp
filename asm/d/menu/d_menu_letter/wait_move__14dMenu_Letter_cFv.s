lbl_801DDE54:
/* 801DDE54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DDE58  7C 08 02 A6 */	mflr r0
/* 801DDE5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DDE60  39 61 00 30 */	addi r11, r1, 0x30
/* 801DDE64  48 18 43 79 */	bl _savegpr_29
/* 801DDE68  7C 7E 1B 78 */	mr r30, r3
/* 801DDE6C  8B E3 03 6E */	lbz r31, 0x36e(r3)
/* 801DDE70  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801DDE74  80 03 00 04 */	lwz r0, 4(r3)
/* 801DDE78  2C 00 00 01 */	cmpwi r0, 1
/* 801DDE7C  40 82 02 D0 */	bne lbl_801DE14C
/* 801DDE80  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801DDE84  3B A3 D2 E8 */	addi r29, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801DDE88  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 801DDE8C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DDE90  41 82 00 20 */	beq lbl_801DDEB0
/* 801DDE94  80 7E 03 0C */	lwz r3, 0x30c(r30)
/* 801DDE98  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801DDE9C  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801DDEA0  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801DDEA4  38 00 00 03 */	li r0, 3
/* 801DDEA8  98 1E 03 6C */	stb r0, 0x36c(r30)
/* 801DDEAC  48 00 01 E0 */	b lbl_801DE08C
lbl_801DDEB0:
/* 801DDEB0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801DDEB4  41 82 00 48 */	beq lbl_801DDEFC
/* 801DDEB8  38 00 00 03 */	li r0, 3
/* 801DDEBC  98 1E 03 6D */	stb r0, 0x36d(r30)
/* 801DDEC0  38 00 00 C2 */	li r0, 0xc2
/* 801DDEC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DDEC8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DDECC  38 81 00 18 */	addi r4, r1, 0x18
/* 801DDED0  38 A0 00 00 */	li r5, 0
/* 801DDED4  38 C0 00 00 */	li r6, 0
/* 801DDED8  38 E0 00 00 */	li r7, 0
/* 801DDEDC  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDEE0  FC 40 08 90 */	fmr f2, f1
/* 801DDEE4  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DDEE8  FC 80 18 90 */	fmr f4, f3
/* 801DDEEC  39 00 00 00 */	li r8, 0
/* 801DDEF0  48 0C DA 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DDEF4  48 04 0A DD */	bl dMeter2Info_set2DVibration__Fv
/* 801DDEF8  48 00 01 94 */	b lbl_801DE08C
lbl_801DDEFC:
/* 801DDEFC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801DDF00  4B E5 46 25 */	bl checkUpTrigger__9STControlFv
/* 801DDF04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DDF08  41 82 00 50 */	beq lbl_801DDF58
/* 801DDF0C  88 7E 03 6E */	lbz r3, 0x36e(r30)
/* 801DDF10  28 03 00 00 */	cmplwi r3, 0
/* 801DDF14  41 82 01 78 */	beq lbl_801DE08C
/* 801DDF18  38 03 FF FF */	addi r0, r3, -1
/* 801DDF1C  98 1E 03 6E */	stb r0, 0x36e(r30)
/* 801DDF20  38 00 00 4D */	li r0, 0x4d
/* 801DDF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DDF28  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DDF2C  38 81 00 14 */	addi r4, r1, 0x14
/* 801DDF30  38 A0 00 00 */	li r5, 0
/* 801DDF34  38 C0 00 00 */	li r6, 0
/* 801DDF38  38 E0 00 00 */	li r7, 0
/* 801DDF3C  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDF40  FC 40 08 90 */	fmr f2, f1
/* 801DDF44  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DDF48  FC 80 18 90 */	fmr f4, f3
/* 801DDF4C  39 00 00 00 */	li r8, 0
/* 801DDF50  48 0C DA 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DDF54  48 00 01 38 */	b lbl_801DE08C
lbl_801DDF58:
/* 801DDF58  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801DDF5C  4B E5 46 45 */	bl checkDownTrigger__9STControlFv
/* 801DDF60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DDF64  41 82 00 58 */	beq lbl_801DDFBC
/* 801DDF68  88 9E 03 6E */	lbz r4, 0x36e(r30)
/* 801DDF6C  88 7E 03 73 */	lbz r3, 0x373(r30)
/* 801DDF70  38 03 FF FF */	addi r0, r3, -1
/* 801DDF74  7C 04 00 00 */	cmpw r4, r0
/* 801DDF78  40 80 01 14 */	bge lbl_801DE08C
/* 801DDF7C  38 04 00 01 */	addi r0, r4, 1
/* 801DDF80  98 1E 03 6E */	stb r0, 0x36e(r30)
/* 801DDF84  38 00 00 4D */	li r0, 0x4d
/* 801DDF88  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DDF8C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DDF90  38 81 00 10 */	addi r4, r1, 0x10
/* 801DDF94  38 A0 00 00 */	li r5, 0
/* 801DDF98  38 C0 00 00 */	li r6, 0
/* 801DDF9C  38 E0 00 00 */	li r7, 0
/* 801DDFA0  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDFA4  FC 40 08 90 */	fmr f2, f1
/* 801DDFA8  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DDFAC  FC 80 18 90 */	fmr f4, f3
/* 801DDFB0  39 00 00 00 */	li r8, 0
/* 801DDFB4  48 0C D9 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DDFB8  48 00 00 D4 */	b lbl_801DE08C
lbl_801DDFBC:
/* 801DDFBC  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 801DDFC0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 801DDFC4  41 82 00 68 */	beq lbl_801DE02C
/* 801DDFC8  88 9E 03 6F */	lbz r4, 0x36f(r30)
/* 801DDFCC  88 7E 03 74 */	lbz r3, 0x374(r30)
/* 801DDFD0  38 03 FF FF */	addi r0, r3, -1
/* 801DDFD4  7C 04 00 00 */	cmpw r4, r0
/* 801DDFD8  40 80 00 B4 */	bge lbl_801DE08C
/* 801DDFDC  98 9E 03 72 */	stb r4, 0x372(r30)
/* 801DDFE0  88 7E 03 6F */	lbz r3, 0x36f(r30)
/* 801DDFE4  38 03 00 01 */	addi r0, r3, 1
/* 801DDFE8  98 1E 03 6F */	stb r0, 0x36f(r30)
/* 801DDFEC  38 00 00 02 */	li r0, 2
/* 801DDFF0  98 1E 03 6D */	stb r0, 0x36d(r30)
/* 801DDFF4  38 00 00 A6 */	li r0, 0xa6
/* 801DDFF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DDFFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE000  38 81 00 0C */	addi r4, r1, 0xc
/* 801DE004  38 A0 00 00 */	li r5, 0
/* 801DE008  38 C0 00 00 */	li r6, 0
/* 801DE00C  38 E0 00 00 */	li r7, 0
/* 801DE010  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE014  FC 40 08 90 */	fmr f2, f1
/* 801DE018  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE01C  FC 80 18 90 */	fmr f4, f3
/* 801DE020  39 00 00 00 */	li r8, 0
/* 801DE024  48 0C D9 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DE028  48 00 00 64 */	b lbl_801DE08C
lbl_801DE02C:
/* 801DE02C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 801DE030  41 82 00 5C */	beq lbl_801DE08C
/* 801DE034  88 1E 03 6F */	lbz r0, 0x36f(r30)
/* 801DE038  28 00 00 00 */	cmplwi r0, 0
/* 801DE03C  41 82 00 50 */	beq lbl_801DE08C
/* 801DE040  98 1E 03 72 */	stb r0, 0x372(r30)
/* 801DE044  88 7E 03 6F */	lbz r3, 0x36f(r30)
/* 801DE048  38 03 FF FF */	addi r0, r3, -1
/* 801DE04C  98 1E 03 6F */	stb r0, 0x36f(r30)
/* 801DE050  38 00 00 01 */	li r0, 1
/* 801DE054  98 1E 03 6D */	stb r0, 0x36d(r30)
/* 801DE058  38 00 00 A6 */	li r0, 0xa6
/* 801DE05C  90 01 00 08 */	stw r0, 8(r1)
/* 801DE060  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE064  38 81 00 08 */	addi r4, r1, 8
/* 801DE068  38 A0 00 00 */	li r5, 0
/* 801DE06C  38 C0 00 00 */	li r6, 0
/* 801DE070  38 E0 00 00 */	li r7, 0
/* 801DE074  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE078  FC 40 08 90 */	fmr f2, f1
/* 801DE07C  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE080  FC 80 18 90 */	fmr f4, f3
/* 801DE084  39 00 00 00 */	li r8, 0
/* 801DE088  48 0C D8 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801DE08C:
/* 801DE08C  88 1E 03 6D */	lbz r0, 0x36d(r30)
/* 801DE090  28 00 00 01 */	cmplwi r0, 1
/* 801DE094  41 82 00 0C */	beq lbl_801DE0A0
/* 801DE098  28 00 00 02 */	cmplwi r0, 2
/* 801DE09C  40 82 00 9C */	bne lbl_801DE138
lbl_801DE0A0:
/* 801DE0A0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801DE0A4  3C 80 74 5F */	lis r4, 0x745F /* 0x745F3030@ha */
/* 801DE0A8  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x745F3030@l */
/* 801DE0AC  38 A0 66 5F */	li r5, 0x665f
/* 801DE0B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE0B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DE0B8  7D 89 03 A6 */	mtctr r12
/* 801DE0BC  4E 80 04 21 */	bctrl 
/* 801DE0C0  7C 7D 1B 78 */	mr r29, r3
/* 801DE0C4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801DE0C8  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801DE0CC  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801DE0D0  38 A0 00 74 */	li r5, 0x74
/* 801DE0D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE0D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DE0DC  7D 89 03 A6 */	mtctr r12
/* 801DE0E0  4E 80 04 21 */	bctrl 
/* 801DE0E4  38 00 00 00 */	li r0, 0
/* 801DE0E8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DE0EC  88 9E 03 74 */	lbz r4, 0x374(r30)
/* 801DE0F0  88 7E 03 6F */	lbz r3, 0x36f(r30)
/* 801DE0F4  38 03 00 01 */	addi r0, r3, 1
/* 801DE0F8  1C 00 00 64 */	mulli r0, r0, 0x64
/* 801DE0FC  7C 04 02 14 */	add r0, r4, r0
/* 801DE100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DE104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DE108  90 03 5E 0C */	stw r0, 0x5e0c(r3)
/* 801DE10C  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 801DE110  38 80 04 D6 */	li r4, 0x4d6
/* 801DE114  7F A5 EB 78 */	mr r5, r29
/* 801DE118  38 C0 00 00 */	li r6, 0
/* 801DE11C  38 E0 00 00 */	li r7, 0
/* 801DE120  39 00 00 00 */	li r8, 0
/* 801DE124  39 20 00 00 */	li r9, 0
/* 801DE128  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE12C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DE130  7D 89 03 A6 */	mtctr r12
/* 801DE134  4E 80 04 21 */	bctrl 
lbl_801DE138:
/* 801DE138  88 1E 03 6E */	lbz r0, 0x36e(r30)
/* 801DE13C  7C 1F 00 40 */	cmplw r31, r0
/* 801DE140  41 82 00 0C */	beq lbl_801DE14C
/* 801DE144  7F C3 F3 78 */	mr r3, r30
/* 801DE148  48 00 2A 69 */	bl changeActiveColor__14dMenu_Letter_cFv
lbl_801DE14C:
/* 801DE14C  39 61 00 30 */	addi r11, r1, 0x30
/* 801DE150  48 18 40 D9 */	bl _restgpr_29
/* 801DE154  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DE158  7C 08 03 A6 */	mtlr r0
/* 801DE15C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DE160  4E 80 00 20 */	blr 
