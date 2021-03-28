lbl_80AB7918:
/* 80AB7918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB791C  7C 08 02 A6 */	mflr r0
/* 80AB7920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB7928  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB792C  7C 7F 1B 78 */	mr r31, r3
/* 80AB7930  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AB7934  2C 00 00 02 */	cmpwi r0, 2
/* 80AB7938  41 82 00 7C */	beq lbl_80AB79B4
/* 80AB793C  40 80 01 E8 */	bge lbl_80AB7B24
/* 80AB7940  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7944  40 80 00 0C */	bge lbl_80AB7950
/* 80AB7948  48 00 01 DC */	b lbl_80AB7B24
/* 80AB794C  48 00 01 D8 */	b lbl_80AB7B24
lbl_80AB7950:
/* 80AB7950  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AB7954  28 00 00 00 */	cmplwi r0, 0
/* 80AB7958  40 82 00 24 */	bne lbl_80AB797C
/* 80AB795C  38 60 00 48 */	li r3, 0x48
/* 80AB7960  4B 69 51 CC */	b daNpcT_offTmpBit__FUl
/* 80AB7964  7F E3 FB 78 */	mr r3, r31
/* 80AB7968  4B FF ED 99 */	bl getNiP__12daNpc_Raca_cFv
/* 80AB796C  28 03 00 00 */	cmplwi r3, 0
/* 80AB7970  40 82 00 0C */	bne lbl_80AB797C
/* 80AB7974  38 60 00 48 */	li r3, 0x48
/* 80AB7978  4B 69 51 74 */	b daNpcT_onTmpBit__FUl
lbl_80AB797C:
/* 80AB797C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB7980  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7984  40 82 00 30 */	bne lbl_80AB79B4
/* 80AB7988  7F E3 FB 78 */	mr r3, r31
/* 80AB798C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AB7990  38 A0 00 00 */	li r5, 0
/* 80AB7994  4B 69 42 5C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AB7998  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80AB799C  2C 00 00 01 */	cmpwi r0, 1
/* 80AB79A0  40 82 00 0C */	bne lbl_80AB79AC
/* 80AB79A4  38 00 00 00 */	li r0, 0
/* 80AB79A8  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80AB79AC:
/* 80AB79AC  38 00 00 02 */	li r0, 2
/* 80AB79B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB79B4:
/* 80AB79B4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB79B8  2C 00 00 00 */	cmpwi r0, 0
/* 80AB79BC  40 82 01 68 */	bne lbl_80AB7B24
/* 80AB79C0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB79C4  28 00 00 00 */	cmplwi r0, 0
/* 80AB79C8  40 82 00 28 */	bne lbl_80AB79F0
/* 80AB79CC  7F E3 FB 78 */	mr r3, r31
/* 80AB79D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AB79D4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80AB79D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AB79DC  4B 56 2D 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AB79E0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AB79E4  7C 60 07 34 */	extsh r0, r3
/* 80AB79E8  7C 04 00 00 */	cmpw r4, r0
/* 80AB79EC  40 82 00 D4 */	bne lbl_80AB7AC0
lbl_80AB79F0:
/* 80AB79F0  7F E3 FB 78 */	mr r3, r31
/* 80AB79F4  38 80 00 00 */	li r4, 0
/* 80AB79F8  38 A0 00 00 */	li r5, 0
/* 80AB79FC  38 C0 00 00 */	li r6, 0
/* 80AB7A00  38 E0 00 00 */	li r7, 0
/* 80AB7A04  4B 69 42 74 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AB7A08  2C 03 00 00 */	cmpwi r3, 0
/* 80AB7A0C  41 82 00 30 */	beq lbl_80AB7A3C
/* 80AB7A10  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB7A14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AB7A18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AB7A1C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AB7A20  4B 68 DC C0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AB7A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB7A28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB7A2C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AB7A30  4B 58 AA 38 */	b reset__14dEvt_control_cFv
/* 80AB7A34  38 00 00 03 */	li r0, 3
/* 80AB7A38  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB7A3C:
/* 80AB7A3C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB7A40  2C 00 00 01 */	cmpwi r0, 1
/* 80AB7A44  41 82 00 2C */	beq lbl_80AB7A70
/* 80AB7A48  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB7A4C  4B 68 DC B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7A50  38 00 00 00 */	li r0, 0
/* 80AB7A54  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB7A58  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB7A5C  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB7A60  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB7A64  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7A68  38 00 00 01 */	li r0, 1
/* 80AB7A6C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB7A70:
/* 80AB7A70  38 00 00 00 */	li r0, 0
/* 80AB7A74  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7A78  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB7A7C  28 00 00 00 */	cmplwi r0, 0
/* 80AB7A80  41 82 00 A4 */	beq lbl_80AB7B24
/* 80AB7A84  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB7A88  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7A8C  41 82 00 28 */	beq lbl_80AB7AB4
/* 80AB7A90  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB7A94  4B 68 DC 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7A98  38 00 00 00 */	li r0, 0
/* 80AB7A9C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB7AA0  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB7AA4  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB7AA8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB7AAC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7AB0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB7AB4:
/* 80AB7AB4  38 00 00 00 */	li r0, 0
/* 80AB7AB8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7ABC  48 00 00 68 */	b lbl_80AB7B24
lbl_80AB7AC0:
/* 80AB7AC0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB7AC4  2C 00 00 01 */	cmpwi r0, 1
/* 80AB7AC8  41 82 00 2C */	beq lbl_80AB7AF4
/* 80AB7ACC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB7AD0  4B 68 DC 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB7AD4  38 00 00 00 */	li r0, 0
/* 80AB7AD8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB7ADC  3C 60 80 AC */	lis r3, lit_4040@ha
/* 80AB7AE0  C0 03 8F 64 */	lfs f0, lit_4040@l(r3)
/* 80AB7AE4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB7AE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7AEC  38 00 00 01 */	li r0, 1
/* 80AB7AF0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB7AF4:
/* 80AB7AF4  38 00 00 00 */	li r0, 0
/* 80AB7AF8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB7AFC  7F E3 FB 78 */	mr r3, r31
/* 80AB7B00  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AB7B04  4B 56 2C 0C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AB7B08  7C 64 1B 78 */	mr r4, r3
/* 80AB7B0C  7F E3 FB 78 */	mr r3, r31
/* 80AB7B10  38 A0 00 07 */	li r5, 7
/* 80AB7B14  38 C0 00 08 */	li r6, 8
/* 80AB7B18  38 E0 00 0F */	li r7, 0xf
/* 80AB7B1C  39 00 00 00 */	li r8, 0
/* 80AB7B20  4B 69 3B 28 */	b step__8daNpcT_cFsiiii
lbl_80AB7B24:
/* 80AB7B24  38 60 00 00 */	li r3, 0
/* 80AB7B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB7B2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB7B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7B34  7C 08 03 A6 */	mtlr r0
/* 80AB7B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7B3C  4E 80 00 20 */	blr 
