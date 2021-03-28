lbl_80BDE500:
/* 80BDE500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDE504  7C 08 02 A6 */	mflr r0
/* 80BDE508  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDE50C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDE510  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BDE514  7C 7E 1B 78 */	mr r30, r3
/* 80BDE518  7C 9F 23 78 */	mr r31, r4
/* 80BDE51C  48 00 08 C5 */	bl event_proc_call__17daObjDmElevator_cFv
/* 80BDE520  7F C3 F3 78 */	mr r3, r30
/* 80BDE524  48 00 00 D5 */	bl setting_ride_flag__17daObjDmElevator_cFv
/* 80BDE528  7F C3 F3 78 */	mr r3, r30
/* 80BDE52C  48 00 01 D1 */	bl event_sw_proc_call__17daObjDmElevator_cFv
/* 80BDE530  7F C3 F3 78 */	mr r3, r30
/* 80BDE534  48 00 04 2D */	bl mode_sw_proc_call__17daObjDmElevator_cFv
/* 80BDE538  7F C3 F3 78 */	mr r3, r30
/* 80BDE53C  48 00 03 95 */	bl calc_top_pos__17daObjDmElevator_cFv
/* 80BDE540  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BDE544  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDE548  7F C3 F3 78 */	mr r3, r30
/* 80BDE54C  4B FF F8 45 */	bl setBaseMtx__17daObjDmElevator_cFv
/* 80BDE550  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80BDE554  4B 49 D4 6C */	b Move__4dBgWFv
/* 80BDE558  88 1E 06 2F */	lbz r0, 0x62f(r30)
/* 80BDE55C  98 1E 06 30 */	stb r0, 0x630(r30)
/* 80BDE560  38 60 00 00 */	li r3, 0
/* 80BDE564  98 7E 06 2F */	stb r3, 0x62f(r30)
/* 80BDE568  88 1E 06 32 */	lbz r0, 0x632(r30)
/* 80BDE56C  98 1E 06 33 */	stb r0, 0x633(r30)
/* 80BDE570  98 7E 06 32 */	stb r3, 0x632(r30)
/* 80BDE574  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80BDE578  98 1E 06 35 */	stb r0, 0x635(r30)
/* 80BDE57C  98 7E 06 34 */	stb r3, 0x634(r30)
/* 80BDE580  A8 9E 05 E4 */	lha r4, 0x5e4(r30)
/* 80BDE584  3C 60 80 BE */	lis r3, lit_3987@ha
/* 80BDE588  C0 23 F8 C8 */	lfs f1, lit_3987@l(r3)
/* 80BDE58C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BDE590  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BDE594  3C 60 80 BE */	lis r3, lit_3988@ha
/* 80BDE598  C0 03 F8 CC */	lfs f0, lit_3988@l(r3)
/* 80BDE59C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BDE5A0  FC 00 00 1E */	fctiwz f0, f0
/* 80BDE5A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BDE5A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BDE5AC  7C 04 02 14 */	add r0, r4, r0
/* 80BDE5B0  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
/* 80BDE5B4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDE5B8  7C 03 07 74 */	extsb r3, r0
/* 80BDE5BC  4B 44 EA B0 */	b dComIfGp_getReverb__Fi
/* 80BDE5C0  7C 65 1B 78 */	mr r5, r3
/* 80BDE5C4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BDE5C8  38 80 00 00 */	li r4, 0
/* 80BDE5CC  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 80BDE5D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BDE5D4  7D 89 03 A6 */	mtctr r12
/* 80BDE5D8  4E 80 04 21 */	bctrl 
/* 80BDE5DC  38 60 00 01 */	li r3, 1
/* 80BDE5E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDE5E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BDE5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDE5EC  7C 08 03 A6 */	mtlr r0
/* 80BDE5F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDE5F4  4E 80 00 20 */	blr 
