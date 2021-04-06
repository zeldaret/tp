lbl_806A2BDC:
/* 806A2BDC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806A2BE0  7C 08 02 A6 */	mflr r0
/* 806A2BE4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806A2BE8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806A2BEC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806A2BF0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 806A2BF4  FF E0 08 90 */	fmr f31, f1
/* 806A2BF8  7C 7F 1B 78 */	mr r31, r3
/* 806A2BFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A2C00  4B 9D 50 69 */	bl __ct__11dBgS_LinChkFv
/* 806A2C04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806A2C08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A2C0C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806A2C10  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806A2C14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806A2C18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A2C1C  3C 60 80 6A */	lis r3, lit_4029@ha /* 0x806A720C@ha */
/* 806A2C20  C0 03 72 0C */	lfs f0, lit_4029@l(r3)  /* 0x806A720C@l */
/* 806A2C24  EC 01 00 2A */	fadds f0, f1, f0
/* 806A2C28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A2C2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2C30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2C34  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2C38  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806A2C3C  4B 96 97 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 806A2C40  3C 60 80 6A */	lis r3, lit_3904@ha /* 0x806A71C8@ha */
/* 806A2C44  C0 03 71 C8 */	lfs f0, lit_3904@l(r3)  /* 0x806A71C8@l */
/* 806A2C48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806A2C4C  3C 60 80 6A */	lis r3, lit_4029@ha /* 0x806A720C@ha */
/* 806A2C50  C0 03 72 0C */	lfs f0, lit_4029@l(r3)  /* 0x806A720C@l */
/* 806A2C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806A2C58  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 806A2C5C  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2C60  38 81 00 08 */	addi r4, r1, 8
/* 806A2C64  4B BC E2 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A2C68  38 61 00 08 */	addi r3, r1, 8
/* 806A2C6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806A2C70  7C 65 1B 78 */	mr r5, r3
/* 806A2C74  4B CA 44 1D */	bl PSVECAdd
/* 806A2C78  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A2C7C  38 81 00 14 */	addi r4, r1, 0x14
/* 806A2C80  38 A1 00 08 */	addi r5, r1, 8
/* 806A2C84  7F E6 FB 78 */	mr r6, r31
/* 806A2C88  4B 9D 50 DD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806A2C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A2C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A2C94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806A2C98  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A2C9C  4B 9D 17 19 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806A2CA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A2CA4  41 82 00 18 */	beq lbl_806A2CBC
/* 806A2CA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A2CAC  38 80 FF FF */	li r4, -1
/* 806A2CB0  4B 9D 50 2D */	bl __dt__11dBgS_LinChkFv
/* 806A2CB4  38 60 00 01 */	li r3, 1
/* 806A2CB8  48 00 00 14 */	b lbl_806A2CCC
lbl_806A2CBC:
/* 806A2CBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A2CC0  38 80 FF FF */	li r4, -1
/* 806A2CC4  4B 9D 50 19 */	bl __dt__11dBgS_LinChkFv
/* 806A2CC8  38 60 00 00 */	li r3, 0
lbl_806A2CCC:
/* 806A2CCC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806A2CD0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806A2CD4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 806A2CD8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806A2CDC  7C 08 03 A6 */	mtlr r0
/* 806A2CE0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806A2CE4  4E 80 00 20 */	blr 
