lbl_80A4DE34:
/* 80A4DE34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A4DE38  7C 08 02 A6 */	mflr r0
/* 80A4DE3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A4DE40  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4DE44  4B 91 43 95 */	bl _savegpr_28
/* 80A4DE48  7C 7E 1B 78 */	mr r30, r3
/* 80A4DE4C  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4DE50  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4DE54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4DE58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4DE5C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A4DE60  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A4DE64  28 00 00 03 */	cmplwi r0, 3
/* 80A4DE68  41 81 00 18 */	bgt lbl_80A4DE80
/* 80A4DE6C  38 63 09 58 */	addi r3, r3, 0x958
/* 80A4DE70  38 80 00 07 */	li r4, 7
/* 80A4DE74  4B 5E 6A C1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80A4DE78  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DE7C  40 82 01 6C */	bne lbl_80A4DFE8
lbl_80A4DE80:
/* 80A4DE80  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A4DE84  2C 00 00 04 */	cmpwi r0, 4
/* 80A4DE88  40 82 00 14 */	bne lbl_80A4DE9C
/* 80A4DE8C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A4DE90  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80A4DE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DE98  41 80 01 50 */	blt lbl_80A4DFE8
lbl_80A4DE9C:
/* 80A4DE9C  4B FF B1 B9 */	bl checkDoorDemo__Fv
/* 80A4DEA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DEA4  41 82 01 44 */	beq lbl_80A4DFE8
/* 80A4DEA8  38 00 00 64 */	li r0, 0x64
/* 80A4DEAC  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4DEB0  38 60 00 00 */	li r3, 0
/* 80A4DEB4  B0 7E 05 EA */	sth r3, 0x5ea(r30)
/* 80A4DEB8  90 7E 09 04 */	stw r3, 0x904(r30)
/* 80A4DEBC  38 00 00 01 */	li r0, 1
/* 80A4DEC0  98 1E 0A EC */	stb r0, 0xaec(r30)
/* 80A4DEC4  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80A4DEC8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A4DECC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A4DED0  41 82 01 18 */	beq lbl_80A4DFE8
/* 80A4DED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4DED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4DEDC  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 80A4DEE0  4B FF B1 75 */	bl checkDoorDemo__Fv
/* 80A4DEE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DEE8  41 82 00 28 */	beq lbl_80A4DF10
/* 80A4DEEC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4DEF0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4DEF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4DEF8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80A4DEFC  3C 84 00 01 */	addis r4, r4, 1
/* 80A4DF00  38 04 80 00 */	addi r0, r4, -32768
/* 80A4DF04  7C 04 07 34 */	extsh r4, r0
/* 80A4DF08  4B 5B E4 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A4DF0C  48 00 00 3C */	b lbl_80A4DF48
lbl_80A4DF10:
/* 80A4DF10  C0 3C 00 D8 */	lfs f1, 0xd8(r28)
/* 80A4DF14  C0 1C 00 E4 */	lfs f0, 0xe4(r28)
/* 80A4DF18  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A4DF1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A4DF20  C0 5C 00 E0 */	lfs f2, 0xe0(r28)
/* 80A4DF24  C0 1C 00 EC */	lfs f0, 0xec(r28)
/* 80A4DF28  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A4DF2C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80A4DF30  4B 81 97 45 */	bl cM_atan2s__Fff
/* 80A4DF34  7C 64 1B 78 */	mr r4, r3
/* 80A4DF38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4DF3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4DF40  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4DF44  4B 5B E4 99 */	bl mDoMtx_YrotS__FPA4_fs
lbl_80A4DF48:
/* 80A4DF48  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80A4DF4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4DF50  41 82 00 0C */	beq lbl_80A4DF5C
/* 80A4DF54  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A4DF58  48 00 00 08 */	b lbl_80A4DF60
lbl_80A4DF5C:
/* 80A4DF5C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
lbl_80A4DF60:
/* 80A4DF60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A4DF64  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A4DF68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A4DF6C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A4DF70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A4DF74  38 61 00 20 */	addi r3, r1, 0x20
/* 80A4DF78  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4DF7C  4B 82 2F 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A4DF80  38 61 00 08 */	addi r3, r1, 8
/* 80A4DF84  38 9C 00 D8 */	addi r4, r28, 0xd8
/* 80A4DF88  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A4DF8C  4B 81 8B 59 */	bl __pl__4cXyzCFRC3Vec
/* 80A4DF90  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A4DF94  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A4DF98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A4DF9C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A4DFA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A4DFA4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A4DFA8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A4DFAC  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A4DFB0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A4DFB4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A4DFB8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A4DFBC  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A4DFC0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A4DFC4  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A4DFC8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A4DFCC  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A4DFD0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A4DFD4  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A4DFD8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A4DFDC  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A4DFE0  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A4DFE4  98 1E 04 CF */	stb r0, 0x4cf(r30)
lbl_80A4DFE8:
/* 80A4DFE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4DFEC  4B 91 42 39 */	bl _restgpr_28
/* 80A4DFF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4DFF4  7C 08 03 A6 */	mtlr r0
/* 80A4DFF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A4DFFC  4E 80 00 20 */	blr 
