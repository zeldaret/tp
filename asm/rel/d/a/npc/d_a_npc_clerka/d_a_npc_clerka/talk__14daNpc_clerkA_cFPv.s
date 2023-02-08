lbl_809941B8:
/* 809941B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809941BC  7C 08 02 A6 */	mflr r0
/* 809941C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809941C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809941C8  93 C1 00 08 */	stw r30, 8(r1)
/* 809941CC  7C 7F 1B 78 */	mr r31, r3
/* 809941D0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809941D4  2C 00 00 02 */	cmpwi r0, 2
/* 809941D8  41 82 00 4C */	beq lbl_80994224
/* 809941DC  40 80 01 B8 */	bge lbl_80994394
/* 809941E0  2C 00 00 00 */	cmpwi r0, 0
/* 809941E4  40 80 00 0C */	bge lbl_809941F0
/* 809941E8  48 00 01 AC */	b lbl_80994394
/* 809941EC  48 00 01 A8 */	b lbl_80994394
lbl_809941F0:
/* 809941F0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809941F4  2C 00 00 00 */	cmpwi r0, 0
/* 809941F8  40 82 00 2C */	bne lbl_80994224
/* 809941FC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80994200  38 A0 00 00 */	li r5, 0
/* 80994204  4B 7B 79 ED */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80994208  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 8099420C  2C 00 00 01 */	cmpwi r0, 1
/* 80994210  40 82 00 0C */	bne lbl_8099421C
/* 80994214  38 00 00 00 */	li r0, 0
/* 80994218  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_8099421C:
/* 8099421C  38 00 00 02 */	li r0, 2
/* 80994220  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80994224:
/* 80994224  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80994228  2C 00 00 00 */	cmpwi r0, 0
/* 8099422C  40 82 01 68 */	bne lbl_80994394
/* 80994230  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80994234  28 00 00 00 */	cmplwi r0, 0
/* 80994238  40 82 00 28 */	bne lbl_80994260
/* 8099423C  7F E3 FB 78 */	mr r3, r31
/* 80994240  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80994244  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80994248  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8099424C  4B 68 64 C5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80994250  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80994254  7C 60 07 34 */	extsh r0, r3
/* 80994258  7C 04 00 00 */	cmpw r4, r0
/* 8099425C  40 82 00 D4 */	bne lbl_80994330
lbl_80994260:
/* 80994260  7F E3 FB 78 */	mr r3, r31
/* 80994264  38 80 00 00 */	li r4, 0
/* 80994268  38 A0 00 00 */	li r5, 0
/* 8099426C  38 C0 00 00 */	li r6, 0
/* 80994270  38 E0 00 00 */	li r7, 0
/* 80994274  4B 7B 7A 05 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80994278  2C 03 00 00 */	cmpwi r3, 0
/* 8099427C  41 82 00 30 */	beq lbl_809942AC
/* 80994280  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80994284  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80994288  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099428C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80994290  4B 7B 14 51 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80994294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80994298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099429C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809942A0  4B 6A E1 C9 */	bl reset__14dEvt_control_cFv
/* 809942A4  38 00 00 03 */	li r0, 3
/* 809942A8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809942AC:
/* 809942AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809942B0  2C 00 00 01 */	cmpwi r0, 1
/* 809942B4  41 82 00 2C */	beq lbl_809942E0
/* 809942B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809942BC  4B 7B 14 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809942C0  38 00 00 00 */	li r0, 0
/* 809942C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809942C8  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 809942CC  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 809942D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809942D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809942D8  38 00 00 01 */	li r0, 1
/* 809942DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809942E0:
/* 809942E0  38 00 00 00 */	li r0, 0
/* 809942E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809942E8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809942EC  28 00 00 00 */	cmplwi r0, 0
/* 809942F0  41 82 00 A4 */	beq lbl_80994394
/* 809942F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809942F8  2C 00 00 00 */	cmpwi r0, 0
/* 809942FC  41 82 00 28 */	beq lbl_80994324
/* 80994300  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80994304  4B 7B 13 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80994308  38 00 00 00 */	li r0, 0
/* 8099430C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80994310  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 80994314  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 80994318  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099431C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80994320  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80994324:
/* 80994324  38 00 00 00 */	li r0, 0
/* 80994328  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099432C  48 00 00 68 */	b lbl_80994394
lbl_80994330:
/* 80994330  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80994334  2C 00 00 01 */	cmpwi r0, 1
/* 80994338  41 82 00 2C */	beq lbl_80994364
/* 8099433C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80994340  4B 7B 13 BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80994344  38 00 00 00 */	li r0, 0
/* 80994348  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099434C  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 80994350  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 80994354  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80994358  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099435C  38 00 00 01 */	li r0, 1
/* 80994360  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80994364:
/* 80994364  38 00 00 00 */	li r0, 0
/* 80994368  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099436C  7F E3 FB 78 */	mr r3, r31
/* 80994370  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80994374  4B 68 63 9D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80994378  7C 64 1B 78 */	mr r4, r3
/* 8099437C  7F E3 FB 78 */	mr r3, r31
/* 80994380  38 A0 00 04 */	li r5, 4
/* 80994384  38 C0 00 05 */	li r6, 5
/* 80994388  38 E0 00 0F */	li r7, 0xf
/* 8099438C  39 00 00 00 */	li r8, 0
/* 80994390  4B 7B 72 B9 */	bl step__8daNpcT_cFsiiii
lbl_80994394:
/* 80994394  38 60 00 00 */	li r3, 0
/* 80994398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099439C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809943A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809943A4  7C 08 03 A6 */	mtlr r0
/* 809943A8  38 21 00 10 */	addi r1, r1, 0x10
/* 809943AC  4E 80 00 20 */	blr 
