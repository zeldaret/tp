lbl_80C357EC:
/* 80C357EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C357F0  7C 08 02 A6 */	mflr r0
/* 80C357F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C357F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C357FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C35800  7C 7E 1B 78 */	mr r30, r3
/* 80C35804  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C38408@ha */
/* 80C35808  3B E4 84 08 */	addi r31, r4, lit_3775@l /* 0x80C38408@l */
/* 80C3580C  88 03 09 81 */	lbz r0, 0x981(r3)
/* 80C35810  2C 00 00 01 */	cmpwi r0, 1
/* 80C35814  41 82 00 90 */	beq lbl_80C358A4
/* 80C35818  40 80 01 40 */	bge lbl_80C35958
/* 80C3581C  2C 00 00 00 */	cmpwi r0, 0
/* 80C35820  40 80 00 08 */	bge lbl_80C35828
/* 80C35824  48 00 01 34 */	b lbl_80C35958
lbl_80C35828:
/* 80C35828  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C3582C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C35830  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C35834  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35838  38 80 00 07 */	li r4, 7
/* 80C3583C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C35840  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35844  3C A5 00 02 */	addis r5, r5, 2
/* 80C35848  38 C0 00 80 */	li r6, 0x80
/* 80C3584C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C35850  4B 40 6A 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C35854  7C 64 1B 78 */	mr r4, r3
/* 80C35858  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C3585C  38 A0 00 02 */	li r5, 2
/* 80C35860  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C35864  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C35868  FC 60 10 90 */	fmr f3, f2
/* 80C3586C  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C35870  4B 3D B6 01 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C35874  88 7E 09 81 */	lbz r3, 0x981(r30)
/* 80C35878  38 03 00 01 */	addi r0, r3, 1
/* 80C3587C  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C35880  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C35884  4B 63 20 D1 */	bl cM_rndF__Ff
/* 80C35888  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C3588C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C35890  FC 00 00 1E */	fctiwz f0, f0
/* 80C35894  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C35898  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C3589C  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C358A0  48 00 00 B8 */	b lbl_80C35958
lbl_80C358A4:
/* 80C358A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C358A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C358AC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C358B0  4B 3E 4F 31 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C358B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C358B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C358BC  40 80 00 9C */	bge lbl_80C35958
/* 80C358C0  A8 7E 09 82 */	lha r3, 0x982(r30)
/* 80C358C4  38 03 FF FF */	addi r0, r3, -1
/* 80C358C8  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C358CC  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C358D0  2C 00 00 00 */	cmpwi r0, 0
/* 80C358D4  41 81 00 0C */	bgt lbl_80C358E0
/* 80C358D8  38 00 00 00 */	li r0, 0
/* 80C358DC  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C358E0:
/* 80C358E0  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C358E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C358E8  40 82 00 70 */	bne lbl_80C35958
/* 80C358EC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C358F0  4B 63 20 65 */	bl cM_rndF__Ff
/* 80C358F4  FC 00 08 1E */	fctiwz f0, f1
/* 80C358F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C358FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C35900  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C35904  40 80 00 18 */	bge lbl_80C3591C
/* 80C35908  38 00 00 02 */	li r0, 2
/* 80C3590C  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C35910  38 00 00 00 */	li r0, 0
/* 80C35914  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C35918  48 00 00 40 */	b lbl_80C35958
lbl_80C3591C:
/* 80C3591C  2C 00 00 46 */	cmpwi r0, 0x46
/* 80C35920  40 80 00 18 */	bge lbl_80C35938
/* 80C35924  38 00 00 01 */	li r0, 1
/* 80C35928  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C3592C  38 00 00 00 */	li r0, 0
/* 80C35930  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C35934  48 00 00 24 */	b lbl_80C35958
lbl_80C35938:
/* 80C35938  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C3593C  4B 63 20 19 */	bl cM_rndF__Ff
/* 80C35940  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C35944  EC 00 08 2A */	fadds f0, f0, f1
/* 80C35948  FC 00 00 1E */	fctiwz f0, f0
/* 80C3594C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C35950  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C35954  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C35958:
/* 80C35958  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C3595C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C35960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C35964  7C 08 03 A6 */	mtlr r0
/* 80C35968  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3596C  4E 80 00 20 */	blr 
