lbl_804700F0:
/* 804700F0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804700F4  7C 08 02 A6 */	mflr r0
/* 804700F8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804700FC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80470100  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80470104  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80470108  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8047010C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80470110  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80470114  39 61 00 40 */	addi r11, r1, 0x40
/* 80470118  4B EF 20 C5 */	bl _savegpr_29
/* 8047011C  7C 7E 1B 78 */	mr r30, r3
/* 80470120  3C 80 80 48 */	lis r4, l_cyl_info@ha /* 0x8047990C@ha */
/* 80470124  3B E4 99 0C */	addi r31, r4, l_cyl_info@l /* 0x8047990C@l */
/* 80470128  4B FF F5 7D */	bl data__12daObjCarry_cFv
/* 8047012C  C3 C3 00 30 */	lfs f30, 0x30(r3)
/* 80470130  7F C3 F3 78 */	mr r3, r30
/* 80470134  4B FF F5 71 */	bl data__12daObjCarry_cFv
/* 80470138  C3 A3 00 30 */	lfs f29, 0x30(r3)
/* 8047013C  7F C3 F3 78 */	mr r3, r30
/* 80470140  4B FF F5 65 */	bl data__12daObjCarry_cFv
/* 80470144  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80470148  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8047014C  D3 BE 04 F0 */	stfs f29, 0x4f0(r30)
/* 80470150  D3 DE 04 F4 */	stfs f30, 0x4f4(r30)
/* 80470154  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80470158  38 03 00 24 */	addi r0, r3, 0x24
/* 8047015C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80470160  7F C3 F3 78 */	mr r3, r30
/* 80470164  4B FF F5 41 */	bl data__12daObjCarry_cFv
/* 80470168  C3 A3 00 50 */	lfs f29, 0x50(r3)
/* 8047016C  7F C3 F3 78 */	mr r3, r30
/* 80470170  4B FF F5 35 */	bl data__12daObjCarry_cFv
/* 80470174  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80470178  38 7E 07 4C */	addi r3, r30, 0x74c
/* 8047017C  FC 40 E8 90 */	fmr f2, f29
/* 80470180  4B C0 5D D9 */	bl SetWall__12dBgS_AcchCirFff
/* 80470184  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80470188  90 01 00 08 */	stw r0, 8(r1)
/* 8047018C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80470190  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80470194  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80470198  7F C6 F3 78 */	mr r6, r30
/* 8047019C  38 E0 00 01 */	li r7, 1
/* 804701A0  39 1E 07 4C */	addi r8, r30, 0x74c
/* 804701A4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 804701A8  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 804701AC  4B C0 60 9D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804701B0  38 00 00 02 */	li r0, 2
/* 804701B4  98 1E 07 48 */	stb r0, 0x748(r30)
/* 804701B8  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 804701BC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804701C0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 804701C4  C0 1F 0A A8 */	lfs f0, 0xaa8(r31)
/* 804701C8  D0 1E 06 3C */	stfs f0, 0x63c(r30)
/* 804701CC  7F C3 F3 78 */	mr r3, r30
/* 804701D0  4B FF F4 D5 */	bl data__12daObjCarry_cFv
/* 804701D4  88 83 00 36 */	lbz r4, 0x36(r3)
/* 804701D8  38 7E 07 8C */	addi r3, r30, 0x78c
/* 804701DC  38 A0 00 FF */	li r5, 0xff
/* 804701E0  7F C6 F3 78 */	mr r6, r30
/* 804701E4  4B C1 36 7D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804701E8  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 804701EC  38 9F 09 30 */	addi r4, r31, 0x930
/* 804701F0  4B C1 46 C5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804701F4  38 1E 07 8C */	addi r0, r30, 0x78c
/* 804701F8  90 1E 08 0C */	stw r0, 0x80c(r30)
/* 804701FC  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 80470200  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80470204  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80470208  38 9F 00 00 */	addi r4, r31, 0
/* 8047020C  7C 84 02 14 */	add r4, r4, r0
/* 80470210  4B DF EF 05 */	bl Set__8cM3dGCylFRC9cM3dGCylS
/* 80470214  7F C3 F3 78 */	mr r3, r30
/* 80470218  4B FF F4 8D */	bl data__12daObjCarry_cFv
/* 8047021C  88 03 00 37 */	lbz r0, 0x37(r3)
/* 80470220  98 1E 07 DC */	stb r0, 0x7dc(r30)
/* 80470224  7F C3 F3 78 */	mr r3, r30
/* 80470228  48 00 94 05 */	bl setTgHitCallBack__12daObjCarry_cFv
/* 8047022C  7F C3 F3 78 */	mr r3, r30
/* 80470230  48 00 94 19 */	bl setCoHitCallBack__12daObjCarry_cFv
/* 80470234  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80470238  28 00 00 06 */	cmplwi r0, 6
/* 8047023C  41 82 00 98 */	beq lbl_804702D4
/* 80470240  28 00 00 08 */	cmplwi r0, 8
/* 80470244  40 82 00 1C */	bne lbl_80470260
/* 80470248  38 7E 09 04 */	addi r3, r30, 0x904
/* 8047024C  38 9F 09 74 */	addi r4, r31, 0x974
/* 80470250  4B C1 47 E5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80470254  38 1E 07 8C */	addi r0, r30, 0x78c
/* 80470258  90 1E 09 48 */	stw r0, 0x948(r30)
/* 8047025C  48 00 00 78 */	b lbl_804702D4
lbl_80470260:
/* 80470260  28 00 00 09 */	cmplwi r0, 9
/* 80470264  40 82 00 1C */	bne lbl_80470280
/* 80470268  38 7E 09 04 */	addi r3, r30, 0x904
/* 8047026C  38 9F 09 74 */	addi r4, r31, 0x974
/* 80470270  4B C1 47 C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80470274  38 1E 07 8C */	addi r0, r30, 0x78c
/* 80470278  90 1E 09 48 */	stw r0, 0x948(r30)
/* 8047027C  48 00 00 58 */	b lbl_804702D4
lbl_80470280:
/* 80470280  2C 00 00 03 */	cmpwi r0, 3
/* 80470284  40 82 00 1C */	bne lbl_804702A0
/* 80470288  38 7E 0A 3C */	addi r3, r30, 0xa3c
/* 8047028C  38 9F 09 B4 */	addi r4, r31, 0x9b4
/* 80470290  4B C1 45 41 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80470294  38 1E 07 8C */	addi r0, r30, 0x78c
/* 80470298  90 1E 0A 80 */	stw r0, 0xa80(r30)
/* 8047029C  48 00 00 38 */	b lbl_804702D4
lbl_804702A0:
/* 804702A0  28 00 00 00 */	cmplwi r0, 0
/* 804702A4  41 82 00 1C */	beq lbl_804702C0
/* 804702A8  28 00 00 01 */	cmplwi r0, 1
/* 804702AC  41 82 00 14 */	beq lbl_804702C0
/* 804702B0  28 00 00 07 */	cmplwi r0, 7
/* 804702B4  41 82 00 0C */	beq lbl_804702C0
/* 804702B8  28 00 00 0A */	cmplwi r0, 0xa
/* 804702BC  40 82 00 18 */	bne lbl_804702D4
lbl_804702C0:
/* 804702C0  38 7E 0B 80 */	addi r3, r30, 0xb80
/* 804702C4  38 9F 0A 00 */	addi r4, r31, 0xa00
/* 804702C8  4B C1 45 ED */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804702CC  38 1E 07 8C */	addi r0, r30, 0x78c
/* 804702D0  90 1E 0B C4 */	stw r0, 0xbc4(r30)
lbl_804702D4:
/* 804702D4  38 00 00 17 */	li r0, 0x17
/* 804702D8  98 1E 04 97 */	stb r0, 0x497(r30)
/* 804702DC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804702E0  80 63 00 04 */	lwz r3, 4(r3)
/* 804702E4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804702E8  80 63 00 00 */	lwz r3, 0(r3)
/* 804702EC  C3 A3 00 38 */	lfs f29, 0x38(r3)
/* 804702F0  7F C3 F3 78 */	mr r3, r30
/* 804702F4  4B FF F3 B1 */	bl data__12daObjCarry_cFv
/* 804702F8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804702FC  EF BD 00 32 */	fmuls f29, f29, f0
/* 80470300  7F C3 F3 78 */	mr r3, r30
/* 80470304  4B FF F3 A1 */	bl data__12daObjCarry_cFv
/* 80470308  C3 C3 00 40 */	lfs f30, 0x40(r3)
/* 8047030C  7F C3 F3 78 */	mr r3, r30
/* 80470310  4B FF F3 95 */	bl data__12daObjCarry_cFv
/* 80470314  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 80470318  7F C3 F3 78 */	mr r3, r30
/* 8047031C  4B FF F3 89 */	bl data__12daObjCarry_cFv
/* 80470320  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80470324  7F C3 F3 78 */	mr r3, r30
/* 80470328  FC 40 F8 90 */	fmr f2, f31
/* 8047032C  FC 60 F0 90 */	fmr f3, f30
/* 80470330  FC 80 E8 90 */	fmr f4, f29
/* 80470334  4B BA A2 31 */	bl fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff
/* 80470338  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8047033C  60 00 00 10 */	ori r0, r0, 0x10
/* 80470340  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80470344  7F C3 F3 78 */	mr r3, r30
/* 80470348  4B FF F3 5D */	bl data__12daObjCarry_cFv
/* 8047034C  88 03 00 34 */	lbz r0, 0x34(r3)
/* 80470350  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80470354  7F C3 F3 78 */	mr r3, r30
/* 80470358  38 80 00 04 */	li r4, 4
/* 8047035C  4B FF F3 91 */	bl checkFlag__12daObjCarry_cFUc
/* 80470360  2C 03 00 00 */	cmpwi r3, 0
/* 80470364  41 82 00 14 */	beq lbl_80470378
/* 80470368  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 8047036C  60 00 00 01 */	ori r0, r0, 1
/* 80470370  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80470374  48 00 00 24 */	b lbl_80470398
lbl_80470378:
/* 80470378  7F C3 F3 78 */	mr r3, r30
/* 8047037C  38 80 00 08 */	li r4, 8
/* 80470380  4B FF F3 6D */	bl checkFlag__12daObjCarry_cFUc
/* 80470384  2C 03 00 00 */	cmpwi r3, 0
/* 80470388  41 82 00 10 */	beq lbl_80470398
/* 8047038C  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80470390  60 00 00 02 */	ori r0, r0, 2
/* 80470394  98 1E 04 9A */	stb r0, 0x49a(r30)
lbl_80470398:
/* 80470398  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047039C  D0 1E 0C EC */	stfs f0, 0xcec(r30)
/* 804703A0  7F C3 F3 78 */	mr r3, r30
/* 804703A4  4B FF F3 01 */	bl data__12daObjCarry_cFv
/* 804703A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804703AC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 804703B0  C0 3F 0A AC */	lfs f1, 0xaac(r31)
/* 804703B4  4B DF 75 A1 */	bl cM_rndF__Ff
/* 804703B8  D0 3E 0D 70 */	stfs f1, 0xd70(r30)
/* 804703BC  C0 1E 0D 70 */	lfs f0, 0xd70(r30)
/* 804703C0  FC 00 00 1E */	fctiwz f0, f0
/* 804703C4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804703C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804703CC  B0 1E 0D 04 */	sth r0, 0xd04(r30)
/* 804703D0  7F C3 F3 78 */	mr r3, r30
/* 804703D4  4B FF FB D1 */	bl checkBreakWolfAttack__12daObjCarry_cFv
/* 804703D8  2C 03 00 00 */	cmpwi r3, 0
/* 804703DC  41 82 00 10 */	beq lbl_804703EC
/* 804703E0  80 1E 07 F0 */	lwz r0, 0x7f0(r30)
/* 804703E4  64 00 20 00 */	oris r0, r0, 0x2000
/* 804703E8  90 1E 07 F0 */	stw r0, 0x7f0(r30)
lbl_804703EC:
/* 804703EC  83 BE 07 F0 */	lwz r29, 0x7f0(r30)
/* 804703F0  7F C3 F3 78 */	mr r3, r30
/* 804703F4  4B FF FC 05 */	bl checkCarryBoomerang__12daObjCarry_cFv
/* 804703F8  2C 03 00 00 */	cmpwi r3, 0
/* 804703FC  40 82 00 0C */	bne lbl_80470408
/* 80470400  57 A0 04 1C */	rlwinm r0, r29, 0, 0x10, 0xe
/* 80470404  90 1E 07 F0 */	stw r0, 0x7f0(r30)
lbl_80470408:
/* 80470408  7F C3 F3 78 */	mr r3, r30
/* 8047040C  4B FF FC 49 */	bl checkCarryHookshot__12daObjCarry_cFv
/* 80470410  2C 03 00 00 */	cmpwi r3, 0
/* 80470414  41 82 00 1C */	beq lbl_80470430
/* 80470418  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8047041C  64 00 00 08 */	oris r0, r0, 8
/* 80470420  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80470424  80 1E 07 F0 */	lwz r0, 0x7f0(r30)
/* 80470428  60 00 40 00 */	ori r0, r0, 0x4000
/* 8047042C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
lbl_80470430:
/* 80470430  7F C3 F3 78 */	mr r3, r30
/* 80470434  4B FF FC 4D */	bl checkCarryWolf__12daObjCarry_cFv
/* 80470438  2C 03 00 00 */	cmpwi r3, 0
/* 8047043C  41 82 00 10 */	beq lbl_8047044C
/* 80470440  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80470444  60 00 00 10 */	ori r0, r0, 0x10
/* 80470448  98 1E 04 9A */	stb r0, 0x49a(r30)
lbl_8047044C:
/* 8047044C  7F C3 F3 78 */	mr r3, r30
/* 80470450  4B FF FC 65 */	bl checkCarryOneHand__12daObjCarry_cFv
/* 80470454  2C 03 00 00 */	cmpwi r3, 0
/* 80470458  41 82 00 10 */	beq lbl_80470468
/* 8047045C  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80470460  60 00 00 04 */	ori r0, r0, 4
/* 80470464  98 1E 04 9A */	stb r0, 0x49a(r30)
lbl_80470468:
/* 80470468  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 8047046C  28 00 00 00 */	cmplwi r0, 0
/* 80470470  41 82 00 1C */	beq lbl_8047048C
/* 80470474  28 00 00 01 */	cmplwi r0, 1
/* 80470478  41 82 00 14 */	beq lbl_8047048C
/* 8047047C  28 00 00 07 */	cmplwi r0, 7
/* 80470480  41 82 00 0C */	beq lbl_8047048C
/* 80470484  28 00 00 0A */	cmplwi r0, 0xa
/* 80470488  40 82 00 10 */	bne lbl_80470498
lbl_8047048C:
/* 8047048C  80 1E 07 F0 */	lwz r0, 0x7f0(r30)
/* 80470490  64 00 02 00 */	oris r0, r0, 0x200
/* 80470494  90 1E 07 F0 */	stw r0, 0x7f0(r30)
lbl_80470498:
/* 80470498  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 8047049C  28 00 00 00 */	cmplwi r0, 0
/* 804704A0  41 82 00 38 */	beq lbl_804704D8
/* 804704A4  28 00 00 07 */	cmplwi r0, 7
/* 804704A8  41 82 00 30 */	beq lbl_804704D8
/* 804704AC  28 00 00 0C */	cmplwi r0, 0xc
/* 804704B0  41 82 00 28 */	beq lbl_804704D8
/* 804704B4  28 00 00 01 */	cmplwi r0, 1
/* 804704B8  41 82 00 20 */	beq lbl_804704D8
/* 804704BC  28 00 00 0A */	cmplwi r0, 0xa
/* 804704C0  41 82 00 18 */	beq lbl_804704D8
/* 804704C4  28 00 00 0D */	cmplwi r0, 0xd
/* 804704C8  41 82 00 10 */	beq lbl_804704D8
/* 804704CC  80 1E 07 E0 */	lwz r0, 0x7e0(r30)
/* 804704D0  60 00 00 40 */	ori r0, r0, 0x40
/* 804704D4  90 1E 07 E0 */	stw r0, 0x7e0(r30)
lbl_804704D8:
/* 804704D8  7F C3 F3 78 */	mr r3, r30
/* 804704DC  48 00 91 89 */	bl CreateInitCall__12daObjCarry_cFv
/* 804704E0  2C 03 00 00 */	cmpwi r3, 0
/* 804704E4  40 82 00 0C */	bne lbl_804704F0
/* 804704E8  38 60 00 00 */	li r3, 0
/* 804704EC  48 00 00 C0 */	b lbl_804705AC
lbl_804704F0:
/* 804704F0  38 60 00 01 */	li r3, 1
/* 804704F4  98 7E 0D AF */	stb r3, 0xdaf(r30)
/* 804704F8  88 1E 0C F1 */	lbz r0, 0xcf1(r30)
/* 804704FC  28 00 00 0B */	cmplwi r0, 0xb
/* 80470500  40 82 00 14 */	bne lbl_80470514
/* 80470504  38 00 00 00 */	li r0, 0
/* 80470508  98 1E 0C F3 */	stb r0, 0xcf3(r30)
/* 8047050C  98 1E 0D B1 */	stb r0, 0xdb1(r30)
/* 80470510  48 00 00 10 */	b lbl_80470520
lbl_80470514:
/* 80470514  38 00 00 0A */	li r0, 0xa
/* 80470518  98 1E 0C F3 */	stb r0, 0xcf3(r30)
/* 8047051C  98 7E 0D B1 */	stb r3, 0xdb1(r30)
lbl_80470520:
/* 80470520  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80470524  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80470528  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8047052C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80470530  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80470534  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80470538  C0 1F 0A B0 */	lfs f0, 0xab0(r31)
/* 8047053C  EC 01 00 2A */	fadds f0, f1, f0
/* 80470540  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80470544  38 61 00 10 */	addi r3, r1, 0x10
/* 80470548  4B BA D7 75 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8047054C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80470550  41 82 00 3C */	beq lbl_8047058C
/* 80470554  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80470558  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8047055C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80470560  EC 01 00 28 */	fsubs f0, f1, f0
/* 80470564  FC 00 02 10 */	fabs f0, f0
/* 80470568  FC 40 00 18 */	frsp f2, f0
/* 8047056C  C0 1F 0A B4 */	lfs f0, 0xab4(r31)
/* 80470570  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80470574  40 80 00 18 */	bge lbl_8047058C
/* 80470578  D0 3E 04 AC */	stfs f1, 0x4ac(r30)
/* 8047057C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80470580  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80470584  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80470588  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
lbl_8047058C:
/* 8047058C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80470590  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80470594  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80470598  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8047059C  4B C0 65 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804705A0  7F C3 F3 78 */	mr r3, r30
/* 804705A4  4B FF F1 81 */	bl initBaseMtx__12daObjCarry_cFv
/* 804705A8  38 60 00 01 */	li r3, 1
lbl_804705AC:
/* 804705AC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804705B0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804705B4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804705B8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804705BC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 804705C0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 804705C4  39 61 00 40 */	addi r11, r1, 0x40
/* 804705C8  4B EF 1C 61 */	bl _restgpr_29
/* 804705CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804705D0  7C 08 03 A6 */	mtlr r0
/* 804705D4  38 21 00 70 */	addi r1, r1, 0x70
/* 804705D8  4E 80 00 20 */	blr 
