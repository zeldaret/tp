lbl_80792720:
/* 80792720  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80792724  7C 08 02 A6 */	mflr r0
/* 80792728  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8079272C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80792730  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80792734  7C 9E 23 78 */	mr r30, r4
/* 80792738  7C 7F 1B 78 */	mr r31, r3
/* 8079273C  38 61 00 20 */	addi r3, r1, 0x20
/* 80792740  4B 8E 55 28 */	b __ct__11dBgS_LinChkFv
/* 80792744  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80792748  D0 01 00 08 */	stfs f0, 8(r1)
/* 8079274C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80792750  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80792754  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80792758  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079275C  3C 60 80 7A */	lis r3, lit_4051@ha
/* 80792760  C0 43 86 24 */	lfs f2, lit_4051@l(r3)
/* 80792764  EC 01 10 2A */	fadds f0, f1, f2
/* 80792768  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079276C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80792770  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80792774  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80792778  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8079277C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80792780  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80792784  EC 01 10 2A */	fadds f0, f1, f2
/* 80792788  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079278C  38 61 00 20 */	addi r3, r1, 0x20
/* 80792790  38 81 00 14 */	addi r4, r1, 0x14
/* 80792794  38 A1 00 08 */	addi r5, r1, 8
/* 80792798  7F E6 FB 78 */	mr r6, r31
/* 8079279C  4B 8E 55 C8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807927A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807927A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807927A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807927AC  38 81 00 20 */	addi r4, r1, 0x20
/* 807927B0  4B 8E 1C 04 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807927B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807927B8  41 82 00 18 */	beq lbl_807927D0
/* 807927BC  38 61 00 20 */	addi r3, r1, 0x20
/* 807927C0  38 80 FF FF */	li r4, -1
/* 807927C4  4B 8E 55 18 */	b __dt__11dBgS_LinChkFv
/* 807927C8  38 60 00 01 */	li r3, 1
/* 807927CC  48 00 00 14 */	b lbl_807927E0
lbl_807927D0:
/* 807927D0  38 61 00 20 */	addi r3, r1, 0x20
/* 807927D4  38 80 FF FF */	li r4, -1
/* 807927D8  4B 8E 55 04 */	b __dt__11dBgS_LinChkFv
/* 807927DC  38 60 00 00 */	li r3, 0
lbl_807927E0:
/* 807927E0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 807927E4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 807927E8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807927EC  7C 08 03 A6 */	mtlr r0
/* 807927F0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807927F4  4E 80 00 20 */	blr 
