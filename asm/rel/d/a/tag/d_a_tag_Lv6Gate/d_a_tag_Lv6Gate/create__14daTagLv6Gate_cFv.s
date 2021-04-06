lbl_80D4FBD8:
/* 80D4FBD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4FBDC  7C 08 02 A6 */	mflr r0
/* 80D4FBE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4FBE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4FBE8  4B 61 25 F5 */	bl _savegpr_29
/* 80D4FBEC  7C 7F 1B 78 */	mr r31, r3
/* 80D4FBF0  3C 80 80 D5 */	lis r4, l_minRelative@ha /* 0x80D50908@ha */
/* 80D4FBF4  3B C4 09 08 */	addi r30, r4, l_minRelative@l /* 0x80D50908@l */
/* 80D4FBF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4FBFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4FC00  40 82 00 40 */	bne lbl_80D4FC40
/* 80D4FC04  7F E0 FB 79 */	or. r0, r31, r31
/* 80D4FC08  41 82 00 2C */	beq lbl_80D4FC34
/* 80D4FC0C  7C 1D 03 78 */	mr r29, r0
/* 80D4FC10  4B 2C 8F 55 */	bl __ct__10fopAc_ac_cFv
/* 80D4FC14  38 7D 05 78 */	addi r3, r29, 0x578
/* 80D4FC18  3C 80 80 08 */	lis r4, __ct__4dBgWFv@ha /* 0x8007B970@ha */
/* 80D4FC1C  38 84 B9 70 */	addi r4, r4, __ct__4dBgWFv@l /* 0x8007B970@l */
/* 80D4FC20  3C A0 80 D5 */	lis r5, __dt__4dBgWFv@ha /* 0x80D4FE5C@ha */
/* 80D4FC24  38 A5 FE 5C */	addi r5, r5, __dt__4dBgWFv@l /* 0x80D4FE5C@l */
/* 80D4FC28  38 C0 00 C0 */	li r6, 0xc0
/* 80D4FC2C  38 E0 00 02 */	li r7, 2
/* 80D4FC30  4B 61 21 31 */	bl __construct_array
lbl_80D4FC34:
/* 80D4FC34  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4FC38  60 00 00 08 */	ori r0, r0, 8
/* 80D4FC3C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4FC40:
/* 80D4FC40  38 7F 07 58 */	addi r3, r31, 0x758
/* 80D4FC44  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FC48  38 84 09 C8 */	addi r4, r4, l_arcName@l /* 0x80D509C8@l */
/* 80D4FC4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D4FC50  4B 2D D2 6D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D4FC54  7C 7D 1B 78 */	mr r29, r3
/* 80D4FC58  2C 1D 00 04 */	cmpwi r29, 4
/* 80D4FC5C  40 82 01 E4 */	bne lbl_80D4FE40
/* 80D4FC60  7F E3 FB 78 */	mr r3, r31
/* 80D4FC64  3C 80 80 D5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80D4F898@ha */
/* 80D4FC68  38 84 F8 98 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80D4F898@l */
/* 80D4FC6C  38 A0 78 00 */	li r5, 0x7800
/* 80D4FC70  4B 2C A8 41 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D4FC74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4FC78  40 82 00 0C */	bne lbl_80D4FC84
/* 80D4FC7C  38 60 00 05 */	li r3, 5
/* 80D4FC80  48 00 01 C4 */	b lbl_80D4FE44
lbl_80D4FC84:
/* 80D4FC84  7F E3 FB 78 */	mr r3, r31
/* 80D4FC88  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D4FC8C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80D4FC90  FC 60 08 90 */	fmr f3, f1
/* 80D4FC94  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80D4FC98  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 80D4FC9C  FC C0 20 90 */	fmr f6, f4
/* 80D4FCA0  4B 2C A8 A9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D4FCA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D4FCA8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D4FCAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D4FCB0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D4FCB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D4FCB8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D4FCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4FCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4FCC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4FCC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D4FCCC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4FCD0  7C 05 07 74 */	extsb r5, r0
/* 80D4FCD4  4B 2E 56 8D */	bl isSwitch__10dSv_info_cCFii
/* 80D4FCD8  20 03 00 00 */	subfic r0, r3, 0
/* 80D4FCDC  7C 60 01 10 */	subfe r3, r0, r0
/* 80D4FCE0  38 00 00 80 */	li r0, 0x80
/* 80D4FCE4  7C 00 18 78 */	andc r0, r0, r3
/* 80D4FCE8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D4FCEC  38 00 00 59 */	li r0, 0x59
/* 80D4FCF0  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80D4FCF4  38 00 FF FF */	li r0, -1
/* 80D4FCF8  B0 1F 07 68 */	sth r0, 0x768(r31)
/* 80D4FCFC  38 00 00 00 */	li r0, 0
/* 80D4FD00  98 1F 07 6A */	stb r0, 0x76a(r31)
/* 80D4FD04  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80D4FD08  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80D4FD0C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80D4FD10  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 80D4FD14  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D4FD18  38 03 00 24 */	addi r0, r3, 0x24
/* 80D4FD1C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D4FD20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD28  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D4FD2C  FC 40 08 90 */	fmr f2, f1
/* 80D4FD30  FC 60 08 90 */	fmr f3, f1
/* 80D4FD34  4B 5F 6B B5 */	bl PSMTXTrans
/* 80D4FD38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD40  38 80 00 00 */	li r4, 0
/* 80D4FD44  4B 2B C6 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D4FD48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD50  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 80D4FD54  4B 5F 67 5D */	bl PSMTXCopy
/* 80D4FD58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD60  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D4FD64  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4FD68  4B 5F 67 49 */	bl PSMTXCopy
/* 80D4FD6C  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D4FD70  4B 32 BC 51 */	bl Move__4dBgWFv
/* 80D4FD74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD7C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D4FD80  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80D4FD84  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 80D4FD88  4B 5F 6B 61 */	bl PSMTXTrans
/* 80D4FD8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FD90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FD94  38 80 00 00 */	li r4, 0
/* 80D4FD98  4B 2B C6 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80D4FD9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FDA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FDA4  38 9F 07 28 */	addi r4, r31, 0x728
/* 80D4FDA8  4B 5F 67 09 */	bl PSMTXCopy
/* 80D4FDAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4FDB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4FDB4  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80D4FDB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4FDBC  4B 5F 66 F5 */	bl PSMTXCopy
/* 80D4FDC0  38 7F 06 38 */	addi r3, r31, 0x638
/* 80D4FDC4  4B 32 BB FD */	bl Move__4dBgWFv
/* 80D4FDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4FDCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4FDD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4FDD4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D4FDD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4FDDC  7C 05 07 74 */	extsb r5, r0
/* 80D4FDE0  4B 2E 55 81 */	bl isSwitch__10dSv_info_cCFii
/* 80D4FDE4  2C 03 00 00 */	cmpwi r3, 0
/* 80D4FDE8  40 82 00 58 */	bne lbl_80D4FE40
/* 80D4FDEC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80D4FDF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4FDF4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80D4FDF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4FDFC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D4FE00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D4FE04  38 61 00 08 */	addi r3, r1, 8
/* 80D4FE08  38 80 00 00 */	li r4, 0
/* 80D4FE0C  38 A0 7F FF */	li r5, 0x7fff
/* 80D4FE10  38 C0 00 00 */	li r6, 0
/* 80D4FE14  4B 51 75 E1 */	bl __ct__5csXyzFsss
/* 80D4FE18  38 60 02 75 */	li r3, 0x275
/* 80D4FE1C  38 80 00 02 */	li r4, 2
/* 80D4FE20  38 A1 00 10 */	addi r5, r1, 0x10
/* 80D4FE24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D4FE28  7C 06 07 74 */	extsb r6, r0
/* 80D4FE2C  38 E1 00 08 */	addi r7, r1, 8
/* 80D4FE30  39 00 00 00 */	li r8, 0
/* 80D4FE34  39 20 FF FF */	li r9, -1
/* 80D4FE38  4B 2C 9F 61 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80D4FE3C  90 7F 04 A4 */	stw r3, 0x4a4(r31)
lbl_80D4FE40:
/* 80D4FE40  7F A3 EB 78 */	mr r3, r29
lbl_80D4FE44:
/* 80D4FE44  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4FE48  4B 61 23 E1 */	bl _restgpr_29
/* 80D4FE4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4FE50  7C 08 03 A6 */	mtlr r0
/* 80D4FE54  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4FE58  4E 80 00 20 */	blr 
