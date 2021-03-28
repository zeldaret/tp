lbl_80A8DEE0:
/* 80A8DEE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A8DEE4  7C 08 02 A6 */	mflr r0
/* 80A8DEE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A8DEEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A8DEF0  4B 8D 42 EC */	b _savegpr_29
/* 80A8DEF4  7C 7F 1B 78 */	mr r31, r3
/* 80A8DEF8  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8DEFC  3B C4 24 1C */	addi r30, r4, lit_3990@l
/* 80A8DF00  3B A0 00 00 */	li r29, 0
/* 80A8DF04  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8DF08  2C 00 00 01 */	cmpwi r0, 1
/* 80A8DF0C  41 82 00 60 */	beq lbl_80A8DF6C
/* 80A8DF10  40 80 01 00 */	bge lbl_80A8E010
/* 80A8DF14  2C 00 00 00 */	cmpwi r0, 0
/* 80A8DF18  40 80 00 08 */	bge lbl_80A8DF20
/* 80A8DF1C  48 00 00 F4 */	b lbl_80A8E010
lbl_80A8DF20:
/* 80A8DF20  38 80 00 14 */	li r4, 0x14
/* 80A8DF24  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80A8DF28  38 A0 00 02 */	li r5, 2
/* 80A8DF2C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8DF30  4B FF AD E5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8DF34  A8 7F 06 46 */	lha r3, 0x646(r31)
/* 80A8DF38  38 03 00 01 */	addi r0, r3, 1
/* 80A8DF3C  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80A8DF40  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80A8DF44  4B 7D 9A 48 */	b cM_rndFX__Ff
/* 80A8DF48  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A8DF4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8DF50  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 80A8DF54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8DF58  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A8DF5C  38 00 00 32 */	li r0, 0x32
/* 80A8DF60  B0 1F 06 4E */	sth r0, 0x64e(r31)
/* 80A8DF64  7F E3 FB 78 */	mr r3, r31
/* 80A8DF68  4B FF F8 5D */	bl search_ground_1__FP12npc_ne_class
lbl_80A8DF6C:
/* 80A8DF6C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A8DF70  38 63 00 0C */	addi r3, r3, 0xc
/* 80A8DF74  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80A8DF78  4B 89 A4 B4 */	b checkPass__12J3DFrameCtrlFf
/* 80A8DF7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A8DF80  40 82 00 1C */	bne lbl_80A8DF9C
/* 80A8DF84  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A8DF88  38 63 00 0C */	addi r3, r3, 0xc
/* 80A8DF8C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80A8DF90  4B 89 A4 9C */	b checkPass__12J3DFrameCtrlFf
/* 80A8DF94  2C 03 00 00 */	cmpwi r3, 0
/* 80A8DF98  41 82 00 30 */	beq lbl_80A8DFC8
lbl_80A8DF9C:
/* 80A8DF9C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060002@ha */
/* 80A8DFA0  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00060002@l */
/* 80A8DFA4  90 01 00 08 */	stw r0, 8(r1)
/* 80A8DFA8  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80A8DFAC  38 81 00 08 */	addi r4, r1, 8
/* 80A8DFB0  38 A0 00 00 */	li r5, 0
/* 80A8DFB4  38 C0 FF FF */	li r6, -1
/* 80A8DFB8  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80A8DFBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8DFC0  7D 89 03 A6 */	mtctr r12
/* 80A8DFC4  4E 80 04 21 */	bctrl 
lbl_80A8DFC8:
/* 80A8DFC8  3B A0 01 00 */	li r29, 0x100
/* 80A8DFCC  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 80A8DFD0  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80A8DFD4  40 82 00 0C */	bne lbl_80A8DFE0
/* 80A8DFD8  7F E3 FB 78 */	mr r3, r31
/* 80A8DFDC  4B FF F7 E9 */	bl search_ground_1__FP12npc_ne_class
lbl_80A8DFE0:
/* 80A8DFE0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8DFE4  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 80A8DFE8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A8DFEC  4B 7D 8B 48 */	b __mi__4cXyzCFRC3Vec
/* 80A8DFF0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80A8DFF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A8DFF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8DFFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8E000  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80A8E004  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A8E008  4B 7D 96 6C */	b cM_atan2s__Fff
/* 80A8E00C  B0 7F 05 D0 */	sth r3, 0x5d0(r31)
lbl_80A8E010:
/* 80A8E010  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80A8E014  3C 80 80 A9 */	lis r4, l_HIO@ha
/* 80A8E018  38 84 2A D4 */	addi r4, r4, l_HIO@l
/* 80A8E01C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A8E020  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8E024  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 80A8E028  4B 7E 1A 14 */	b cLib_addCalc2__FPffff
/* 80A8E02C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80A8E030  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 80A8E034  38 A0 00 20 */	li r5, 0x20
/* 80A8E038  7F A6 EB 78 */	mr r6, r29
/* 80A8E03C  4B 7E 25 CC */	b cLib_addCalcAngleS2__FPssss
/* 80A8E040  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8E044  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A8E048  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A8E04C  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80A8E050  C0 5F 06 BC */	lfs f2, 0x6bc(r31)
/* 80A8E054  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80A8E058  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 80A8E05C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8E060  EC 22 00 28 */	fsubs f1, f2, f0
/* 80A8E064  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8E068  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80A8E06C  4B 7E 19 D0 */	b cLib_addCalc2__FPffff
/* 80A8E070  A8 1F 06 4E */	lha r0, 0x64e(r31)
/* 80A8E074  2C 00 00 00 */	cmpwi r0, 0
/* 80A8E078  40 82 00 54 */	bne lbl_80A8E0CC
/* 80A8E07C  80 1F 07 70 */	lwz r0, 0x770(r31)
/* 80A8E080  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8E084  41 82 00 48 */	beq lbl_80A8E0CC
/* 80A8E088  7F E3 FB 78 */	mr r3, r31
/* 80A8E08C  4B FF F5 7D */	bl wall_angle_get__FP12npc_ne_class
/* 80A8E090  7C 64 1B 78 */	mr r4, r3
/* 80A8E094  7C 80 07 34 */	extsh r0, r4
/* 80A8E098  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E09C  41 82 00 30 */	beq lbl_80A8E0CC
/* 80A8E0A0  7F E3 FB 78 */	mr r3, r31
/* 80A8E0A4  4B FF FC B5 */	bl search_ground_2__FP12npc_ne_classs
/* 80A8E0A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A8E0AC  41 82 00 20 */	beq lbl_80A8E0CC
/* 80A8E0B0  38 00 00 0D */	li r0, 0xd
/* 80A8E0B4  B0 1F 06 42 */	sth r0, 0x642(r31)
/* 80A8E0B8  38 00 00 00 */	li r0, 0
/* 80A8E0BC  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80A8E0C0  7F E3 FB 78 */	mr r3, r31
/* 80A8E0C4  4B FF F5 45 */	bl wall_angle_get__FP12npc_ne_class
/* 80A8E0C8  B0 7F 05 D0 */	sth r3, 0x5d0(r31)
lbl_80A8E0CC:
/* 80A8E0CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A8E0D0  4B 8D 41 58 */	b _restgpr_29
/* 80A8E0D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A8E0D8  7C 08 03 A6 */	mtlr r0
/* 80A8E0DC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A8E0E0  4E 80 00 20 */	blr 
