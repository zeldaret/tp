lbl_808309DC:
/* 808309DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808309E0  7C 08 02 A6 */	mflr r0
/* 808309E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808309E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808309EC  7C 7F 1B 78 */	mr r31, r3
/* 808309F0  80 03 06 60 */	lwz r0, 0x660(r3)
/* 808309F4  2C 00 00 01 */	cmpwi r0, 1
/* 808309F8  41 82 00 58 */	beq lbl_80830A50
/* 808309FC  40 80 00 A8 */	bge lbl_80830AA4
/* 80830A00  2C 00 00 00 */	cmpwi r0, 0
/* 80830A04  40 80 00 08 */	bge lbl_80830A0C
/* 80830A08  48 00 00 9C */	b lbl_80830AA4
lbl_80830A0C:
/* 80830A0C  38 7F 09 BC */	addi r3, r31, 0x9bc
/* 80830A10  38 80 00 10 */	li r4, 0x10
/* 80830A14  4B A3 3F 09 */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 80830A18  7F E3 FB 78 */	mr r3, r31
/* 80830A1C  38 80 00 06 */	li r4, 6
/* 80830A20  38 A0 00 00 */	li r5, 0
/* 80830A24  3C C0 80 83 */	lis r6, lit_4050@ha /* 0x80832D3C@ha */
/* 80830A28  C0 26 2D 3C */	lfs f1, lit_4050@l(r6)  /* 0x80832D3C@l */
/* 80830A2C  3C C0 80 83 */	lis r6, lit_3790@ha /* 0x80832CFC@ha */
/* 80830A30  C0 46 2C FC */	lfs f2, lit_3790@l(r6)  /* 0x80832CFC@l */
/* 80830A34  4B FF F1 A1 */	bl setBck__8daE_ZM_cFiUcff
/* 80830A38  3C 60 80 83 */	lis r3, lit_3790@ha /* 0x80832CFC@ha */
/* 80830A3C  C0 03 2C FC */	lfs f0, lit_3790@l(r3)  /* 0x80832CFC@l */
/* 80830A40  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80830A44  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80830A48  38 00 00 01 */	li r0, 1
/* 80830A4C  90 1F 06 60 */	stw r0, 0x660(r31)
lbl_80830A50:
/* 80830A50  7F E3 FB 78 */	mr r3, r31
/* 80830A54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80830A58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80830A5C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80830A60  4B 7E 9C B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80830A64  7C 64 1B 78 */	mr r4, r3
/* 80830A68  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80830A6C  38 A0 00 02 */	li r5, 2
/* 80830A70  38 C0 06 00 */	li r6, 0x600
/* 80830A74  4B A3 FB 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80830A78  88 1F 07 22 */	lbz r0, 0x722(r31)
/* 80830A7C  28 00 00 00 */	cmplwi r0, 0
/* 80830A80  40 82 00 24 */	bne lbl_80830AA4
/* 80830A84  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x80832F90@ha */
/* 80830A88  38 63 2F 90 */	addi r3, r3, l_HIO@l /* 0x80832F90@l */
/* 80830A8C  A8 03 00 16 */	lha r0, 0x16(r3)
/* 80830A90  98 1F 07 25 */	stb r0, 0x725(r31)
/* 80830A94  7F E3 FB 78 */	mr r3, r31
/* 80830A98  38 80 00 03 */	li r4, 3
/* 80830A9C  38 A0 00 00 */	li r5, 0
/* 80830AA0  4B FF F1 E1 */	bl setActionMode__8daE_ZM_cFii
lbl_80830AA4:
/* 80830AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80830AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80830AAC  7C 08 03 A6 */	mtlr r0
/* 80830AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80830AB4  4E 80 00 20 */	blr 
