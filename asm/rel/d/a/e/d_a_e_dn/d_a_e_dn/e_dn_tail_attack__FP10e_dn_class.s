lbl_804E9354:
/* 804E9354  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E9358  7C 08 02 A6 */	mflr r0
/* 804E935C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E9360  39 61 00 40 */	addi r11, r1, 0x40
/* 804E9364  4B E7 8E 78 */	b _savegpr_29
/* 804E9368  7C 7E 1B 78 */	mr r30, r3
/* 804E936C  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E9370  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E9374  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 804E9378  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804E937C  FC 00 00 1E */	fctiwz f0, f0
/* 804E9380  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E9384  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 804E9388  38 00 00 01 */	li r0, 1
/* 804E938C  98 03 06 F4 */	stb r0, 0x6f4(r3)
/* 804E9390  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E9394  2C 00 00 01 */	cmpwi r0, 1
/* 804E9398  41 82 00 34 */	beq lbl_804E93CC
/* 804E939C  40 80 01 4C */	bge lbl_804E94E8
/* 804E93A0  2C 00 00 00 */	cmpwi r0, 0
/* 804E93A4  40 80 00 08 */	bge lbl_804E93AC
/* 804E93A8  48 00 01 40 */	b lbl_804E94E8
lbl_804E93AC:
/* 804E93AC  38 80 00 08 */	li r4, 8
/* 804E93B0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E93B4  38 A0 00 00 */	li r5, 0
/* 804E93B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E93BC  4B FF BF 15 */	bl anm_init__FP10e_dn_classifUcf
/* 804E93C0  38 00 00 01 */	li r0, 1
/* 804E93C4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E93C8  48 00 01 20 */	b lbl_804E94E8
lbl_804E93CC:
/* 804E93CC  2C 1D 00 13 */	cmpwi r29, 0x13
/* 804E93D0  41 80 00 08 */	blt lbl_804E93D8
/* 804E93D4  4B FF FE 01 */	bl tail_eff_set__FP10e_dn_class
lbl_804E93D8:
/* 804E93D8  2C 1D 00 21 */	cmpwi r29, 0x21
/* 804E93DC  41 80 00 60 */	blt lbl_804E943C
/* 804E93E0  2C 1D 00 29 */	cmpwi r29, 0x29
/* 804E93E4  41 81 00 58 */	bgt lbl_804E943C
/* 804E93E8  38 00 00 01 */	li r0, 1
/* 804E93EC  98 1E 06 EF */	stb r0, 0x6ef(r30)
/* 804E93F0  38 00 00 02 */	li r0, 2
/* 804E93F4  98 1E 06 EE */	stb r0, 0x6ee(r30)
/* 804E93F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E93FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E9400  80 63 00 00 */	lwz r3, 0(r3)
/* 804E9404  A8 9E 06 D4 */	lha r4, 0x6d4(r30)
/* 804E9408  4B B2 2F D4 */	b mDoMtx_YrotS__FPA4_fs
/* 804E940C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E9410  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E9414  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E9418  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E941C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E9420  38 61 00 1C */	addi r3, r1, 0x1c
/* 804E9424  38 81 00 10 */	addi r4, r1, 0x10
/* 804E9428  4B D8 7A C4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E942C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804E9430  38 81 00 10 */	addi r4, r1, 0x10
/* 804E9434  7C 65 1B 78 */	mr r5, r3
/* 804E9438  4B E5 DC 58 */	b PSVECAdd
lbl_804E943C:
/* 804E943C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 804E9440  40 82 00 34 */	bne lbl_804E9474
/* 804E9444  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003C@ha */
/* 804E9448  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0007003C@l */
/* 804E944C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E9450  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E9454  38 81 00 0C */	addi r4, r1, 0xc
/* 804E9458  38 A0 00 00 */	li r5, 0
/* 804E945C  38 C0 FF FF */	li r6, -1
/* 804E9460  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E9464  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E9468  7D 89 03 A6 */	mtctr r12
/* 804E946C  4E 80 04 21 */	bctrl 
/* 804E9470  48 00 00 38 */	b lbl_804E94A8
lbl_804E9474:
/* 804E9474  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 804E9478  40 82 00 30 */	bne lbl_804E94A8
/* 804E947C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003B@ha */
/* 804E9480  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0007003B@l */
/* 804E9484  90 01 00 08 */	stw r0, 8(r1)
/* 804E9488  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E948C  38 81 00 08 */	addi r4, r1, 8
/* 804E9490  38 A0 00 00 */	li r5, 0
/* 804E9494  38 C0 FF FF */	li r6, -1
/* 804E9498  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E949C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E94A0  7D 89 03 A6 */	mtctr r12
/* 804E94A4  4E 80 04 21 */	bctrl 
lbl_804E94A8:
/* 804E94A8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E94AC  38 80 00 01 */	li r4, 1
/* 804E94B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E94B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E94B8  40 82 00 18 */	bne lbl_804E94D0
/* 804E94BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E94C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E94C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E94C8  41 82 00 08 */	beq lbl_804E94D0
/* 804E94CC  38 80 00 00 */	li r4, 0
lbl_804E94D0:
/* 804E94D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E94D4  41 82 00 14 */	beq lbl_804E94E8
/* 804E94D8  38 00 00 03 */	li r0, 3
/* 804E94DC  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E94E0  38 00 00 00 */	li r0, 0
/* 804E94E4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E94E8:
/* 804E94E8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 804E94EC  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 804E94F0  7C 03 02 14 */	add r0, r3, r0
/* 804E94F4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E94F8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 804E94FC  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 804E9500  7C 03 02 14 */	add r0, r3, r0
/* 804E9504  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 804E9508  38 7E 08 2A */	addi r3, r30, 0x82a
/* 804E950C  38 80 00 00 */	li r4, 0
/* 804E9510  38 A0 00 01 */	li r5, 1
/* 804E9514  38 C0 01 2C */	li r6, 0x12c
/* 804E9518  4B D8 70 F0 */	b cLib_addCalcAngleS2__FPssss
/* 804E951C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E9520  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E9524  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 804E9528  4B D8 65 58 */	b cLib_addCalc0__FPfff
/* 804E952C  39 61 00 40 */	addi r11, r1, 0x40
/* 804E9530  4B E7 8C F8 */	b _restgpr_29
/* 804E9534  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E9538  7C 08 03 A6 */	mtlr r0
/* 804E953C  38 21 00 40 */	addi r1, r1, 0x40
/* 804E9540  4E 80 00 20 */	blr 
