lbl_8067DE54:
/* 8067DE54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067DE58  7C 08 02 A6 */	mflr r0
/* 8067DE5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067DE60  39 61 00 40 */	addi r11, r1, 0x40
/* 8067DE64  4B CE 43 78 */	b _savegpr_29
/* 8067DE68  7C 7E 1B 78 */	mr r30, r3
/* 8067DE6C  3C 80 80 68 */	lis r4, lit_3983@ha
/* 8067DE70  3B E4 E8 80 */	addi r31, r4, lit_3983@l
/* 8067DE74  3B A0 00 00 */	li r29, 0
/* 8067DE78  A8 03 05 C2 */	lha r0, 0x5c2(r3)
/* 8067DE7C  2C 00 00 03 */	cmpwi r0, 3
/* 8067DE80  41 82 01 20 */	beq lbl_8067DFA0
/* 8067DE84  40 80 00 1C */	bge lbl_8067DEA0
/* 8067DE88  2C 00 00 01 */	cmpwi r0, 1
/* 8067DE8C  41 82 00 C4 */	beq lbl_8067DF50
/* 8067DE90  40 80 01 04 */	bge lbl_8067DF94
/* 8067DE94  2C 00 00 00 */	cmpwi r0, 0
/* 8067DE98  40 80 00 18 */	bge lbl_8067DEB0
/* 8067DE9C  48 00 01 20 */	b lbl_8067DFBC
lbl_8067DEA0:
/* 8067DEA0  2C 00 00 05 */	cmpwi r0, 5
/* 8067DEA4  41 82 01 10 */	beq lbl_8067DFB4
/* 8067DEA8  40 80 01 14 */	bge lbl_8067DFBC
/* 8067DEAC  48 00 01 00 */	b lbl_8067DFAC
lbl_8067DEB0:
/* 8067DEB0  4B FF F3 6D */	bl e_arrow_shot__FP13e_arrow_class
/* 8067DEB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067DEB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067DEBC  38 63 5B 6C */	addi r3, r3, 0x5b6c
/* 8067DEC0  7F C4 F3 78 */	mr r4, r30
/* 8067DEC4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8067DEC8  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 8067DECC  C0 7F 00 D4 */	lfs f3, 0xd4(r31)
/* 8067DED0  38 A0 60 00 */	li r5, 0x6000
/* 8067DED4  38 C0 00 01 */	li r6, 1
/* 8067DED8  4B 9F 5E 30 */	b request__10dAttLook_cFP10fopAc_ac_cfffsi
/* 8067DEDC  7F C3 F3 78 */	mr r3, r30
/* 8067DEE0  4B FF EC C5 */	bl hit_check__FP13e_arrow_class
/* 8067DEE4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 8067DEE8  28 00 00 01 */	cmplwi r0, 1
/* 8067DEEC  40 82 00 34 */	bne lbl_8067DF20
/* 8067DEF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080008@ha */
/* 8067DEF4  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00080008@l */
/* 8067DEF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8067DEFC  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 8067DF00  38 81 00 18 */	addi r4, r1, 0x18
/* 8067DF04  38 A0 00 00 */	li r5, 0
/* 8067DF08  38 C0 FF FF */	li r6, -1
/* 8067DF0C  81 9E 0A 28 */	lwz r12, 0xa28(r30)
/* 8067DF10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067DF14  7D 89 03 A6 */	mtctr r12
/* 8067DF18  4E 80 04 21 */	bctrl 
/* 8067DF1C  48 00 00 A0 */	b lbl_8067DFBC
lbl_8067DF20:
/* 8067DF20  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080004@ha */
/* 8067DF24  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00080004@l */
/* 8067DF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067DF2C  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 8067DF30  38 81 00 14 */	addi r4, r1, 0x14
/* 8067DF34  38 A0 00 00 */	li r5, 0
/* 8067DF38  38 C0 FF FF */	li r6, -1
/* 8067DF3C  81 9E 0A 28 */	lwz r12, 0xa28(r30)
/* 8067DF40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067DF44  7D 89 03 A6 */	mtctr r12
/* 8067DF48  4E 80 04 21 */	bctrl 
/* 8067DF4C  48 00 00 70 */	b lbl_8067DFBC
lbl_8067DF50:
/* 8067DF50  4B FF F4 BD */	bl e_arrow_bg__FP13e_arrow_class
/* 8067DF54  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 8067DF58  28 00 00 01 */	cmplwi r0, 1
/* 8067DF5C  40 82 00 30 */	bne lbl_8067DF8C
/* 8067DF60  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080006@ha */
/* 8067DF64  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00080006@l */
/* 8067DF68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067DF6C  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 8067DF70  38 81 00 10 */	addi r4, r1, 0x10
/* 8067DF74  38 A0 00 00 */	li r5, 0
/* 8067DF78  38 C0 FF FF */	li r6, -1
/* 8067DF7C  81 9E 0A 28 */	lwz r12, 0xa28(r30)
/* 8067DF80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067DF84  7D 89 03 A6 */	mtctr r12
/* 8067DF88  4E 80 04 21 */	bctrl 
lbl_8067DF8C:
/* 8067DF8C  3B A0 00 01 */	li r29, 1
/* 8067DF90  48 00 00 2C */	b lbl_8067DFBC
lbl_8067DF94:
/* 8067DF94  4B FF F5 9D */	bl e_arrow_spin__FP13e_arrow_class
/* 8067DF98  3B A0 00 01 */	li r29, 1
/* 8067DF9C  48 00 00 20 */	b lbl_8067DFBC
lbl_8067DFA0:
/* 8067DFA0  4B FF FB BD */	bl e_arrow_shield__FP13e_arrow_class
/* 8067DFA4  3B A0 00 01 */	li r29, 1
/* 8067DFA8  48 00 00 14 */	b lbl_8067DFBC
lbl_8067DFAC:
/* 8067DFAC  4B FF F6 E1 */	bl e_arrow_demo_fire__FP13e_arrow_class
/* 8067DFB0  48 00 00 0C */	b lbl_8067DFBC
lbl_8067DFB4:
/* 8067DFB4  4B FF FC A5 */	bl e_arrow_demo_bound__FP13e_arrow_class
/* 8067DFB8  48 00 00 EC */	b lbl_8067E0A4
lbl_8067DFBC:
/* 8067DFBC  7F A0 07 75 */	extsb. r0, r29
/* 8067DFC0  41 82 00 44 */	beq lbl_8067E004
/* 8067DFC4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 8067DFC8  28 00 00 02 */	cmplwi r0, 2
/* 8067DFCC  40 82 00 38 */	bne lbl_8067E004
/* 8067DFD0  38 00 00 00 */	li r0, 0
/* 8067DFD4  90 01 00 08 */	stw r0, 8(r1)
/* 8067DFD8  38 60 02 21 */	li r3, 0x221
/* 8067DFDC  38 80 00 00 */	li r4, 0
/* 8067DFE0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067DFE4  38 C0 FF FF */	li r6, -1
/* 8067DFE8  38 E0 00 00 */	li r7, 0
/* 8067DFEC  39 00 00 00 */	li r8, 0
/* 8067DFF0  39 20 FF FF */	li r9, -1
/* 8067DFF4  39 40 00 00 */	li r10, 0
/* 8067DFF8  4B 99 BE 0C */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8067DFFC  7F C3 F3 78 */	mr r3, r30
/* 8067E000  4B 99 BC 7C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8067E004:
/* 8067E004  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8067E008  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8067E00C  80 63 00 00 */	lwz r3, 0(r3)
/* 8067E010  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8067E014  4B 98 E3 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 8067E018  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8067E01C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8067E020  80 63 00 00 */	lwz r3, 0(r3)
/* 8067E024  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 8067E028  4B 98 E3 74 */	b mDoMtx_XrotM__FPA4_fs
/* 8067E02C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067E030  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067E034  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8067E038  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8067E03C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8067E040  38 61 00 1C */	addi r3, r1, 0x1c
/* 8067E044  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8067E048  4B BF 2E A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8067E04C  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 8067E050  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 8067E054  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 8067E058  EC 01 00 2A */	fadds f0, f1, f0
/* 8067E05C  EC 02 00 2A */	fadds f0, f2, f0
/* 8067E060  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8067E064  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8067E068  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8067E06C  EC 01 00 2A */	fadds f0, f1, f0
/* 8067E070  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8067E074  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8067E078  C0 3E 05 00 */	lfs f1, 0x500(r30)
/* 8067E07C  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 8067E080  EC 01 00 2A */	fadds f0, f1, f0
/* 8067E084  EC 02 00 2A */	fadds f0, f2, f0
/* 8067E088  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8067E08C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067E090  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8067E094  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8067E098  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8067E09C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8067E0A0  D0 1E 05 40 */	stfs f0, 0x540(r30)
lbl_8067E0A4:
/* 8067E0A4  39 61 00 40 */	addi r11, r1, 0x40
/* 8067E0A8  4B CE 41 80 */	b _restgpr_29
/* 8067E0AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8067E0B0  7C 08 03 A6 */	mtlr r0
/* 8067E0B4  38 21 00 40 */	addi r1, r1, 0x40
/* 8067E0B8  4E 80 00 20 */	blr 
