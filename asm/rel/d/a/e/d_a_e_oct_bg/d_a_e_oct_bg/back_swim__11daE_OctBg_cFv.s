lbl_80738714:
/* 80738714  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80738718  7C 08 02 A6 */	mflr r0
/* 8073871C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80738720  39 61 00 50 */	addi r11, r1, 0x50
/* 80738724  4B C2 9A B5 */	bl _savegpr_28
/* 80738728  7C 7E 1B 78 */	mr r30, r3
/* 8073872C  3C 60 80 74 */	lis r3, lit_3768@ha /* 0x80739D60@ha */
/* 80738730  3B E3 9D 60 */	addi r31, r3, lit_3768@l /* 0x80739D60@l */
/* 80738734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80738738  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073873C  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80738740  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 80738744  2C 00 00 00 */	cmpwi r0, 0
/* 80738748  40 82 00 3C */	bne lbl_80738784
/* 8073874C  38 00 00 30 */	li r0, 0x30
/* 80738750  98 1E 0B AE */	stb r0, 0xbae(r30)
/* 80738754  38 00 40 00 */	li r0, 0x4000
/* 80738758  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 8073875C  38 00 10 00 */	li r0, 0x1000
/* 80738760  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80738764  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80738768  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073876C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80738770  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80738774  80 7E 0B 70 */	lwz r3, 0xb70(r30)
/* 80738778  38 03 00 01 */	addi r0, r3, 1
/* 8073877C  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 80738780  48 00 01 7C */	b lbl_807388FC
lbl_80738784:
/* 80738784  2C 00 FF FF */	cmpwi r0, -1
/* 80738788  41 82 01 74 */	beq lbl_807388FC
/* 8073878C  38 7E 0B 80 */	addi r3, r30, 0xb80
/* 80738790  38 80 10 00 */	li r4, 0x1000
/* 80738794  38 A0 00 08 */	li r5, 8
/* 80738798  38 C0 04 00 */	li r6, 0x400
/* 8073879C  38 E0 01 00 */	li r7, 0x100
/* 807387A0  4B B3 7D A1 */	bl cLib_addCalcAngleS__FPsssss
/* 807387A4  7F C3 F3 78 */	mr r3, r30
/* 807387A8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807387AC  4B 8E 1F 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807387B0  7C 64 1B 78 */	mr r4, r3
/* 807387B4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807387B8  38 A0 00 10 */	li r5, 0x10
/* 807387BC  38 C0 04 00 */	li r6, 0x400
/* 807387C0  38 E0 01 00 */	li r7, 0x100
/* 807387C4  4B B3 7D 7D */	bl cLib_addCalcAngleS__FPsssss
/* 807387C8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807387CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807387D0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807387D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807387D8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807387DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807387E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807387E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807387E8  4B B3 84 8D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807387EC  7C 03 00 D0 */	neg r0, r3
/* 807387F0  7C 04 07 34 */	extsh r4, r0
/* 807387F4  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807387F8  38 A0 00 10 */	li r5, 0x10
/* 807387FC  38 C0 04 00 */	li r6, 0x400
/* 80738800  38 E0 01 00 */	li r7, 0x100
/* 80738804  4B B3 7D 3D */	bl cLib_addCalcAngleS__FPsssss
/* 80738808  7C 60 07 34 */	extsh r0, r3
/* 8073880C  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80738810  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80738814  90 01 00 34 */	stw r0, 0x34(r1)
/* 80738818  3C 00 43 30 */	lis r0, 0x4330
/* 8073881C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80738820  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80738824  EC 20 08 28 */	fsubs f1, f0, f1
/* 80738828  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8073882C  EC 00 08 2A */	fadds f0, f0, f1
/* 80738830  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80738834  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80738838  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8073883C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80738840  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80738844  7C 63 02 14 */	add r3, r3, r0
/* 80738848  C0 23 00 04 */	lfs f1, 4(r3)
/* 8073884C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80738850  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80738854  EC 20 00 72 */	fmuls f1, f0, f1
/* 80738858  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8073885C  4B B3 7E E5 */	bl cLib_chaseF__FPfff
/* 80738860  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80738864  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80738868  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8073886C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80738870  7C 23 04 2E */	lfsx f1, r3, r0
/* 80738874  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80738878  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8073887C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80738880  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80738884  4B B3 7E BD */	bl cLib_chaseF__FPfff
/* 80738888  88 1E 0B AE */	lbz r0, 0xbae(r30)
/* 8073888C  28 00 00 00 */	cmplwi r0, 0
/* 80738890  40 82 00 6C */	bne lbl_807388FC
/* 80738894  88 1E 0B AC */	lbz r0, 0xbac(r30)
/* 80738898  28 00 00 00 */	cmplwi r0, 0
/* 8073889C  41 82 00 34 */	beq lbl_807388D0
/* 807388A0  3C 60 80 74 */	lis r3, lit_4700@ha /* 0x80739F9C@ha */
/* 807388A4  38 83 9F 9C */	addi r4, r3, lit_4700@l /* 0x80739F9C@l */
/* 807388A8  80 64 00 00 */	lwz r3, 0(r4)
/* 807388AC  80 04 00 04 */	lwz r0, 4(r4)
/* 807388B0  90 61 00 14 */	stw r3, 0x14(r1)
/* 807388B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807388B8  80 04 00 08 */	lwz r0, 8(r4)
/* 807388BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807388C0  7F C3 F3 78 */	mr r3, r30
/* 807388C4  38 81 00 14 */	addi r4, r1, 0x14
/* 807388C8  4B FF D9 A5 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 807388CC  48 00 00 30 */	b lbl_807388FC
lbl_807388D0:
/* 807388D0  3C 60 80 74 */	lis r3, lit_4703@ha /* 0x80739FA8@ha */
/* 807388D4  38 83 9F A8 */	addi r4, r3, lit_4703@l /* 0x80739FA8@l */
/* 807388D8  80 64 00 00 */	lwz r3, 0(r4)
/* 807388DC  80 04 00 04 */	lwz r0, 4(r4)
/* 807388E0  90 61 00 08 */	stw r3, 8(r1)
/* 807388E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807388E8  80 04 00 08 */	lwz r0, 8(r4)
/* 807388EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807388F0  7F C3 F3 78 */	mr r3, r30
/* 807388F4  38 81 00 08 */	addi r4, r1, 8
/* 807388F8  4B FF D9 75 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
lbl_807388FC:
/* 807388FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80738900  4B C2 99 25 */	bl _restgpr_28
/* 80738904  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80738908  7C 08 03 A6 */	mtlr r0
/* 8073890C  38 21 00 50 */	addi r1, r1, 0x50
/* 80738910  4E 80 00 20 */	blr 
