lbl_801657EC:
/* 801657EC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801657F0  7C 08 02 A6 */	mflr r0
/* 801657F4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801657F8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801657FC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80165800  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80165804  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80165808  7C 9E 23 78 */	mr r30, r4
/* 8016580C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80165810  4B F1 1D 6D */	bl __ct__11dBgS_GndChkFv
/* 80165814  38 61 00 5C */	addi r3, r1, 0x5c
/* 80165818  7F C4 F3 78 */	mr r4, r30
/* 8016581C  48 10 25 0D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80165820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80165824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80165828  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8016582C  7F E3 FB 78 */	mr r3, r31
/* 80165830  38 81 00 5C */	addi r4, r1, 0x5c
/* 80165834  4B F0 EC 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80165838  FF E0 08 90 */	fmr f31, f1
/* 8016583C  38 61 00 08 */	addi r3, r1, 8
/* 80165840  4B F1 21 C1 */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 80165844  38 61 00 08 */	addi r3, r1, 8
/* 80165848  7F C4 F3 78 */	mr r4, r30
/* 8016584C  48 10 24 DD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80165850  7F E3 FB 78 */	mr r3, r31
/* 80165854  38 81 00 08 */	addi r4, r1, 8
/* 80165858  4B F0 EC 49 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8016585C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80165860  4C 41 13 82 */	cror 2, 1, 2
/* 80165864  40 82 00 08 */	bne lbl_8016586C
/* 80165868  FC 20 F8 90 */	fmr f1, f31
lbl_8016586C:
/* 8016586C  C0 02 9C AC */	lfs f0, lit_5659(r2)
/* 80165870  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80165874  40 82 00 0C */	bne lbl_80165880
/* 80165878  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8016587C  48 00 00 08 */	b lbl_80165884
lbl_80165880:
/* 80165880  FF E0 08 90 */	fmr f31, f1
lbl_80165884:
/* 80165884  38 61 00 08 */	addi r3, r1, 8
/* 80165888  38 80 FF FF */	li r4, -1
/* 8016588C  4B F1 22 0D */	bl __dt__18dBgS_CamGndChk_WtrFv
/* 80165890  38 61 00 5C */	addi r3, r1, 0x5c
/* 80165894  38 80 FF FF */	li r4, -1
/* 80165898  4B F1 1D 59 */	bl __dt__11dBgS_GndChkFv
/* 8016589C  FC 20 F8 90 */	fmr f1, f31
/* 801658A0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 801658A4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801658A8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801658AC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801658B0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801658B4  7C 08 03 A6 */	mtlr r0
/* 801658B8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801658BC  4E 80 00 20 */	blr 
