lbl_80D3D73C:
/* 80D3D73C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D3D740  7C 08 02 A6 */	mflr r0
/* 80D3D744  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D3D748  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D3D74C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D3D750  39 61 00 70 */	addi r11, r1, 0x70
/* 80D3D754  4B 62 4A 79 */	bl _savegpr_25
/* 80D3D758  7C 79 1B 78 */	mr r25, r3
/* 80D3D75C  7C BA 2B 78 */	mr r26, r5
/* 80D3D760  3C 60 80 D4 */	lis r3, mCcDObjInfo__12daObj_YBag_c@ha /* 0x80D3DC8C@ha */
/* 80D3D764  3B A3 DC 8C */	addi r29, r3, mCcDObjInfo__12daObj_YBag_c@l /* 0x80D3DC8C@l */
/* 80D3D768  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D76C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D770  4B 2C EC 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80D3D774  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3D778  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3D77C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D3D780  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80D3D784  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D3D788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D78C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D790  38 81 00 14 */	addi r4, r1, 0x14
/* 80D3D794  38 A1 00 20 */	addi r5, r1, 0x20
/* 80D3D798  4B 60 95 D5 */	bl PSMTXMultVec
/* 80D3D79C  38 61 00 20 */	addi r3, r1, 0x20
/* 80D3D7A0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80D3D7A4  7C 65 1B 78 */	mr r5, r3
/* 80D3D7A8  4B 60 98 E9 */	bl PSVECAdd
/* 80D3D7AC  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 80D3D7B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3D7B4  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3D7B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D3D7BC  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 80D3D7C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D3D7C4  3B 60 00 00 */	li r27, 0
/* 80D3D7C8  3B E0 00 00 */	li r31, 0
/* 80D3D7CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3D7D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3D7D4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80D3D7D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D7DC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D7E0  C3 FD 00 D4 */	lfs f31, 0xd4(r29)
lbl_80D3D7E4:
/* 80D3D7E4  7F C3 F3 78 */	mr r3, r30
/* 80D3D7E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80D3D7EC  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80D3D7F0  7F BD FA 14 */	add r29, r29, r31
/* 80D3D7F4  7F A5 EB 78 */	mr r5, r29
/* 80D3D7F8  4B 60 95 75 */	bl PSMTXMultVec
/* 80D3D7FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D3D800  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80D3D804  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3D808  7F A3 EB 78 */	mr r3, r29
/* 80D3D80C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D3D810  7F A5 EB 78 */	mr r5, r29
/* 80D3D814  4B 60 98 7D */	bl PSVECAdd
/* 80D3D818  38 79 09 54 */	addi r3, r25, 0x954
/* 80D3D81C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D3D820  7F A5 EB 78 */	mr r5, r29
/* 80D3D824  7F 26 CB 78 */	mr r6, r25
/* 80D3D828  4B 33 A5 3D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D3D82C  7F 83 E3 78 */	mr r3, r28
/* 80D3D830  38 99 09 54 */	addi r4, r25, 0x954
/* 80D3D834  4B 33 6B 81 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D3D838  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3D83C  41 82 00 20 */	beq lbl_80D3D85C
/* 80D3D840  C0 19 09 84 */	lfs f0, 0x984(r25)
/* 80D3D844  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80D3D848  C0 19 09 88 */	lfs f0, 0x988(r25)
/* 80D3D84C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80D3D850  C0 19 09 8C */	lfs f0, 0x98c(r25)
/* 80D3D854  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80D3D858  48 00 00 0C */	b lbl_80D3D864
lbl_80D3D85C:
/* 80D3D85C  38 60 00 00 */	li r3, 0
/* 80D3D860  48 00 00 4C */	b lbl_80D3D8AC
lbl_80D3D864:
/* 80D3D864  3B 7B 00 01 */	addi r27, r27, 1
/* 80D3D868  2C 1B 00 02 */	cmpwi r27, 2
/* 80D3D86C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80D3D870  41 80 FF 74 */	blt lbl_80D3D7E4
/* 80D3D874  38 61 00 08 */	addi r3, r1, 8
/* 80D3D878  38 81 00 38 */	addi r4, r1, 0x38
/* 80D3D87C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D3D880  4B 52 92 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80D3D884  C0 21 00 08 */	lfs f1, 8(r1)
/* 80D3D888  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D3D88C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D3D890  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D3D894  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80D3D898  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80D3D89C  4B 52 9D D9 */	bl cM_atan2s__Fff
/* 80D3D8A0  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D3D8A4  B0 1A 00 00 */	sth r0, 0(r26)
/* 80D3D8A8  38 60 00 01 */	li r3, 1
lbl_80D3D8AC:
/* 80D3D8AC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D3D8B0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D3D8B4  39 61 00 70 */	addi r11, r1, 0x70
/* 80D3D8B8  4B 62 49 61 */	bl _restgpr_25
/* 80D3D8BC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D3D8C0  7C 08 03 A6 */	mtlr r0
/* 80D3D8C4  38 21 00 80 */	addi r1, r1, 0x80
/* 80D3D8C8  4E 80 00 20 */	blr 
