lbl_80CA7628:
/* 80CA7628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA762C  7C 08 02 A6 */	mflr r0
/* 80CA7630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7638  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA763C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA7640  7C 9F 23 78 */	mr r31, r4
/* 80CA7644  41 82 02 40 */	beq lbl_80CA7884
/* 80CA7648  3C 60 80 CA */	lis r3, __vt__15daObj_Oiltubo_c@ha /* 0x80CA7AC4@ha */
/* 80CA764C  38 03 7A C4 */	addi r0, r3, __vt__15daObj_Oiltubo_c@l /* 0x80CA7AC4@l */
/* 80CA7650  90 1E 0A D0 */	stw r0, 0xad0(r30)
/* 80CA7654  34 1E 0A A4 */	addic. r0, r30, 0xaa4
/* 80CA7658  41 82 00 1C */	beq lbl_80CA7674
/* 80CA765C  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha /* 0x803CAD10@ha */
/* 80CA7660  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l /* 0x803CAD10@l */
/* 80CA7664  90 1E 0A B4 */	stw r0, 0xab4(r30)
/* 80CA7668  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CA766C  38 80 00 00 */	li r4, 0
/* 80CA7670  4B 61 68 D9 */	bl __dt__14Z2SoundObjBaseFv
lbl_80CA7674:
/* 80CA7674  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 80CA7678  38 80 FF FF */	li r4, -1
/* 80CA767C  4B 5C 06 19 */	bl __dt__11cBgS_GndChkFv
/* 80CA7680  34 1E 09 20 */	addic. r0, r30, 0x920
/* 80CA7684  41 82 00 84 */	beq lbl_80CA7708
/* 80CA7688  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CA768C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CA7690  90 7E 09 5C */	stw r3, 0x95c(r30)
/* 80CA7694  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA7698  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80CA769C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA76A0  90 1E 0A 58 */	stw r0, 0xa58(r30)
/* 80CA76A4  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CA76A8  41 82 00 54 */	beq lbl_80CA76FC
/* 80CA76AC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CA76B0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CA76B4  90 7E 0A 40 */	stw r3, 0xa40(r30)
/* 80CA76B8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA76BC  90 1E 0A 58 */	stw r0, 0xa58(r30)
/* 80CA76C0  34 1E 0A 44 */	addic. r0, r30, 0xa44
/* 80CA76C4  41 82 00 10 */	beq lbl_80CA76D4
/* 80CA76C8  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CA7A7C@ha */
/* 80CA76CC  38 03 7A 7C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CA7A7C@l */
/* 80CA76D0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80CA76D4:
/* 80CA76D4  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CA76D8  41 82 00 24 */	beq lbl_80CA76FC
/* 80CA76DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CA76E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CA76E4  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80CA76E8  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CA76EC  41 82 00 10 */	beq lbl_80CA76FC
/* 80CA76F0  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha /* 0x80CA7A88@ha */
/* 80CA76F4  38 03 7A 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CA7A88@l */
/* 80CA76F8  90 1E 0A 3C */	stw r0, 0xa3c(r30)
lbl_80CA76FC:
/* 80CA76FC  38 7E 09 20 */	addi r3, r30, 0x920
/* 80CA7700  38 80 00 00 */	li r4, 0
/* 80CA7704  4B 3D C9 E1 */	bl __dt__12dCcD_GObjInfFv
lbl_80CA7708:
/* 80CA7708  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80CA770C  41 82 00 84 */	beq lbl_80CA7790
/* 80CA7710  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CA7714  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CA7718  90 7E 08 20 */	stw r3, 0x820(r30)
/* 80CA771C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA7720  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80CA7724  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA7728  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 80CA772C  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CA7730  41 82 00 54 */	beq lbl_80CA7784
/* 80CA7734  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CA7738  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CA773C  90 7E 09 04 */	stw r3, 0x904(r30)
/* 80CA7740  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA7744  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 80CA7748  34 1E 09 08 */	addic. r0, r30, 0x908
/* 80CA774C  41 82 00 10 */	beq lbl_80CA775C
/* 80CA7750  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CA7A7C@ha */
/* 80CA7754  38 03 7A 7C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CA7A7C@l */
/* 80CA7758  90 1E 09 1C */	stw r0, 0x91c(r30)
lbl_80CA775C:
/* 80CA775C  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CA7760  41 82 00 24 */	beq lbl_80CA7784
/* 80CA7764  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CA7768  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CA776C  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80CA7770  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CA7774  41 82 00 10 */	beq lbl_80CA7784
/* 80CA7778  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha /* 0x80CA7A88@ha */
/* 80CA777C  38 03 7A 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CA7A88@l */
/* 80CA7780  90 1E 09 00 */	stw r0, 0x900(r30)
lbl_80CA7784:
/* 80CA7784  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80CA7788  38 80 00 00 */	li r4, 0
/* 80CA778C  4B 3D C9 59 */	bl __dt__12dCcD_GObjInfFv
lbl_80CA7790:
/* 80CA7790  34 1E 07 A4 */	addic. r0, r30, 0x7a4
/* 80CA7794  41 82 00 28 */	beq lbl_80CA77BC
/* 80CA7798  3C 60 80 CA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CA7A70@ha */
/* 80CA779C  38 03 7A 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CA7A70@l */
/* 80CA77A0  90 1E 07 B0 */	stw r0, 0x7b0(r30)
/* 80CA77A4  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 80CA77A8  38 80 FF FF */	li r4, -1
/* 80CA77AC  4B 5C 77 6D */	bl __dt__8cM3dGCirFv
/* 80CA77B0  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CA77B4  38 80 00 00 */	li r4, 0
/* 80CA77B8  4B 5C 08 F9 */	bl __dt__13cBgS_PolyInfoFv
lbl_80CA77BC:
/* 80CA77BC  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80CA77C0  41 82 00 54 */	beq lbl_80CA7814
/* 80CA77C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CA77C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CA77CC  90 7E 07 80 */	stw r3, 0x780(r30)
/* 80CA77D0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA77D4  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CA77D8  34 1E 07 84 */	addic. r0, r30, 0x784
/* 80CA77DC  41 82 00 24 */	beq lbl_80CA7800
/* 80CA77E0  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CA7A64@ha */
/* 80CA77E4  38 03 7A 64 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CA7A64@l */
/* 80CA77E8  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CA77EC  34 1E 07 84 */	addic. r0, r30, 0x784
/* 80CA77F0  41 82 00 10 */	beq lbl_80CA7800
/* 80CA77F4  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CA7A58@ha */
/* 80CA77F8  38 03 7A 58 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CA7A58@l */
/* 80CA77FC  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_80CA7800:
/* 80CA7800  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80CA7804  41 82 00 10 */	beq lbl_80CA7814
/* 80CA7808  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CA780C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CA7810  90 1E 07 80 */	stw r0, 0x780(r30)
lbl_80CA7814:
/* 80CA7814  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80CA7818  41 82 00 2C */	beq lbl_80CA7844
/* 80CA781C  3C 60 80 CA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CA7A94@ha */
/* 80CA7820  38 63 7A 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CA7A94@l */
/* 80CA7824  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 80CA7828  38 03 00 0C */	addi r0, r3, 0xc
/* 80CA782C  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80CA7830  38 03 00 18 */	addi r0, r3, 0x18
/* 80CA7834  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80CA7838  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CA783C  38 80 00 00 */	li r4, 0
/* 80CA7840  4B 3C E7 55 */	bl __dt__9dBgS_AcchFv
lbl_80CA7844:
/* 80CA7844  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CA7848  41 82 00 20 */	beq lbl_80CA7868
/* 80CA784C  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CA7850  41 82 00 18 */	beq lbl_80CA7868
/* 80CA7854  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CA7858  41 82 00 10 */	beq lbl_80CA7868
/* 80CA785C  3C 60 80 CA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CA7AB8@ha */
/* 80CA7860  38 03 7A B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CA7AB8@l */
/* 80CA7864  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80CA7868:
/* 80CA7868  7F C3 F3 78 */	mr r3, r30
/* 80CA786C  38 80 00 00 */	li r4, 0
/* 80CA7870  4B 37 14 1D */	bl __dt__10fopAc_ac_cFv
/* 80CA7874  7F E0 07 35 */	extsh. r0, r31
/* 80CA7878  40 81 00 0C */	ble lbl_80CA7884
/* 80CA787C  7F C3 F3 78 */	mr r3, r30
/* 80CA7880  4B 62 74 BD */	bl __dl__FPv
lbl_80CA7884:
/* 80CA7884  7F C3 F3 78 */	mr r3, r30
/* 80CA7888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA788C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA7890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7894  7C 08 03 A6 */	mtlr r0
/* 80CA7898  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA789C  4E 80 00 20 */	blr 
