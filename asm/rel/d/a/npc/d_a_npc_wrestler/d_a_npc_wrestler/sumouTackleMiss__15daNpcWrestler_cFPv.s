lbl_80B36908:
/* 80B36908  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B3690C  7C 08 02 A6 */	mflr r0
/* 80B36910  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B36914  39 61 00 50 */	addi r11, r1, 0x50
/* 80B36918  4B 82 B8 C5 */	bl _savegpr_29
/* 80B3691C  7C 7E 1B 78 */	mr r30, r3
/* 80B36920  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B36924  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B36928  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3692C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36930  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80B36934  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B36938  2C 00 00 02 */	cmpwi r0, 2
/* 80B3693C  41 82 00 90 */	beq lbl_80B369CC
/* 80B36940  40 80 00 10 */	bge lbl_80B36950
/* 80B36944  2C 00 00 00 */	cmpwi r0, 0
/* 80B36948  41 82 00 14 */	beq lbl_80B3695C
/* 80B3694C  48 00 03 24 */	b lbl_80B36C70
lbl_80B36950:
/* 80B36950  2C 00 00 04 */	cmpwi r0, 4
/* 80B36954  40 80 03 1C */	bge lbl_80B36C70
/* 80B36958  48 00 02 F8 */	b lbl_80B36C50
lbl_80B3695C:
/* 80B3695C  A8 1E 0E 90 */	lha r0, 0xe90(r30)
/* 80B36960  2C 00 00 00 */	cmpwi r0, 0
/* 80B36964  41 82 00 0C */	beq lbl_80B36970
/* 80B36968  38 00 00 00 */	li r0, 0
/* 80B3696C  B0 1E 0E 90 */	sth r0, 0xe90(r30)
lbl_80B36970:
/* 80B36970  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B36974  4B 61 9D 6D */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B36978  7F C3 F3 78 */	mr r3, r30
/* 80B3697C  38 80 00 0E */	li r4, 0xe
/* 80B36980  38 A0 00 01 */	li r5, 1
/* 80B36984  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B36988  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3698C  7D 89 03 A6 */	mtctr r12
/* 80B36990  4E 80 04 21 */	bctrl 
/* 80B36994  7F C3 F3 78 */	mr r3, r30
/* 80B36998  38 80 00 12 */	li r4, 0x12
/* 80B3699C  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B369A0  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B369A4  38 A0 00 00 */	li r5, 0
/* 80B369A8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B369AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B369B0  7D 89 03 A6 */	mtctr r12
/* 80B369B4  4E 80 04 21 */	bctrl 
/* 80B369B8  38 00 00 05 */	li r0, 5
/* 80B369BC  90 1E 0E 74 */	stw r0, 0xe74(r30)
/* 80B369C0  38 00 00 02 */	li r0, 2
/* 80B369C4  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B369C8  48 00 02 A8 */	b lbl_80B36C70
lbl_80B369CC:
/* 80B369CC  4B FF D0 21 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B369D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B369D4  41 82 00 90 */	beq lbl_80B36A64
/* 80B369D8  80 7F 0C 38 */	lwz r3, 0xc38(r31)
/* 80B369DC  80 1F 0C 3C */	lwz r0, 0xc3c(r31)
/* 80B369E0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B369E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B369E8  80 1F 0C 40 */	lwz r0, 0xc40(r31)
/* 80B369EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B369F0  38 00 00 03 */	li r0, 3
/* 80B369F4  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B369F8  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B369FC  4B 82 B6 1D */	bl __ptmf_test
/* 80B36A00  2C 03 00 00 */	cmpwi r3, 0
/* 80B36A04  41 82 00 18 */	beq lbl_80B36A1C
/* 80B36A08  7F C3 F3 78 */	mr r3, r30
/* 80B36A0C  38 80 00 00 */	li r4, 0
/* 80B36A10  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36A14  4B 82 B6 71 */	bl __ptmf_scall
/* 80B36A18  60 00 00 00 */	nop 
lbl_80B36A1C:
/* 80B36A1C  38 00 00 00 */	li r0, 0
/* 80B36A20  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36A24  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B36A28  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B36A2C  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B36A30  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B36A34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B36A38  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B36A3C  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36A40  4B 82 B5 D9 */	bl __ptmf_test
/* 80B36A44  2C 03 00 00 */	cmpwi r3, 0
/* 80B36A48  41 82 02 28 */	beq lbl_80B36C70
/* 80B36A4C  7F C3 F3 78 */	mr r3, r30
/* 80B36A50  38 80 00 00 */	li r4, 0
/* 80B36A54  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36A58  4B 82 B6 2D */	bl __ptmf_scall
/* 80B36A5C  60 00 00 00 */	nop 
/* 80B36A60  48 00 02 10 */	b lbl_80B36C70
lbl_80B36A64:
/* 80B36A64  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80B36A68  28 00 00 0F */	cmplwi r0, 0xf
/* 80B36A6C  40 82 00 90 */	bne lbl_80B36AFC
/* 80B36A70  80 7F 0C 44 */	lwz r3, 0xc44(r31)
/* 80B36A74  80 1F 0C 48 */	lwz r0, 0xc48(r31)
/* 80B36A78  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B36A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B36A80  80 1F 0C 4C */	lwz r0, 0xc4c(r31)
/* 80B36A84  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B36A88  38 00 00 03 */	li r0, 3
/* 80B36A8C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36A90  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36A94  4B 82 B5 85 */	bl __ptmf_test
/* 80B36A98  2C 03 00 00 */	cmpwi r3, 0
/* 80B36A9C  41 82 00 18 */	beq lbl_80B36AB4
/* 80B36AA0  7F C3 F3 78 */	mr r3, r30
/* 80B36AA4  38 80 00 00 */	li r4, 0
/* 80B36AA8  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36AAC  4B 82 B5 D9 */	bl __ptmf_scall
/* 80B36AB0  60 00 00 00 */	nop 
lbl_80B36AB4:
/* 80B36AB4  38 00 00 00 */	li r0, 0
/* 80B36AB8  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36ABC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B36AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B36AC4  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B36AC8  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B36ACC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B36AD0  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B36AD4  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36AD8  4B 82 B5 41 */	bl __ptmf_test
/* 80B36ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80B36AE0  41 82 01 90 */	beq lbl_80B36C70
/* 80B36AE4  7F C3 F3 78 */	mr r3, r30
/* 80B36AE8  38 80 00 00 */	li r4, 0
/* 80B36AEC  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36AF0  4B 82 B5 95 */	bl __ptmf_scall
/* 80B36AF4  60 00 00 00 */	nop 
/* 80B36AF8  48 00 01 78 */	b lbl_80B36C70
lbl_80B36AFC:
/* 80B36AFC  28 00 00 13 */	cmplwi r0, 0x13
/* 80B36B00  40 82 00 90 */	bne lbl_80B36B90
/* 80B36B04  80 7F 0C 50 */	lwz r3, 0xc50(r31)
/* 80B36B08  80 1F 0C 54 */	lwz r0, 0xc54(r31)
/* 80B36B0C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B36B10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B36B14  80 1F 0C 58 */	lwz r0, 0xc58(r31)
/* 80B36B18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B36B1C  38 00 00 03 */	li r0, 3
/* 80B36B20  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36B24  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36B28  4B 82 B4 F1 */	bl __ptmf_test
/* 80B36B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B36B30  41 82 00 18 */	beq lbl_80B36B48
/* 80B36B34  7F C3 F3 78 */	mr r3, r30
/* 80B36B38  38 80 00 00 */	li r4, 0
/* 80B36B3C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36B40  4B 82 B5 45 */	bl __ptmf_scall
/* 80B36B44  60 00 00 00 */	nop 
lbl_80B36B48:
/* 80B36B48  38 00 00 00 */	li r0, 0
/* 80B36B4C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36B50  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B36B54  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B36B58  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B36B5C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B36B60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B36B64  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B36B68  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36B6C  4B 82 B4 AD */	bl __ptmf_test
/* 80B36B70  2C 03 00 00 */	cmpwi r3, 0
/* 80B36B74  41 82 00 FC */	beq lbl_80B36C70
/* 80B36B78  7F C3 F3 78 */	mr r3, r30
/* 80B36B7C  38 80 00 00 */	li r4, 0
/* 80B36B80  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36B84  4B 82 B5 01 */	bl __ptmf_scall
/* 80B36B88  60 00 00 00 */	nop 
/* 80B36B8C  48 00 00 E4 */	b lbl_80B36C70
lbl_80B36B90:
/* 80B36B90  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80B36B94  38 A0 00 01 */	li r5, 1
/* 80B36B98  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B36B9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B36BA0  40 82 00 1C */	bne lbl_80B36BBC
/* 80B36BA4  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B36BA8  C0 23 18 94 */	lfs f1, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B36BAC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B36BB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B36BB4  41 82 00 08 */	beq lbl_80B36BBC
/* 80B36BB8  38 A0 00 00 */	li r5, 0
lbl_80B36BBC:
/* 80B36BBC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B36BC0  41 82 00 B0 */	beq lbl_80B36C70
/* 80B36BC4  80 7F 0C 5C */	lwz r3, 0xc5c(r31)
/* 80B36BC8  80 1F 0C 60 */	lwz r0, 0xc60(r31)
/* 80B36BCC  90 61 00 08 */	stw r3, 8(r1)
/* 80B36BD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36BD4  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 80B36BD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B36BDC  38 00 00 03 */	li r0, 3
/* 80B36BE0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36BE4  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36BE8  4B 82 B4 31 */	bl __ptmf_test
/* 80B36BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B36BF0  41 82 00 18 */	beq lbl_80B36C08
/* 80B36BF4  7F C3 F3 78 */	mr r3, r30
/* 80B36BF8  38 80 00 00 */	li r4, 0
/* 80B36BFC  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36C00  4B 82 B4 85 */	bl __ptmf_scall
/* 80B36C04  60 00 00 00 */	nop 
lbl_80B36C08:
/* 80B36C08  38 00 00 00 */	li r0, 0
/* 80B36C0C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B36C10  80 61 00 08 */	lwz r3, 8(r1)
/* 80B36C14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B36C18  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B36C1C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B36C20  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B36C24  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B36C28  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B36C2C  4B 82 B3 ED */	bl __ptmf_test
/* 80B36C30  2C 03 00 00 */	cmpwi r3, 0
/* 80B36C34  41 82 00 3C */	beq lbl_80B36C70
/* 80B36C38  7F C3 F3 78 */	mr r3, r30
/* 80B36C3C  38 80 00 00 */	li r4, 0
/* 80B36C40  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B36C44  4B 82 B4 41 */	bl __ptmf_scall
/* 80B36C48  60 00 00 00 */	nop 
/* 80B36C4C  48 00 00 24 */	b lbl_80B36C70
lbl_80B36C50:
/* 80B36C50  A8 1E 0E 90 */	lha r0, 0xe90(r30)
/* 80B36C54  2C 00 00 02 */	cmpwi r0, 2
/* 80B36C58  41 82 00 0C */	beq lbl_80B36C64
/* 80B36C5C  38 00 00 02 */	li r0, 2
/* 80B36C60  B0 1E 0E 90 */	sth r0, 0xe90(r30)
lbl_80B36C64:
/* 80B36C64  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B36C68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B36C6C  4B 61 9A 51 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80B36C70:
/* 80B36C70  38 60 00 01 */	li r3, 1
/* 80B36C74  39 61 00 50 */	addi r11, r1, 0x50
/* 80B36C78  4B 82 B5 B1 */	bl _restgpr_29
/* 80B36C7C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B36C80  7C 08 03 A6 */	mtlr r0
/* 80B36C84  38 21 00 50 */	addi r1, r1, 0x50
/* 80B36C88  4E 80 00 20 */	blr 
