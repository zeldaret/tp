lbl_804E5220:
/* 804E5220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E5224  7C 08 02 A6 */	mflr r0
/* 804E5228  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E522C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E5230  7C 7F 1B 78 */	mr r31, r3
/* 804E5234  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 804E5238  80 63 00 04 */	lwz r3, 4(r3)
/* 804E523C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804E5240  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804E5244  38 63 00 60 */	addi r3, r3, 0x60
/* 804E5248  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804E524C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804E5250  80 84 00 00 */	lwz r4, 0(r4)
/* 804E5254  4B E6 12 5D */	bl PSMTXCopy
/* 804E5258  3C 60 80 4F */	lis r3, lit_3790@ha /* 0x804EE8B0@ha */
/* 804E525C  C0 03 E8 B0 */	lfs f0, lit_3790@l(r3)  /* 0x804EE8B0@l */
/* 804E5260  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E5264  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E5268  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E526C  38 61 00 14 */	addi r3, r1, 0x14
/* 804E5270  38 81 00 08 */	addi r4, r1, 8
/* 804E5274  4B D8 BC 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804E5278  7F E3 FB 78 */	mr r3, r31
/* 804E527C  38 81 00 08 */	addi r4, r1, 8
/* 804E5280  38 A0 00 0D */	li r5, 0xd
/* 804E5284  38 C0 00 00 */	li r6, 0
/* 804E5288  38 E0 00 15 */	li r7, 0x15
/* 804E528C  4B B3 78 4D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 804E5290  7F E3 FB 78 */	mr r3, r31
/* 804E5294  4B B3 49 E9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804E5298  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804E529C  54 04 46 3E */	srwi r4, r0, 0x18
/* 804E52A0  2C 04 00 FF */	cmpwi r4, 0xff
/* 804E52A4  41 82 00 18 */	beq lbl_804E52BC
/* 804E52A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E52AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E52B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E52B4  7C 05 07 74 */	extsb r5, r0
/* 804E52B8  4B B4 FF 49 */	bl onSwitch__10dSv_info_cFii
lbl_804E52BC:
/* 804E52BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E52C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E52C4  7C 08 03 A6 */	mtlr r0
/* 804E52C8  38 21 00 30 */	addi r1, r1, 0x30
/* 804E52CC  4E 80 00 20 */	blr 
