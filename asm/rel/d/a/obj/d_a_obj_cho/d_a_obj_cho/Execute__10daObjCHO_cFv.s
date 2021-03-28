lbl_80BCB87C:
/* 80BCB87C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BCB880  7C 08 02 A6 */	mflr r0
/* 80BCB884  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BCB888  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BCB88C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BCB890  7C 7E 1B 78 */	mr r30, r3
/* 80BCB894  3C 60 80 BD */	lis r3, lit_3775@ha
/* 80BCB898  3B E3 C5 78 */	addi r31, r3, lit_3775@l
/* 80BCB89C  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 80BCB8A0  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB8A4  40 81 00 70 */	ble lbl_80BCB914
/* 80BCB8A8  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 80BCB8AC  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80BCB8B0  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80BCB8B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BCB8B8  3C 00 43 30 */	lis r0, 0x4330
/* 80BCB8BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BCB8C0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BCB8C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BCB8C8  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCB8CC  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 80BCB8D0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BCB8D4  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BCB8D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCB8DC  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 80BCB8E0  38 81 00 24 */	addi r4, r1, 0x24
/* 80BCB8E4  38 A0 00 00 */	li r5, 0
/* 80BCB8E8  38 C0 FF FF */	li r6, -1
/* 80BCB8EC  81 9E 09 CC */	lwz r12, 0x9cc(r30)
/* 80BCB8F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BCB8F4  7D 89 03 A6 */	mtctr r12
/* 80BCB8F8  4E 80 04 21 */	bctrl 
/* 80BCB8FC  7F C3 F3 78 */	mr r3, r30
/* 80BCB900  4B 59 27 78 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80BCB904  7F C3 F3 78 */	mr r3, r30
/* 80BCB908  4B FF FB 95 */	bl ParticleSet__10daObjCHO_cFv
/* 80BCB90C  38 60 00 01 */	li r3, 1
/* 80BCB910  48 00 02 18 */	b lbl_80BCBB28
lbl_80BCB914:
/* 80BCB914  38 60 00 00 */	li r3, 0
/* 80BCB918  7C 64 1B 78 */	mr r4, r3
/* 80BCB91C  38 00 00 03 */	li r0, 3
/* 80BCB920  7C 09 03 A6 */	mtctr r0
lbl_80BCB924:
/* 80BCB924  38 C3 09 82 */	addi r6, r3, 0x982
/* 80BCB928  7C BE 32 AE */	lhax r5, r30, r6
/* 80BCB92C  38 05 FF FF */	addi r0, r5, -1
/* 80BCB930  7C 1E 33 2E */	sthx r0, r30, r6
/* 80BCB934  7C 1E 32 AE */	lhax r0, r30, r6
/* 80BCB938  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB93C  41 81 00 08 */	bgt lbl_80BCB944
/* 80BCB940  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80BCB944:
/* 80BCB944  38 63 00 02 */	addi r3, r3, 2
/* 80BCB948  42 00 FF DC */	bdnz lbl_80BCB924
/* 80BCB94C  7F C3 F3 78 */	mr r3, r30
/* 80BCB950  4B FF F9 5D */	bl checkGroundPos__10daObjCHO_cFv
/* 80BCB954  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB958  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BCB95C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCB960  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BCB964  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB968  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BCB96C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB970  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BCB974  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCB978  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BCB97C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB980  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BCB984  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80BCB988  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BCB98C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCB990  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BCB994  88 1E 09 C8 */	lbz r0, 0x9c8(r30)
/* 80BCB998  2C 00 00 01 */	cmpwi r0, 1
/* 80BCB99C  41 82 01 0C */	beq lbl_80BCBAA8
/* 80BCB9A0  40 80 01 10 */	bge lbl_80BCBAB0
/* 80BCB9A4  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB9A8  40 80 00 08 */	bge lbl_80BCB9B0
/* 80BCB9AC  48 00 01 04 */	b lbl_80BCBAB0
lbl_80BCB9B0:
/* 80BCB9B0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80BCB9B4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BCB9B8  40 82 00 10 */	bne lbl_80BCB9C8
/* 80BCB9BC  7F C3 F3 78 */	mr r3, r30
/* 80BCB9C0  4B FF F8 51 */	bl Action__10daObjCHO_cFv
/* 80BCB9C4  48 00 00 1C */	b lbl_80BCB9E0
lbl_80BCB9C8:
/* 80BCB9C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB9CC  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80BCB9D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCB9D4  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BCB9D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB9DC  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
lbl_80BCB9E0:
/* 80BCB9E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCB9E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCB9E8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BCB9EC  38 00 00 FF */	li r0, 0xff
/* 80BCB9F0  90 01 00 08 */	stw r0, 8(r1)
/* 80BCB9F4  38 80 00 00 */	li r4, 0
/* 80BCB9F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BCB9FC  38 00 FF FF */	li r0, -1
/* 80BCBA00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BCBA04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCBA08  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCBA0C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BCBA10  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BCBA14  38 A0 00 00 */	li r5, 0
/* 80BCBA18  38 C0 0A 1C */	li r6, 0xa1c
/* 80BCBA1C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80BCBA20  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80BCBA24  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80BCBA28  39 40 00 00 */	li r10, 0
/* 80BCBA2C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BCBA30  4B 48 1A 9C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BCBA34  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80BCBA38  7F C3 F3 78 */	mr r3, r30
/* 80BCBA3C  4B FF E9 65 */	bl SetCcSph__10daObjCHO_cFv
/* 80BCBA40  7F C3 F3 78 */	mr r3, r30
/* 80BCBA44  48 00 00 FD */	bl ObjHit__10daObjCHO_cFv
/* 80BCBA48  7F C3 F3 78 */	mr r3, r30
/* 80BCBA4C  4B FF FB 75 */	bl BoomChk__10daObjCHO_cFv
/* 80BCBA50  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCBA54  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BCBA58  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BCBA5C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BCBA60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCBA64  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BCBA68  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80BCBA6C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BCBA70  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCBA74  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BCBA78  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80BCBA7C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BCBA80  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80BCBA84  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BCBA88  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80BCBA8C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BCBA90  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80BCBA94  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCBA98  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BCBA9C  7F C3 F3 78 */	mr r3, r30
/* 80BCBAA0  4B FF F9 FD */	bl ParticleSet__10daObjCHO_cFv
/* 80BCBAA4  48 00 00 0C */	b lbl_80BCBAB0
lbl_80BCBAA8:
/* 80BCBAA8  7F C3 F3 78 */	mr r3, r30
/* 80BCBAAC  4B FF F7 BD */	bl ShopAction__10daObjCHO_cFv
lbl_80BCBAB0:
/* 80BCBAB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BCBAB4  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BCBAB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BCBABC  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 80BCBAC0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BCBAC4  38 A0 00 00 */	li r5, 0
/* 80BCBAC8  38 C0 FF FF */	li r6, -1
/* 80BCBACC  81 9E 09 CC */	lwz r12, 0x9cc(r30)
/* 80BCBAD0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BCBAD4  7D 89 03 A6 */	mtctr r12
/* 80BCBAD8  4E 80 04 21 */	bctrl 
/* 80BCBADC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80BCBAE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BCBAE4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BCBAE8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BCBAEC  4B 4A AF C0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BCBAF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BCBAF4  7C 03 07 74 */	extsb r3, r0
/* 80BCBAF8  4B 46 15 74 */	b dComIfGp_getReverb__Fi
/* 80BCBAFC  7C 65 1B 78 */	mr r5, r3
/* 80BCBB00  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCBB04  38 80 00 00 */	li r4, 0
/* 80BCBB08  4B 44 55 A8 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80BCBB0C  80 7E 09 C4 */	lwz r3, 0x9c4(r30)
/* 80BCBB10  4B 44 19 18 */	b play__14mDoExt_baseAnmFv
/* 80BCBB14  80 7E 09 C0 */	lwz r3, 0x9c0(r30)
/* 80BCBB18  4B 44 19 10 */	b play__14mDoExt_baseAnmFv
/* 80BCBB1C  7F C3 F3 78 */	mr r3, r30
/* 80BCBB20  48 00 01 F1 */	bl setBaseMtx__10daObjCHO_cFv
/* 80BCBB24  38 60 00 01 */	li r3, 1
lbl_80BCBB28:
/* 80BCBB28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BCBB2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BCBB30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BCBB34  7C 08 03 A6 */	mtlr r0
/* 80BCBB38  38 21 00 40 */	addi r1, r1, 0x40
/* 80BCBB3C  4E 80 00 20 */	blr 
