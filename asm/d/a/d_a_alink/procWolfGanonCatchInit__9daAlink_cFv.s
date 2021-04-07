lbl_8013DF30:
/* 8013DF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013DF34  7C 08 02 A6 */	mflr r0
/* 8013DF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013DF3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013DF40  7C 7F 1B 78 */	mr r31, r3
/* 8013DF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013DF48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013DF4C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8013DF50  7F E4 FB 78 */	mr r4, r31
/* 8013DF54  38 A0 00 00 */	li r5, 0
/* 8013DF58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFEF@ha */
/* 8013DF5C  38 C6 FF EF */	addi r6, r6, 0xFFEF /* 0x0000FFEF@l */
/* 8013DF60  4B F0 52 0D */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8013DF64  2C 03 00 00 */	cmpwi r3, 0
/* 8013DF68  40 82 00 0C */	bne lbl_8013DF74
/* 8013DF6C  38 60 00 00 */	li r3, 0
/* 8013DF70  48 00 00 B0 */	b lbl_8013E020
lbl_8013DF74:
/* 8013DF74  38 00 00 05 */	li r0, 5
/* 8013DF78  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8013DF7C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013DF80  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8013DF84  60 00 08 00 */	ori r0, r0, 0x800
/* 8013DF88  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8013DF8C  7F E3 FB 78 */	mr r3, r31
/* 8013DF90  38 80 01 3C */	li r4, 0x13c
/* 8013DF94  4B F8 3F D9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013DF98  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013DF9C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013DFA0  48 02 0D 19 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013DFA4  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013DFA8  88 03 05 8D */	lbz r0, 0x58d(r3)
/* 8013DFAC  60 00 00 02 */	ori r0, r0, 2
/* 8013DFB0  98 03 05 8D */	stb r0, 0x58d(r3)
/* 8013DFB4  7F E3 FB 78 */	mr r3, r31
/* 8013DFB8  38 80 00 8D */	li r4, 0x8d
/* 8013DFBC  4B FE B6 BD */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013DFC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013DFC4  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013DFC8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8013DFCC  48 13 2C 39 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013DFD0  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013DFD4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8013DFD8  3C 63 00 01 */	addis r3, r3, 1
/* 8013DFDC  38 03 80 00 */	addi r0, r3, -32768
/* 8013DFE0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013DFE4  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 8013DFE8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013DFEC  38 00 00 1E */	li r0, 0x1e
/* 8013DFF0  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013DFF4  38 00 00 00 */	li r0, 0
/* 8013DFF8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013DFFC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013E000  7F E3 FB 78 */	mr r3, r31
/* 8013E004  38 80 00 00 */	li r4, 0
/* 8013E008  4B FE 31 B9 */	bl setFootEffectProcType__9daAlink_cFi
/* 8013E00C  38 00 00 60 */	li r0, 0x60
/* 8013E010  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 8013E014  38 00 00 04 */	li r0, 4
/* 8013E018  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8013E01C  38 60 00 01 */	li r3, 1
lbl_8013E020:
/* 8013E020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013E024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013E028  7C 08 03 A6 */	mtlr r0
/* 8013E02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013E030  4E 80 00 20 */	blr 
