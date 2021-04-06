lbl_80538938:
/* 80538938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053893C  7C 08 02 A6 */	mflr r0
/* 80538940  90 01 00 24 */	stw r0, 0x24(r1)
/* 80538944  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80538948  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053894C  7C 7F 1B 78 */	mr r31, r3
/* 80538950  3B C0 00 00 */	li r30, 0
/* 80538954  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80538958  28 00 00 00 */	cmplwi r0, 0
/* 8053895C  40 82 00 14 */	bne lbl_80538970
/* 80538960  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80538964  38 A0 FF FF */	li r5, -1
/* 80538968  4B C1 20 D9 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 8053896C  7C 7E 1B 78 */	mr r30, r3
lbl_80538970:
/* 80538970  28 1E 00 00 */	cmplwi r30, 0
/* 80538974  41 82 00 B8 */	beq lbl_80538A2C
/* 80538978  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 8053897C  28 00 00 05 */	cmplwi r0, 5
/* 80538980  41 82 00 AC */	beq lbl_80538A2C
/* 80538984  7F E3 FB 78 */	mr r3, r31
/* 80538988  4B FF F6 49 */	bl chkNurse__12daNpc_Besu_cFv
/* 8053898C  2C 03 00 00 */	cmpwi r3, 0
/* 80538990  40 82 00 9C */	bne lbl_80538A2C
/* 80538994  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80538998  7F E4 FB 78 */	mr r4, r31
/* 8053899C  7F C5 F3 78 */	mr r5, r30
/* 805389A0  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 805389A4  4B C0 F4 29 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 805389A8  7F E3 FB 78 */	mr r3, r31
/* 805389AC  38 80 00 00 */	li r4, 0
/* 805389B0  38 A0 00 0C */	li r5, 0xc
/* 805389B4  38 C0 00 12 */	li r6, 0x12
/* 805389B8  4B C1 21 19 */	bl setDamage__8daNpcT_cFiii
/* 805389BC  38 60 00 00 */	li r3, 0
/* 805389C0  3C 80 80 54 */	lis r4, lit_4337@ha /* 0x8053E844@ha */
/* 805389C4  C0 04 E8 44 */	lfs f0, lit_4337@l(r4)  /* 0x8053E844@l */
/* 805389C8  38 00 00 02 */	li r0, 2
/* 805389CC  7C 09 03 A6 */	mtctr r0
lbl_805389D0:
/* 805389D0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 805389D4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 805389D8  38 63 00 04 */	addi r3, r3, 4
/* 805389DC  42 00 FF F4 */	bdnz lbl_805389D0
/* 805389E0  38 00 00 00 */	li r0, 0
/* 805389E4  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 805389E8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805389EC  2C 00 00 00 */	cmpwi r0, 0
/* 805389F0  41 82 00 28 */	beq lbl_80538A18
/* 805389F4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805389F8  4B C0 CD 05 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805389FC  38 00 00 00 */	li r0, 0
/* 80538A00  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80538A04  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 80538A08  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 80538A0C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80538A10  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80538A14  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80538A18:
/* 80538A18  38 00 00 00 */	li r0, 0
/* 80538A1C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80538A20  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80538A24  38 00 00 01 */	li r0, 1
/* 80538A28  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80538A2C:
/* 80538A2C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80538A30  2C 00 00 00 */	cmpwi r0, 0
/* 80538A34  41 82 00 5C */	beq lbl_80538A90
/* 80538A38  38 60 00 00 */	li r3, 0
/* 80538A3C  38 80 00 00 */	li r4, 0
/* 80538A40  38 C0 00 00 */	li r6, 0
/* 80538A44  3C A0 80 54 */	lis r5, lit_4337@ha /* 0x8053E844@ha */
/* 80538A48  C0 05 E8 44 */	lfs f0, lit_4337@l(r5)  /* 0x8053E844@l */
/* 80538A4C  38 00 00 02 */	li r0, 2
/* 80538A50  7C 09 03 A6 */	mtctr r0
lbl_80538A54:
/* 80538A54  7C BF 22 14 */	add r5, r31, r4
/* 80538A58  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80538A5C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80538A60  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80538A64  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80538A68  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80538A6C  38 63 00 04 */	addi r3, r3, 4
/* 80538A70  38 84 00 06 */	addi r4, r4, 6
/* 80538A74  42 00 FF E0 */	bdnz lbl_80538A54
/* 80538A78  38 00 00 00 */	li r0, 0
/* 80538A7C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80538A80  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80538A84  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80538A88  38 00 00 01 */	li r0, 1
/* 80538A8C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80538A90:
/* 80538A90  38 7F 11 00 */	addi r3, r31, 0x1100
/* 80538A94  4B E2 95 85 */	bl __ptmf_test
/* 80538A98  2C 03 00 00 */	cmpwi r3, 0
/* 80538A9C  41 82 00 54 */	beq lbl_80538AF0
/* 80538AA0  38 7F 11 0C */	addi r3, r31, 0x110c
/* 80538AA4  38 9F 11 00 */	addi r4, r31, 0x1100
/* 80538AA8  4B E2 95 A1 */	bl __ptmf_cmpr
/* 80538AAC  2C 03 00 00 */	cmpwi r3, 0
/* 80538AB0  40 82 00 1C */	bne lbl_80538ACC
/* 80538AB4  7F E3 FB 78 */	mr r3, r31
/* 80538AB8  38 80 00 00 */	li r4, 0
/* 80538ABC  39 9F 11 0C */	addi r12, r31, 0x110c
/* 80538AC0  4B E2 95 C5 */	bl __ptmf_scall
/* 80538AC4  60 00 00 00 */	nop 
/* 80538AC8  48 00 00 28 */	b lbl_80538AF0
lbl_80538ACC:
/* 80538ACC  80 7F 11 00 */	lwz r3, 0x1100(r31)
/* 80538AD0  80 1F 11 04 */	lwz r0, 0x1104(r31)
/* 80538AD4  90 61 00 08 */	stw r3, 8(r1)
/* 80538AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80538ADC  80 1F 11 08 */	lwz r0, 0x1108(r31)
/* 80538AE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80538AE4  7F E3 FB 78 */	mr r3, r31
/* 80538AE8  38 81 00 08 */	addi r4, r1, 8
/* 80538AEC  48 00 10 0D */	bl setAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i
lbl_80538AF0:
/* 80538AF0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80538AF4  4B C0 CC 15 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80538AF8  28 03 00 00 */	cmplwi r3, 0
/* 80538AFC  41 82 00 30 */	beq lbl_80538B2C
/* 80538B00  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80538B04  54 03 46 3E */	srwi r3, r0, 0x18
/* 80538B08  28 03 00 FF */	cmplwi r3, 0xff
/* 80538B0C  38 00 FF FF */	li r0, -1
/* 80538B10  41 82 00 08 */	beq lbl_80538B18
/* 80538B14  7C 60 1B 78 */	mr r0, r3
lbl_80538B18:
/* 80538B18  2C 00 00 06 */	cmpwi r0, 6
/* 80538B1C  41 82 00 08 */	beq lbl_80538B24
/* 80538B20  48 00 00 0C */	b lbl_80538B2C
lbl_80538B24:
/* 80538B24  38 00 00 09 */	li r0, 9
/* 80538B28  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80538B2C:
/* 80538B2C  38 7F 11 20 */	addi r3, r31, 0x1120
/* 80538B30  48 00 58 05 */	bl func_8053E334
/* 80538B34  38 7F 11 24 */	addi r3, r31, 0x1124
/* 80538B38  48 00 57 FD */	bl func_8053E334
/* 80538B3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80538B40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80538B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80538B48  7C 08 03 A6 */	mtlr r0
/* 80538B4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80538B50  4E 80 00 20 */	blr 
