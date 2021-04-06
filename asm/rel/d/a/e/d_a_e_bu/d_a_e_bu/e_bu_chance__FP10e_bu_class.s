lbl_80692930:
/* 80692930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80692934  7C 08 02 A6 */	mflr r0
/* 80692938  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069293C  39 61 00 30 */	addi r11, r1, 0x30
/* 80692940  4B CC F8 9D */	bl _savegpr_29
/* 80692944  7C 7D 1B 78 */	mr r29, r3
/* 80692948  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80694690@ha */
/* 8069294C  3B E4 46 90 */	addi r31, r4, lit_3788@l /* 0x80694690@l */
/* 80692950  3B C0 00 00 */	li r30, 0
/* 80692954  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80692958  2C 00 00 01 */	cmpwi r0, 1
/* 8069295C  41 82 00 64 */	beq lbl_806929C0
/* 80692960  40 80 01 30 */	bge lbl_80692A90
/* 80692964  2C 00 00 00 */	cmpwi r0, 0
/* 80692968  40 80 00 08 */	bge lbl_80692970
/* 8069296C  48 00 01 24 */	b lbl_80692A90
lbl_80692970:
/* 80692970  38 80 00 07 */	li r4, 7
/* 80692974  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80692978  38 A0 00 02 */	li r5, 2
/* 8069297C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80692980  4B FF E8 D1 */	bl anm_init__FP10e_bu_classifUcf
/* 80692984  38 00 00 01 */	li r0, 1
/* 80692988  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 8069298C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80692990  4B BD 4F C5 */	bl cM_rndF__Ff
/* 80692994  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80692998  EC 00 08 2A */	fadds f0, f0, f1
/* 8069299C  FC 00 00 1E */	fctiwz f0, f0
/* 806929A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806929A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806929A8  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 806929AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806929B0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806929B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806929B8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806929BC  48 00 00 D4 */	b lbl_80692A90
lbl_806929C0:
/* 806929C0  80 1D 07 38 */	lwz r0, 0x738(r29)
/* 806929C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806929C8  41 82 00 A0 */	beq lbl_80692A68
/* 806929CC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806929D0  4B BD 4F 85 */	bl cM_rndF__Ff
/* 806929D4  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806929D8  EC 02 08 2A */	fadds f0, f2, f1
/* 806929DC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806929E0  FC 20 10 90 */	fmr f1, f2
/* 806929E4  4B BD 4F A9 */	bl cM_rndFX__Ff
/* 806929E8  D0 3D 04 F8 */	stfs f1, 0x4f8(r29)
/* 806929EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806929F0  4B BD 4F 9D */	bl cM_rndFX__Ff
/* 806929F4  D0 3D 05 00 */	stfs f1, 0x500(r29)
/* 806929F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806929FC  4B BD 4F 59 */	bl cM_rndF__Ff
/* 80692A00  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80692A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80692A08  40 80 00 10 */	bge lbl_80692A18
/* 80692A0C  38 00 00 00 */	li r0, 0
/* 80692A10  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 80692A14  48 00 00 0C */	b lbl_80692A20
lbl_80692A18:
/* 80692A18  38 00 80 00 */	li r0, -32768
/* 80692A1C  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_80692A20:
/* 80692A20  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80692A24  4B BD 4F 31 */	bl cM_rndF__Ff
/* 80692A28  FC 00 08 1E */	fctiwz f0, f1
/* 80692A2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80692A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80692A34  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 80692A38  3B C0 00 01 */	li r30, 1
/* 80692A3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070366@ha */
/* 80692A40  38 03 03 66 */	addi r0, r3, 0x0366 /* 0x00070366@l */
/* 80692A44  90 01 00 08 */	stw r0, 8(r1)
/* 80692A48  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80692A4C  38 81 00 08 */	addi r4, r1, 8
/* 80692A50  38 A0 00 00 */	li r5, 0
/* 80692A54  38 C0 FF FF */	li r6, -1
/* 80692A58  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80692A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80692A60  7D 89 03 A6 */	mtctr r12
/* 80692A64  4E 80 04 21 */	bctrl 
lbl_80692A68:
/* 80692A68  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 80692A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80692A70  40 82 00 20 */	bne lbl_80692A90
/* 80692A74  38 60 00 00 */	li r3, 0
/* 80692A78  B0 7D 04 E0 */	sth r3, 0x4e0(r29)
/* 80692A7C  38 00 00 02 */	li r0, 2
/* 80692A80  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80692A84  B0 7D 06 74 */	sth r3, 0x674(r29)
/* 80692A88  7F C3 F3 78 */	mr r3, r30
/* 80692A8C  48 00 00 50 */	b lbl_80692ADC
lbl_80692A90:
/* 80692A90  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80692A94  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80692A98  7C 65 1B 78 */	mr r5, r3
/* 80692A9C  4B CB 45 F5 */	bl PSVECAdd
/* 80692AA0  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80692AA4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80692AA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80692AAC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80692AB0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80692AB4  A8 9D 06 A0 */	lha r4, 0x6a0(r29)
/* 80692AB8  38 A0 00 02 */	li r5, 2
/* 80692ABC  38 C0 10 00 */	li r6, 0x1000
/* 80692AC0  4B BD DB 49 */	bl cLib_addCalcAngleS2__FPssss
/* 80692AC4  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80692AC8  A8 9D 06 A2 */	lha r4, 0x6a2(r29)
/* 80692ACC  38 A0 00 01 */	li r5, 1
/* 80692AD0  38 C0 10 00 */	li r6, 0x1000
/* 80692AD4  4B BD DB 35 */	bl cLib_addCalcAngleS2__FPssss
/* 80692AD8  7F C3 F3 78 */	mr r3, r30
lbl_80692ADC:
/* 80692ADC  39 61 00 30 */	addi r11, r1, 0x30
/* 80692AE0  4B CC F7 49 */	bl _restgpr_29
/* 80692AE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80692AE8  7C 08 03 A6 */	mtlr r0
/* 80692AEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80692AF0  4E 80 00 20 */	blr 
