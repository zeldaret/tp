lbl_80D19B48:
/* 80D19B48  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80D19B4C  7C 08 02 A6 */	mflr r0
/* 80D19B50  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80D19B54  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80D19B58  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80D19B5C  7C 7E 1B 78 */	mr r30, r3
/* 80D19B60  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D19B64  3B E3 B6 D8 */	addi r31, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D19B68  38 61 00 20 */	addi r3, r1, 0x20
/* 80D19B6C  4B 35 E0 FD */	bl __ct__11dBgS_LinChkFv
/* 80D19B70  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19B74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D19B78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D19B7C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80D19B80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D19B84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80D19B88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80D19B8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D19B90  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80D19B94  4B 2F 28 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D19B98  38 61 00 14 */	addi r3, r1, 0x14
/* 80D19B9C  38 81 00 08 */	addi r4, r1, 8
/* 80D19BA0  4B 55 73 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80D19BA4  38 61 00 08 */	addi r3, r1, 8
/* 80D19BA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D19BAC  7C 65 1B 78 */	mr r5, r3
/* 80D19BB0  4B 62 D4 E1 */	bl PSVECAdd
/* 80D19BB4  38 61 00 20 */	addi r3, r1, 0x20
/* 80D19BB8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D19BBC  38 A1 00 08 */	addi r5, r1, 8
/* 80D19BC0  7F C6 F3 78 */	mr r6, r30
/* 80D19BC4  4B 35 E1 A1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D19BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D19BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D19BD0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D19BD4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D19BD8  4B 35 A7 DD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D19BDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D19BE0  41 82 00 30 */	beq lbl_80D19C10
/* 80D19BE4  A8 7E 07 24 */	lha r3, 0x724(r30)
/* 80D19BE8  38 03 10 00 */	addi r0, r3, 0x1000
/* 80D19BEC  B0 1E 07 24 */	sth r0, 0x724(r30)
/* 80D19BF0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80D19BF4  4B 54 DD 61 */	bl cM_rndF__Ff
/* 80D19BF8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D19BFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D19C00  FC 00 00 1E */	fctiwz f0, f0
/* 80D19C04  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80D19C08  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D19C0C  B0 1E 07 14 */	sth r0, 0x714(r30)
lbl_80D19C10:
/* 80D19C10  38 61 00 20 */	addi r3, r1, 0x20
/* 80D19C14  38 80 FF FF */	li r4, -1
/* 80D19C18  4B 35 E0 C5 */	bl __dt__11dBgS_LinChkFv
/* 80D19C1C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80D19C20  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80D19C24  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80D19C28  7C 08 03 A6 */	mtlr r0
/* 80D19C2C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80D19C30  4E 80 00 20 */	blr 
