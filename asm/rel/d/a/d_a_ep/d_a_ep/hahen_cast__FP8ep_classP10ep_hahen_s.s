lbl_80469034:
/* 80469034  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80469038  7C 08 02 A6 */	mflr r0
/* 8046903C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80469040  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80469044  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80469048  7C 7E 1B 78 */	mr r30, r3
/* 8046904C  7C 9F 23 78 */	mr r31, r4
/* 80469050  A8 64 00 28 */	lha r3, 0x28(r4)
/* 80469054  38 03 14 50 */	addi r0, r3, 0x1450
/* 80469058  B0 04 00 28 */	sth r0, 0x28(r4)
/* 8046905C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80469060  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80469064  80 63 00 00 */	lwz r3, 0(r3)
/* 80469068  A8 84 00 2A */	lha r4, 0x2a(r4)
/* 8046906C  4B BA 33 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 80469070  3C 60 80 47 */	lis r3, lit_3683@ha /* 0x8046AFCC@ha */
/* 80469074  C0 03 AF CC */	lfs f0, lit_3683@l(r3)  /* 0x8046AFCC@l */
/* 80469078  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8046907C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80469080  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80469084  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80469088  38 61 00 14 */	addi r3, r1, 0x14
/* 8046908C  38 81 00 08 */	addi r4, r1, 8
/* 80469090  4B E0 7E 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80469094  C0 01 00 08 */	lfs f0, 8(r1)
/* 80469098  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8046909C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804690A0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 804690A4  7F C3 F3 78 */	mr r3, r30
/* 804690A8  7F E4 FB 78 */	mr r4, r31
/* 804690AC  4B FF F2 4D */	bl move_calc__FP8ep_classP10ep_hahen_s
/* 804690B0  2C 03 00 00 */	cmpwi r3, 0
/* 804690B4  41 82 00 0C */	beq lbl_804690C0
/* 804690B8  38 00 00 01 */	li r0, 1
/* 804690BC  98 1F 00 97 */	stb r0, 0x97(r31)
lbl_804690C0:
/* 804690C0  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 804690C4  38 9F 00 04 */	addi r4, r31, 4
/* 804690C8  4B E0 65 81 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804690CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804690D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804690D4  38 63 23 3C */	addi r3, r3, 0x233c
/* 804690D8  38 9E 08 F4 */	addi r4, r30, 0x8f4
/* 804690DC  4B DF BA CD */	bl Set__4cCcSFP8cCcD_Obj
/* 804690E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804690E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804690E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804690EC  7C 08 03 A6 */	mtlr r0
/* 804690F0  38 21 00 30 */	addi r1, r1, 0x30
/* 804690F4  4E 80 00 20 */	blr 
