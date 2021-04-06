lbl_805801B0:
/* 805801B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805801B4  7C 08 02 A6 */	mflr r0
/* 805801B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805801BC  39 61 00 40 */	addi r11, r1, 0x40
/* 805801C0  4B DE 20 19 */	bl _savegpr_28
/* 805801C4  7C 7D 1B 78 */	mr r29, r3
/* 805801C8  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x805814AC@ha */
/* 805801CC  3B E3 14 AC */	addi r31, r3, ccCylSrc@l /* 0x805814AC@l */
/* 805801D0  A8 1D 0F 46 */	lha r0, 0xf46(r29)
/* 805801D4  2C 00 00 00 */	cmpwi r0, 0
/* 805801D8  40 82 01 68 */	bne lbl_80580340
/* 805801DC  38 7D 10 3C */	addi r3, r29, 0x103c
/* 805801E0  4B B0 36 51 */	bl Move__10dCcD_GSttsFv
/* 805801E4  38 7D 10 5C */	addi r3, r29, 0x105c
/* 805801E8  4B B0 42 79 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805801EC  28 03 00 00 */	cmplwi r3, 0
/* 805801F0  41 82 01 50 */	beq lbl_80580340
/* 805801F4  38 00 00 0A */	li r0, 0xa
/* 805801F8  B0 1D 0F 46 */	sth r0, 0xf46(r29)
/* 805801FC  38 7D 10 5C */	addi r3, r29, 0x105c
/* 80580200  4B B0 42 F9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80580204  4B CE 38 45 */	bl GetAc__8cCcD_ObjFv
/* 80580208  7C 7E 1B 78 */	mr r30, r3
/* 8058020C  3B 9D 11 30 */	addi r28, r29, 0x1130
/* 80580210  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80580214  7F 84 E3 78 */	mr r4, r28
/* 80580218  4B CF 09 ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8058021C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80580220  2C 00 01 D7 */	cmpwi r0, 0x1d7
/* 80580224  40 82 00 E0 */	bne lbl_80580304
/* 80580228  A8 7D 05 AA */	lha r3, 0x5aa(r29)
/* 8058022C  38 03 00 01 */	addi r0, r3, 1
/* 80580230  B0 1D 05 AA */	sth r0, 0x5aa(r29)
/* 80580234  28 1E 00 00 */	cmplwi r30, 0
/* 80580238  41 82 00 0C */	beq lbl_80580244
/* 8058023C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80580240  48 00 00 08 */	b lbl_80580248
lbl_80580244:
/* 80580244  38 00 FF FF */	li r0, -1
lbl_80580248:
/* 80580248  90 01 00 08 */	stw r0, 8(r1)
/* 8058024C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80580250  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80580254  38 81 00 08 */	addi r4, r1, 8
/* 80580258  4B A9 95 A1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8058025C  28 03 00 00 */	cmplwi r3, 0
/* 80580260  41 82 00 30 */	beq lbl_80580290
/* 80580264  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80580268  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 8058026C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80580270  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580274  3C 00 43 30 */	lis r0, 0x4330
/* 80580278  90 01 00 20 */	stw r0, 0x20(r1)
/* 8058027C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80580280  EC 00 08 28 */	fsubs f0, f0, f1
/* 80580284  D0 1D 0C B8 */	stfs f0, 0xcb8(r29)
/* 80580288  88 03 18 28 */	lbz r0, 0x1828(r3)
/* 8058028C  98 1D 05 A8 */	stb r0, 0x5a8(r29)
lbl_80580290:
/* 80580290  88 7D 05 A8 */	lbz r3, 0x5a8(r29)
/* 80580294  2C 03 00 01 */	cmpwi r3, 1
/* 80580298  40 82 00 18 */	bne lbl_805802B0
/* 8058029C  C0 3D 0C B8 */	lfs f1, 0xcb8(r29)
/* 805802A0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805802A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805802A8  D0 1D 0C B8 */	stfs f0, 0xcb8(r29)
/* 805802AC  48 00 00 1C */	b lbl_805802C8
lbl_805802B0:
/* 805802B0  7C 60 07 75 */	extsb. r0, r3
/* 805802B4  40 82 00 14 */	bne lbl_805802C8
/* 805802B8  C0 3D 0C B8 */	lfs f1, 0xcb8(r29)
/* 805802BC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805802C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805802C4  D0 1D 0C B8 */	stfs f0, 0xcb8(r29)
lbl_805802C8:
/* 805802C8  7F A3 EB 78 */	mr r3, r29
/* 805802CC  7F 84 E3 78 */	mr r4, r28
/* 805802D0  4B FF F7 C1 */	bl Set_Hahen__13daObjHHASHI_cFP4cXyz
/* 805802D4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805802D8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805802DC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805802E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805802E4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805802E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805802EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805802F0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805802F4  38 80 00 07 */	li r4, 7
/* 805802F8  38 A0 00 01 */	li r5, 1
/* 805802FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80580300  4B AE F7 25 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80580304:
/* 80580304  38 7D 10 5C */	addi r3, r29, 0x105c
/* 80580308  4B B0 41 B1 */	bl ResetTgHit__12dCcD_GObjInfFv
/* 8058030C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80580310  7C 03 07 74 */	extsb r3, r0
/* 80580314  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070060@ha */
/* 80580318  38 04 00 60 */	addi r0, r4, 0x0060 /* 0x00070060@l */
/* 8058031C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80580320  4B AA CD 4D */	bl dComIfGp_getReverb__Fi
/* 80580324  7C 67 1B 78 */	mr r7, r3
/* 80580328  38 7E 06 3C */	addi r3, r30, 0x63c
/* 8058032C  38 81 00 0C */	addi r4, r1, 0xc
/* 80580330  88 BE 18 28 */	lbz r5, 0x1828(r30)
/* 80580334  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80580338  38 C0 00 00 */	li r6, 0
/* 8058033C  4B D4 1E 59 */	bl startChainSound__12Z2CreatureFMF10JAISoundIDUcfUlSc
lbl_80580340:
/* 80580340  39 61 00 40 */	addi r11, r1, 0x40
/* 80580344  4B DE 1E E1 */	bl _restgpr_28
/* 80580348  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058034C  7C 08 03 A6 */	mtlr r0
/* 80580350  38 21 00 40 */	addi r1, r1, 0x40
/* 80580354  4E 80 00 20 */	blr 
