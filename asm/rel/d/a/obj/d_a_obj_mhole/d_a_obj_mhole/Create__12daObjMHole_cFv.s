lbl_80C9307C:
/* 80C9307C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C93080  7C 08 02 A6 */	mflr r0
/* 80C93084  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C93088  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C9308C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C93090  7C 7F 1B 78 */	mr r31, r3
/* 80C93094  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80C93098  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80C9309C  28 00 00 02 */	cmplwi r0, 2
/* 80C930A0  41 82 00 38 */	beq lbl_80C930D8
/* 80C930A4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80C930A8  3B C0 00 01 */	li r30, 1
/* 80C930AC  28 04 00 FF */	cmplwi r4, 0xff
/* 80C930B0  41 82 00 24 */	beq lbl_80C930D4
/* 80C930B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C930B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C930BC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C930C0  7C 05 07 74 */	extsb r5, r0
/* 80C930C4  4B 3A 22 9C */	b isSwitch__10dSv_info_cCFii
/* 80C930C8  2C 03 00 00 */	cmpwi r3, 0
/* 80C930CC  40 82 00 08 */	bne lbl_80C930D4
/* 80C930D0  3B C0 00 00 */	li r30, 0
lbl_80C930D4:
/* 80C930D4  9B DF 07 00 */	stb r30, 0x700(r31)
lbl_80C930D8:
/* 80C930D8  88 1F 07 00 */	lbz r0, 0x700(r31)
/* 80C930DC  28 00 00 00 */	cmplwi r0, 0
/* 80C930E0  41 82 00 30 */	beq lbl_80C93110
/* 80C930E4  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80C930E8  A8 04 00 08 */	lha r0, 8(r4)
/* 80C930EC  3C 60 80 C9 */	lis r3, lit_3724@ha
/* 80C930F0  C8 23 3D E0 */	lfd f1, lit_3724@l(r3)
/* 80C930F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C930F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C930FC  3C 00 43 30 */	lis r0, 0x4330
/* 80C93100  90 01 00 08 */	stw r0, 8(r1)
/* 80C93104  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C93108  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C9310C  D0 04 00 10 */	stfs f0, 0x10(r4)
lbl_80C93110:
/* 80C93110  7F E3 FB 78 */	mr r3, r31
/* 80C93114  4B FF FE C5 */	bl initBaseMtx__12daObjMHole_cFv
/* 80C93118  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C9311C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C93120  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C93124  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C93128  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9312C  7F E3 FB 78 */	mr r3, r31
/* 80C93130  4B 38 74 48 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C93134  38 7F 05 80 */	addi r3, r31, 0x580
/* 80C93138  38 80 00 FF */	li r4, 0xff
/* 80C9313C  38 A0 00 FF */	li r5, 0xff
/* 80C93140  7F E6 FB 78 */	mr r6, r31
/* 80C93144  4B 3F 07 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C93148  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80C9314C  3C 80 80 C9 */	lis r4, l_cps_src@ha
/* 80C93150  38 84 3E 1C */	addi r4, r4, l_cps_src@l
/* 80C93154  4B 3F 16 7C */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80C93158  38 1F 05 80 */	addi r0, r31, 0x580
/* 80C9315C  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80C93160  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C93164  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C93168  38 A0 00 01 */	li r5, 1
/* 80C9316C  81 9F 07 24 */	lwz r12, 0x724(r31)
/* 80C93170  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C93174  7D 89 03 A6 */	mtctr r12
/* 80C93178  4E 80 04 21 */	bctrl 
/* 80C9317C  38 60 00 01 */	li r3, 1
/* 80C93180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C93184  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C93188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9318C  7C 08 03 A6 */	mtlr r0
/* 80C93190  38 21 00 20 */	addi r1, r1, 0x20
/* 80C93194  4E 80 00 20 */	blr 
