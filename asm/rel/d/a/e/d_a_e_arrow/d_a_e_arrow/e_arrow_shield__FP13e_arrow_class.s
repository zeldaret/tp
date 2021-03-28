lbl_8067DB5C:
/* 8067DB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067DB60  7C 08 02 A6 */	mflr r0
/* 8067DB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067DB68  39 61 00 20 */	addi r11, r1, 0x20
/* 8067DB6C  4B CE 46 70 */	b _savegpr_29
/* 8067DB70  7C 67 1B 78 */	mr r7, r3
/* 8067DB74  3C 60 80 68 */	lis r3, lit_1109@ha
/* 8067DB78  3B C3 EB 18 */	addi r30, r3, lit_1109@l
/* 8067DB7C  7C FD 3B 78 */	mr r29, r7
/* 8067DB80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067DB84  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8067DB88  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8067DB8C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067DB90  38 BD 04 E4 */	addi r5, r29, 0x4e4
/* 8067DB94  38 C7 09 D4 */	addi r6, r7, 0x9d4
/* 8067DB98  38 E7 09 C8 */	addi r7, r7, 0x9c8
/* 8067DB9C  4B A5 F1 D8 */	b setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz
/* 8067DBA0  88 1E 00 68 */	lbz r0, 0x68(r30)
/* 8067DBA4  7C 00 07 75 */	extsb. r0, r0
/* 8067DBA8  40 82 00 3C */	bne lbl_8067DBE4
/* 8067DBAC  3C 60 80 68 */	lis r3, lit_4362@ha
/* 8067DBB0  C0 03 E8 8C */	lfs f0, lit_4362@l(r3)
/* 8067DBB4  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8067DBB8  38 7E 00 6C */	addi r3, r30, 0x6c
/* 8067DBBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8067DBC0  3C 80 80 68 */	lis r4, lit_4549@ha
/* 8067DBC4  C0 04 E8 D8 */	lfs f0, lit_4549@l(r4)
/* 8067DBC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8067DBCC  3C 80 80 68 */	lis r4, __dt__4cXyzFv@ha
/* 8067DBD0  38 84 CB 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 8067DBD4  38 BE 00 5C */	addi r5, r30, 0x5c
/* 8067DBD8  4B FF EB 81 */	bl __register_global_object
/* 8067DBDC  38 00 00 01 */	li r0, 1
/* 8067DBE0  98 1E 00 68 */	stb r0, 0x68(r30)
lbl_8067DBE4:
/* 8067DBE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067DBE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067DBEC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8067DBF0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8067DBF4  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8067DBF8  4B CC 8C F0 */	b PSMTXTrans
/* 8067DBFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067DC00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067DC04  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 8067DC08  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 8067DC0C  38 C0 00 00 */	li r6, 0
/* 8067DC10  4B 98 E6 90 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8067DC14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067DC18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067DC1C  38 9E 00 6C */	addi r4, r30, 0x6c
/* 8067DC20  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8067DC24  4B CC 91 48 */	b PSMTXMultVec
/* 8067DC28  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8067DC2C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8067DC30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067DC34  41 82 00 0C */	beq lbl_8067DC40
/* 8067DC38  7F A3 EB 78 */	mr r3, r29
/* 8067DC3C  4B 99 C0 40 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8067DC40:
/* 8067DC40  39 61 00 20 */	addi r11, r1, 0x20
/* 8067DC44  4B CE 45 E4 */	b _restgpr_29
/* 8067DC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067DC4C  7C 08 03 A6 */	mtlr r0
/* 8067DC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8067DC54  4E 80 00 20 */	blr 
