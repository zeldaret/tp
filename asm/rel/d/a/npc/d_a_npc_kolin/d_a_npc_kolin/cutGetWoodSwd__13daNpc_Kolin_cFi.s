lbl_80557054:
/* 80557054  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80557058  7C 08 02 A6 */	mflr r0
/* 8055705C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80557060  39 61 00 80 */	addi r11, r1, 0x80
/* 80557064  4B E0 B1 64 */	b _savegpr_24
/* 80557068  7C 7A 1B 78 */	mr r26, r3
/* 8055706C  7C 98 23 78 */	mr r24, r4
/* 80557070  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80557074  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l
/* 80557078  3B C0 00 00 */	li r30, 0
/* 8055707C  3B A0 FF FF */	li r29, -1
/* 80557080  3B 80 00 00 */	li r28, 0
/* 80557084  3B 60 00 00 */	li r27, 0
/* 80557088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055708C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80557090  3B 23 4F F8 */	addi r25, r3, 0x4ff8
/* 80557094  7F 23 CB 78 */	mr r3, r25
/* 80557098  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 8055709C  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 805570A0  38 A5 01 39 */	addi r5, r5, 0x139
/* 805570A4  38 C0 00 03 */	li r6, 3
/* 805570A8  4B AF 10 44 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 805570AC  28 03 00 00 */	cmplwi r3, 0
/* 805570B0  41 82 00 08 */	beq lbl_805570B8
/* 805570B4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_805570B8:
/* 805570B8  7F 23 CB 78 */	mr r3, r25
/* 805570BC  7F 04 C3 78 */	mr r4, r24
/* 805570C0  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 805570C4  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 805570C8  38 A5 01 43 */	addi r5, r5, 0x143
/* 805570CC  38 C0 00 03 */	li r6, 3
/* 805570D0  4B AF 10 1C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 805570D4  28 03 00 00 */	cmplwi r3, 0
/* 805570D8  41 82 00 08 */	beq lbl_805570E0
/* 805570DC  83 83 00 00 */	lwz r28, 0(r3)
lbl_805570E0:
/* 805570E0  7F 23 CB 78 */	mr r3, r25
/* 805570E4  7F 04 C3 78 */	mr r4, r24
/* 805570E8  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 805570EC  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 805570F0  38 A5 01 3D */	addi r5, r5, 0x13d
/* 805570F4  38 C0 00 03 */	li r6, 3
/* 805570F8  4B AF 0F F4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 805570FC  28 03 00 00 */	cmplwi r3, 0
/* 80557100  41 82 00 08 */	beq lbl_80557108
/* 80557104  83 63 00 00 */	lwz r27, 0(r3)
lbl_80557108:
/* 80557108  7F 23 CB 78 */	mr r3, r25
/* 8055710C  7F 04 C3 78 */	mr r4, r24
/* 80557110  4B AF 0C 3C */	b getIsAddvance__16dEvent_manager_cFi
/* 80557114  2C 03 00 00 */	cmpwi r3, 0
/* 80557118  41 82 02 88 */	beq lbl_805573A0
/* 8055711C  28 1D 00 07 */	cmplwi r29, 7
/* 80557120  41 81 02 80 */	bgt lbl_805573A0
/* 80557124  3C 60 80 56 */	lis r3, lit_5841@ha
/* 80557128  38 63 B1 DC */	addi r3, r3, lit_5841@l
/* 8055712C  57 A0 10 3A */	slwi r0, r29, 2
/* 80557130  7C 03 00 2E */	lwzx r0, r3, r0
/* 80557134  7C 09 03 A6 */	mtctr r0
/* 80557138  4E 80 04 20 */	bctr 
lbl_8055713C:
/* 8055713C  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80557140  2C 00 00 0D */	cmpwi r0, 0xd
/* 80557144  41 82 00 24 */	beq lbl_80557168
/* 80557148  83 9A 0B 5C */	lwz r28, 0xb5c(r26)
/* 8055714C  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80557150  4B BE E7 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557154  93 9A 0B 5C */	stw r28, 0xb5c(r26)
/* 80557158  38 00 00 0D */	li r0, 0xd
/* 8055715C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80557160  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80557164  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80557168:
/* 80557168  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8055716C  2C 00 00 02 */	cmpwi r0, 2
/* 80557170  41 82 00 24 */	beq lbl_80557194
/* 80557174  83 9A 0B 80 */	lwz r28, 0xb80(r26)
/* 80557178  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8055717C  4B BE E7 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557180  93 9A 0B 80 */	stw r28, 0xb80(r26)
/* 80557184  38 00 00 02 */	li r0, 2
/* 80557188  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8055718C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80557190  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80557194:
/* 80557194  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80557198  2C 00 00 00 */	cmpwi r0, 0
/* 8055719C  41 82 00 24 */	beq lbl_805571C0
/* 805571A0  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 805571A4  4B BE E5 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 805571A8  38 00 00 00 */	li r0, 0
/* 805571AC  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 805571B0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805571B4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 805571B8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 805571BC  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_805571C0:
/* 805571C0  38 00 00 00 */	li r0, 0
/* 805571C4  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 805571C8  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 805571CC  38 00 00 01 */	li r0, 1
/* 805571D0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 805571D4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805571D8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 805571DC  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 805571E0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 805571E4  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 805571E8  C0 5F 01 74 */	lfs f2, 0x174(r31)
/* 805571EC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 805571F0  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 805571F4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805571F8  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 805571FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80557200  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80557204  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80557208  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8055720C  7F 43 D3 78 */	mr r3, r26
/* 80557210  38 81 00 38 */	addi r4, r1, 0x38
/* 80557214  4B BF 36 F4 */	b setPos__8daNpcT_cF4cXyz
/* 80557218  7F 43 D3 78 */	mr r3, r26
/* 8055721C  38 80 A3 8F */	li r4, -23665
/* 80557220  4B BF 37 F8 */	b setAngle__8daNpcT_cFs
/* 80557224  38 00 00 01 */	li r0, 1
/* 80557228  98 1A 0E 25 */	stb r0, 0xe25(r26)
/* 8055722C  48 00 01 74 */	b lbl_805573A0
lbl_80557230:
/* 80557230  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80557234  48 00 01 6C */	b lbl_805573A0
lbl_80557238:
/* 80557238  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8055723C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80557240  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80557244  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80557248  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8055724C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80557250  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80557254  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80557258  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8055725C  38 03 0E 38 */	addi r0, r3, 0xe38
/* 80557260  7C 04 07 34 */	extsh r4, r0
/* 80557264  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80557268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055726C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80557270  4B AB 51 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80557274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80557278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055727C  38 81 00 50 */	addi r4, r1, 0x50
/* 80557280  7C 85 23 78 */	mr r5, r4
/* 80557284  4B DE FA E8 */	b PSMTXMultVec
/* 80557288  38 61 00 50 */	addi r3, r1, 0x50
/* 8055728C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80557290  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80557294  7C 65 1B 78 */	mr r5, r3
/* 80557298  4B DE FD F8 */	b PSVECAdd
/* 8055729C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805572A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805572A4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805572A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805572AC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805572B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805572B4  7F 43 D3 78 */	mr r3, r26
/* 805572B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805572BC  4B BF 36 4C */	b setPos__8daNpcT_cF4cXyz
/* 805572C0  38 61 00 50 */	addi r3, r1, 0x50
/* 805572C4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805572C8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805572CC  4B D1 99 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805572D0  7C 64 1B 78 */	mr r4, r3
/* 805572D4  7F 43 D3 78 */	mr r3, r26
/* 805572D8  4B BF 37 40 */	b setAngle__8daNpcT_cFs
/* 805572DC  38 60 00 0B */	li r3, 0xb
/* 805572E0  4B BF 58 4C */	b daNpcT_offTmpBit__FUl
/* 805572E4  38 00 00 00 */	li r0, 0
/* 805572E8  98 1A 0E 25 */	stb r0, 0xe25(r26)
/* 805572EC  48 00 00 B4 */	b lbl_805573A0
lbl_805572F0:
/* 805572F0  7F 43 D3 78 */	mr r3, r26
/* 805572F4  38 80 00 30 */	li r4, 0x30
/* 805572F8  38 A0 00 00 */	li r5, 0
/* 805572FC  4B BF 48 F4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80557300  48 00 00 A0 */	b lbl_805573A0
lbl_80557304:
/* 80557304  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80557308  2C 00 00 0D */	cmpwi r0, 0xd
/* 8055730C  41 82 00 24 */	beq lbl_80557330
/* 80557310  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80557314  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80557318  4B BE E5 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055731C  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80557320  38 00 00 0D */	li r0, 0xd
/* 80557324  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80557328  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8055732C  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80557330:
/* 80557330  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80557334  2C 00 00 0F */	cmpwi r0, 0xf
/* 80557338  41 82 00 24 */	beq lbl_8055735C
/* 8055733C  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80557340  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80557344  4B BE E5 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557348  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 8055734C  38 00 00 0F */	li r0, 0xf
/* 80557350  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80557354  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557358  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8055735C:
/* 8055735C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80557360  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80557364  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80557368  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 8055736C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80557370  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
/* 80557374  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 80557378  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 8055737C  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80557380  48 00 00 20 */	b lbl_805573A0
lbl_80557384:
/* 80557384  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80557388  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8055738C  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80557390  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80557394  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80557398  38 00 00 01 */	li r0, 1
/* 8055739C  98 1A 0E 25 */	stb r0, 0xe25(r26)
lbl_805573A0:
/* 805573A0  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 805573A4  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 805573A8  90 61 00 44 */	stw r3, 0x44(r1)
/* 805573AC  90 01 00 48 */	stw r0, 0x48(r1)
/* 805573B0  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 805573B4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805573B8  28 1D 00 07 */	cmplwi r29, 7
/* 805573BC  41 81 02 EC */	bgt lbl_805576A8
/* 805573C0  3C 60 80 56 */	lis r3, lit_5842@ha
/* 805573C4  38 63 B1 BC */	addi r3, r3, lit_5842@l
/* 805573C8  57 A0 10 3A */	slwi r0, r29, 2
/* 805573CC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805573D0  7C 09 03 A6 */	mtctr r0
/* 805573D4  4E 80 04 20 */	bctr 
lbl_805573D8:
/* 805573D8  7F 43 D3 78 */	mr r3, r26
/* 805573DC  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 805573E0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 805573E4  7D 89 03 A6 */	mtctr r12
/* 805573E8  4E 80 04 21 */	bctrl 
/* 805573EC  3B C0 00 01 */	li r30, 1
/* 805573F0  48 00 02 B8 */	b lbl_805576A8
lbl_805573F4:
/* 805573F4  3B C0 00 01 */	li r30, 1
/* 805573F8  48 00 02 B0 */	b lbl_805576A8
lbl_805573FC:
/* 805573FC  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80557400  48 00 2D C5 */	bl func_8055A1C4
/* 80557404  2C 03 00 00 */	cmpwi r3, 0
/* 80557408  40 82 02 A0 */	bne lbl_805576A8
/* 8055740C  3B C0 00 01 */	li r30, 1
/* 80557410  48 00 02 98 */	b lbl_805576A8
lbl_80557414:
/* 80557414  3B C0 00 01 */	li r30, 1
/* 80557418  48 00 02 90 */	b lbl_805576A8
lbl_8055741C:
/* 8055741C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80557420  2C 00 00 01 */	cmpwi r0, 1
/* 80557424  41 82 00 28 */	beq lbl_8055744C
/* 80557428  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8055742C  4B BE E2 D0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80557430  38 00 00 00 */	li r0, 0
/* 80557434  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80557438  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8055743C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80557440  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80557444  38 00 00 01 */	li r0, 1
/* 80557448  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8055744C:
/* 8055744C  38 00 00 00 */	li r0, 0
/* 80557450  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80557454  93 61 00 44 */	stw r27, 0x44(r1)
/* 80557458  7F 43 D3 78 */	mr r3, r26
/* 8055745C  38 81 00 44 */	addi r4, r1, 0x44
/* 80557460  38 A0 00 00 */	li r5, 0
/* 80557464  38 C0 00 00 */	li r6, 0
/* 80557468  38 E0 00 00 */	li r7, 0
/* 8055746C  4B BF 48 0C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80557470  2C 03 00 00 */	cmpwi r3, 0
/* 80557474  41 82 02 34 */	beq lbl_805576A8
/* 80557478  2C 1B 00 00 */	cmpwi r27, 0
/* 8055747C  40 82 00 18 */	bne lbl_80557494
/* 80557480  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80557484  28 00 00 01 */	cmplwi r0, 1
/* 80557488  40 82 02 20 */	bne lbl_805576A8
/* 8055748C  3B C0 00 01 */	li r30, 1
/* 80557490  48 00 02 18 */	b lbl_805576A8
lbl_80557494:
/* 80557494  3B C0 00 01 */	li r30, 1
/* 80557498  48 00 02 10 */	b lbl_805576A8
lbl_8055749C:
/* 8055749C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 805574A0  2C 00 00 00 */	cmpwi r0, 0
/* 805574A4  41 82 00 24 */	beq lbl_805574C8
/* 805574A8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 805574AC  4B BE E2 50 */	b remove__18daNpcT_ActorMngr_cFv
/* 805574B0  38 00 00 00 */	li r0, 0
/* 805574B4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 805574B8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805574BC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 805574C0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 805574C4  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_805574C8:
/* 805574C8  38 00 00 00 */	li r0, 0
/* 805574CC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 805574D0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805574D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805574D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805574DC  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 805574E0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805574E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805574E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805574EC  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 805574F0  38 04 8E 39 */	addi r0, r4, -29127
/* 805574F4  7C 04 07 34 */	extsh r4, r0
/* 805574F8  4B AB 4E E4 */	b mDoMtx_YrotS__FPA4_fs
/* 805574FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80557500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80557504  38 81 00 50 */	addi r4, r1, 0x50
/* 80557508  7C 85 23 78 */	mr r5, r4
/* 8055750C  4B DE F8 60 */	b PSMTXMultVec
/* 80557510  38 61 00 50 */	addi r3, r1, 0x50
/* 80557514  38 9A 04 A8 */	addi r4, r26, 0x4a8
/* 80557518  7C 65 1B 78 */	mr r5, r3
/* 8055751C  4B DE FB 74 */	b PSVECAdd
/* 80557520  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80557524  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80557528  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8055752C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80557530  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80557534  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80557538  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8055753C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80557540  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80557544  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80557548  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055754C  38 61 00 14 */	addi r3, r1, 0x14
/* 80557550  38 81 00 20 */	addi r4, r1, 0x20
/* 80557554  4B DE FE 48 */	b PSVECSquareDistance
/* 80557558  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8055755C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80557560  40 81 00 58 */	ble lbl_805575B8
/* 80557564  FC 00 08 34 */	frsqrte f0, f1
/* 80557568  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 8055756C  FC 44 00 32 */	fmul f2, f4, f0
/* 80557570  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 80557574  FC 00 00 32 */	fmul f0, f0, f0
/* 80557578  FC 01 00 32 */	fmul f0, f1, f0
/* 8055757C  FC 03 00 28 */	fsub f0, f3, f0
/* 80557580  FC 02 00 32 */	fmul f0, f2, f0
/* 80557584  FC 44 00 32 */	fmul f2, f4, f0
/* 80557588  FC 00 00 32 */	fmul f0, f0, f0
/* 8055758C  FC 01 00 32 */	fmul f0, f1, f0
/* 80557590  FC 03 00 28 */	fsub f0, f3, f0
/* 80557594  FC 02 00 32 */	fmul f0, f2, f0
/* 80557598  FC 44 00 32 */	fmul f2, f4, f0
/* 8055759C  FC 00 00 32 */	fmul f0, f0, f0
/* 805575A0  FC 01 00 32 */	fmul f0, f1, f0
/* 805575A4  FC 03 00 28 */	fsub f0, f3, f0
/* 805575A8  FC 02 00 32 */	fmul f0, f2, f0
/* 805575AC  FC 21 00 32 */	fmul f1, f1, f0
/* 805575B0  FC 20 08 18 */	frsp f1, f1
/* 805575B4  48 00 00 88 */	b lbl_8055763C
lbl_805575B8:
/* 805575B8  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 805575BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805575C0  40 80 00 10 */	bge lbl_805575D0
/* 805575C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805575C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805575CC  48 00 00 70 */	b lbl_8055763C
lbl_805575D0:
/* 805575D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805575D4  80 81 00 08 */	lwz r4, 8(r1)
/* 805575D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805575DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805575E0  7C 03 00 00 */	cmpw r3, r0
/* 805575E4  41 82 00 14 */	beq lbl_805575F8
/* 805575E8  40 80 00 40 */	bge lbl_80557628
/* 805575EC  2C 03 00 00 */	cmpwi r3, 0
/* 805575F0  41 82 00 20 */	beq lbl_80557610
/* 805575F4  48 00 00 34 */	b lbl_80557628
lbl_805575F8:
/* 805575F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805575FC  41 82 00 0C */	beq lbl_80557608
/* 80557600  38 00 00 01 */	li r0, 1
/* 80557604  48 00 00 28 */	b lbl_8055762C
lbl_80557608:
/* 80557608  38 00 00 02 */	li r0, 2
/* 8055760C  48 00 00 20 */	b lbl_8055762C
lbl_80557610:
/* 80557610  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80557614  41 82 00 0C */	beq lbl_80557620
/* 80557618  38 00 00 05 */	li r0, 5
/* 8055761C  48 00 00 10 */	b lbl_8055762C
lbl_80557620:
/* 80557620  38 00 00 03 */	li r0, 3
/* 80557624  48 00 00 08 */	b lbl_8055762C
lbl_80557628:
/* 80557628  38 00 00 04 */	li r0, 4
lbl_8055762C:
/* 8055762C  2C 00 00 01 */	cmpwi r0, 1
/* 80557630  40 82 00 0C */	bne lbl_8055763C
/* 80557634  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80557638  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8055763C:
/* 8055763C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80557640  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80557644  40 80 00 40 */	bge lbl_80557684
/* 80557648  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8055764C  38 81 00 50 */	addi r4, r1, 0x50
/* 80557650  4B D1 95 B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80557654  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 80557658  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 8055765C  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80557660  38 A0 00 04 */	li r5, 4
/* 80557664  38 C0 08 00 */	li r6, 0x800
/* 80557668  4B D1 8F A0 */	b cLib_addCalcAngleS2__FPssss
/* 8055766C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80557670  B0 1A 0D 7A */	sth r0, 0xd7a(r26)
/* 80557674  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80557678  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 8055767C  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 80557680  4B D1 90 C0 */	b cLib_chaseF__FPfff
lbl_80557684:
/* 80557684  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80557688  48 00 2B 3D */	bl func_8055A1C4
/* 8055768C  2C 03 00 00 */	cmpwi r3, 0
/* 80557690  40 82 00 18 */	bne lbl_805576A8
/* 80557694  3B C0 00 01 */	li r30, 1
/* 80557698  48 00 00 10 */	b lbl_805576A8
lbl_8055769C:
/* 8055769C  38 60 00 1F */	li r3, 0x1f
/* 805576A0  4B BF 53 8C */	b daNpcT_onEvtBit__FUl
/* 805576A4  3B C0 00 01 */	li r30, 1
lbl_805576A8:
/* 805576A8  7F C3 F3 78 */	mr r3, r30
/* 805576AC  39 61 00 80 */	addi r11, r1, 0x80
/* 805576B0  4B E0 AB 64 */	b _restgpr_24
/* 805576B4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805576B8  7C 08 03 A6 */	mtlr r0
/* 805576BC  38 21 00 80 */	addi r1, r1, 0x80
/* 805576C0  4E 80 00 20 */	blr 
