lbl_809B30F4:
/* 809B30F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B30F8  7C 08 02 A6 */	mflr r0
/* 809B30FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B3100  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809B3104  93 C1 00 28 */	stw r30, 0x28(r1)
/* 809B3108  7C 7F 1B 78 */	mr r31, r3
/* 809B310C  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha
/* 809B3110  3B C3 92 E4 */	addi r30, r3, m__19daNpc_Fairy_Param_c@l
/* 809B3114  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809B3118  38 80 00 00 */	li r4, 0
/* 809B311C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809B3120  7C A3 00 50 */	subf r5, r3, r0
/* 809B3124  4B 65 03 34 */	b memset
/* 809B3128  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809B312C  4B 79 27 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B3130  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B3134  4B 79 27 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B3138  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809B313C  4B 79 25 98 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B3140  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809B3144  4B 79 25 90 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B3148  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809B314C  4B 79 3B 4C */	b initialize__15daNpcT_JntAnm_cFv
/* 809B3150  38 A0 00 00 */	li r5, 0
/* 809B3154  38 60 00 00 */	li r3, 0
/* 809B3158  7C A4 2B 78 */	mr r4, r5
/* 809B315C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809B3160  38 00 00 02 */	li r0, 2
/* 809B3164  7C 09 03 A6 */	mtctr r0
lbl_809B3168:
/* 809B3168  7C DF 22 14 */	add r6, r31, r4
/* 809B316C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809B3170  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809B3174  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809B3178  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809B317C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809B3180  38 63 00 04 */	addi r3, r3, 4
/* 809B3184  38 84 00 06 */	addi r4, r4, 6
/* 809B3188  42 00 FF E0 */	bdnz lbl_809B3168
/* 809B318C  38 00 00 00 */	li r0, 0
/* 809B3190  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809B3194  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809B3198  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809B319C  38 00 FF FF */	li r0, -1
/* 809B31A0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809B31A4  38 00 00 01 */	li r0, 1
/* 809B31A8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809B31AC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 809B31B0  4B 8B 47 A4 */	b cM_rndF__Ff
/* 809B31B4  FC 00 08 1E */	fctiwz f0, f1
/* 809B31B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809B31BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809B31C0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809B31C4  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 809B31C8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809B31CC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809B31D0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809B31D4  28 03 00 00 */	cmplwi r3, 0
/* 809B31D8  41 82 00 08 */	beq lbl_809B31E0
/* 809B31DC  4B 79 25 88 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809B31E0:
/* 809B31E0  38 00 00 0A */	li r0, 0xa
/* 809B31E4  B0 1F 0F 94 */	sth r0, 0xf94(r31)
/* 809B31E8  38 7E 00 00 */	addi r3, r30, 0
/* 809B31EC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 809B31F0  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 809B31F4  38 9F 06 8C */	addi r4, r31, 0x68c
/* 809B31F8  FC 40 08 90 */	fmr f2, f1
/* 809B31FC  4B 69 DA A0 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 809B3200  7F E3 FB 78 */	mr r3, r31
/* 809B3204  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809B3208  4B 79 78 10 */	b setAngle__8daNpcT_cFs
/* 809B320C  7F E3 FB 78 */	mr r3, r31
/* 809B3210  48 00 00 B5 */	bl initStatus__13daNpc_Fairy_cFv
/* 809B3214  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809B3218  54 00 46 3E */	srwi r0, r0, 0x18
/* 809B321C  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 809B3220  38 00 FF FF */	li r0, -1
/* 809B3224  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 809B3228  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809B322C  28 00 00 04 */	cmplwi r0, 4
/* 809B3230  40 82 00 24 */	bne lbl_809B3254
/* 809B3234  7F E3 FB 78 */	mr r3, r31
/* 809B3238  48 00 08 79 */	bl chk_tempbit__13daNpc_Fairy_cFv
/* 809B323C  90 7F 0F E4 */	stw r3, 0xfe4(r31)
/* 809B3240  80 1F 0F E4 */	lwz r0, 0xfe4(r31)
/* 809B3244  2C 00 00 00 */	cmpwi r0, 0
/* 809B3248  41 80 00 0C */	blt lbl_809B3254
/* 809B324C  38 00 0B C8 */	li r0, 0xbc8
/* 809B3250  90 1F 0A 7C */	stw r0, 0xa7c(r31)
lbl_809B3254:
/* 809B3254  38 00 00 00 */	li r0, 0
/* 809B3258  98 1F 0F F7 */	stb r0, 0xff7(r31)
/* 809B325C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809B3260  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809B3264  80 64 00 00 */	lwz r3, 0(r4)
/* 809B3268  80 04 00 04 */	lwz r0, 4(r4)
/* 809B326C  90 7F 0F 84 */	stw r3, 0xf84(r31)
/* 809B3270  90 1F 0F 88 */	stw r0, 0xf88(r31)
/* 809B3274  80 04 00 08 */	lwz r0, 8(r4)
/* 809B3278  90 1F 0F 8C */	stw r0, 0xf8c(r31)
/* 809B327C  3C 60 80 9C */	lis r3, lit_4802@ha
/* 809B3280  38 83 9B 78 */	addi r4, r3, lit_4802@l
/* 809B3284  80 64 00 00 */	lwz r3, 0(r4)
/* 809B3288  80 04 00 04 */	lwz r0, 4(r4)
/* 809B328C  90 61 00 08 */	stw r3, 8(r1)
/* 809B3290  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B3294  80 04 00 08 */	lwz r0, 8(r4)
/* 809B3298  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B329C  7F E3 FB 78 */	mr r3, r31
/* 809B32A0  38 81 00 08 */	addi r4, r1, 8
/* 809B32A4  38 A0 00 00 */	li r5, 0
/* 809B32A8  48 00 0D 39 */	bl setAction__13daNpc_Fairy_cFM13daNpc_Fairy_cFPCvPvi_ii
/* 809B32AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809B32B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 809B32B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B32B8  7C 08 03 A6 */	mtlr r0
/* 809B32BC  38 21 00 30 */	addi r1, r1, 0x30
/* 809B32C0  4E 80 00 20 */	blr 
