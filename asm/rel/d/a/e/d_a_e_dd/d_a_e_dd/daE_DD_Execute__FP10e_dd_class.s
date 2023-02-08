lbl_806A5A6C:
/* 806A5A6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A5A70  7C 08 02 A6 */	mflr r0
/* 806A5A74  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A5A78  39 61 00 40 */	addi r11, r1, 0x40
/* 806A5A7C  4B CB C7 59 */	bl _savegpr_27
/* 806A5A80  7C 7F 1B 78 */	mr r31, r3
/* 806A5A84  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A5A88  3B A3 71 C4 */	addi r29, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A5A8C  A8 7F 06 88 */	lha r3, 0x688(r31)
/* 806A5A90  38 03 00 01 */	addi r0, r3, 1
/* 806A5A94  B0 1F 06 88 */	sth r0, 0x688(r31)
/* 806A5A98  38 60 00 00 */	li r3, 0
/* 806A5A9C  38 00 00 04 */	li r0, 4
/* 806A5AA0  7C 09 03 A6 */	mtctr r0
lbl_806A5AA4:
/* 806A5AA4  38 A3 06 AA */	addi r5, r3, 0x6aa
/* 806A5AA8  7C 9F 2A AE */	lhax r4, r31, r5
/* 806A5AAC  2C 04 00 00 */	cmpwi r4, 0
/* 806A5AB0  41 82 00 0C */	beq lbl_806A5ABC
/* 806A5AB4  38 04 FF FF */	addi r0, r4, -1
/* 806A5AB8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_806A5ABC:
/* 806A5ABC  38 63 00 02 */	addi r3, r3, 2
/* 806A5AC0  42 00 FF E4 */	bdnz lbl_806A5AA4
/* 806A5AC4  A8 7F 06 B2 */	lha r3, 0x6b2(r31)
/* 806A5AC8  2C 03 00 00 */	cmpwi r3, 0
/* 806A5ACC  41 82 00 0C */	beq lbl_806A5AD8
/* 806A5AD0  38 03 FF FF */	addi r0, r3, -1
/* 806A5AD4  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
lbl_806A5AD8:
/* 806A5AD8  88 7F 06 D3 */	lbz r3, 0x6d3(r31)
/* 806A5ADC  7C 60 07 75 */	extsb. r0, r3
/* 806A5AE0  41 82 00 0C */	beq lbl_806A5AEC
/* 806A5AE4  38 03 FF FF */	addi r0, r3, -1
/* 806A5AE8  98 1F 06 D3 */	stb r0, 0x6d3(r31)
lbl_806A5AEC:
/* 806A5AEC  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 806A5AF0  60 00 00 40 */	ori r0, r0, 0x40
/* 806A5AF4  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 806A5AF8  7F E3 FB 78 */	mr r3, r31
/* 806A5AFC  4B FF F2 9D */	bl action__FP10e_dd_class
/* 806A5B00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B08  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806A5B0C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806A5B10  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806A5B14  4B CA 0D D5 */	bl PSMTXTrans
/* 806A5B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B20  A8 9F 06 D8 */	lha r4, 0x6d8(r31)
/* 806A5B24  4B 96 69 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A5B28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B30  A8 9F 06 D6 */	lha r4, 0x6d6(r31)
/* 806A5B34  4B 96 68 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A5B38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B40  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806A5B44  4B 96 68 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A5B48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B50  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806A5B54  4B 96 68 49 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A5B58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B60  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806A5B64  4B 96 69 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806A5B68  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A5B6C  3B C3 74 C8 */	addi r30, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A5B70  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806A5B74  FC 40 08 90 */	fmr f2, f1
/* 806A5B78  FC 60 08 90 */	fmr f3, f1
/* 806A5B7C  4B 96 72 BD */	bl scaleM__14mDoMtx_stack_cFfff
/* 806A5B80  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5B84  83 83 00 04 */	lwz r28, 4(r3)
/* 806A5B88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A5B8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A5B90  38 9C 00 24 */	addi r4, r28, 0x24
/* 806A5B94  4B CA 09 1D */	bl PSMTXCopy
/* 806A5B98  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 806A5B9C  54 00 10 3A */	slwi r0, r0, 2
/* 806A5BA0  7C 7F 02 14 */	add r3, r31, r0
/* 806A5BA4  80 63 06 68 */	lwz r3, 0x668(r3)
/* 806A5BA8  4B 96 78 81 */	bl play__14mDoExt_baseAnmFv
/* 806A5BAC  80 7F 06 6C */	lwz r3, 0x66c(r31)
/* 806A5BB0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806A5BB4  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 806A5BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5BBC  4C 41 13 82 */	cror 2, 1, 2
/* 806A5BC0  40 82 00 08 */	bne lbl_806A5BC8
/* 806A5BC4  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_806A5BC8:
/* 806A5BC8  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 806A5BCC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806A5BD0  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 806A5BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5BD8  4C 41 13 82 */	cror 2, 1, 2
/* 806A5BDC  40 82 00 08 */	bne lbl_806A5BE4
/* 806A5BE0  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_806A5BE4:
/* 806A5BE4  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 806A5BE8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806A5BEC  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 806A5BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5BF4  4C 41 13 82 */	cror 2, 1, 2
/* 806A5BF8  40 82 00 08 */	bne lbl_806A5C00
/* 806A5BFC  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_806A5C00:
/* 806A5C00  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A5C04  7C 03 07 74 */	extsb r3, r0
/* 806A5C08  4B 98 74 65 */	bl dComIfGp_getReverb__Fi
/* 806A5C0C  7C 65 1B 78 */	mr r5, r3
/* 806A5C10  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5C14  38 80 00 00 */	li r4, 0
/* 806A5C18  4B 96 B4 99 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806A5C1C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5C20  4B 96 B5 CD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806A5C24  7F E3 FB 78 */	mr r3, r31
/* 806A5C28  4B FF F6 A5 */	bl anm_se_set__FP10e_dd_class
/* 806A5C2C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A5C30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A5C34  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A5C38  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A5C3C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A5C40  80 84 00 00 */	lwz r4, 0(r4)
/* 806A5C44  4B CA 08 6D */	bl PSMTXCopy
/* 806A5C48  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 806A5C4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5C50  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5C54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5C58  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 806A5C5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5C60  38 61 00 14 */	addi r3, r1, 0x14
/* 806A5C64  38 9F 0E 40 */	addi r4, r31, 0xe40
/* 806A5C68  4B BC B2 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A5C6C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5C70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5C74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5C78  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5C7C  38 61 00 14 */	addi r3, r1, 0x14
/* 806A5C80  38 81 00 08 */	addi r4, r1, 8
/* 806A5C84  4B BC B2 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A5C88  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 806A5C8C  38 81 00 08 */	addi r4, r1, 8
/* 806A5C90  4B BC 99 B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806A5C94  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 806A5C98  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 806A5C9C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806A5CA0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A5CA4  4B BC 9A 65 */	bl SetR__8cM3dGSphFf
/* 806A5CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A5CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A5CB0  3B 63 23 3C */	addi r27, r3, 0x233c
/* 806A5CB4  7F 63 DB 78 */	mr r3, r27
/* 806A5CB8  38 9F 0A 74 */	addi r4, r31, 0xa74
/* 806A5CBC  4B BB EE ED */	bl Set__4cCcSFP8cCcD_Obj
/* 806A5CC0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A5CC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A5CC8  38 63 00 60 */	addi r3, r3, 0x60
/* 806A5CCC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A5CD0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A5CD4  80 84 00 00 */	lwz r4, 0(r4)
/* 806A5CD8  4B CA 07 D9 */	bl PSMTXCopy
/* 806A5CDC  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 806A5CE0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5CE4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5CE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5CEC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5CF0  38 61 00 14 */	addi r3, r1, 0x14
/* 806A5CF4  38 81 00 08 */	addi r4, r1, 8
/* 806A5CF8  4B BC B1 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A5CFC  38 7F 0C D0 */	addi r3, r31, 0xcd0
/* 806A5D00  38 81 00 08 */	addi r4, r1, 8
/* 806A5D04  4B BC 99 45 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806A5D08  38 7F 0C D0 */	addi r3, r31, 0xcd0
/* 806A5D0C  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 806A5D10  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806A5D14  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A5D18  4B BC 99 F1 */	bl SetR__8cM3dGSphFf
/* 806A5D1C  7F 63 DB 78 */	mr r3, r27
/* 806A5D20  38 9F 0B AC */	addi r4, r31, 0xbac
/* 806A5D24  4B BB EE 85 */	bl Set__4cCcSFP8cCcD_Obj
/* 806A5D28  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A5D2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A5D30  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 806A5D34  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A5D38  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A5D3C  80 84 00 00 */	lwz r4, 0(r4)
/* 806A5D40  4B CA 07 71 */	bl PSMTXCopy
/* 806A5D44  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5D48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5D4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5D50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5D54  38 61 00 14 */	addi r3, r1, 0x14
/* 806A5D58  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 806A5D5C  4B BC B1 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A5D60  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 806A5D64  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 806A5D68  4B BC 98 E1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806A5D6C  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 806A5D70  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 806A5D74  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806A5D78  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A5D7C  4B BC 99 8D */	bl SetR__8cM3dGSphFf
/* 806A5D80  7F 63 DB 78 */	mr r3, r27
/* 806A5D84  38 9F 0C E4 */	addi r4, r31, 0xce4
/* 806A5D88  4B BB EE 21 */	bl Set__4cCcSFP8cCcD_Obj
/* 806A5D8C  A8 1F 06 B2 */	lha r0, 0x6b2(r31)
/* 806A5D90  2C 00 00 00 */	cmpwi r0, 0
/* 806A5D94  41 82 00 2C */	beq lbl_806A5DC0
/* 806A5D98  80 1F 0A 8C */	lwz r0, 0xa8c(r31)
/* 806A5D9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A5DA0  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 806A5DA4  80 1F 0B C4 */	lwz r0, 0xbc4(r31)
/* 806A5DA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A5DAC  90 1F 0B C4 */	stw r0, 0xbc4(r31)
/* 806A5DB0  80 1F 0C FC */	lwz r0, 0xcfc(r31)
/* 806A5DB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A5DB8  90 1F 0C FC */	stw r0, 0xcfc(r31)
/* 806A5DBC  48 00 00 28 */	b lbl_806A5DE4
lbl_806A5DC0:
/* 806A5DC0  80 1F 0A 8C */	lwz r0, 0xa8c(r31)
/* 806A5DC4  60 00 00 01 */	ori r0, r0, 1
/* 806A5DC8  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 806A5DCC  80 1F 0B C4 */	lwz r0, 0xbc4(r31)
/* 806A5DD0  60 00 00 01 */	ori r0, r0, 1
/* 806A5DD4  90 1F 0B C4 */	stw r0, 0xbc4(r31)
/* 806A5DD8  80 1F 0C FC */	lwz r0, 0xcfc(r31)
/* 806A5DDC  60 00 00 01 */	ori r0, r0, 1
/* 806A5DE0  90 1F 0C FC */	stw r0, 0xcfc(r31)
lbl_806A5DE4:
/* 806A5DE4  88 1F 0E 58 */	lbz r0, 0xe58(r31)
/* 806A5DE8  7C 00 07 75 */	extsb. r0, r0
/* 806A5DEC  41 82 01 10 */	beq lbl_806A5EFC
/* 806A5DF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A5DF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A5DF8  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5DFC  A8 9F 06 D8 */	lha r4, 0x6d8(r31)
/* 806A5E00  4B 96 65 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 806A5E04  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A5E08  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A5E0C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5E10  A8 9F 06 D6 */	lha r4, 0x6d6(r31)
/* 806A5E14  4B 96 65 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A5E18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A5E1C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A5E20  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5E24  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806A5E28  A8 1F 06 B8 */	lha r0, 0x6b8(r31)
/* 806A5E2C  7C 04 02 14 */	add r0, r4, r0
/* 806A5E30  7C 04 07 34 */	extsh r4, r0
/* 806A5E34  4B 96 66 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A5E38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A5E3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A5E40  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5E44  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806A5E48  4B 96 65 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 806A5E4C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5E50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5E54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5E58  C0 1F 0E 5C */	lfs f0, 0xe5c(r31)
/* 806A5E5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5E60  38 61 00 14 */	addi r3, r1, 0x14
/* 806A5E64  38 81 00 08 */	addi r4, r1, 8
/* 806A5E68  4B BC B0 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A5E6C  38 61 00 08 */	addi r3, r1, 8
/* 806A5E70  38 9F 05 38 */	addi r4, r31, 0x538
/* 806A5E74  7C 65 1B 78 */	mr r5, r3
/* 806A5E78  4B CA 12 19 */	bl PSVECAdd
/* 806A5E7C  88 1F 0E 59 */	lbz r0, 0xe59(r31)
/* 806A5E80  7C 00 07 75 */	extsb. r0, r0
/* 806A5E84  40 82 00 1C */	bne lbl_806A5EA0
/* 806A5E88  38 00 00 01 */	li r0, 1
/* 806A5E8C  98 1F 0E 59 */	stb r0, 0xe59(r31)
/* 806A5E90  38 7F 09 3C */	addi r3, r31, 0x93c
/* 806A5E94  38 81 00 08 */	addi r4, r1, 8
/* 806A5E98  4B 9D EB E1 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 806A5E9C  48 00 00 10 */	b lbl_806A5EAC
lbl_806A5EA0:
/* 806A5EA0  38 7F 09 3C */	addi r3, r31, 0x93c
/* 806A5EA4  38 81 00 08 */	addi r4, r1, 8
/* 806A5EA8  4B 9D EC 1D */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_806A5EAC:
/* 806A5EAC  38 7F 0A 60 */	addi r3, r31, 0xa60
/* 806A5EB0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 806A5EB4  4B BC 98 55 */	bl SetR__8cM3dGSphFf
/* 806A5EB8  7F 63 DB 78 */	mr r3, r27
/* 806A5EBC  38 9F 09 3C */	addi r4, r31, 0x93c
/* 806A5EC0  4B BB EC E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 806A5EC4  C0 3F 0E 5C */	lfs f1, 0xe5c(r31)
/* 806A5EC8  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 806A5ECC  EC 01 00 2A */	fadds f0, f1, f0
/* 806A5ED0  D0 1F 0E 5C */	stfs f0, 0xe5c(r31)
/* 806A5ED4  C0 3F 0E 5C */	lfs f1, 0xe5c(r31)
/* 806A5ED8  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 806A5EDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5EE0  4C 41 13 82 */	cror 2, 1, 2
/* 806A5EE4  40 82 00 0C */	bne lbl_806A5EF0
/* 806A5EE8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5EEC  D0 1F 0E 5C */	stfs f0, 0xe5c(r31)
lbl_806A5EF0:
/* 806A5EF0  38 00 00 00 */	li r0, 0
/* 806A5EF4  98 1F 0E 58 */	stb r0, 0xe58(r31)
/* 806A5EF8  48 00 00 14 */	b lbl_806A5F0C
lbl_806A5EFC:
/* 806A5EFC  38 00 00 00 */	li r0, 0
/* 806A5F00  98 1F 0E 59 */	stb r0, 0xe59(r31)
/* 806A5F04  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5F08  D0 1F 0E 5C */	stfs f0, 0xe5c(r31)
lbl_806A5F0C:
/* 806A5F0C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 806A5F10  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 806A5F14  7C 03 00 50 */	subf r0, r3, r0
/* 806A5F18  7C 00 07 34 */	extsh r0, r0
/* 806A5F1C  38 60 00 00 */	li r3, 0
/* 806A5F20  2C 00 40 00 */	cmpwi r0, 0x4000
/* 806A5F24  40 80 00 28 */	bge lbl_806A5F4C
/* 806A5F28  2C 00 C0 00 */	cmpwi r0, -16384
/* 806A5F2C  40 81 00 20 */	ble lbl_806A5F4C
/* 806A5F30  C0 1F 0E 40 */	lfs f0, 0xe40(r31)
/* 806A5F34  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806A5F38  C0 1F 0E 44 */	lfs f0, 0xe44(r31)
/* 806A5F3C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806A5F40  C0 1F 0E 48 */	lfs f0, 0xe48(r31)
/* 806A5F44  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806A5F48  48 00 00 20 */	b lbl_806A5F68
lbl_806A5F4C:
/* 806A5F4C  C0 1F 0E 4C */	lfs f0, 0xe4c(r31)
/* 806A5F50  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806A5F54  C0 1F 0E 50 */	lfs f0, 0xe50(r31)
/* 806A5F58  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806A5F5C  C0 1F 0E 54 */	lfs f0, 0xe54(r31)
/* 806A5F60  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806A5F64  38 60 00 01 */	li r3, 1
lbl_806A5F68:
/* 806A5F68  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806A5F6C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806A5F70  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806A5F74  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806A5F78  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806A5F7C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806A5F80  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 806A5F84  C0 3D 00 D4 */	lfs f1, 0xd4(r29)
/* 806A5F88  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806A5F8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A5F90  EC 02 00 2A */	fadds f0, f2, f0
/* 806A5F94  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806A5F98  38 80 00 00 */	li r4, 0
/* 806A5F9C  C0 3F 06 A4 */	lfs f1, 0x6a4(r31)
/* 806A5FA0  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 806A5FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5FA8  40 81 00 18 */	ble lbl_806A5FC0
/* 806A5FAC  88 1F 0E 5A */	lbz r0, 0xe5a(r31)
/* 806A5FB0  7C 00 07 75 */	extsb. r0, r0
/* 806A5FB4  40 82 00 30 */	bne lbl_806A5FE4
/* 806A5FB8  38 80 00 01 */	li r4, 1
/* 806A5FBC  48 00 00 28 */	b lbl_806A5FE4
lbl_806A5FC0:
/* 806A5FC0  7C 60 07 75 */	extsb. r0, r3
/* 806A5FC4  40 82 00 20 */	bne lbl_806A5FE4
/* 806A5FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A5FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A5FD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806A5FD4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 806A5FD8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806A5FDC  41 82 00 08 */	beq lbl_806A5FE4
/* 806A5FE0  38 80 00 01 */	li r4, 1
lbl_806A5FE4:
/* 806A5FE4  7C 80 07 75 */	extsb. r0, r4
/* 806A5FE8  41 82 00 2C */	beq lbl_806A6014
/* 806A5FEC  80 1F 0B 10 */	lwz r0, 0xb10(r31)
/* 806A5FF0  60 00 00 01 */	ori r0, r0, 1
/* 806A5FF4  90 1F 0B 10 */	stw r0, 0xb10(r31)
/* 806A5FF8  38 60 00 02 */	li r3, 2
/* 806A5FFC  98 7F 0B 2E */	stb r3, 0xb2e(r31)
/* 806A6000  80 1F 0C 48 */	lwz r0, 0xc48(r31)
/* 806A6004  60 00 00 01 */	ori r0, r0, 1
/* 806A6008  90 1F 0C 48 */	stw r0, 0xc48(r31)
/* 806A600C  98 7F 0C 66 */	stb r3, 0xc66(r31)
/* 806A6010  48 00 00 28 */	b lbl_806A6038
lbl_806A6014:
/* 806A6014  80 1F 0B 10 */	lwz r0, 0xb10(r31)
/* 806A6018  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A601C  90 1F 0B 10 */	stw r0, 0xb10(r31)
/* 806A6020  38 60 00 00 */	li r3, 0
/* 806A6024  98 7F 0B 2E */	stb r3, 0xb2e(r31)
/* 806A6028  80 1F 0C 48 */	lwz r0, 0xc48(r31)
/* 806A602C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A6030  90 1F 0C 48 */	stw r0, 0xc48(r31)
/* 806A6034  98 7F 0C 66 */	stb r3, 0xc66(r31)
lbl_806A6038:
/* 806A6038  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 806A603C  28 00 00 00 */	cmplwi r0, 0
/* 806A6040  41 82 00 84 */	beq lbl_806A60C4
/* 806A6044  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A6048  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A604C  38 63 00 60 */	addi r3, r3, 0x60
/* 806A6050  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A6054  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A6058  80 84 00 00 */	lwz r4, 0(r4)
/* 806A605C  4B CA 04 55 */	bl PSMTXCopy
/* 806A6060  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 806A6064  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A6068  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A606C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A6070  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A6074  38 61 00 14 */	addi r3, r1, 0x14
/* 806A6078  38 81 00 08 */	addi r4, r1, 8
/* 806A607C  4B BC AE 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A6080  7F E3 FB 78 */	mr r3, r31
/* 806A6084  38 81 00 08 */	addi r4, r1, 8
/* 806A6088  38 A0 00 0D */	li r5, 0xd
/* 806A608C  38 C0 00 00 */	li r6, 0
/* 806A6090  38 E0 00 20 */	li r7, 0x20
/* 806A6094  4B 97 6A 45 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806A6098  7F E3 FB 78 */	mr r3, r31
/* 806A609C  4B 97 3B E1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806A60A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806A60A4  54 04 46 3E */	srwi r4, r0, 0x18
/* 806A60A8  2C 04 00 FF */	cmpwi r4, 0xff
/* 806A60AC  41 82 00 18 */	beq lbl_806A60C4
/* 806A60B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A60B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A60B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A60BC  7C 05 07 74 */	extsb r5, r0
/* 806A60C0  4B 98 F1 41 */	bl onSwitch__10dSv_info_cFii
lbl_806A60C4:
/* 806A60C4  38 60 00 01 */	li r3, 1
/* 806A60C8  39 61 00 40 */	addi r11, r1, 0x40
/* 806A60CC  4B CB C1 55 */	bl _restgpr_27
/* 806A60D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A60D4  7C 08 03 A6 */	mtlr r0
/* 806A60D8  38 21 00 40 */	addi r1, r1, 0x40
/* 806A60DC  4E 80 00 20 */	blr 
