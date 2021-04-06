lbl_80AC2FD8:
/* 80AC2FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC2FDC  7C 08 02 A6 */	mflr r0
/* 80AC2FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC2FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC2FE8  7C 7F 1B 78 */	mr r31, r3
/* 80AC2FEC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AC2FF0  2C 00 00 02 */	cmpwi r0, 2
/* 80AC2FF4  41 82 00 38 */	beq lbl_80AC302C
/* 80AC2FF8  40 80 01 A4 */	bge lbl_80AC319C
/* 80AC2FFC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC3000  40 80 00 0C */	bge lbl_80AC300C
/* 80AC3004  48 00 01 98 */	b lbl_80AC319C
/* 80AC3008  48 00 01 94 */	b lbl_80AC319C
lbl_80AC300C:
/* 80AC300C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AC3010  2C 00 00 00 */	cmpwi r0, 0
/* 80AC3014  40 82 00 18 */	bne lbl_80AC302C
/* 80AC3018  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AC301C  38 A0 00 00 */	li r5, 0
/* 80AC3020  4B 68 8B D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AC3024  38 00 00 02 */	li r0, 2
/* 80AC3028  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC302C:
/* 80AC302C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AC3030  2C 00 00 00 */	cmpwi r0, 0
/* 80AC3034  40 82 01 68 */	bne lbl_80AC319C
/* 80AC3038  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AC303C  28 00 00 00 */	cmplwi r0, 0
/* 80AC3040  40 82 00 14 */	bne lbl_80AC3054
/* 80AC3044  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80AC3048  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AC304C  7C 03 00 00 */	cmpw r3, r0
/* 80AC3050  40 82 00 E0 */	bne lbl_80AC3130
lbl_80AC3054:
/* 80AC3054  7F E3 FB 78 */	mr r3, r31
/* 80AC3058  38 80 00 00 */	li r4, 0
/* 80AC305C  38 A0 00 00 */	li r5, 0
/* 80AC3060  38 C0 00 00 */	li r6, 0
/* 80AC3064  38 E0 00 00 */	li r7, 0
/* 80AC3068  4B 68 8C 11 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AC306C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC3070  41 82 00 3C */	beq lbl_80AC30AC
/* 80AC3074  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AC3078  28 00 00 01 */	cmplwi r0, 1
/* 80AC307C  40 82 00 30 */	bne lbl_80AC30AC
/* 80AC3080  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC3084  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC3088  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC308C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AC3090  4B 68 26 51 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AC3094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC3098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC309C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AC30A0  4B 57 F3 C9 */	bl reset__14dEvt_control_cFv
/* 80AC30A4  38 00 00 03 */	li r0, 3
/* 80AC30A8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC30AC:
/* 80AC30AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC30B0  2C 00 00 01 */	cmpwi r0, 1
/* 80AC30B4  41 82 00 2C */	beq lbl_80AC30E0
/* 80AC30B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC30BC  4B 68 26 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AC30C0  38 00 00 00 */	li r0, 0
/* 80AC30C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC30C8  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC30CC  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC30D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC30D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC30D8  38 00 00 01 */	li r0, 1
/* 80AC30DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC30E0:
/* 80AC30E0  38 00 00 00 */	li r0, 0
/* 80AC30E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC30E8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AC30EC  28 00 00 00 */	cmplwi r0, 0
/* 80AC30F0  41 82 00 AC */	beq lbl_80AC319C
/* 80AC30F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC30F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC30FC  41 82 00 28 */	beq lbl_80AC3124
/* 80AC3100  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC3104  4B 68 25 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AC3108  38 00 00 00 */	li r0, 0
/* 80AC310C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC3110  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC3114  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC3118  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC311C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC3120  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC3124:
/* 80AC3124  38 00 00 00 */	li r0, 0
/* 80AC3128  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC312C  48 00 00 70 */	b lbl_80AC319C
lbl_80AC3130:
/* 80AC3130  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC3134  2C 00 00 01 */	cmpwi r0, 1
/* 80AC3138  41 82 00 2C */	beq lbl_80AC3164
/* 80AC313C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC3140  4B 68 25 BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AC3144  38 00 00 00 */	li r0, 0
/* 80AC3148  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC314C  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC3150  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC3154  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC3158  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC315C  38 00 00 01 */	li r0, 1
/* 80AC3160  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC3164:
/* 80AC3164  38 00 00 00 */	li r0, 0
/* 80AC3168  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC316C  7F E3 FB 78 */	mr r3, r31
/* 80AC3170  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC3174  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC3178  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AC317C  4B 55 75 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AC3180  7C 64 1B 78 */	mr r4, r3
/* 80AC3184  7F E3 FB 78 */	mr r3, r31
/* 80AC3188  38 A0 FF FF */	li r5, -1
/* 80AC318C  38 C0 FF FF */	li r6, -1
/* 80AC3190  38 E0 00 0F */	li r7, 0xf
/* 80AC3194  39 00 00 00 */	li r8, 0
/* 80AC3198  4B 68 84 B1 */	bl step__8daNpcT_cFsiiii
lbl_80AC319C:
/* 80AC319C  38 60 00 00 */	li r3, 0
/* 80AC31A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC31A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC31A8  7C 08 03 A6 */	mtlr r0
/* 80AC31AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC31B0  4E 80 00 20 */	blr 
