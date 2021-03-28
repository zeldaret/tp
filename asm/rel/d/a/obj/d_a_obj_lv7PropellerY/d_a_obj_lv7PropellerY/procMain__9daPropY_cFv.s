lbl_80C85860:
/* 80C85860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C85864  7C 08 02 A6 */	mflr r0
/* 80C85868  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8586C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C85870  4B 6D C9 6C */	b _savegpr_29
/* 80C85874  7C 7E 1B 78 */	mr r30, r3
/* 80C85878  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C8587C  3B E3 61 74 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C85880  3C 60 80 C8 */	lis r3, data_80C862EC@ha
/* 80C85884  38 A3 62 EC */	addi r5, r3, data_80C862EC@l
/* 80C85888  88 05 00 00 */	lbz r0, 0(r5)
/* 80C8588C  7C 00 07 75 */	extsb. r0, r0
/* 80C85890  40 82 00 88 */	bne lbl_80C85918
/* 80C85894  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C85898  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C8589C  90 7F 00 74 */	stw r3, 0x74(r31)
/* 80C858A0  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80C858A4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C858A8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80C858AC  38 9F 00 74 */	addi r4, r31, 0x74
/* 80C858B0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80C858B4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C858B8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C858BC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C858C0  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C858C4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C858C8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80C858CC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C858D0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C858D4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C858D8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C858DC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C858E0  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80C858E4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80C858E8  90 64 00 24 */	stw r3, 0x24(r4)
/* 80C858EC  90 04 00 28 */	stw r0, 0x28(r4)
/* 80C858F0  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80C858F4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80C858F8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80C858FC  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80C85900  90 64 00 30 */	stw r3, 0x30(r4)
/* 80C85904  90 04 00 34 */	stw r0, 0x34(r4)
/* 80C85908  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80C8590C  90 04 00 38 */	stw r0, 0x38(r4)
/* 80C85910  38 00 00 01 */	li r0, 1
/* 80C85914  98 05 00 00 */	stb r0, 0(r5)
lbl_80C85918:
/* 80C85918  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C8591C  28 04 00 FF */	cmplwi r4, 0xff
/* 80C85920  41 82 00 60 */	beq lbl_80C85980
/* 80C85924  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80C85928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8592C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C85930  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C85934  7C 05 07 74 */	extsb r5, r0
/* 80C85938  4B 3A FA 28 */	b isSwitch__10dSv_info_cCFii
/* 80C8593C  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C85940  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C85944  7C 00 E8 40 */	cmplw r0, r29
/* 80C85948  41 82 00 38 */	beq lbl_80C85980
/* 80C8594C  28 00 00 00 */	cmplwi r0, 0
/* 80C85950  41 82 00 28 */	beq lbl_80C85978
/* 80C85954  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C85958  28 00 00 00 */	cmplwi r0, 0
/* 80C8595C  40 82 00 10 */	bne lbl_80C8596C
/* 80C85960  7F C3 F3 78 */	mr r3, r30
/* 80C85964  48 00 00 61 */	bl init_modeMove__9daPropY_cFv
/* 80C85968  48 00 00 18 */	b lbl_80C85980
lbl_80C8596C:
/* 80C8596C  7F C3 F3 78 */	mr r3, r30
/* 80C85970  48 00 01 ED */	bl init_modeMove2__9daPropY_cFv
/* 80C85974  48 00 00 0C */	b lbl_80C85980
lbl_80C85978:
/* 80C85978  7F C3 F3 78 */	mr r3, r30
/* 80C8597C  48 00 03 31 */	bl init_modeStop__9daPropY_cFv
lbl_80C85980:
/* 80C85980  7F C3 F3 78 */	mr r3, r30
/* 80C85984  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C85988  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C8598C  39 9F 00 74 */	addi r12, r31, 0x74
/* 80C85990  7D 8C 02 14 */	add r12, r12, r0
/* 80C85994  4B 6D C6 F0 */	b __ptmf_scall
/* 80C85998  60 00 00 00 */	nop 
/* 80C8599C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C859A0  4B 6D C8 88 */	b _restgpr_29
/* 80C859A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C859A8  7C 08 03 A6 */	mtlr r0
/* 80C859AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C859B0  4E 80 00 20 */	blr 
