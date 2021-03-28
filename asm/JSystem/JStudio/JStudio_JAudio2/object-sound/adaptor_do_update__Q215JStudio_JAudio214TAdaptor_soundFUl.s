lbl_8028DA78:
/* 8028DA78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028DA7C  7C 08 02 A6 */	mflr r0
/* 8028DA80  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028DA84  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028DA88  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8028DA8C  7C 7F 1B 78 */	mr r31, r3
/* 8028DA90  80 83 00 04 */	lwz r4, 4(r3)
/* 8028DA94  83 C4 00 14 */	lwz r30, 0x14(r4)
/* 8028DA98  38 81 00 18 */	addi r4, r1, 0x18
/* 8028DA9C  3C A0 80 3A */	lis r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@ha
/* 8028DAA0  38 A5 AB 6C */	addi r5, r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@l
/* 8028DAA4  4B FF 87 D1 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028DAA8  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 8028DAAC  28 00 00 00 */	cmplwi r0, 0
/* 8028DAB0  40 82 00 34 */	bne lbl_8028DAE4
/* 8028DAB4  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 8028DAB8  28 00 00 00 */	cmplwi r0, 0
/* 8028DABC  40 82 00 0C */	bne lbl_8028DAC8
/* 8028DAC0  38 01 00 18 */	addi r0, r1, 0x18
/* 8028DAC4  48 00 00 18 */	b lbl_8028DADC
lbl_8028DAC8:
/* 8028DAC8  38 7E 00 AC */	addi r3, r30, 0xac
/* 8028DACC  38 81 00 18 */	addi r4, r1, 0x18
/* 8028DAD0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8028DAD4  48 0B 92 99 */	bl PSMTXMultVec
/* 8028DAD8  38 01 00 0C */	addi r0, r1, 0xc
lbl_8028DADC:
/* 8028DADC  7C 03 03 78 */	mr r3, r0
/* 8028DAE0  48 00 00 50 */	b lbl_8028DB30
lbl_8028DAE4:
/* 8028DAE4  38 61 00 24 */	addi r3, r1, 0x24
/* 8028DAE8  38 81 00 18 */	addi r4, r1, 0x18
/* 8028DAEC  80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 8028DAF0  80 DF 01 40 */	lwz r6, 0x140(r31)
/* 8028DAF4  4B FF C7 9D */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 8028DAF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028DAFC  40 82 00 0C */	bne lbl_8028DB08
/* 8028DB00  38 00 00 00 */	li r0, 0
/* 8028DB04  48 00 00 20 */	b lbl_8028DB24
lbl_8028DB08:
/* 8028DB08  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8028DB0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028DB10  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8028DB14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028DB18  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8028DB1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8028DB20  38 00 00 01 */	li r0, 1
lbl_8028DB24:
/* 8028DB24  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028DB28  41 82 00 E0 */	beq lbl_8028DC08
/* 8028DB2C  38 61 00 0C */	addi r3, r1, 0xc
lbl_8028DB30:
/* 8028DB30  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 8028DB34  C0 03 00 08 */	lfs f0, 8(r3)
/* 8028DB38  F0 3F 01 30 */	psq_st f1, 304(r31), 0, 0 /* qr0 */
/* 8028DB3C  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 8028DB40  88 1F 01 1D */	lbz r0, 0x11d(r31)
/* 8028DB44  28 00 00 00 */	cmplwi r0, 0
/* 8028DB48  41 82 00 4C */	beq lbl_8028DB94
/* 8028DB4C  88 1F 01 20 */	lbz r0, 0x120(r31)
/* 8028DB50  2C 00 00 02 */	cmpwi r0, 2
/* 8028DB54  41 82 00 14 */	beq lbl_8028DB68
/* 8028DB58  40 80 00 3C */	bge lbl_8028DB94
/* 8028DB5C  2C 00 00 01 */	cmpwi r0, 1
/* 8028DB60  40 80 00 2C */	bge lbl_8028DB8C
/* 8028DB64  48 00 00 30 */	b lbl_8028DB94
lbl_8028DB68:
/* 8028DB68  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 8028DB6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028DB70  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8028DB74  90 01 00 08 */	stw r0, 8(r1)
/* 8028DB78  38 81 00 08 */	addi r4, r1, 8
/* 8028DB7C  38 BF 01 18 */	addi r5, r31, 0x118
/* 8028DB80  80 DF 01 2C */	lwz r6, 0x12c(r31)
/* 8028DB84  48 01 54 69 */	bl func_802A2FEC
/* 8028DB88  48 00 00 0C */	b lbl_8028DB94
lbl_8028DB8C:
/* 8028DB8C  38 00 00 02 */	li r0, 2
/* 8028DB90  98 1F 01 20 */	stb r0, 0x120(r31)
lbl_8028DB94:
/* 8028DB94  88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 8028DB98  28 00 00 00 */	cmplwi r0, 0
/* 8028DB9C  41 82 00 30 */	beq lbl_8028DBCC
/* 8028DBA0  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 8028DBA4  3C 03 00 01 */	addis r0, r3, 1
/* 8028DBA8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8028DBAC  41 82 00 20 */	beq lbl_8028DBCC
/* 8028DBB0  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 8028DBB4  28 00 00 00 */	cmplwi r0, 0
/* 8028DBB8  40 82 00 14 */	bne lbl_8028DBCC
/* 8028DBBC  7F E3 FB 78 */	mr r3, r31
/* 8028DBC0  48 00 03 45 */	bl prepareSound___Q215JStudio_JAudio214TAdaptor_soundFv
/* 8028DBC4  7F E3 FB 78 */	mr r3, r31
/* 8028DBC8  48 00 03 DD */	bl beginSound_fadeIn___Q215JStudio_JAudio214TAdaptor_soundFv
lbl_8028DBCC:
/* 8028DBCC  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 8028DBD0  28 03 00 00 */	cmplwi r3, 0
/* 8028DBD4  41 82 00 34 */	beq lbl_8028DC08
/* 8028DBD8  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 8028DBDC  28 04 00 00 */	cmplwi r4, 0
/* 8028DBE0  41 82 00 28 */	beq lbl_8028DC08
/* 8028DBE4  80 84 00 08 */	lwz r4, 8(r4)
/* 8028DBE8  28 04 00 00 */	cmplwi r4, 0
/* 8028DBEC  41 82 00 1C */	beq lbl_8028DC08
/* 8028DBF0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8028DBF4  D0 04 00 04 */	stfs f0, 4(r4)
/* 8028DBF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8028DBFC  D0 04 00 08 */	stfs f0, 8(r4)
/* 8028DC00  C0 03 00 08 */	lfs f0, 8(r3)
/* 8028DC04  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_8028DC08:
/* 8028DC08  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028DC0C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8028DC10  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028DC14  7C 08 03 A6 */	mtlr r0
/* 8028DC18  38 21 00 60 */	addi r1, r1, 0x60
/* 8028DC1C  4E 80 00 20 */	blr 
