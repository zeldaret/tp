lbl_8057BF98:
/* 8057BF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF9C  7C 08 02 A6 */	mflr r0
/* 8057BFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BFA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8057BFAC  7C 7E 1B 78 */	mr r30, r3
/* 8057BFB0  3C 80 80 58 */	lis r4, lit_3822@ha /* 0x8057C8B0@ha */
/* 8057BFB4  3B E4 C8 B0 */	addi r31, r4, lit_3822@l /* 0x8057C8B0@l */
/* 8057BFB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057BFBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8057BFC0  40 82 00 28 */	bne lbl_8057BFE8
/* 8057BFC4  28 1E 00 00 */	cmplwi r30, 0
/* 8057BFC8  41 82 00 14 */	beq lbl_8057BFDC
/* 8057BFCC  4B A9 CB 99 */	bl __ct__10fopAc_ac_cFv
/* 8057BFD0  3C 60 80 58 */	lis r3, __vt__12daObjDigpl_c@ha /* 0x8057C948@ha */
/* 8057BFD4  38 03 C9 48 */	addi r0, r3, __vt__12daObjDigpl_c@l /* 0x8057C948@l */
/* 8057BFD8  90 1E 05 BC */	stw r0, 0x5bc(r30)
lbl_8057BFDC:
/* 8057BFDC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8057BFE0  60 00 00 08 */	ori r0, r0, 8
/* 8057BFE4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8057BFE8:
/* 8057BFE8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8057BFEC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8057BFF0  98 1E 05 68 */	stb r0, 0x568(r30)
/* 8057BFF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8057BFF8  98 1E 05 69 */	stb r0, 0x569(r30)
/* 8057BFFC  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8057C000  28 00 00 05 */	cmplwi r0, 5
/* 8057C004  40 82 00 28 */	bne lbl_8057C02C
/* 8057C008  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8057C00C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8057C010  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8057C014  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8057C018  54 03 66 3E */	rlwinm r3, r0, 0xc, 0x18, 0x1f
/* 8057C01C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8057C020  7C 04 07 74 */	extsb r4, r0
/* 8057C024  4B AD 57 C9 */	bl dPath_GetRoomPath__Fii
/* 8057C028  90 7E 05 B8 */	stw r3, 0x5b8(r30)
lbl_8057C02C:
/* 8057C02C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8057C030  28 00 00 04 */	cmplwi r0, 4
/* 8057C034  41 80 00 0C */	blt lbl_8057C040
/* 8057C038  38 00 00 00 */	li r0, 0
/* 8057C03C  98 1E 05 68 */	stb r0, 0x568(r30)
lbl_8057C040:
/* 8057C040  88 9E 05 69 */	lbz r4, 0x569(r30)
/* 8057C044  28 04 00 FF */	cmplwi r4, 0xff
/* 8057C048  41 82 00 28 */	beq lbl_8057C070
/* 8057C04C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057C050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057C054  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8057C058  7C 05 07 74 */	extsb r5, r0
/* 8057C05C  4B AB 93 05 */	bl isSwitch__10dSv_info_cCFii
/* 8057C060  2C 03 00 00 */	cmpwi r3, 0
/* 8057C064  41 82 00 0C */	beq lbl_8057C070
/* 8057C068  38 60 00 05 */	li r3, 5
/* 8057C06C  48 00 00 B4 */	b lbl_8057C120
lbl_8057C070:
/* 8057C070  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057C074  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057C078  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8057C07C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8057C080  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8057C084  4B DC A8 65 */	bl PSMTXTrans
/* 8057C088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057C08C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057C090  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8057C094  4B A9 03 A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8057C098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057C09C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057C0A0  38 9E 05 70 */	addi r4, r30, 0x570
/* 8057C0A4  4B DC A4 0D */	bl PSMTXCopy
/* 8057C0A8  38 1E 05 70 */	addi r0, r30, 0x570
/* 8057C0AC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8057C0B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8057C0B4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8057C0B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8057C0BC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8057C0C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8057C0C4  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8057C0C8  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 8057C0CC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8057C0D0  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 8057C0D4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8057C0D8  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 8057C0DC  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8057C0E0  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8057C0E4  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8057C0E8  98 1E 04 8C */	stb r0, 0x48c(r30)
/* 8057C0EC  7F C3 F3 78 */	mr r3, r30
/* 8057C0F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8057C0F4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8057C0F8  FC 60 08 90 */	fmr f3, f1
/* 8057C0FC  4B A9 E4 2D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8057C100  7F C3 F3 78 */	mr r3, r30
/* 8057C104  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8057C108  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8057C10C  FC 60 08 90 */	fmr f3, f1
/* 8057C110  4B A9 E4 29 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8057C114  38 00 00 1B */	li r0, 0x1b
/* 8057C118  98 1E 05 4B */	stb r0, 0x54b(r30)
/* 8057C11C  38 60 00 04 */	li r3, 4
lbl_8057C120:
/* 8057C120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C124  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057C128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C12C  7C 08 03 A6 */	mtlr r0
/* 8057C130  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C134  4E 80 00 20 */	blr 
