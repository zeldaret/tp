lbl_8013DB6C:
/* 8013DB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013DB70  7C 08 02 A6 */	mflr r0
/* 8013DB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013DB78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013DB7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013DB80  7C 7E 1B 78 */	mr r30, r3
/* 8013DB84  38 80 01 38 */	li r4, 0x138
/* 8013DB88  4B F8 52 1D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013DB8C  2C 03 00 00 */	cmpwi r3, 0
/* 8013DB90  40 82 00 0C */	bne lbl_8013DB9C
/* 8013DB94  38 60 00 01 */	li r3, 1
/* 8013DB98  48 00 00 AC */	b lbl_8013DC44
lbl_8013DB9C:
/* 8013DB9C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013DBA0  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 8013DBA4  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8013DBA8  7F C3 F3 78 */	mr r3, r30
/* 8013DBAC  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 8013DBB0  38 80 00 00 */	li r4, 0
/* 8013DBB4  4B F7 DB BD */	bl setSpecialGravity__9daAlink_cFffi
/* 8013DBB8  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 8013DBBC  28 00 00 2C */	cmplwi r0, 0x2c
/* 8013DBC0  40 82 00 14 */	bne lbl_8013DBD4
/* 8013DBC4  38 00 00 01 */	li r0, 1
/* 8013DBC8  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013DBCC  3B E0 00 85 */	li r31, 0x85
/* 8013DBD0  48 00 00 30 */	b lbl_8013DC00
lbl_8013DBD4:
/* 8013DBD4  38 00 00 00 */	li r0, 0
/* 8013DBD8  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013DBDC  3C 60 80 14 */	lis r3, daAlink_searchEnemyCargo__FP10fopAc_ac_cPv@ha /* 0x8013DB58@ha */
/* 8013DBE0  38 63 DB 58 */	addi r3, r3, daAlink_searchEnemyCargo__FP10fopAc_ac_cPv@l /* 0x8013DB58@l */
/* 8013DBE4  38 80 00 00 */	li r4, 0
/* 8013DBE8  4B ED BC 11 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8013DBEC  7C 64 1B 79 */	or. r4, r3, r3
/* 8013DBF0  41 82 00 0C */	beq lbl_8013DBFC
/* 8013DBF4  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013DBF8  48 02 10 C1 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_8013DBFC:
/* 8013DBFC  3B E0 00 86 */	li r31, 0x86
lbl_8013DC00:
/* 8013DC00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013DC04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013DC08  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8013DC0C  4B F0 AC 21 */	bl checkStartDemo__16dEvent_manager_cFv
/* 8013DC10  2C 03 00 00 */	cmpwi r3, 0
/* 8013DC14  40 82 00 20 */	bne lbl_8013DC34
/* 8013DC18  7F C3 F3 78 */	mr r3, r30
/* 8013DC1C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AE@ha */
/* 8013DC20  38 84 00 AE */	addi r4, r4, 0x00AE /* 0x000100AE@l */
/* 8013DC24  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013DC28  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013DC2C  7D 89 03 A6 */	mtctr r12
/* 8013DC30  4E 80 04 21 */	bctrl 
lbl_8013DC34:
/* 8013DC34  7F C3 F3 78 */	mr r3, r30
/* 8013DC38  7F E4 FB 78 */	mr r4, r31
/* 8013DC3C  4B FE BA 3D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013DC40  38 60 00 01 */	li r3, 1
lbl_8013DC44:
/* 8013DC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013DC48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013DC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013DC50  7C 08 03 A6 */	mtlr r0
/* 8013DC54  38 21 00 10 */	addi r1, r1, 0x10
/* 8013DC58  4E 80 00 20 */	blr 
