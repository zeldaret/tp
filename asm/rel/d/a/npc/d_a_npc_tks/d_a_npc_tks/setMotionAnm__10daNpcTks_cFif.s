lbl_80B16344:
/* 80B16344  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B16348  7C 08 02 A6 */	mflr r0
/* 80B1634C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B16350  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B16354  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B16358  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1635C  4B 84 BE 78 */	b _savegpr_27
/* 80B16360  7C 7F 1B 78 */	mr r31, r3
/* 80B16364  7C 9C 23 78 */	mr r28, r4
/* 80B16368  FF E0 08 90 */	fmr f31, f1
/* 80B1636C  3C 80 80 B2 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B16370  3B C4 E0 E4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B16374  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B16378  3B A4 DD 58 */	addi r29, r4, m__16daNpcTks_Param_c@l
/* 80B1637C  2C 1C 00 02 */	cmpwi r28, 2
/* 80B16380  41 80 02 94 */	blt lbl_80B16614
/* 80B16384  2C 1C 00 16 */	cmpwi r28, 0x16
/* 80B16388  41 80 00 08 */	blt lbl_80B16390
/* 80B1638C  48 00 02 88 */	b lbl_80B16614
lbl_80B16390:
/* 80B16390  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B16394  57 9B 18 38 */	slwi r27, r28, 3
/* 80B16398  38 BE 00 20 */	addi r5, r30, 0x20
/* 80B1639C  7C A5 D8 2E */	lwzx r5, r5, r27
/* 80B163A0  4B 63 C7 8C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B163A4  7C 64 1B 79 */	or. r4, r3, r3
/* 80B163A8  38 1E 00 20 */	addi r0, r30, 0x20
/* 80B163AC  7C 60 DA 14 */	add r3, r0, r27
/* 80B163B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B163B4  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80B163B8  38 00 FF E4 */	li r0, -28
/* 80B163BC  7C 60 00 38 */	and r0, r3, r0
/* 80B163C0  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80B163C4  41 82 02 04 */	beq lbl_80B165C8
/* 80B163C8  7F E3 FB 78 */	mr r3, r31
/* 80B163CC  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 80B163D0  FC 40 F8 90 */	fmr f2, f31
/* 80B163D4  38 C0 00 00 */	li r6, 0
/* 80B163D8  38 E0 FF FF */	li r7, -1
/* 80B163DC  4B 63 C8 40 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B163E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B163E4  41 82 01 E4 */	beq lbl_80B165C8
/* 80B163E8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B163EC  60 00 00 09 */	ori r0, r0, 9
/* 80B163F0  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80B163F4  38 00 00 00 */	li r0, 0
/* 80B163F8  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
/* 80B163FC  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80B16400  40 82 00 20 */	bne lbl_80B16420
/* 80B16404  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80B16408  38 7D 00 00 */	addi r3, r29, 0
/* 80B1640C  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80B16410  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B16414  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B16418  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B1641C  48 00 00 10 */	b lbl_80B1642C
lbl_80B16420:
/* 80B16420  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B16424  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B16428  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B1642C:
/* 80B1642C  88 1F 13 8A */	lbz r0, 0x138a(r31)
/* 80B16430  28 00 00 00 */	cmplwi r0, 0
/* 80B16434  41 82 01 94 */	beq lbl_80B165C8
/* 80B16438  2C 1C 00 09 */	cmpwi r28, 9
/* 80B1643C  41 82 00 7C */	beq lbl_80B164B8
/* 80B16440  40 80 00 10 */	bge lbl_80B16450
/* 80B16444  2C 1C 00 05 */	cmpwi r28, 5
/* 80B16448  41 82 00 14 */	beq lbl_80B1645C
/* 80B1644C  48 00 01 24 */	b lbl_80B16570
lbl_80B16450:
/* 80B16450  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80B16454  40 80 01 1C */	bge lbl_80B16570
/* 80B16458  48 00 00 BC */	b lbl_80B16514
lbl_80B1645C:
/* 80B1645C  7F E3 FB 78 */	mr r3, r31
/* 80B16460  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B16464  38 BE 00 20 */	addi r5, r30, 0x20
/* 80B16468  80 A5 00 70 */	lwz r5, 0x70(r5)
/* 80B1646C  4B 63 C6 C0 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B16470  7C 64 1B 79 */	or. r4, r3, r3
/* 80B16474  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B16478  80 A3 00 74 */	lwz r5, 0x74(r3)
/* 80B1647C  80 7F 11 48 */	lwz r3, 0x1148(r31)
/* 80B16480  38 00 FF F6 */	li r0, -10
/* 80B16484  7C 60 00 38 */	and r0, r3, r0
/* 80B16488  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B1648C  41 82 01 3C */	beq lbl_80B165C8
/* 80B16490  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B16494  FC 20 F8 90 */	fmr f1, f31
/* 80B16498  C0 5D 00 B0 */	lfs f2, 0xb0(r29)
/* 80B1649C  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80B164A0  C0 9D 00 B4 */	lfs f4, 0xb4(r29)
/* 80B164A4  4B 4F A9 CC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B164A8  80 1F 11 48 */	lwz r0, 0x1148(r31)
/* 80B164AC  60 00 00 09 */	ori r0, r0, 9
/* 80B164B0  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B164B4  48 00 01 14 */	b lbl_80B165C8
lbl_80B164B8:
/* 80B164B8  7F E3 FB 78 */	mr r3, r31
/* 80B164BC  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B164C0  38 BE 00 20 */	addi r5, r30, 0x20
/* 80B164C4  80 A5 00 78 */	lwz r5, 0x78(r5)
/* 80B164C8  4B 63 C6 64 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B164CC  7C 64 1B 79 */	or. r4, r3, r3
/* 80B164D0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B164D4  80 A3 00 7C */	lwz r5, 0x7c(r3)
/* 80B164D8  80 7F 11 48 */	lwz r3, 0x1148(r31)
/* 80B164DC  38 00 FF F6 */	li r0, -10
/* 80B164E0  7C 60 00 38 */	and r0, r3, r0
/* 80B164E4  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B164E8  41 82 00 E0 */	beq lbl_80B165C8
/* 80B164EC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B164F0  FC 20 F8 90 */	fmr f1, f31
/* 80B164F4  C0 5D 00 B0 */	lfs f2, 0xb0(r29)
/* 80B164F8  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80B164FC  C0 9D 00 B4 */	lfs f4, 0xb4(r29)
/* 80B16500  4B 4F A9 70 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B16504  80 1F 11 48 */	lwz r0, 0x1148(r31)
/* 80B16508  60 00 00 09 */	ori r0, r0, 9
/* 80B1650C  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B16510  48 00 00 B8 */	b lbl_80B165C8
lbl_80B16514:
/* 80B16514  7F E3 FB 78 */	mr r3, r31
/* 80B16518  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B1651C  38 BE 00 20 */	addi r5, r30, 0x20
/* 80B16520  80 A5 00 80 */	lwz r5, 0x80(r5)
/* 80B16524  4B 63 C6 08 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B16528  7C 64 1B 79 */	or. r4, r3, r3
/* 80B1652C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B16530  80 A3 00 84 */	lwz r5, 0x84(r3)
/* 80B16534  80 7F 11 48 */	lwz r3, 0x1148(r31)
/* 80B16538  38 00 FF F6 */	li r0, -10
/* 80B1653C  7C 60 00 38 */	and r0, r3, r0
/* 80B16540  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B16544  41 82 00 84 */	beq lbl_80B165C8
/* 80B16548  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B1654C  FC 20 F8 90 */	fmr f1, f31
/* 80B16550  C0 5D 00 B0 */	lfs f2, 0xb0(r29)
/* 80B16554  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80B16558  C0 9D 00 B4 */	lfs f4, 0xb4(r29)
/* 80B1655C  4B 4F A9 14 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B16560  80 1F 11 48 */	lwz r0, 0x1148(r31)
/* 80B16564  60 00 00 09 */	ori r0, r0, 9
/* 80B16568  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B1656C  48 00 00 5C */	b lbl_80B165C8
lbl_80B16570:
/* 80B16570  7F E3 FB 78 */	mr r3, r31
/* 80B16574  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B16578  38 BE 00 20 */	addi r5, r30, 0x20
/* 80B1657C  80 A5 00 68 */	lwz r5, 0x68(r5)
/* 80B16580  4B 63 C5 AC */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B16584  7C 64 1B 79 */	or. r4, r3, r3
/* 80B16588  38 7E 00 20 */	addi r3, r30, 0x20
/* 80B1658C  80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 80B16590  80 7F 11 48 */	lwz r3, 0x1148(r31)
/* 80B16594  38 00 FF F6 */	li r0, -10
/* 80B16598  7C 60 00 38 */	and r0, r3, r0
/* 80B1659C  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80B165A0  41 82 00 28 */	beq lbl_80B165C8
/* 80B165A4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B165A8  FC 20 F8 90 */	fmr f1, f31
/* 80B165AC  C0 5D 00 B0 */	lfs f2, 0xb0(r29)
/* 80B165B0  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80B165B4  C0 9D 00 B4 */	lfs f4, 0xb4(r29)
/* 80B165B8  4B 4F A8 B8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B165BC  80 1F 11 48 */	lwz r0, 0x1148(r31)
/* 80B165C0  60 00 00 09 */	ori r0, r0, 9
/* 80B165C4  90 1F 11 48 */	stw r0, 0x1148(r31)
lbl_80B165C8:
/* 80B165C8  7F E3 FB 78 */	mr r3, r31
/* 80B165CC  80 9E 01 24 */	lwz r4, 0x124(r30)
/* 80B165D0  80 BE 00 D8 */	lwz r5, 0xd8(r30)
/* 80B165D4  4B 63 C5 D0 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B165D8  7C 64 1B 79 */	or. r4, r3, r3
/* 80B165DC  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80B165E0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B165E4  41 82 00 30 */	beq lbl_80B16614
/* 80B165E8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B165EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B165F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B165F4  7F E3 FB 78 */	mr r3, r31
/* 80B165F8  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 80B165FC  4B 63 C7 08 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B16600  2C 03 00 00 */	cmpwi r3, 0
/* 80B16604  41 82 00 10 */	beq lbl_80B16614
/* 80B16608  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B1660C  60 00 00 12 */	ori r0, r0, 0x12
/* 80B16610  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80B16614:
/* 80B16614  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B16618  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B1661C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B16620  4B 84 BC 00 */	b _restgpr_27
/* 80B16624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B16628  7C 08 03 A6 */	mtlr r0
/* 80B1662C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B16630  4E 80 00 20 */	blr 
