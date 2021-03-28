lbl_80A7D934:
/* 80A7D934  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A7D938  7C 08 02 A6 */	mflr r0
/* 80A7D93C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7D940  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7D944  4B 8E 48 94 */	b _savegpr_28
/* 80A7D948  7C 7E 1B 78 */	mr r30, r3
/* 80A7D94C  3C 80 80 A8 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A7D950  3B E4 38 B0 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80A7D954  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha
/* 80A7D958  3B A4 32 AC */	addi r29, r4, m__17daNpcMoiR_Param_c@l
/* 80A7D95C  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7D960  2C 00 00 02 */	cmpwi r0, 2
/* 80A7D964  41 82 00 6C */	beq lbl_80A7D9D0
/* 80A7D968  40 80 04 10 */	bge lbl_80A7DD78
/* 80A7D96C  2C 00 00 00 */	cmpwi r0, 0
/* 80A7D970  41 82 00 0C */	beq lbl_80A7D97C
/* 80A7D974  48 00 04 04 */	b lbl_80A7DD78
/* 80A7D978  48 00 04 00 */	b lbl_80A7DD78
lbl_80A7D97C:
/* 80A7D97C  38 80 00 12 */	li r4, 0x12
/* 80A7D980  C0 3D 04 E4 */	lfs f1, 0x4e4(r29)
/* 80A7D984  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7D988  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7D98C  7D 89 03 A6 */	mtctr r12
/* 80A7D990  4E 80 04 21 */	bctrl 
/* 80A7D994  7F C3 F3 78 */	mr r3, r30
/* 80A7D998  38 80 00 16 */	li r4, 0x16
/* 80A7D99C  C0 3D 04 E4 */	lfs f1, 0x4e4(r29)
/* 80A7D9A0  38 A0 00 00 */	li r5, 0
/* 80A7D9A4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D9A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7D9AC  7D 89 03 A6 */	mtctr r12
/* 80A7D9B0  4E 80 04 21 */	bctrl 
/* 80A7D9B4  38 00 00 00 */	li r0, 0
/* 80A7D9B8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A7D9BC  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80A7D9C0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A7D9C4  38 00 00 02 */	li r0, 2
/* 80A7D9C8  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7D9CC  48 00 03 AC */	b lbl_80A7DD78
lbl_80A7D9D0:
/* 80A7D9D0  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7D9D4  4B 6D 2D 18 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7D9D8  28 03 00 00 */	cmplwi r3, 0
/* 80A7D9DC  41 82 00 C4 */	beq lbl_80A7DAA0
/* 80A7D9E0  88 1E 0E 0B */	lbz r0, 0xe0b(r30)
/* 80A7D9E4  28 00 00 00 */	cmplwi r0, 0
/* 80A7D9E8  40 82 00 0C */	bne lbl_80A7D9F4
/* 80A7D9EC  C0 3D 04 E8 */	lfs f1, 0x4e8(r29)
/* 80A7D9F0  48 00 00 0C */	b lbl_80A7D9FC
lbl_80A7D9F4:
/* 80A7D9F4  38 7D 00 00 */	addi r3, r29, 0
/* 80A7D9F8  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80A7D9FC:
/* 80A7D9FC  7F C3 F3 78 */	mr r3, r30
/* 80A7DA00  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7DA04  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A7DA08  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DA0C  4B 6D 5F E4 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A7DA10  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DA14  40 82 00 14 */	bne lbl_80A7DA28
/* 80A7DA18  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DA1C  4B 6D 2C C4 */	b remove__18daNpcF_ActorMngr_cFv
/* 80A7DA20  3B 80 00 00 */	li r28, 0
/* 80A7DA24  48 00 00 68 */	b lbl_80A7DA8C
lbl_80A7DA28:
/* 80A7DA28  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DA2C  4B 6D 2C C0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DA30  28 03 00 00 */	cmplwi r3, 0
/* 80A7DA34  40 82 00 20 */	bne lbl_80A7DA54
/* 80A7DA38  7F C3 F3 78 */	mr r3, r30
/* 80A7DA3C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DA40  7F C5 F3 78 */	mr r5, r30
/* 80A7DA44  88 DE 05 47 */	lbz r6, 0x547(r30)
/* 80A7DA48  4B 6D 61 94 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DA4C  7C 7C 1B 78 */	mr r28, r3
/* 80A7DA50  48 00 00 1C */	b lbl_80A7DA6C
lbl_80A7DA54:
/* 80A7DA54  7F C3 F3 78 */	mr r3, r30
/* 80A7DA58  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DA5C  7F C5 F3 78 */	mr r5, r30
/* 80A7DA60  88 DE 05 45 */	lbz r6, 0x545(r30)
/* 80A7DA64  4B 6D 61 78 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DA68  7C 7C 1B 78 */	mr r28, r3
lbl_80A7DA6C:
/* 80A7DA6C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A7DA70  41 82 00 14 */	beq lbl_80A7DA84
/* 80A7DA74  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DA78  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DA7C  4B 6D 2C 40 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7DA80  48 00 00 0C */	b lbl_80A7DA8C
lbl_80A7DA84:
/* 80A7DA84  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DA88  4B 6D 2C 58 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A7DA8C:
/* 80A7DA8C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A7DA90  40 82 00 CC */	bne lbl_80A7DB5C
/* 80A7DA94  38 00 00 00 */	li r0, 0
/* 80A7DA98  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A7DA9C  48 00 00 C0 */	b lbl_80A7DB5C
lbl_80A7DAA0:
/* 80A7DAA0  88 1E 0E 0B */	lbz r0, 0xe0b(r30)
/* 80A7DAA4  28 00 00 00 */	cmplwi r0, 0
/* 80A7DAA8  40 82 00 0C */	bne lbl_80A7DAB4
/* 80A7DAAC  C0 3D 04 E8 */	lfs f1, 0x4e8(r29)
/* 80A7DAB0  48 00 00 0C */	b lbl_80A7DABC
lbl_80A7DAB4:
/* 80A7DAB4  38 7D 00 00 */	addi r3, r29, 0
/* 80A7DAB8  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80A7DABC:
/* 80A7DABC  7F C3 F3 78 */	mr r3, r30
/* 80A7DAC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7DAC4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A7DAC8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DACC  4B 6D 5F 24 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A7DAD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DAD4  40 82 00 14 */	bne lbl_80A7DAE8
/* 80A7DAD8  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DADC  4B 6D 2C 04 */	b remove__18daNpcF_ActorMngr_cFv
/* 80A7DAE0  3B 80 00 00 */	li r28, 0
/* 80A7DAE4  48 00 00 68 */	b lbl_80A7DB4C
lbl_80A7DAE8:
/* 80A7DAE8  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DAEC  4B 6D 2C 00 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DAF0  28 03 00 00 */	cmplwi r3, 0
/* 80A7DAF4  40 82 00 20 */	bne lbl_80A7DB14
/* 80A7DAF8  7F C3 F3 78 */	mr r3, r30
/* 80A7DAFC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DB00  7F C5 F3 78 */	mr r5, r30
/* 80A7DB04  88 DE 05 47 */	lbz r6, 0x547(r30)
/* 80A7DB08  4B 6D 60 D4 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DB0C  7C 7C 1B 78 */	mr r28, r3
/* 80A7DB10  48 00 00 1C */	b lbl_80A7DB2C
lbl_80A7DB14:
/* 80A7DB14  7F C3 F3 78 */	mr r3, r30
/* 80A7DB18  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DB1C  7F C5 F3 78 */	mr r5, r30
/* 80A7DB20  88 DE 05 45 */	lbz r6, 0x545(r30)
/* 80A7DB24  4B 6D 60 B8 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DB28  7C 7C 1B 78 */	mr r28, r3
lbl_80A7DB2C:
/* 80A7DB2C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A7DB30  41 82 00 14 */	beq lbl_80A7DB44
/* 80A7DB34  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DB38  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A7DB3C  4B 6D 2B 80 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7DB40  48 00 00 0C */	b lbl_80A7DB4C
lbl_80A7DB44:
/* 80A7DB44  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DB48  4B 6D 2B 98 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A7DB4C:
/* 80A7DB4C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A7DB50  41 82 00 0C */	beq lbl_80A7DB5C
/* 80A7DB54  38 00 00 00 */	li r0, 0
/* 80A7DB58  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80A7DB5C:
/* 80A7DB5C  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80A7DB60  4B 6D 2B 8C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DB64  28 03 00 00 */	cmplwi r3, 0
/* 80A7DB68  41 82 00 1C */	beq lbl_80A7DB84
/* 80A7DB6C  A8 1E 0E 06 */	lha r0, 0xe06(r30)
/* 80A7DB70  2C 00 00 02 */	cmpwi r0, 2
/* 80A7DB74  41 82 00 24 */	beq lbl_80A7DB98
/* 80A7DB78  38 00 00 02 */	li r0, 2
/* 80A7DB7C  B0 1E 0E 06 */	sth r0, 0xe06(r30)
/* 80A7DB80  48 00 00 18 */	b lbl_80A7DB98
lbl_80A7DB84:
/* 80A7DB84  A8 1E 0E 06 */	lha r0, 0xe06(r30)
/* 80A7DB88  2C 00 00 00 */	cmpwi r0, 0
/* 80A7DB8C  41 82 00 0C */	beq lbl_80A7DB98
/* 80A7DB90  38 00 00 00 */	li r0, 0
/* 80A7DB94  B0 1E 0E 06 */	sth r0, 0xe06(r30)
lbl_80A7DB98:
/* 80A7DB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7DB9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7DBA0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A7DBA4  28 00 00 00 */	cmplwi r0, 0
/* 80A7DBA8  41 82 01 78 */	beq lbl_80A7DD20
/* 80A7DBAC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A7DBB0  28 00 00 01 */	cmplwi r0, 1
/* 80A7DBB4  40 82 00 C4 */	bne lbl_80A7DC78
/* 80A7DBB8  38 00 00 00 */	li r0, 0
/* 80A7DBBC  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A7DBC0  28 04 00 01 */	cmplwi r4, 1
/* 80A7DBC4  41 82 00 0C */	beq lbl_80A7DBD0
/* 80A7DBC8  28 04 00 02 */	cmplwi r4, 2
/* 80A7DBCC  40 82 00 08 */	bne lbl_80A7DBD4
lbl_80A7DBD0:
/* 80A7DBD0  38 00 00 01 */	li r0, 1
lbl_80A7DBD4:
/* 80A7DBD4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A7DBD8  41 82 00 14 */	beq lbl_80A7DBEC
/* 80A7DBDC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A7DBE0  4B 5C AC 10 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A7DBE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DBE8  41 82 01 90 */	beq lbl_80A7DD78
lbl_80A7DBEC:
/* 80A7DBEC  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 80A7DBF0  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80A7DBF4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A7DBF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7DBFC  80 1F 03 30 */	lwz r0, 0x330(r31)
/* 80A7DC00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A7DC04  38 00 00 03 */	li r0, 3
/* 80A7DC08  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7DC0C  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80A7DC10  4B 8E 44 08 */	b __ptmf_test
/* 80A7DC14  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DC18  41 82 00 18 */	beq lbl_80A7DC30
/* 80A7DC1C  7F C3 F3 78 */	mr r3, r30
/* 80A7DC20  38 80 00 00 */	li r4, 0
/* 80A7DC24  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80A7DC28  4B 8E 44 5C */	b __ptmf_scall
/* 80A7DC2C  60 00 00 00 */	nop 
lbl_80A7DC30:
/* 80A7DC30  38 00 00 00 */	li r0, 0
/* 80A7DC34  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7DC38  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A7DC3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A7DC40  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80A7DC44  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80A7DC48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A7DC4C  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80A7DC50  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80A7DC54  4B 8E 43 C4 */	b __ptmf_test
/* 80A7DC58  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DC5C  41 82 01 1C */	beq lbl_80A7DD78
/* 80A7DC60  7F C3 F3 78 */	mr r3, r30
/* 80A7DC64  38 80 00 00 */	li r4, 0
/* 80A7DC68  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80A7DC6C  4B 8E 44 18 */	b __ptmf_scall
/* 80A7DC70  60 00 00 00 */	nop 
/* 80A7DC74  48 00 01 04 */	b lbl_80A7DD78
lbl_80A7DC78:
/* 80A7DC78  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A7DC7C  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 80A7DC80  38 A0 00 00 */	li r5, 0
/* 80A7DC84  38 C0 00 00 */	li r6, 0
/* 80A7DC88  4B 5C 9E 94 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A7DC8C  2C 03 FF FF */	cmpwi r3, -1
/* 80A7DC90  41 82 00 E8 */	beq lbl_80A7DD78
/* 80A7DC94  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80A7DC98  80 1F 03 38 */	lwz r0, 0x338(r31)
/* 80A7DC9C  90 61 00 08 */	stw r3, 8(r1)
/* 80A7DCA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7DCA4  80 1F 03 3C */	lwz r0, 0x33c(r31)
/* 80A7DCA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7DCAC  38 00 00 03 */	li r0, 3
/* 80A7DCB0  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7DCB4  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80A7DCB8  4B 8E 43 60 */	b __ptmf_test
/* 80A7DCBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DCC0  41 82 00 18 */	beq lbl_80A7DCD8
/* 80A7DCC4  7F C3 F3 78 */	mr r3, r30
/* 80A7DCC8  38 80 00 00 */	li r4, 0
/* 80A7DCCC  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80A7DCD0  4B 8E 43 B4 */	b __ptmf_scall
/* 80A7DCD4  60 00 00 00 */	nop 
lbl_80A7DCD8:
/* 80A7DCD8  38 00 00 00 */	li r0, 0
/* 80A7DCDC  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7DCE0  80 61 00 08 */	lwz r3, 8(r1)
/* 80A7DCE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7DCE8  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80A7DCEC  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80A7DCF0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A7DCF4  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80A7DCF8  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80A7DCFC  4B 8E 43 1C */	b __ptmf_test
/* 80A7DD00  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DD04  41 82 00 74 */	beq lbl_80A7DD78
/* 80A7DD08  7F C3 F3 78 */	mr r3, r30
/* 80A7DD0C  38 80 00 00 */	li r4, 0
/* 80A7DD10  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80A7DD14  4B 8E 43 70 */	b __ptmf_scall
/* 80A7DD18  60 00 00 00 */	nop 
/* 80A7DD1C  48 00 00 5C */	b lbl_80A7DD78
lbl_80A7DD20:
/* 80A7DD20  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A7DD24  28 00 00 00 */	cmplwi r0, 0
/* 80A7DD28  41 82 00 10 */	beq lbl_80A7DD38
/* 80A7DD2C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80A7DD30  80 03 00 04 */	lwz r0, 4(r3)
/* 80A7DD34  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80A7DD38:
/* 80A7DD38  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A7DD3C  28 00 00 00 */	cmplwi r0, 0
/* 80A7DD40  41 82 00 14 */	beq lbl_80A7DD54
/* 80A7DD44  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80A7DD48  38 7F 02 58 */	addi r3, r31, 0x258
/* 80A7DD4C  7C A3 00 2E */	lwzx r5, r3, r0
/* 80A7DD50  48 00 00 08 */	b lbl_80A7DD58
lbl_80A7DD54:
/* 80A7DD54  38 A0 00 00 */	li r5, 0
lbl_80A7DD58:
/* 80A7DD58  7F C3 F3 78 */	mr r3, r30
/* 80A7DD5C  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 80A7DD60  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A7DD64  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A7DD68  38 E0 00 28 */	li r7, 0x28
/* 80A7DD6C  39 00 00 FF */	li r8, 0xff
/* 80A7DD70  39 20 00 01 */	li r9, 1
/* 80A7DD74  4B 6D 5B 08 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A7DD78:
/* 80A7DD78  38 60 00 01 */	li r3, 1
/* 80A7DD7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7DD80  4B 8E 44 A4 */	b _restgpr_28
/* 80A7DD84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7DD88  7C 08 03 A6 */	mtlr r0
/* 80A7DD8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A7DD90  4E 80 00 20 */	blr 
