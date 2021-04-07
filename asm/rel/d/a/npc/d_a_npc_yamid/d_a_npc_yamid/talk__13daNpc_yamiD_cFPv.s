lbl_80B44900:
/* 80B44900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44904  7C 08 02 A6 */	mflr r0
/* 80B44908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4490C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B44910  93 C1 00 08 */	stw r30, 8(r1)
/* 80B44914  7C 7F 1B 78 */	mr r31, r3
/* 80B44918  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B4491C  2C 00 00 02 */	cmpwi r0, 2
/* 80B44920  41 82 00 4C */	beq lbl_80B4496C
/* 80B44924  40 80 01 B8 */	bge lbl_80B44ADC
/* 80B44928  2C 00 00 00 */	cmpwi r0, 0
/* 80B4492C  40 80 00 0C */	bge lbl_80B44938
/* 80B44930  48 00 01 AC */	b lbl_80B44ADC
/* 80B44934  48 00 01 A8 */	b lbl_80B44ADC
lbl_80B44938:
/* 80B44938  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B4493C  2C 00 00 00 */	cmpwi r0, 0
/* 80B44940  40 82 00 2C */	bne lbl_80B4496C
/* 80B44944  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B44948  38 A0 00 00 */	li r5, 0
/* 80B4494C  4B 60 72 A5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B44950  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B44954  2C 00 00 01 */	cmpwi r0, 1
/* 80B44958  40 82 00 0C */	bne lbl_80B44964
/* 80B4495C  38 00 00 00 */	li r0, 0
/* 80B44960  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80B44964:
/* 80B44964  38 00 00 02 */	li r0, 2
/* 80B44968  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4496C:
/* 80B4496C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B44970  2C 00 00 00 */	cmpwi r0, 0
/* 80B44974  40 82 01 68 */	bne lbl_80B44ADC
/* 80B44978  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4497C  28 00 00 00 */	cmplwi r0, 0
/* 80B44980  40 82 00 28 */	bne lbl_80B449A8
/* 80B44984  7F E3 FB 78 */	mr r3, r31
/* 80B44988  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4498C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B44990  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B44994  4B 4D 5D 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B44998  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B4499C  7C 60 07 34 */	extsh r0, r3
/* 80B449A0  7C 04 00 00 */	cmpw r4, r0
/* 80B449A4  40 82 00 D4 */	bne lbl_80B44A78
lbl_80B449A8:
/* 80B449A8  7F E3 FB 78 */	mr r3, r31
/* 80B449AC  38 80 00 00 */	li r4, 0
/* 80B449B0  38 A0 00 00 */	li r5, 0
/* 80B449B4  38 C0 00 00 */	li r6, 0
/* 80B449B8  38 E0 00 00 */	li r7, 0
/* 80B449BC  4B 60 72 BD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B449C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B449C4  41 82 00 30 */	beq lbl_80B449F4
/* 80B449C8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B449CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B449D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B449D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B449D8  4B 60 0D 09 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B449DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B449E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B449E4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B449E8  4B 4F DA 81 */	bl reset__14dEvt_control_cFv
/* 80B449EC  38 00 00 03 */	li r0, 3
/* 80B449F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B449F4:
/* 80B449F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B449F8  2C 00 00 01 */	cmpwi r0, 1
/* 80B449FC  41 82 00 2C */	beq lbl_80B44A28
/* 80B44A00  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B44A04  4B 60 0C F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44A08  38 00 00 00 */	li r0, 0
/* 80B44A0C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B44A10  3C 60 80 B4 */	lis r3, lit_4194@ha /* 0x80B460F0@ha */
/* 80B44A14  C0 03 60 F0 */	lfs f0, lit_4194@l(r3)  /* 0x80B460F0@l */
/* 80B44A18  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B44A1C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44A20  38 00 00 01 */	li r0, 1
/* 80B44A24  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B44A28:
/* 80B44A28  38 00 00 00 */	li r0, 0
/* 80B44A2C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44A30  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B44A34  28 00 00 00 */	cmplwi r0, 0
/* 80B44A38  41 82 00 A4 */	beq lbl_80B44ADC
/* 80B44A3C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B44A40  2C 00 00 00 */	cmpwi r0, 0
/* 80B44A44  41 82 00 28 */	beq lbl_80B44A6C
/* 80B44A48  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B44A4C  4B 60 0C B1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44A50  38 00 00 00 */	li r0, 0
/* 80B44A54  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B44A58  3C 60 80 B4 */	lis r3, lit_4194@ha /* 0x80B460F0@ha */
/* 80B44A5C  C0 03 60 F0 */	lfs f0, lit_4194@l(r3)  /* 0x80B460F0@l */
/* 80B44A60  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B44A64  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44A68  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B44A6C:
/* 80B44A6C  38 00 00 00 */	li r0, 0
/* 80B44A70  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44A74  48 00 00 68 */	b lbl_80B44ADC
lbl_80B44A78:
/* 80B44A78  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B44A7C  2C 00 00 01 */	cmpwi r0, 1
/* 80B44A80  41 82 00 2C */	beq lbl_80B44AAC
/* 80B44A84  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B44A88  4B 60 0C 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44A8C  38 00 00 00 */	li r0, 0
/* 80B44A90  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B44A94  3C 60 80 B4 */	lis r3, lit_4194@ha /* 0x80B460F0@ha */
/* 80B44A98  C0 03 60 F0 */	lfs f0, lit_4194@l(r3)  /* 0x80B460F0@l */
/* 80B44A9C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B44AA0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44AA4  38 00 00 01 */	li r0, 1
/* 80B44AA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B44AAC:
/* 80B44AAC  38 00 00 00 */	li r0, 0
/* 80B44AB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B44AB4  7F E3 FB 78 */	mr r3, r31
/* 80B44AB8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B44ABC  4B 4D 5C 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B44AC0  7C 64 1B 78 */	mr r4, r3
/* 80B44AC4  7F E3 FB 78 */	mr r3, r31
/* 80B44AC8  38 A0 00 01 */	li r5, 1
/* 80B44ACC  38 C0 00 01 */	li r6, 1
/* 80B44AD0  38 E0 00 0F */	li r7, 0xf
/* 80B44AD4  39 00 00 00 */	li r8, 0
/* 80B44AD8  4B 60 6B 71 */	bl step__8daNpcT_cFsiiii
lbl_80B44ADC:
/* 80B44ADC  38 60 00 00 */	li r3, 0
/* 80B44AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B44AE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B44AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44AEC  7C 08 03 A6 */	mtlr r0
/* 80B44AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44AF4  4E 80 00 20 */	blr 
