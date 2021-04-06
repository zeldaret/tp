lbl_80955F98:
/* 80955F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80955F9C  7C 08 02 A6 */	mflr r0
/* 80955FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80955FA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80955FA8  7C 7F 1B 78 */	mr r31, r3
/* 80955FAC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80955FB0  2C 00 00 02 */	cmpwi r0, 2
/* 80955FB4  41 82 00 74 */	beq lbl_80956028
/* 80955FB8  40 80 02 F0 */	bge lbl_809562A8
/* 80955FBC  2C 00 00 00 */	cmpwi r0, 0
/* 80955FC0  40 80 00 0C */	bge lbl_80955FCC
/* 80955FC4  48 00 02 E4 */	b lbl_809562A8
/* 80955FC8  48 00 02 E0 */	b lbl_809562A8
lbl_80955FCC:
/* 80955FCC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955FD0  2C 00 00 00 */	cmpwi r0, 0
/* 80955FD4  40 82 00 54 */	bne lbl_80956028
/* 80955FD8  38 60 00 5A */	li r3, 0x5a
/* 80955FDC  4B 7F 6B 51 */	bl daNpcT_offTmpBit__FUl
/* 80955FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80955FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80955FE8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80955FEC  28 03 00 00 */	cmplwi r3, 0
/* 80955FF0  41 82 00 18 */	beq lbl_80956008
/* 80955FF4  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 80955FF8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80955FFC  40 82 00 0C */	bne lbl_80956008
/* 80956000  38 60 00 5A */	li r3, 0x5a
/* 80956004  4B 7F 6A E9 */	bl daNpcT_onTmpBit__FUl
lbl_80956008:
/* 80956008  7F E3 FB 78 */	mr r3, r31
/* 8095600C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80956010  38 A0 00 00 */	li r5, 0
/* 80956014  4B 7F 5B DD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80956018  38 00 00 00 */	li r0, 0
/* 8095601C  90 1F 0F C4 */	stw r0, 0xfc4(r31)
/* 80956020  38 00 00 02 */	li r0, 2
/* 80956024  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80956028:
/* 80956028  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8095602C  2C 00 00 00 */	cmpwi r0, 0
/* 80956030  40 82 02 78 */	bne lbl_809562A8
/* 80956034  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80956038  28 00 00 00 */	cmplwi r0, 0
/* 8095603C  40 82 00 20 */	bne lbl_8095605C
/* 80956040  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80956044  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80956048  7C 03 00 00 */	cmpw r3, r0
/* 8095604C  41 82 00 10 */	beq lbl_8095605C
/* 80956050  88 1F 0F CD */	lbz r0, 0xfcd(r31)
/* 80956054  28 00 00 00 */	cmplwi r0, 0
/* 80956058  41 82 01 F8 */	beq lbl_80956250
lbl_8095605C:
/* 8095605C  7F E3 FB 78 */	mr r3, r31
/* 80956060  38 80 00 00 */	li r4, 0
/* 80956064  38 A0 00 00 */	li r5, 0
/* 80956068  38 C0 00 00 */	li r6, 0
/* 8095606C  38 E0 00 00 */	li r7, 0
/* 80956070  4B 7F 5C 09 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80956074  2C 03 00 00 */	cmpwi r3, 0
/* 80956078  41 82 01 48 */	beq lbl_809561C0
/* 8095607C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80956080  38 81 00 08 */	addi r4, r1, 8
/* 80956084  4B 8F 44 A5 */	bl getEventId__10dMsgFlow_cFPi
/* 80956088  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8095608C  38 00 00 00 */	li r0, 0
/* 80956090  98 1F 0F CF */	stb r0, 0xfcf(r31)
/* 80956094  2C 03 00 17 */	cmpwi r3, 0x17
/* 80956098  41 82 00 64 */	beq lbl_809560FC
/* 8095609C  40 80 00 BC */	bge lbl_80956158
/* 809560A0  2C 03 00 03 */	cmpwi r3, 3
/* 809560A4  41 82 00 08 */	beq lbl_809560AC
/* 809560A8  48 00 00 B0 */	b lbl_80956158
lbl_809560AC:
/* 809560AC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809560B0  28 00 00 04 */	cmplwi r0, 4
/* 809560B4  40 82 00 2C */	bne lbl_809560E0
/* 809560B8  38 60 00 08 */	li r3, 8
/* 809560BC  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 809560C0  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 809560C4  38 80 00 00 */	li r4, 0
/* 809560C8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809560CC  7C 05 07 74 */	extsb r5, r0
/* 809560D0  38 C0 00 00 */	li r6, 0
/* 809560D4  38 E0 FF FF */	li r7, -1
/* 809560D8  4B 6D 10 99 */	bl dStage_changeScene__FifUlScsi
/* 809560DC  48 00 00 E4 */	b lbl_809561C0
lbl_809560E0:
/* 809560E0  38 00 00 01 */	li r0, 1
/* 809560E4  98 1F 0F D0 */	stb r0, 0xfd0(r31)
/* 809560E8  38 00 00 09 */	li r0, 9
/* 809560EC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809560F0  7F E3 FB 78 */	mr r3, r31
/* 809560F4  4B 7F 41 31 */	bl evtChange__8daNpcT_cFv
/* 809560F8  48 00 00 C8 */	b lbl_809561C0
lbl_809560FC:
/* 809560FC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80956100  28 00 00 00 */	cmplwi r0, 0
/* 80956104  40 82 00 2C */	bne lbl_80956130
/* 80956108  38 60 00 09 */	li r3, 9
/* 8095610C  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80956110  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 80956114  38 80 00 00 */	li r4, 0
/* 80956118  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8095611C  7C 05 07 74 */	extsb r5, r0
/* 80956120  38 C0 00 00 */	li r6, 0
/* 80956124  38 E0 FF FF */	li r7, -1
/* 80956128  4B 6D 10 49 */	bl dStage_changeScene__FifUlScsi
/* 8095612C  48 00 00 94 */	b lbl_809561C0
lbl_80956130:
/* 80956130  38 60 00 06 */	li r3, 6
/* 80956134  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80956138  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 8095613C  38 80 00 00 */	li r4, 0
/* 80956140  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80956144  7C 05 07 74 */	extsb r5, r0
/* 80956148  38 C0 00 00 */	li r6, 0
/* 8095614C  38 E0 FF FF */	li r7, -1
/* 80956150  4B 6D 10 21 */	bl dStage_changeScene__FifUlScsi
/* 80956154  48 00 00 6C */	b lbl_809561C0
lbl_80956158:
/* 80956158  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8095615C  28 00 00 01 */	cmplwi r0, 1
/* 80956160  40 82 00 60 */	bne lbl_809561C0
/* 80956164  7F E3 FB 78 */	mr r3, r31
/* 80956168  4B FF DA 25 */	bl chkBullRunningStage__11daNpc_Aru_cFv
/* 8095616C  2C 03 00 00 */	cmpwi r3, 0
/* 80956170  41 82 00 24 */	beq lbl_80956194
/* 80956174  A0 1F 09 AE */	lhz r0, 0x9ae(r31)
/* 80956178  7C 00 07 35 */	extsh. r0, r0
/* 8095617C  40 82 00 18 */	bne lbl_80956194
/* 80956180  38 00 00 06 */	li r0, 6
/* 80956184  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80956188  7F E3 FB 78 */	mr r3, r31
/* 8095618C  4B 7F 40 99 */	bl evtChange__8daNpcT_cFv
/* 80956190  48 00 00 30 */	b lbl_809561C0
lbl_80956194:
/* 80956194  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80956198  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095619C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809561A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809561A4  4B 7E F5 3D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809561A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809561AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809561B0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809561B4  4B 6E C2 B5 */	bl reset__14dEvt_control_cFv
/* 809561B8  38 00 00 03 */	li r0, 3
/* 809561BC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809561C0:
/* 809561C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809561C4  2C 00 00 01 */	cmpwi r0, 1
/* 809561C8  41 82 00 2C */	beq lbl_809561F4
/* 809561CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809561D0  4B 7E F5 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809561D4  38 00 00 00 */	li r0, 0
/* 809561D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809561DC  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 809561E0  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 809561E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809561E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809561EC  38 00 00 01 */	li r0, 1
/* 809561F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809561F4:
/* 809561F4  38 00 00 00 */	li r0, 0
/* 809561F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809561FC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80956200  28 00 00 00 */	cmplwi r0, 0
/* 80956204  40 82 00 10 */	bne lbl_80956214
/* 80956208  88 1F 0F CD */	lbz r0, 0xfcd(r31)
/* 8095620C  28 00 00 00 */	cmplwi r0, 0
/* 80956210  41 82 00 98 */	beq lbl_809562A8
lbl_80956214:
/* 80956214  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80956218  2C 00 00 00 */	cmpwi r0, 0
/* 8095621C  41 82 00 28 */	beq lbl_80956244
/* 80956220  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80956224  4B 7E F4 D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80956228  38 00 00 00 */	li r0, 0
/* 8095622C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80956230  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 80956234  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 80956238  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8095623C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80956240  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80956244:
/* 80956244  38 00 00 00 */	li r0, 0
/* 80956248  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8095624C  48 00 00 5C */	b lbl_809562A8
lbl_80956250:
/* 80956250  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80956254  2C 00 00 01 */	cmpwi r0, 1
/* 80956258  41 82 00 2C */	beq lbl_80956284
/* 8095625C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80956260  4B 7E F4 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80956264  38 00 00 00 */	li r0, 0
/* 80956268  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8095626C  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 80956270  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 80956274  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80956278  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8095627C  38 00 00 01 */	li r0, 1
/* 80956280  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80956284:
/* 80956284  38 00 00 00 */	li r0, 0
/* 80956288  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8095628C  7F E3 FB 78 */	mr r3, r31
/* 80956290  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80956294  38 A0 00 0C */	li r5, 0xc
/* 80956298  38 C0 00 0B */	li r6, 0xb
/* 8095629C  38 E0 00 0F */	li r7, 0xf
/* 809562A0  39 00 00 00 */	li r8, 0
/* 809562A4  4B 7F 53 A5 */	bl step__8daNpcT_cFsiiii
lbl_809562A8:
/* 809562A8  38 60 00 00 */	li r3, 0
/* 809562AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809562B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809562B4  7C 08 03 A6 */	mtlr r0
/* 809562B8  38 21 00 20 */	addi r1, r1, 0x20
/* 809562BC  4E 80 00 20 */	blr 
