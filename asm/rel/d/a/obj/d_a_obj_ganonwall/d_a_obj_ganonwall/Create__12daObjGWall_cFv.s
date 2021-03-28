lbl_80BF4DA8:
/* 80BF4DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF4DAC  7C 08 02 A6 */	mflr r0
/* 80BF4DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF4DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF4DB8  4B 76 D4 20 */	b _savegpr_28
/* 80BF4DBC  7C 7F 1B 78 */	mr r31, r3
/* 80BF4DC0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF4DC4  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 80BF4DC8  B0 03 05 78 */	sth r0, 0x578(r3)
/* 80BF4DCC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF4DD0  54 00 B5 BE */	rlwinm r0, r0, 0x16, 0x16, 0x1f
/* 80BF4DD4  B0 03 05 7A */	sth r0, 0x57a(r3)
/* 80BF4DD8  4B FF FF 41 */	bl initBaseMtx__12daObjGWall_cFv
/* 80BF4DDC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BF4DE0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BF4DE4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BF4DE8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BF4DEC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF4DF0  7F E3 FB 78 */	mr r3, r31
/* 80BF4DF4  4B 42 57 84 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BF4DF8  3C 60 80 BF */	lis r3, lit_3681@ha
/* 80BF4DFC  C0 03 56 AC */	lfs f0, lit_3681@l(r3)
/* 80BF4E00  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 80BF4E04  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80BF4E08  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80BF4E0C  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80BF4E10  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BF4E14  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF4E18  83 A3 00 64 */	lwz r29, 0x64(r3)
/* 80BF4E1C  3B 80 00 00 */	li r28, 0
/* 80BF4E20  3C 60 80 BF */	lis r3, l_matName@ha
/* 80BF4E24  3B C3 56 E8 */	addi r30, r3, l_matName@l
/* 80BF4E28  48 00 00 28 */	b lbl_80BF4E50
lbl_80BF4E2C:
/* 80BF4E2C  7F A3 EB 78 */	mr r3, r29
/* 80BF4E30  7F 84 E3 78 */	mr r4, r28
/* 80BF4E34  4B 6E 9C C4 */	b getName__10JUTNameTabCFUs
/* 80BF4E38  80 9E 00 00 */	lwz r4, 0(r30)
/* 80BF4E3C  4B 77 3B 58 */	b strcmp
/* 80BF4E40  2C 03 00 00 */	cmpwi r3, 0
/* 80BF4E44  40 82 00 08 */	bne lbl_80BF4E4C
/* 80BF4E48  B3 9F 05 7C */	sth r28, 0x57c(r31)
lbl_80BF4E4C:
/* 80BF4E4C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BF4E50:
/* 80BF4E50  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BF4E54  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF4E58  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80BF4E5C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80BF4E60  7C 00 18 40 */	cmplw r0, r3
/* 80BF4E64  41 80 FF C8 */	blt lbl_80BF4E2C
/* 80BF4E68  7F E3 FB 78 */	mr r3, r31
/* 80BF4E6C  48 00 02 39 */	bl execute__12daObjGWall_cFv
/* 80BF4E70  38 60 00 01 */	li r3, 1
/* 80BF4E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF4E78  4B 76 D3 AC */	b _restgpr_28
/* 80BF4E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF4E80  7C 08 03 A6 */	mtlr r0
/* 80BF4E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF4E88  4E 80 00 20 */	blr 
