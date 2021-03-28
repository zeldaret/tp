lbl_80A9DE74:
/* 80A9DE74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9DE78  7C 08 02 A6 */	mflr r0
/* 80A9DE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9DE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9DE84  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9DE88  7C 7F 1B 78 */	mr r31, r3
/* 80A9DE8C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A9DE90  2C 00 00 02 */	cmpwi r0, 2
/* 80A9DE94  41 82 00 94 */	beq lbl_80A9DF28
/* 80A9DE98  40 80 02 A0 */	bge lbl_80A9E138
/* 80A9DE9C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DEA0  40 80 00 0C */	bge lbl_80A9DEAC
/* 80A9DEA4  48 00 02 94 */	b lbl_80A9E138
/* 80A9DEA8  48 00 02 90 */	b lbl_80A9E138
lbl_80A9DEAC:
/* 80A9DEAC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A9DEB0  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DEB4  40 82 00 74 */	bne lbl_80A9DF28
/* 80A9DEB8  38 00 FF FF */	li r0, -1
/* 80A9DEBC  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80A9DEC0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A9DEC4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A9DEC8  41 82 00 28 */	beq lbl_80A9DEF0
/* 80A9DECC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A9DED0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A9DED4  4B 6A 79 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9DED8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A9DEDC  38 00 00 1F */	li r0, 0x1f
/* 80A9DEE0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A9DEE4  3C 60 80 AA */	lis r3, lit_4731@ha
/* 80A9DEE8  C0 03 16 C0 */	lfs f0, lit_4731@l(r3)
/* 80A9DEEC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A9DEF0:
/* 80A9DEF0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A9DEF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DEF8  41 82 00 28 */	beq lbl_80A9DF20
/* 80A9DEFC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A9DF00  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A9DF04  4B 6A 79 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9DF08  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A9DF0C  38 00 00 00 */	li r0, 0
/* 80A9DF10  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A9DF14  3C 60 80 AA */	lis r3, lit_4731@ha
/* 80A9DF18  C0 03 16 C0 */	lfs f0, lit_4731@l(r3)
/* 80A9DF1C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A9DF20:
/* 80A9DF20  38 00 00 02 */	li r0, 2
/* 80A9DF24  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A9DF28:
/* 80A9DF28  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A9DF2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DF30  40 82 02 08 */	bne lbl_80A9E138
/* 80A9DF34  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9DF38  4B 6A 77 D0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9DF3C  28 03 00 00 */	cmplwi r3, 0
/* 80A9DF40  41 82 00 EC */	beq lbl_80A9E02C
/* 80A9DF44  88 1F 0F E3 */	lbz r0, 0xfe3(r31)
/* 80A9DF48  28 00 00 00 */	cmplwi r0, 0
/* 80A9DF4C  41 82 00 AC */	beq lbl_80A9DFF8
/* 80A9DF50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9DF54  2C 00 00 01 */	cmpwi r0, 1
/* 80A9DF58  41 82 00 2C */	beq lbl_80A9DF84
/* 80A9DF5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9DF60  4B 6A 77 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A9DF64  38 00 00 00 */	li r0, 0
/* 80A9DF68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9DF6C  3C 60 80 AA */	lis r3, lit_4373@ha
/* 80A9DF70  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)
/* 80A9DF74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9DF78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9DF7C  38 00 00 01 */	li r0, 1
/* 80A9DF80  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9DF84:
/* 80A9DF84  38 00 00 00 */	li r0, 0
/* 80A9DF88  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9DF8C  88 1F 0F E2 */	lbz r0, 0xfe2(r31)
/* 80A9DF90  28 00 00 00 */	cmplwi r0, 0
/* 80A9DF94  41 82 00 28 */	beq lbl_80A9DFBC
/* 80A9DF98  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9DF9C  4B 6A 77 6C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9DFA0  7C 64 1B 78 */	mr r4, r3
/* 80A9DFA4  7F E3 FB 78 */	mr r3, r31
/* 80A9DFA8  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80A9DFAC  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80A9DFB0  4B 6A CC 20 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A9DFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9DFB8  40 82 00 48 */	bne lbl_80A9E000
lbl_80A9DFBC:
/* 80A9DFBC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9DFC0  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DFC4  41 82 00 28 */	beq lbl_80A9DFEC
/* 80A9DFC8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9DFCC  4B 6A 77 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A9DFD0  38 00 00 00 */	li r0, 0
/* 80A9DFD4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9DFD8  3C 60 80 AA */	lis r3, lit_4373@ha
/* 80A9DFDC  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)
/* 80A9DFE0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9DFE4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9DFE8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9DFEC:
/* 80A9DFEC  38 00 00 00 */	li r0, 0
/* 80A9DFF0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9DFF4  48 00 00 0C */	b lbl_80A9E000
lbl_80A9DFF8:
/* 80A9DFF8  38 00 00 01 */	li r0, 1
/* 80A9DFFC  98 1F 0F E3 */	stb r0, 0xfe3(r31)
lbl_80A9E000:
/* 80A9E000  7F E3 FB 78 */	mr r3, r31
/* 80A9E004  4B 6A D3 34 */	b srchPlayerActor__8daNpcT_cFv
/* 80A9E008  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E00C  40 82 00 DC */	bne lbl_80A9E0E8
/* 80A9E010  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A9E014  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A9E018  7C 03 00 00 */	cmpw r3, r0
/* 80A9E01C  40 82 00 CC */	bne lbl_80A9E0E8
/* 80A9E020  38 00 00 01 */	li r0, 1
/* 80A9E024  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9E028  48 00 00 C0 */	b lbl_80A9E0E8
lbl_80A9E02C:
/* 80A9E02C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9E030  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E034  41 82 00 28 */	beq lbl_80A9E05C
/* 80A9E038  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9E03C  4B 6A 76 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A9E040  38 00 00 00 */	li r0, 0
/* 80A9E044  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9E048  3C 60 80 AA */	lis r3, lit_4373@ha
/* 80A9E04C  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)
/* 80A9E050  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9E054  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9E058  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9E05C:
/* 80A9E05C  38 00 00 00 */	li r0, 0
/* 80A9E060  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9E064  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A9E068  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A9E06C  7C 04 00 00 */	cmpw r4, r0
/* 80A9E070  41 82 00 64 */	beq lbl_80A9E0D4
/* 80A9E074  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80A9E078  28 00 00 00 */	cmplwi r0, 0
/* 80A9E07C  41 82 00 3C */	beq lbl_80A9E0B8
/* 80A9E080  88 1F 0F E2 */	lbz r0, 0xfe2(r31)
/* 80A9E084  28 00 00 00 */	cmplwi r0, 0
/* 80A9E088  41 82 00 40 */	beq lbl_80A9E0C8
/* 80A9E08C  7F E3 FB 78 */	mr r3, r31
/* 80A9E090  38 A0 00 1F */	li r5, 0x1f
/* 80A9E094  38 C0 00 24 */	li r6, 0x24
/* 80A9E098  38 E0 00 0F */	li r7, 0xf
/* 80A9E09C  39 00 00 00 */	li r8, 0
/* 80A9E0A0  4B 6A D5 A8 */	b step__8daNpcT_cFsiiii
/* 80A9E0A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E0A8  41 82 00 20 */	beq lbl_80A9E0C8
/* 80A9E0AC  38 00 00 01 */	li r0, 1
/* 80A9E0B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9E0B4  48 00 00 14 */	b lbl_80A9E0C8
lbl_80A9E0B8:
/* 80A9E0B8  7F E3 FB 78 */	mr r3, r31
/* 80A9E0BC  4B 6A C9 5C */	b setAngle__8daNpcT_cFs
/* 80A9E0C0  38 00 00 01 */	li r0, 1
/* 80A9E0C4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A9E0C8:
/* 80A9E0C8  38 00 00 00 */	li r0, 0
/* 80A9E0CC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A9E0D0  48 00 00 18 */	b lbl_80A9E0E8
lbl_80A9E0D4:
/* 80A9E0D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A9E0D8  28 00 00 00 */	cmplwi r0, 0
/* 80A9E0DC  40 82 00 0C */	bne lbl_80A9E0E8
/* 80A9E0E0  7F E3 FB 78 */	mr r3, r31
/* 80A9E0E4  4B 6A D2 54 */	b srchPlayerActor__8daNpcT_cFv
lbl_80A9E0E8:
/* 80A9E0E8  88 1F 10 04 */	lbz r0, 0x1004(r31)
/* 80A9E0EC  28 00 00 00 */	cmplwi r0, 0
/* 80A9E0F0  40 82 00 38 */	bne lbl_80A9E128
/* 80A9E0F4  38 00 00 01 */	li r0, 1
/* 80A9E0F8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A9E0FC  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A9E100  B0 1F 0F DC */	sth r0, 0xfdc(r31)
/* 80A9E104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9E108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A9E10C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A9E110  7F E4 FB 78 */	mr r4, r31
/* 80A9E114  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha
/* 80A9E118  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l
/* 80A9E11C  38 C0 00 00 */	li r6, 0
/* 80A9E120  4B 5A 47 F4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80A9E124  48 00 00 14 */	b lbl_80A9E138
lbl_80A9E128:
/* 80A9E128  28 00 00 01 */	cmplwi r0, 1
/* 80A9E12C  40 82 00 0C */	bne lbl_80A9E138
/* 80A9E130  7F E3 FB 78 */	mr r3, r31
/* 80A9E134  48 00 02 31 */	bl watch_tutrial__18daNpc_Pachi_Taro_cFv
lbl_80A9E138:
/* 80A9E138  38 60 00 01 */	li r3, 1
/* 80A9E13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E140  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9E144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E148  7C 08 03 A6 */	mtlr r0
/* 80A9E14C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E150  4E 80 00 20 */	blr 
