lbl_802B61E8:
/* 802B61E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B61EC  7C 08 02 A6 */	mflr r0
/* 802B61F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B61F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802B61F8  48 0A BF E5 */	bl _savegpr_29
/* 802B61FC  7C 7D 1B 78 */	mr r29, r3
/* 802B6200  7C 9E 23 78 */	mr r30, r4
/* 802B6204  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802B6208  28 00 00 0B */	cmplwi r0, 0xb
/* 802B620C  40 82 00 20 */	bne lbl_802B622C
/* 802B6210  38 00 00 00 */	li r0, 0
/* 802B6214  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6218  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B621C  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 802B6220  28 00 00 00 */	cmplwi r0, 0
/* 802B6224  41 82 00 08 */	beq lbl_802B622C
/* 802B6228  48 00 40 6D */	bl sceneBgmStart__10Z2SceneMgrFv
lbl_802B622C:
/* 802B622C  28 1E 00 00 */	cmplwi r30, 0
/* 802B6230  40 82 00 E0 */	bne lbl_802B6310
/* 802B6234  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 802B6238  28 00 00 03 */	cmplwi r0, 3
/* 802B623C  40 82 00 14 */	bne lbl_802B6250
/* 802B6240  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6244  38 80 00 00 */	li r4, 0
/* 802B6248  4B FF DF 1D */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802B624C  48 00 00 AC */	b lbl_802B62F8
lbl_802B6250:
/* 802B6250  28 00 00 04 */	cmplwi r0, 4
/* 802B6254  40 82 00 7C */	bne lbl_802B62D0
/* 802B6258  88 6D 82 E1 */	lbz r3, struct_80450860+0x1(r13)
/* 802B625C  80 8D 86 04 */	lwz r4, data_80450B84(r13)
/* 802B6260  C0 62 C0 20 */	lfs f3, lit_3467(r2)
/* 802B6264  D0 64 00 34 */	stfs f3, 0x34(r4)
/* 802B6268  C0 02 C0 1C */	lfs f0, lit_3396(r2)
/* 802B626C  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 802B6270  38 00 00 00 */	li r0, 0
/* 802B6274  90 04 00 40 */	stw r0, 0x40(r4)
/* 802B6278  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 802B627C  28 03 00 00 */	cmplwi r3, 0
/* 802B6280  41 82 00 3C */	beq lbl_802B62BC
/* 802B6284  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 802B6288  90 64 00 50 */	stw r3, 0x50(r4)
/* 802B628C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B6290  80 04 00 50 */	lwz r0, 0x50(r4)
/* 802B6294  C8 22 C0 28 */	lfd f1, lit_3731(r2)
/* 802B6298  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B629C  3C 00 43 30 */	lis r0, 0x4330
/* 802B62A0  90 01 00 08 */	stw r0, 8(r1)
/* 802B62A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B62A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B62AC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B62B0  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 802B62B4  D0 64 00 4C */	stfs f3, 0x4c(r4)
/* 802B62B8  48 00 00 40 */	b lbl_802B62F8
lbl_802B62BC:
/* 802B62BC  D0 64 00 44 */	stfs f3, 0x44(r4)
/* 802B62C0  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 802B62C4  90 04 00 50 */	stw r0, 0x50(r4)
/* 802B62C8  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 802B62CC  48 00 00 2C */	b lbl_802B62F8
lbl_802B62D0:
/* 802B62D0  28 00 00 05 */	cmplwi r0, 5
/* 802B62D4  40 82 00 10 */	bne lbl_802B62E4
/* 802B62D8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B62DC  4B FF 95 A9 */	bl subBgmStop__8Z2SeqMgrFv
/* 802B62E0  48 00 00 18 */	b lbl_802B62F8
lbl_802B62E4:
/* 802B62E4  28 00 00 09 */	cmplwi r0, 9
/* 802B62E8  40 82 00 10 */	bne lbl_802B62F8
/* 802B62EC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B62F0  38 80 00 3C */	li r4, 0x3c
/* 802B62F4  4B FF 9B E9 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_802B62F8:
/* 802B62F8  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 802B62FC  28 00 00 08 */	cmplwi r0, 8
/* 802B6300  41 82 04 04 */	beq lbl_802B6704
/* 802B6304  38 00 00 00 */	li r0, 0
/* 802B6308  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B630C  48 00 03 F8 */	b lbl_802B6704
lbl_802B6310:
/* 802B6310  3B E0 00 00 */	li r31, 0
/* 802B6314  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 802B6318  28 00 00 08 */	cmplwi r0, 8
/* 802B631C  40 82 00 2C */	bne lbl_802B6348
/* 802B6320  7F C3 F3 78 */	mr r3, r30
/* 802B6324  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6328  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B632C  38 84 02 6A */	addi r4, r4, 0x26a
/* 802B6330  48 0B 26 65 */	bl strcmp
/* 802B6334  2C 03 00 00 */	cmpwi r3, 0
/* 802B6338  40 82 03 CC */	bne lbl_802B6704
/* 802B633C  38 00 00 00 */	li r0, 0
/* 802B6340  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6344  48 00 03 C0 */	b lbl_802B6704
lbl_802B6348:
/* 802B6348  7F C3 F3 78 */	mr r3, r30
/* 802B634C  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6350  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6354  38 84 02 74 */	addi r4, r4, 0x274
/* 802B6358  48 0B 26 3D */	bl strcmp
/* 802B635C  2C 03 00 00 */	cmpwi r3, 0
/* 802B6360  41 82 00 20 */	beq lbl_802B6380
/* 802B6364  7F C3 F3 78 */	mr r3, r30
/* 802B6368  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B636C  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6370  38 84 02 7C */	addi r4, r4, 0x27c
/* 802B6374  48 0B 26 21 */	bl strcmp
/* 802B6378  2C 03 00 00 */	cmpwi r3, 0
/* 802B637C  40 82 00 10 */	bne lbl_802B638C
lbl_802B6380:
/* 802B6380  38 00 00 0B */	li r0, 0xb
/* 802B6384  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6388  48 00 03 7C */	b lbl_802B6704
lbl_802B638C:
/* 802B638C  7F C3 F3 78 */	mr r3, r30
/* 802B6390  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6394  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6398  38 84 02 84 */	addi r4, r4, 0x284
/* 802B639C  48 0B 25 F9 */	bl strcmp
/* 802B63A0  2C 03 00 00 */	cmpwi r3, 0
/* 802B63A4  41 82 00 20 */	beq lbl_802B63C4
/* 802B63A8  7F C3 F3 78 */	mr r3, r30
/* 802B63AC  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B63B0  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B63B4  38 84 02 8E */	addi r4, r4, 0x28e
/* 802B63B8  48 0B 25 DD */	bl strcmp
/* 802B63BC  2C 03 00 00 */	cmpwi r3, 0
/* 802B63C0  40 82 00 50 */	bne lbl_802B6410
lbl_802B63C4:
/* 802B63C4  38 00 00 04 */	li r0, 4
/* 802B63C8  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B63CC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B63D0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802B63D4  38 00 00 1E */	li r0, 0x1e
/* 802B63D8  90 03 00 50 */	stw r0, 0x50(r3)
/* 802B63DC  C0 62 C0 1C */	lfs f3, lit_3396(r2)
/* 802B63E0  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B63E4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802B63E8  C8 22 C0 28 */	lfd f1, lit_3731(r2)
/* 802B63EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B63F0  3C 00 43 30 */	lis r0, 0x4330
/* 802B63F4  90 01 00 08 */	stw r0, 8(r1)
/* 802B63F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B63FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B6400  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B6404  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802B6408  D0 63 00 4C */	stfs f3, 0x4c(r3)
/* 802B640C  48 00 02 F8 */	b lbl_802B6704
lbl_802B6410:
/* 802B6410  7F C3 F3 78 */	mr r3, r30
/* 802B6414  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6418  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B641C  38 84 02 98 */	addi r4, r4, 0x298
/* 802B6420  48 0B 25 75 */	bl strcmp
/* 802B6424  2C 03 00 00 */	cmpwi r3, 0
/* 802B6428  40 82 00 24 */	bne lbl_802B644C
/* 802B642C  38 00 00 0C */	li r0, 0xc
/* 802B6430  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6434  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B6438  38 63 03 EC */	addi r3, r3, 0x3ec
/* 802B643C  C0 22 C0 1C */	lfs f1, lit_3396(r2)
/* 802B6440  38 80 00 00 */	li r4, 0
/* 802B6444  4B FE C9 71 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802B6448  48 00 02 BC */	b lbl_802B6704
lbl_802B644C:
/* 802B644C  7F C3 F3 78 */	mr r3, r30
/* 802B6450  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6454  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6458  38 84 02 A2 */	addi r4, r4, 0x2a2
/* 802B645C  38 A0 00 06 */	li r5, 6
/* 802B6460  48 0B 24 F5 */	bl strncmp
/* 802B6464  2C 03 00 00 */	cmpwi r3, 0
/* 802B6468  40 82 00 20 */	bne lbl_802B6488
/* 802B646C  38 00 00 0D */	li r0, 0xd
/* 802B6470  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6474  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6478  C0 22 C0 1C */	lfs f1, lit_3396(r2)
/* 802B647C  38 80 00 00 */	li r4, 0
/* 802B6480  4B FF 75 75 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B6484  48 00 02 80 */	b lbl_802B6704
lbl_802B6488:
/* 802B6488  7F C3 F3 78 */	mr r3, r30
/* 802B648C  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6490  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6494  38 84 02 A9 */	addi r4, r4, 0x2a9
/* 802B6498  38 A0 00 04 */	li r5, 4
/* 802B649C  48 0B 24 B9 */	bl strncmp
/* 802B64A0  2C 03 00 00 */	cmpwi r3, 0
/* 802B64A4  40 82 00 10 */	bne lbl_802B64B4
/* 802B64A8  38 00 00 02 */	li r0, 2
/* 802B64AC  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B64B0  48 00 02 54 */	b lbl_802B6704
lbl_802B64B4:
/* 802B64B4  7F C3 F3 78 */	mr r3, r30
/* 802B64B8  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B64BC  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B64C0  38 84 02 AE */	addi r4, r4, 0x2ae
/* 802B64C4  48 0B 24 D1 */	bl strcmp
/* 802B64C8  2C 03 00 00 */	cmpwi r3, 0
/* 802B64CC  40 82 00 10 */	bne lbl_802B64DC
/* 802B64D0  38 00 00 08 */	li r0, 8
/* 802B64D4  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B64D8  48 00 02 2C */	b lbl_802B6704
lbl_802B64DC:
/* 802B64DC  7F C3 F3 78 */	mr r3, r30
/* 802B64E0  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B64E4  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B64E8  38 84 02 6A */	addi r4, r4, 0x26a
/* 802B64EC  48 0B 24 A9 */	bl strcmp
/* 802B64F0  2C 03 00 00 */	cmpwi r3, 0
/* 802B64F4  40 82 00 10 */	bne lbl_802B6504
/* 802B64F8  38 00 00 00 */	li r0, 0
/* 802B64FC  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6500  48 00 02 04 */	b lbl_802B6704
lbl_802B6504:
/* 802B6504  7F C3 F3 78 */	mr r3, r30
/* 802B6508  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B650C  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6510  38 84 02 BA */	addi r4, r4, 0x2ba
/* 802B6514  48 0B 24 81 */	bl strcmp
/* 802B6518  2C 03 00 00 */	cmpwi r3, 0
/* 802B651C  40 82 00 10 */	bne lbl_802B652C
/* 802B6520  38 00 00 06 */	li r0, 6
/* 802B6524  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6528  48 00 01 DC */	b lbl_802B6704
lbl_802B652C:
/* 802B652C  7F C3 F3 78 */	mr r3, r30
/* 802B6530  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6534  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6538  38 84 02 C6 */	addi r4, r4, 0x2c6
/* 802B653C  48 0B 24 59 */	bl strcmp
/* 802B6540  2C 03 00 00 */	cmpwi r3, 0
/* 802B6544  40 82 00 10 */	bne lbl_802B6554
/* 802B6548  38 00 00 07 */	li r0, 7
/* 802B654C  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6550  48 00 01 B4 */	b lbl_802B6704
lbl_802B6554:
/* 802B6554  7F C3 F3 78 */	mr r3, r30
/* 802B6558  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B655C  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6560  38 84 02 D0 */	addi r4, r4, 0x2d0
/* 802B6564  48 0B 24 31 */	bl strcmp
/* 802B6568  2C 03 00 00 */	cmpwi r3, 0
/* 802B656C  40 82 00 10 */	bne lbl_802B657C
/* 802B6570  38 00 00 0A */	li r0, 0xa
/* 802B6574  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B6578  48 00 01 8C */	b lbl_802B6704
lbl_802B657C:
/* 802B657C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B6580  80 63 00 04 */	lwz r3, 4(r3)
/* 802B6584  38 03 FF FC */	addi r0, r3, -4
/* 802B6588  28 00 00 2D */	cmplwi r0, 0x2d
/* 802B658C  41 81 01 44 */	bgt lbl_802B66D0
/* 802B6590  3C 60 80 3D */	lis r3, lit_3732@ha
/* 802B6594  38 63 A5 08 */	addi r3, r3, lit_3732@l
/* 802B6598  54 00 10 3A */	slwi r0, r0, 2
/* 802B659C  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B65A0  7C 09 03 A6 */	mtctr r0
/* 802B65A4  4E 80 04 20 */	bctr 
/* 802B65A8  7F C3 F3 78 */	mr r3, r30
/* 802B65AC  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B65B0  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B65B4  38 84 02 D9 */	addi r4, r4, 0x2d9
/* 802B65B8  48 0B 23 DD */	bl strcmp
/* 802B65BC  2C 03 00 00 */	cmpwi r3, 0
/* 802B65C0  40 82 01 10 */	bne lbl_802B66D0
/* 802B65C4  38 00 00 05 */	li r0, 5
/* 802B65C8  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B65CC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B65D0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000056@ha */
/* 802B65D4  38 84 00 56 */	addi r4, r4, 0x0056 /* 0x01000056@l */
/* 802B65D8  4B FF 8E C5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 802B65DC  48 00 00 F4 */	b lbl_802B66D0
/* 802B65E0  7F C3 F3 78 */	mr r3, r30
/* 802B65E4  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B65E8  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B65EC  38 84 02 E3 */	addi r4, r4, 0x2e3
/* 802B65F0  48 0B 23 A5 */	bl strcmp
/* 802B65F4  2C 03 00 00 */	cmpwi r3, 0
/* 802B65F8  40 82 00 D8 */	bne lbl_802B66D0
/* 802B65FC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6600  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005F@ha */
/* 802B6604  38 84 00 5F */	addi r4, r4, 0x005F /* 0x0200005F@l */
/* 802B6608  4B FF 95 8D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 802B660C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6610  4B FF 98 09 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 802B6614  38 00 00 09 */	li r0, 9
/* 802B6618  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B661C  48 00 00 B4 */	b lbl_802B66D0
/* 802B6620  7F C3 F3 78 */	mr r3, r30
/* 802B6624  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6628  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B662C  38 84 02 ED */	addi r4, r4, 0x2ed
/* 802B6630  48 0B 23 65 */	bl strcmp
/* 802B6634  2C 03 00 00 */	cmpwi r3, 0
/* 802B6638  40 82 00 98 */	bne lbl_802B66D0
/* 802B663C  3B E0 00 01 */	li r31, 1
/* 802B6640  48 00 00 90 */	b lbl_802B66D0
/* 802B6644  7F C3 F3 78 */	mr r3, r30
/* 802B6648  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B664C  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6650  38 84 02 FA */	addi r4, r4, 0x2fa
/* 802B6654  48 0B 23 41 */	bl strcmp
/* 802B6658  2C 03 00 00 */	cmpwi r3, 0
/* 802B665C  40 82 00 74 */	bne lbl_802B66D0
/* 802B6660  3B E0 00 01 */	li r31, 1
/* 802B6664  48 00 00 6C */	b lbl_802B66D0
/* 802B6668  7F C3 F3 78 */	mr r3, r30
/* 802B666C  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6670  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6674  38 84 03 06 */	addi r4, r4, 0x306
/* 802B6678  48 0B 23 1D */	bl strcmp
/* 802B667C  2C 03 00 00 */	cmpwi r3, 0
/* 802B6680  40 82 00 50 */	bne lbl_802B66D0
/* 802B6684  3B E0 00 01 */	li r31, 1
/* 802B6688  48 00 00 48 */	b lbl_802B66D0
/* 802B668C  7F C3 F3 78 */	mr r3, r30
/* 802B6690  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B6694  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B6698  38 84 03 10 */	addi r4, r4, 0x310
/* 802B669C  48 0B 22 F9 */	bl strcmp
/* 802B66A0  2C 03 00 00 */	cmpwi r3, 0
/* 802B66A4  40 82 00 2C */	bne lbl_802B66D0
/* 802B66A8  3B E0 00 01 */	li r31, 1
/* 802B66AC  48 00 00 24 */	b lbl_802B66D0
/* 802B66B0  7F C3 F3 78 */	mr r3, r30
/* 802B66B4  3C 80 80 3A */	lis r4, Z2StatusMgr__stringBase0@ha
/* 802B66B8  38 84 BC 88 */	addi r4, r4, Z2StatusMgr__stringBase0@l
/* 802B66BC  38 84 02 D9 */	addi r4, r4, 0x2d9
/* 802B66C0  48 0B 22 D5 */	bl strcmp
/* 802B66C4  2C 03 00 00 */	cmpwi r3, 0
/* 802B66C8  40 82 00 08 */	bne lbl_802B66D0
/* 802B66CC  3B E0 00 01 */	li r31, 1
lbl_802B66D0:
/* 802B66D0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802B66D4  41 82 00 1C */	beq lbl_802B66F0
/* 802B66D8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B66DC  38 80 00 01 */	li r4, 1
/* 802B66E0  4B FF DA 85 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802B66E4  38 00 00 03 */	li r0, 3
/* 802B66E8  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 802B66EC  48 00 00 18 */	b lbl_802B6704
lbl_802B66F0:
/* 802B66F0  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 802B66F4  28 00 00 00 */	cmplwi r0, 0
/* 802B66F8  40 82 00 0C */	bne lbl_802B6704
/* 802B66FC  38 00 00 01 */	li r0, 1
/* 802B6700  98 1D 00 2C */	stb r0, 0x2c(r29)
lbl_802B6704:
/* 802B6704  39 61 00 20 */	addi r11, r1, 0x20
/* 802B6708  48 0A BB 21 */	bl _restgpr_29
/* 802B670C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6710  7C 08 03 A6 */	mtlr r0
/* 802B6714  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6718  4E 80 00 20 */	blr 
