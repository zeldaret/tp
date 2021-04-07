lbl_804B30E8:
/* 804B30E8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804B30EC  7C 08 02 A6 */	mflr r0
/* 804B30F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804B30F4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 804B30F8  93 C1 00 98 */	stw r30, 0x98(r1)
/* 804B30FC  7C 7E 1B 78 */	mr r30, r3
/* 804B3100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B3104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B3108  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 804B310C  38 61 00 20 */	addi r3, r1, 0x20
/* 804B3110  4B BC 4B 59 */	bl __ct__11dBgS_LinChkFv
/* 804B3114  38 61 00 78 */	addi r3, r1, 0x78
/* 804B3118  4B BC 5D C9 */	bl SetRope__16dBgS_PolyPassChkFv
/* 804B311C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804B3120  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B3124  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804B3128  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B312C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804B3130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804B3134  3C 60 80 4C */	lis r3, lit_5172@ha /* 0x804BB5F4@ha */
/* 804B3138  C0 03 B5 F4 */	lfs f0, lit_5172@l(r3)  /* 0x804BB5F4@l */
/* 804B313C  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3140  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B3144  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 804B3148  D0 01 00 08 */	stfs f0, 8(r1)
/* 804B314C  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 804B3150  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804B3154  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 804B3158  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804B315C  3C 60 80 4C */	lis r3, lit_4876@ha /* 0x804BB574@ha */
/* 804B3160  C0 03 B5 74 */	lfs f0, lit_4876@l(r3)  /* 0x804BB574@l */
/* 804B3164  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3168  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804B316C  38 61 00 20 */	addi r3, r1, 0x20
/* 804B3170  38 81 00 14 */	addi r4, r1, 0x14
/* 804B3174  38 A1 00 08 */	addi r5, r1, 8
/* 804B3178  7F C6 F3 78 */	mr r6, r30
/* 804B317C  4B BC 4B E9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804B3180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B3184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B3188  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804B318C  38 81 00 20 */	addi r4, r1, 0x20
/* 804B3190  4B BC 12 25 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804B3194  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B3198  41 82 00 18 */	beq lbl_804B31B0
/* 804B319C  38 61 00 20 */	addi r3, r1, 0x20
/* 804B31A0  38 80 FF FF */	li r4, -1
/* 804B31A4  4B BC 4B 39 */	bl __dt__11dBgS_LinChkFv
/* 804B31A8  38 60 00 01 */	li r3, 1
/* 804B31AC  48 00 00 14 */	b lbl_804B31C0
lbl_804B31B0:
/* 804B31B0  38 61 00 20 */	addi r3, r1, 0x20
/* 804B31B4  38 80 FF FF */	li r4, -1
/* 804B31B8  4B BC 4B 25 */	bl __dt__11dBgS_LinChkFv
/* 804B31BC  38 60 00 00 */	li r3, 0
lbl_804B31C0:
/* 804B31C0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 804B31C4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 804B31C8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804B31CC  7C 08 03 A6 */	mtlr r0
/* 804B31D0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804B31D4  4E 80 00 20 */	blr 
