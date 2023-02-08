lbl_807201A0:
/* 807201A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807201A4  7C 08 02 A6 */	mflr r0
/* 807201A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807201AC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 807201B0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 807201B4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 807201B8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 807201BC  7C 7E 1B 78 */	mr r30, r3
/* 807201C0  FF E0 08 90 */	fmr f31, f1
/* 807201C4  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80722C3C@ha */
/* 807201C8  3B E3 2C 3C */	addi r31, r3, lit_3789@l /* 0x80722C3C@l */
/* 807201CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807201D0  4B 95 7A 99 */	bl __ct__11dBgS_LinChkFv
/* 807201D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807201D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807201DC  80 63 00 00 */	lwz r3, 0(r3)
/* 807201E0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807201E4  4B 8E C1 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807201E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807201EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807201F0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807201F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807201F8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807201FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80720200  38 61 00 20 */	addi r3, r1, 0x20
/* 80720204  38 81 00 14 */	addi r4, r1, 0x14
/* 80720208  4B B5 0C E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072020C  38 61 00 14 */	addi r3, r1, 0x14
/* 80720210  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80720214  7C 65 1B 78 */	mr r5, r3
/* 80720218  4B C2 6E 79 */	bl PSVECAdd
/* 8072021C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80720220  D0 1E 0B C4 */	stfs f0, 0xbc4(r30)
/* 80720224  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80720228  D0 1E 0B C8 */	stfs f0, 0xbc8(r30)
/* 8072022C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80720230  D0 1E 0B CC */	stfs f0, 0xbcc(r30)
/* 80720234  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80720238  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8072023C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80720240  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80720244  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80720248  38 61 00 20 */	addi r3, r1, 0x20
/* 8072024C  38 81 00 08 */	addi r4, r1, 8
/* 80720250  4B B5 0C 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80720254  38 61 00 08 */	addi r3, r1, 8
/* 80720258  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072025C  7C 65 1B 78 */	mr r5, r3
/* 80720260  4B C2 6E 31 */	bl PSVECAdd
/* 80720264  C0 01 00 08 */	lfs f0, 8(r1)
/* 80720268  D0 1E 0B D0 */	stfs f0, 0xbd0(r30)
/* 8072026C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80720270  D0 1E 0B D4 */	stfs f0, 0xbd4(r30)
/* 80720274  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80720278  D0 1E 0B D8 */	stfs f0, 0xbd8(r30)
/* 8072027C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80720280  38 81 00 14 */	addi r4, r1, 0x14
/* 80720284  38 A1 00 08 */	addi r5, r1, 8
/* 80720288  7F C6 F3 78 */	mr r6, r30
/* 8072028C  4B 95 7A D9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80720290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80720294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80720298  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8072029C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807202A0  4B 95 41 15 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807202A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807202A8  40 82 00 18 */	bne lbl_807202C0
/* 807202AC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807202B0  38 80 FF FF */	li r4, -1
/* 807202B4  4B 95 7A 29 */	bl __dt__11dBgS_LinChkFv
/* 807202B8  38 60 00 00 */	li r3, 0
/* 807202BC  48 00 00 14 */	b lbl_807202D0
lbl_807202C0:
/* 807202C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807202C4  38 80 FF FF */	li r4, -1
/* 807202C8  4B 95 7A 15 */	bl __dt__11dBgS_LinChkFv
/* 807202CC  38 60 00 01 */	li r3, 1
lbl_807202D0:
/* 807202D0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 807202D4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 807202D8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 807202DC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 807202E0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807202E4  7C 08 03 A6 */	mtlr r0
/* 807202E8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807202EC  4E 80 00 20 */	blr 
