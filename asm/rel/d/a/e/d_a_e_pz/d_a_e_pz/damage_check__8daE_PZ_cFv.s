lbl_80758E04:
/* 80758E04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80758E08  7C 08 02 A6 */	mflr r0
/* 80758E0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80758E10  39 61 00 30 */	addi r11, r1, 0x30
/* 80758E14  4B C0 93 C9 */	bl _savegpr_29
/* 80758E18  7C 7F 1B 78 */	mr r31, r3
/* 80758E1C  88 03 07 D1 */	lbz r0, 0x7d1(r3)
/* 80758E20  28 00 00 00 */	cmplwi r0, 0
/* 80758E24  40 82 00 34 */	bne lbl_80758E58
/* 80758E28  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80758E2C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80758E30  41 82 00 28 */	beq lbl_80758E58
/* 80758E34  C0 3F 07 A0 */	lfs f1, 0x7a0(r31)
/* 80758E38  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 80758E3C  3B C3 1E 0C */	addi r30, r3, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 80758E40  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80758E44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80758E48  40 82 00 10 */	bne lbl_80758E58
/* 80758E4C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80758E50  2C 00 00 01 */	cmpwi r0, 1
/* 80758E54  41 81 00 10 */	bgt lbl_80758E64
lbl_80758E58:
/* 80758E58  38 00 00 00 */	li r0, 0
/* 80758E5C  98 1F 08 45 */	stb r0, 0x845(r31)
/* 80758E60  48 00 03 C4 */	b lbl_80759224
lbl_80758E64:
/* 80758E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80758E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80758E6C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80758E70  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80758E74  64 00 02 00 */	oris r0, r0, 0x200
/* 80758E78  90 03 05 88 */	stw r0, 0x588(r3)
/* 80758E7C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80758E80  80 63 00 04 */	lwz r3, 4(r3)
/* 80758E84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80758E88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80758E8C  38 63 00 30 */	addi r3, r3, 0x30
/* 80758E90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80758E94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80758E98  4B BE D6 19 */	bl PSMTXCopy
/* 80758E9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80758EA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80758EA4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80758EA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80758EAC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80758EB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80758EB4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80758EB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80758EBC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80758EC0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80758EC4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80758EC8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80758ECC  7F E3 FB 78 */	mr r3, r31
/* 80758ED0  38 9F 05 DC */	addi r4, r31, 0x5dc
/* 80758ED4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80758ED8  38 DF 04 EC */	addi r6, r31, 0x4ec
/* 80758EDC  48 00 7E 19 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80758EE0  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 80758EE4  4B 92 B5 7D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80758EE8  28 03 00 00 */	cmplwi r3, 0
/* 80758EEC  40 82 00 10 */	bne lbl_80758EFC
/* 80758EF0  88 1F 08 45 */	lbz r0, 0x845(r31)
/* 80758EF4  28 00 00 00 */	cmplwi r0, 0
/* 80758EF8  41 82 00 70 */	beq lbl_80758F68
lbl_80758EFC:
/* 80758EFC  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 80758F00  81 9F 0C 88 */	lwz r12, 0xc88(r31)
/* 80758F04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80758F08  7D 89 03 A6 */	mtctr r12
/* 80758F0C  4E 80 04 21 */	bctrl 
/* 80758F10  38 00 00 0A */	li r0, 0xa
/* 80758F14  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 80758F18  38 00 00 00 */	li r0, 0
/* 80758F1C  98 1F 07 D3 */	stb r0, 0x7d3(r31)
/* 80758F20  7F E3 FB 78 */	mr r3, r31
/* 80758F24  38 80 00 13 */	li r4, 0x13
/* 80758F28  38 A0 00 00 */	li r5, 0
/* 80758F2C  3C C0 80 76 */	lis r6, lit_3907@ha /* 0x80761500@ha */
/* 80758F30  C0 26 15 00 */	lfs f1, lit_3907@l(r6)  /* 0x80761500@l */
/* 80758F34  3C C0 80 76 */	lis r6, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 80758F38  38 C6 1E 0C */	addi r6, r6, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 80758F3C  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 80758F40  4B FF F8 C1 */	bl setBck__8daE_PZ_cFiUcff
/* 80758F44  38 00 00 00 */	li r0, 0
/* 80758F48  98 1F 08 45 */	stb r0, 0x845(r31)
/* 80758F4C  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 80758F50  4B 92 A8 E1 */	bl Move__10dCcD_GSttsFv
/* 80758F54  7F E3 FB 78 */	mr r3, r31
/* 80758F58  38 80 00 02 */	li r4, 2
/* 80758F5C  38 A0 00 0B */	li r5, 0xb
/* 80758F60  4B FF F9 4D */	bl setActionMode__8daE_PZ_cFii
/* 80758F64  48 00 02 C0 */	b lbl_80759224
lbl_80758F68:
/* 80758F68  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80758F6C  4B 92 B4 F5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80758F70  28 03 00 00 */	cmplwi r3, 0
/* 80758F74  41 82 02 94 */	beq lbl_80759208
/* 80758F78  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80758F7C  4B 92 B5 7D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80758F80  90 7F 0E C0 */	stw r3, 0xec0(r31)
/* 80758F84  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 80758F88  2C 00 00 04 */	cmpwi r0, 4
/* 80758F8C  41 82 00 1C */	beq lbl_80758FA8
/* 80758F90  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80758F94  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 80758F98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80758F9C  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 80758FA0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80758FA4  D0 1F 07 98 */	stfs f0, 0x798(r31)
lbl_80758FA8:
/* 80758FA8  7F E3 FB 78 */	mr r3, r31
/* 80758FAC  38 9F 0E C0 */	addi r4, r31, 0xec0
/* 80758FB0  4B 92 EC 55 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80758FB4  38 00 00 0A */	li r0, 0xa
/* 80758FB8  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 80758FBC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80758FC0  2C 00 00 01 */	cmpwi r0, 1
/* 80758FC4  40 81 01 AC */	ble lbl_80759170
/* 80758FC8  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80758FCC  4B 92 B5 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80758FD0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80758FD4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80758FD8  40 82 00 40 */	bne lbl_80759018
/* 80758FDC  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80758FE0  4B 92 B5 19 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80758FE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80758FE8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80758FEC  40 82 00 2C */	bne lbl_80759018
/* 80758FF0  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80758FF4  4B 92 B5 05 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80758FF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80758FFC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80759000  40 82 00 18 */	bne lbl_80759018
/* 80759004  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80759008  4B 92 B4 F1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8075900C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80759010  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80759014  41 82 00 30 */	beq lbl_80759044
lbl_80759018:
/* 80759018  38 00 00 00 */	li r0, 0
/* 8075901C  98 1F 08 48 */	stb r0, 0x848(r31)
/* 80759020  38 00 00 23 */	li r0, 0x23
/* 80759024  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 80759028  38 00 00 04 */	li r0, 4
/* 8075902C  98 1F 08 47 */	stb r0, 0x847(r31)
/* 80759030  7F E3 FB 78 */	mr r3, r31
/* 80759034  38 80 00 04 */	li r4, 4
/* 80759038  38 A0 00 00 */	li r5, 0
/* 8075903C  4B FF F8 71 */	bl setActionMode__8daE_PZ_cFii
/* 80759040  48 00 01 C8 */	b lbl_80759208
lbl_80759044:
/* 80759044  88 7F 08 47 */	lbz r3, 0x847(r31)
/* 80759048  38 03 00 01 */	addi r0, r3, 1
/* 8075904C  98 1F 08 47 */	stb r0, 0x847(r31)
/* 80759050  7F E3 FB 78 */	mr r3, r31
/* 80759054  4B FF FC F1 */	bl getCutType__8daE_PZ_cFv
/* 80759058  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8075905C  28 00 00 04 */	cmplwi r0, 4
/* 80759060  41 82 00 2C */	beq lbl_8075908C
/* 80759064  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 80759068  4B 92 B4 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8075906C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80759070  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 80759074  40 82 00 18 */	bne lbl_8075908C
/* 80759078  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 8075907C  4B 92 B4 7D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80759080  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80759084  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80759088  41 82 00 1C */	beq lbl_807590A4
lbl_8075908C:
/* 8075908C  38 00 00 04 */	li r0, 4
/* 80759090  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 80759094  98 1F 08 47 */	stb r0, 0x847(r31)
/* 80759098  38 00 00 00 */	li r0, 0
/* 8075909C  98 1F 08 48 */	stb r0, 0x848(r31)
/* 807590A0  48 00 00 BC */	b lbl_8075915C
lbl_807590A4:
/* 807590A4  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 807590A8  28 00 00 00 */	cmplwi r0, 0
/* 807590AC  40 82 00 A8 */	bne lbl_80759154
/* 807590B0  7F E3 FB 78 */	mr r3, r31
/* 807590B4  4B FF FC 91 */	bl getCutType__8daE_PZ_cFv
/* 807590B8  98 7F 08 48 */	stb r3, 0x848(r31)
/* 807590BC  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 807590C0  28 00 00 03 */	cmplwi r0, 3
/* 807590C4  40 82 00 28 */	bne lbl_807590EC
/* 807590C8  3C 60 80 76 */	lis r3, lit_4117@ha /* 0x80761544@ha */
/* 807590CC  C0 23 15 44 */	lfs f1, lit_4117@l(r3)  /* 0x80761544@l */
/* 807590D0  4B B0 E8 85 */	bl cM_rndF__Ff
/* 807590D4  FC 00 08 1E */	fctiwz f0, f1
/* 807590D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807590DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807590E0  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 807590E4  38 03 00 02 */	addi r0, r3, 2
/* 807590E8  98 1F 08 48 */	stb r0, 0x848(r31)
lbl_807590EC:
/* 807590EC  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 807590F0  28 00 00 05 */	cmplwi r0, 5
/* 807590F4  41 82 00 0C */	beq lbl_80759100
/* 807590F8  28 00 00 06 */	cmplwi r0, 6
/* 807590FC  40 82 00 34 */	bne lbl_80759130
lbl_80759100:
/* 80759100  38 00 00 04 */	li r0, 4
/* 80759104  98 1F 07 D1 */	stb r0, 0x7d1(r31)
/* 80759108  98 1F 08 47 */	stb r0, 0x847(r31)
/* 8075910C  3C 60 80 76 */	lis r3, lit_4117@ha /* 0x80761544@ha */
/* 80759110  C0 23 15 44 */	lfs f1, lit_4117@l(r3)  /* 0x80761544@l */
/* 80759114  4B B0 E8 41 */	bl cM_rndF__Ff
/* 80759118  FC 00 08 1E */	fctiwz f0, f1
/* 8075911C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80759120  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80759124  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80759128  38 03 00 02 */	addi r0, r3, 2
/* 8075912C  98 1F 08 48 */	stb r0, 0x848(r31)
lbl_80759130:
/* 80759130  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 80759134  28 00 00 01 */	cmplwi r0, 1
/* 80759138  40 82 00 10 */	bne lbl_80759148
/* 8075913C  38 00 00 02 */	li r0, 2
/* 80759140  98 1F 08 48 */	stb r0, 0x848(r31)
/* 80759144  48 00 00 18 */	b lbl_8075915C
lbl_80759148:
/* 80759148  38 00 00 03 */	li r0, 3
/* 8075914C  98 1F 08 48 */	stb r0, 0x848(r31)
/* 80759150  48 00 00 0C */	b lbl_8075915C
lbl_80759154:
/* 80759154  68 00 00 01 */	xori r0, r0, 1
/* 80759158  98 1F 08 48 */	stb r0, 0x848(r31)
lbl_8075915C:
/* 8075915C  7F E3 FB 78 */	mr r3, r31
/* 80759160  38 80 00 04 */	li r4, 4
/* 80759164  88 BF 08 48 */	lbz r5, 0x848(r31)
/* 80759168  4B FF F7 45 */	bl setActionMode__8daE_PZ_cFii
/* 8075916C  48 00 00 9C */	b lbl_80759208
lbl_80759170:
/* 80759170  3B C0 00 00 */	li r30, 0
/* 80759174  B3 DF 05 62 */	sth r30, 0x562(r31)
/* 80759178  3B A0 00 00 */	li r29, 0
lbl_8075917C:
/* 8075917C  38 1E 07 DC */	addi r0, r30, 0x7dc
/* 80759180  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80759184  28 03 00 00 */	cmplwi r3, 0
/* 80759188  41 82 00 2C */	beq lbl_807591B4
/* 8075918C  38 81 00 08 */	addi r4, r1, 8
/* 80759190  4B 8C 08 2D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80759194  2C 03 00 00 */	cmpwi r3, 0
/* 80759198  41 82 00 1C */	beq lbl_807591B4
/* 8075919C  80 61 00 08 */	lwz r3, 8(r1)
/* 807591A0  28 03 00 00 */	cmplwi r3, 0
/* 807591A4  41 82 00 10 */	beq lbl_807591B4
/* 807591A8  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 807591AC  60 00 40 00 */	ori r0, r0, 0x4000
/* 807591B0  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_807591B4:
/* 807591B4  3B BD 00 01 */	addi r29, r29, 1
/* 807591B8  2C 1D 00 19 */	cmpwi r29, 0x19
/* 807591BC  3B DE 00 04 */	addi r30, r30, 4
/* 807591C0  41 80 FF BC */	blt lbl_8075917C
/* 807591C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807591C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807591CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807591D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807591D4  4B B5 66 B1 */	bl subBgmStop__8Z2SeqMgrFv
/* 807591D8  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807591DC  28 00 00 00 */	cmplwi r0, 0
/* 807591E0  40 82 00 18 */	bne lbl_807591F8
/* 807591E4  7F E3 FB 78 */	mr r3, r31
/* 807591E8  38 80 00 05 */	li r4, 5
/* 807591EC  38 A0 00 00 */	li r5, 0
/* 807591F0  4B FF F6 BD */	bl setActionMode__8daE_PZ_cFii
/* 807591F4  48 00 00 14 */	b lbl_80759208
lbl_807591F8:
/* 807591F8  7F E3 FB 78 */	mr r3, r31
/* 807591FC  38 80 00 05 */	li r4, 5
/* 80759200  38 A0 00 0A */	li r5, 0xa
/* 80759204  4B FF F6 A9 */	bl setActionMode__8daE_PZ_cFii
lbl_80759208:
/* 80759208  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 8075920C  81 9F 0B 4C */	lwz r12, 0xb4c(r31)
/* 80759210  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80759214  7D 89 03 A6 */	mtctr r12
/* 80759218  4E 80 04 21 */	bctrl 
/* 8075921C  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 80759220  4B 92 A6 11 */	bl Move__10dCcD_GSttsFv
lbl_80759224:
/* 80759224  39 61 00 30 */	addi r11, r1, 0x30
/* 80759228  4B C0 90 01 */	bl _restgpr_29
/* 8075922C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80759230  7C 08 03 A6 */	mtlr r0
/* 80759234  38 21 00 30 */	addi r1, r1, 0x30
/* 80759238  4E 80 00 20 */	blr 
