lbl_8058271C:
/* 8058271C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80582720  7C 08 02 A6 */	mflr r0
/* 80582724  90 01 00 94 */	stw r0, 0x94(r1)
/* 80582728  39 61 00 90 */	addi r11, r1, 0x90
/* 8058272C  4B DD FA B0 */	b _savegpr_29
/* 80582730  7C 7D 1B 78 */	mr r29, r3
/* 80582734  3C 60 80 58 */	lis r3, lit_3970@ha
/* 80582738  3B E3 56 20 */	addi r31, r3, lit_3970@l
/* 8058273C  38 61 00 20 */	addi r3, r1, 0x20
/* 80582740  4B AF 4E 3C */	b __ct__11dBgS_GndChkFv
/* 80582744  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 80582748  D0 61 00 08 */	stfs f3, 8(r1)
/* 8058274C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80582750  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80582754  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80582758  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8058275C  C0 3D 07 08 */	lfs f1, 0x708(r29)
/* 80582760  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80582764  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80582768  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8058276C  EC 00 08 2A */	fadds f0, f0, f1
/* 80582770  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80582774  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80582778  EC 00 10 2A */	fadds f0, f0, f2
/* 8058277C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80582780  38 61 00 20 */	addi r3, r1, 0x20
/* 80582784  38 81 00 14 */	addi r4, r1, 0x14
/* 80582788  4B CE 55 84 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8058278C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80582790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80582794  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80582798  7F C3 F3 78 */	mr r3, r30
/* 8058279C  38 81 00 20 */	addi r4, r1, 0x20
/* 805827A0  4B AF 1D 00 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805827A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805827A8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805827AC  FC 20 08 18 */	frsp f1, f1
/* 805827B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805827B4  41 82 00 38 */	beq lbl_805827EC
/* 805827B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805827BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805827C0  FC 00 0A 10 */	fabs f0, f1
/* 805827C4  FC 40 00 18 */	frsp f2, f0
/* 805827C8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 805827CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805827D0  40 80 00 1C */	bge lbl_805827EC
/* 805827D4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805827D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805827DC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805827E0  4B CE 4E 94 */	b cM_atan2s__Fff
/* 805827E4  7C 03 00 D0 */	neg r0, r3
/* 805827E8  B0 1D 05 EE */	sth r0, 0x5ee(r29)
lbl_805827EC:
/* 805827EC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805827F0  C0 01 00 08 */	lfs f0, 8(r1)
/* 805827F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805827F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805827FC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80582800  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80582804  EC 01 00 2A */	fadds f0, f1, f0
/* 80582808  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8058280C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80582810  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80582814  38 61 00 20 */	addi r3, r1, 0x20
/* 80582818  38 81 00 14 */	addi r4, r1, 0x14
/* 8058281C  4B CE 54 F0 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80582820  7F C3 F3 78 */	mr r3, r30
/* 80582824  38 81 00 20 */	addi r4, r1, 0x20
/* 80582828  4B AF 1C 78 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8058282C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80582830  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80582834  FC 20 08 18 */	frsp f1, f1
/* 80582838  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8058283C  41 82 00 34 */	beq lbl_80582870
/* 80582840  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80582844  EC 21 00 28 */	fsubs f1, f1, f0
/* 80582848  FC 00 0A 10 */	fabs f0, f1
/* 8058284C  FC 40 00 18 */	frsp f2, f0
/* 80582850  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80582854  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80582858  40 80 00 18 */	bge lbl_80582870
/* 8058285C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80582860  C0 01 00 08 */	lfs f0, 8(r1)
/* 80582864  EC 42 00 28 */	fsubs f2, f2, f0
/* 80582868  4B CE 4E 0C */	b cM_atan2s__Fff
/* 8058286C  B0 7D 05 F2 */	sth r3, 0x5f2(r29)
lbl_80582870:
/* 80582870  38 61 00 20 */	addi r3, r1, 0x20
/* 80582874  38 80 FF FF */	li r4, -1
/* 80582878  4B AF 4D 78 */	b __dt__11dBgS_GndChkFv
/* 8058287C  39 61 00 90 */	addi r11, r1, 0x90
/* 80582880  4B DD F9 A8 */	b _restgpr_29
/* 80582884  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80582888  7C 08 03 A6 */	mtlr r0
/* 8058288C  38 21 00 90 */	addi r1, r1, 0x90
/* 80582890  4E 80 00 20 */	blr 
