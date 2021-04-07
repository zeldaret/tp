lbl_80C02614:
/* 80C02614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C02618  7C 08 02 A6 */	mflr r0
/* 80C0261C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C02620  39 61 00 30 */	addi r11, r1, 0x30
/* 80C02624  4B 75 FB B5 */	bl _savegpr_28
/* 80C02628  7C 7D 1B 78 */	mr r29, r3
/* 80C0262C  3C 60 80 C1 */	lis r3, lit_1109@ha /* 0x80C108A0@ha */
/* 80C02630  3B C3 08 A0 */	addi r30, r3, lit_1109@l /* 0x80C108A0@l */
/* 80C02634  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C02638  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0263C  88 1D 1F C4 */	lbz r0, 0x1fc4(r29)
/* 80C02640  28 00 00 00 */	cmplwi r0, 0
/* 80C02644  40 82 00 10 */	bne lbl_80C02654
/* 80C02648  88 1D 08 44 */	lbz r0, 0x844(r29)
/* 80C0264C  28 00 00 00 */	cmplwi r0, 0
/* 80C02650  41 82 00 1C */	beq lbl_80C0266C
lbl_80C02654:
/* 80C02654  38 7D 0F 50 */	addi r3, r29, 0xf50
/* 80C02658  81 9D 0F 8C */	lwz r12, 0xf8c(r29)
/* 80C0265C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C02660  7D 89 03 A6 */	mtctr r12
/* 80C02664  4E 80 04 21 */	bctrl 
/* 80C02668  48 00 02 F0 */	b lbl_80C02958
lbl_80C0266C:
/* 80C0266C  80 1D 10 9C */	lwz r0, 0x109c(r29)
/* 80C02670  2C 00 00 00 */	cmpwi r0, 0
/* 80C02674  40 82 01 D0 */	bne lbl_80C02844
/* 80C02678  38 00 08 00 */	li r0, 0x800
/* 80C0267C  90 1D 0F 60 */	stw r0, 0xf60(r29)
/* 80C02680  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C02684  28 00 00 02 */	cmplwi r0, 2
/* 80C02688  40 82 00 2C */	bne lbl_80C026B4
/* 80C0268C  80 1D 0F 50 */	lwz r0, 0xf50(r29)
/* 80C02690  60 00 00 01 */	ori r0, r0, 1
/* 80C02694  90 1D 0F 50 */	stw r0, 0xf50(r29)
/* 80C02698  80 1D 0F 50 */	lwz r0, 0xf50(r29)
/* 80C0269C  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80C026A0  90 1D 0F 50 */	stw r0, 0xf50(r29)
/* 80C026A4  80 1D 0F 50 */	lwz r0, 0xf50(r29)
/* 80C026A8  60 00 00 10 */	ori r0, r0, 0x10
/* 80C026AC  90 1D 0F 50 */	stw r0, 0xf50(r29)
/* 80C026B0  48 00 00 10 */	b lbl_80C026C0
lbl_80C026B4:
/* 80C026B4  80 1D 0F 50 */	lwz r0, 0xf50(r29)
/* 80C026B8  60 00 00 0C */	ori r0, r0, 0xc
/* 80C026BC  90 1D 0F 50 */	stw r0, 0xf50(r29)
lbl_80C026C0:
/* 80C026C0  38 00 00 0A */	li r0, 0xa
/* 80C026C4  98 1D 0F C4 */	stb r0, 0xfc4(r29)
/* 80C026C8  38 00 00 0D */	li r0, 0xd
/* 80C026CC  98 1D 0F C7 */	stb r0, 0xfc7(r29)
/* 80C026D0  38 00 04 00 */	li r0, 0x400
/* 80C026D4  90 1D 0F 60 */	stw r0, 0xf60(r29)
/* 80C026D8  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C026DC  28 00 00 01 */	cmplwi r0, 1
/* 80C026E0  40 82 00 1C */	bne lbl_80C026FC
/* 80C026E4  38 7D 0F 50 */	addi r3, r29, 0xf50
/* 80C026E8  81 9D 0F 8C */	lwz r12, 0xf8c(r29)
/* 80C026EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C026F0  7D 89 03 A6 */	mtctr r12
/* 80C026F4  4E 80 04 21 */	bctrl 
/* 80C026F8  48 00 00 34 */	b lbl_80C0272C
lbl_80C026FC:
/* 80C026FC  38 00 FF FF */	li r0, -1
/* 80C02700  90 1D 0F 78 */	stw r0, 0xf78(r29)
/* 80C02704  38 00 00 02 */	li r0, 2
/* 80C02708  98 1D 10 0A */	stb r0, 0x100a(r29)
/* 80C0270C  38 00 00 13 */	li r0, 0x13
/* 80C02710  90 1D 0F 68 */	stw r0, 0xf68(r29)
/* 80C02714  80 1D 0F EC */	lwz r0, 0xfec(r29)
/* 80C02718  60 00 00 01 */	ori r0, r0, 1
/* 80C0271C  90 1D 0F EC */	stw r0, 0xfec(r29)
/* 80C02720  80 1D 0F EC */	lwz r0, 0xfec(r29)
/* 80C02724  60 00 00 02 */	ori r0, r0, 2
/* 80C02728  90 1D 0F EC */	stw r0, 0xfec(r29)
lbl_80C0272C:
/* 80C0272C  88 1E 01 E0 */	lbz r0, 0x1e0(r30)
/* 80C02730  7C 00 07 75 */	extsb. r0, r0
/* 80C02734  40 82 00 34 */	bne lbl_80C02768
/* 80C02738  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0273C  D0 1E 01 E4 */	stfs f0, 0x1e4(r30)
/* 80C02740  38 7E 01 E4 */	addi r3, r30, 0x1e4
/* 80C02744  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C02748  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C0274C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C02750  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha /* 0x80C04C40@ha */
/* 80C02754  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C04C40@l */
/* 80C02758  38 BE 01 D4 */	addi r5, r30, 0x1d4
/* 80C0275C  4B FF D7 3D */	bl __register_global_object
/* 80C02760  38 00 00 01 */	li r0, 1
/* 80C02764  98 1E 01 E0 */	stb r0, 0x1e0(r30)
lbl_80C02768:
/* 80C02768  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0276C  4B 40 A5 F9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C02770  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02774  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02778  A8 9D 09 1C */	lha r4, 0x91c(r29)
/* 80C0277C  4B 40 9C B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C02780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02788  38 9E 01 E4 */	addi r4, r30, 0x1e4
/* 80C0278C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C02790  4B 74 45 DD */	bl PSMTXMultVec
/* 80C02794  38 7D 10 74 */	addi r3, r29, 0x1074
/* 80C02798  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0279C  4B 66 CA 41 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C027A0  A0 1D 0A 90 */	lhz r0, 0xa90(r29)
/* 80C027A4  28 00 00 0A */	cmplwi r0, 0xa
/* 80C027A8  41 82 00 0C */	beq lbl_80C027B4
/* 80C027AC  28 00 00 04 */	cmplwi r0, 4
/* 80C027B0  40 82 00 14 */	bne lbl_80C027C4
lbl_80C027B4:
/* 80C027B4  38 7D 10 74 */	addi r3, r29, 0x1074
/* 80C027B8  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 80C027BC  4B 66 CA 3D */	bl SetH__8cM3dGCylFf
/* 80C027C0  48 00 00 14 */	b lbl_80C027D4
lbl_80C027C4:
/* 80C027C4  38 7D 10 74 */	addi r3, r29, 0x1074
/* 80C027C8  38 9F 00 00 */	addi r4, r31, 0
/* 80C027CC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80C027D0  4B 66 CA 29 */	bl SetH__8cM3dGCylFf
lbl_80C027D4:
/* 80C027D4  38 7D 10 74 */	addi r3, r29, 0x1074
/* 80C027D8  3B DF 00 00 */	addi r30, r31, 0
/* 80C027DC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C027E0  4B 66 CA 21 */	bl SetR__8cM3dGCylFf
/* 80C027E4  80 1D 0F 50 */	lwz r0, 0xf50(r29)
/* 80C027E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C027EC  41 82 00 18 */	beq lbl_80C02804
/* 80C027F0  38 7D 10 74 */	addi r3, r29, 0x1074
/* 80C027F4  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 80C027F8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C027FC  EC 21 00 2A */	fadds f1, f1, f0
/* 80C02800  4B 66 CA 01 */	bl SetR__8cM3dGCylFf
lbl_80C02804:
/* 80C02804  38 7D 1F D8 */	addi r3, r29, 0x1fd8
/* 80C02808  48 00 27 51 */	bl func_80C04F58
/* 80C0280C  7C 60 07 35 */	extsh. r0, r3
/* 80C02810  40 82 00 14 */	bne lbl_80C02824
/* 80C02814  80 1D 0F 7C */	lwz r0, 0xf7c(r29)
/* 80C02818  60 00 00 01 */	ori r0, r0, 1
/* 80C0281C  90 1D 0F 7C */	stw r0, 0xf7c(r29)
/* 80C02820  48 00 00 10 */	b lbl_80C02830
lbl_80C02824:
/* 80C02824  80 1D 0F 7C */	lwz r0, 0xf7c(r29)
/* 80C02828  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C0282C  90 1D 0F 7C */	stw r0, 0xf7c(r29)
lbl_80C02830:
/* 80C02830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C02834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C02838  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C0283C  38 9D 0F 50 */	addi r4, r29, 0xf50
/* 80C02840  4B 66 23 69 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80C02844:
/* 80C02844  3C 60 80 C1 */	lis r3, lit_5310@ha /* 0x80C10148@ha */
/* 80C02848  38 83 01 48 */	addi r4, r3, lit_5310@l /* 0x80C10148@l */
/* 80C0284C  80 64 00 00 */	lwz r3, 0(r4)
/* 80C02850  80 04 00 04 */	lwz r0, 4(r4)
/* 80C02854  90 61 00 08 */	stw r3, 8(r1)
/* 80C02858  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0285C  80 04 00 08 */	lwz r0, 8(r4)
/* 80C02860  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C02864  7F A3 EB 78 */	mr r3, r29
/* 80C02868  38 81 00 08 */	addi r4, r1, 8
/* 80C0286C  4B FF F0 55 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C02870  2C 03 00 00 */	cmpwi r3, 0
/* 80C02874  41 82 00 E4 */	beq lbl_80C02958
/* 80C02878  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C0287C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C02880  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C02884  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C02888  38 63 02 10 */	addi r3, r3, 0x210
/* 80C0288C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02890  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02894  4B 74 3C 1D */	bl PSMTXCopy
/* 80C02898  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80C0289C  4B 40 A5 D5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C028A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C028A4  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C028A8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C028AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C028B0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C028B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C028B8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C028BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C028C0  38 7D 0F 3C */	addi r3, r29, 0xf3c
/* 80C028C4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C028C8  4B 66 CD 81 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C028CC  38 7D 0F 3C */	addi r3, r29, 0xf3c
/* 80C028D0  3B FF 00 00 */	addi r31, r31, 0
/* 80C028D4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C028D8  4B 66 CE 31 */	bl SetR__8cM3dGSphFf
/* 80C028DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C028E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C028E4  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80C028E8  7F 83 E3 78 */	mr r3, r28
/* 80C028EC  38 9D 0E 18 */	addi r4, r29, 0xe18
/* 80C028F0  4B 66 22 B9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C028F4  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C028F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C028FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C02900  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C02904  38 63 03 30 */	addi r3, r3, 0x330
/* 80C02908  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0290C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02910  4B 74 3B A1 */	bl PSMTXCopy
/* 80C02914  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80C02918  4B 40 A5 59 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C0291C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C02920  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C02924  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C02928  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0292C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C02930  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C02934  38 7D 0E 04 */	addi r3, r29, 0xe04
/* 80C02938  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0293C  4B 66 CD 0D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C02940  38 7D 0E 04 */	addi r3, r29, 0xe04
/* 80C02944  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C02948  4B 66 CD C1 */	bl SetR__8cM3dGSphFf
/* 80C0294C  7F 83 E3 78 */	mr r3, r28
/* 80C02950  38 9D 0C E0 */	addi r4, r29, 0xce0
/* 80C02954  4B 66 22 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80C02958:
/* 80C02958  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0295C  4B 75 F8 C9 */	bl _restgpr_28
/* 80C02960  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C02964  7C 08 03 A6 */	mtlr r0
/* 80C02968  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0296C  4E 80 00 20 */	blr 
