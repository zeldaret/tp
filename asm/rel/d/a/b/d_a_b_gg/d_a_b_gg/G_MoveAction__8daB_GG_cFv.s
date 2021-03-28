lbl_805E6174:
/* 805E6174  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E6178  7C 08 02 A6 */	mflr r0
/* 805E617C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E6180  39 61 00 30 */	addi r11, r1, 0x30
/* 805E6184  4B D7 C0 58 */	b _savegpr_29
/* 805E6188  7C 7D 1B 78 */	mr r29, r3
/* 805E618C  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E6190  3B C4 D0 60 */	addi r30, r4, lit_3911@l
/* 805E6194  4B FF FE F9 */	bl CutChk__8daB_GG_cFv
/* 805E6198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E619C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805E61A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E61A4  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805E61A8  2C 00 00 03 */	cmpwi r0, 3
/* 805E61AC  41 82 05 48 */	beq lbl_805E66F4
/* 805E61B0  40 80 00 1C */	bge lbl_805E61CC
/* 805E61B4  2C 00 00 01 */	cmpwi r0, 1
/* 805E61B8  41 82 02 E8 */	beq lbl_805E64A0
/* 805E61BC  40 80 04 3C */	bge lbl_805E65F8
/* 805E61C0  2C 00 00 00 */	cmpwi r0, 0
/* 805E61C4  40 80 00 18 */	bge lbl_805E61DC
/* 805E61C8  48 00 08 D0 */	b lbl_805E6A98
lbl_805E61CC:
/* 805E61CC  2C 00 00 05 */	cmpwi r0, 5
/* 805E61D0  41 82 08 A8 */	beq lbl_805E6A78
/* 805E61D4  40 80 08 C4 */	bge lbl_805E6A98
/* 805E61D8  48 00 06 34 */	b lbl_805E680C
lbl_805E61DC:
/* 805E61DC  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E61E0  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E61E4  41 82 00 58 */	beq lbl_805E623C
/* 805E61E8  7F A3 EB 78 */	mr r3, r29
/* 805E61EC  38 80 00 12 */	li r4, 0x12
/* 805E61F0  38 A0 00 00 */	li r5, 0
/* 805E61F4  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E61F8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E61FC  4B FF 8D 69 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6200  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E6204  38 63 D7 30 */	addi r3, r3, data_805ED730@l
/* 805E6208  A8 63 00 00 */	lha r3, 0(r3)
/* 805E620C  3C 63 00 01 */	addis r3, r3, 1
/* 805E6210  38 03 80 00 */	addi r0, r3, -32768
/* 805E6214  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E6218  A8 1D 05 BA */	lha r0, 0x5ba(r29)
/* 805E621C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E6220  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E6224  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6228  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E622C  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E6230  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6234  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E6238  48 00 08 60 */	b lbl_805E6A98
lbl_805E623C:
/* 805E623C  40 82 00 34 */	bne lbl_805E6270
/* 805E6240  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6244  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6248  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E624C  4B D4 21 E0 */	b checkPass__12J3DFrameCtrlFf
/* 805E6250  2C 03 00 00 */	cmpwi r3, 0
/* 805E6254  41 82 00 1C */	beq lbl_805E6270
/* 805E6258  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E625C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E6260  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E6264  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 805E6268  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E626C  48 00 08 2C */	b lbl_805E6A98
lbl_805E6270:
/* 805E6270  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E6274  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E6278  40 82 00 5C */	bne lbl_805E62D4
/* 805E627C  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6280  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6284  C0 3E 02 C8 */	lfs f1, 0x2c8(r30)
/* 805E6288  4B D4 21 A4 */	b checkPass__12J3DFrameCtrlFf
/* 805E628C  2C 03 00 00 */	cmpwi r3, 0
/* 805E6290  41 82 00 44 */	beq lbl_805E62D4
/* 805E6294  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E6298  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E629C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E62A0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E62A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AD@ha */
/* 805E62A8  38 03 04 AD */	addi r0, r3, 0x04AD /* 0x000704AD@l */
/* 805E62AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E62B0  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E62B4  38 81 00 0C */	addi r4, r1, 0xc
/* 805E62B8  38 A0 00 00 */	li r5, 0
/* 805E62BC  38 C0 FF FF */	li r6, -1
/* 805E62C0  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E62C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E62C8  7D 89 03 A6 */	mtctr r12
/* 805E62CC  4E 80 04 21 */	bctrl 
/* 805E62D0  48 00 07 C8 */	b lbl_805E6A98
lbl_805E62D4:
/* 805E62D4  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E62D8  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E62DC  40 82 01 B8 */	bne lbl_805E6494
/* 805E62E0  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E62E4  38 80 00 01 */	li r4, 1
/* 805E62E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E62EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E62F0  40 82 00 18 */	bne lbl_805E6308
/* 805E62F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E62F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E62FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E6300  41 82 00 08 */	beq lbl_805E6308
/* 805E6304  38 80 00 00 */	li r4, 0
lbl_805E6308:
/* 805E6308  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E630C  41 82 01 88 */	beq lbl_805E6494
/* 805E6310  7F A3 EB 78 */	mr r3, r29
/* 805E6314  4B FF 97 35 */	bl SpeedClear__8daB_GG_cFv
/* 805E6318  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805E631C  C0 3D 06 48 */	lfs f1, 0x648(r29)
/* 805E6320  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 805E6324  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E6328  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E632C  40 80 00 54 */	bge lbl_805E6380
/* 805E6330  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E6334  60 00 00 01 */	ori r0, r0, 1
/* 805E6338  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E633C  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E6340  60 00 00 01 */	ori r0, r0, 1
/* 805E6344  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E6348  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E634C  60 00 00 01 */	ori r0, r0, 1
/* 805E6350  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E6354  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E6358  60 00 00 01 */	ori r0, r0, 1
/* 805E635C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E6360  7F A3 EB 78 */	mr r3, r29
/* 805E6364  38 80 00 01 */	li r4, 1
/* 805E6368  38 A0 00 01 */	li r5, 1
/* 805E636C  38 C0 00 03 */	li r6, 3
/* 805E6370  4B FF 96 F5 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6374  7F A3 EB 78 */	mr r3, r29
/* 805E6378  48 00 07 39 */	bl FallChk__8daB_GG_cFv
/* 805E637C  48 00 07 1C */	b lbl_805E6A98
lbl_805E6380:
/* 805E6380  40 80 00 58 */	bge lbl_805E63D8
/* 805E6384  80 1D 0F 5C */	lwz r0, 0xf5c(r29)
/* 805E6388  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805E638C  41 82 00 4C */	beq lbl_805E63D8
/* 805E6390  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E6394  28 00 00 00 */	cmplwi r0, 0
/* 805E6398  40 82 00 40 */	bne lbl_805E63D8
/* 805E639C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E63A0  60 00 00 01 */	ori r0, r0, 1
/* 805E63A4  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E63A8  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E63AC  60 00 00 01 */	ori r0, r0, 1
/* 805E63B0  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E63B4  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E63B8  60 00 00 01 */	ori r0, r0, 1
/* 805E63BC  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E63C0  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E63C4  60 00 00 01 */	ori r0, r0, 1
/* 805E63C8  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E63CC  38 00 00 04 */	li r0, 4
/* 805E63D0  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E63D4  48 00 06 C4 */	b lbl_805E6A98
lbl_805E63D8:
/* 805E63D8  A8 7D 05 DC */	lha r3, 0x5dc(r29)
/* 805E63DC  7C 60 07 35 */	extsh. r0, r3
/* 805E63E0  40 82 00 28 */	bne lbl_805E6408
/* 805E63E4  88 1D 05 B0 */	lbz r0, 0x5b0(r29)
/* 805E63E8  28 00 00 00 */	cmplwi r0, 0
/* 805E63EC  41 82 00 1C */	beq lbl_805E6408
/* 805E63F0  7F A3 EB 78 */	mr r3, r29
/* 805E63F4  38 80 00 02 */	li r4, 2
/* 805E63F8  38 A0 00 00 */	li r5, 0
/* 805E63FC  38 C0 00 00 */	li r6, 0
/* 805E6400  4B FF 96 65 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6404  48 00 06 94 */	b lbl_805E6A98
lbl_805E6408:
/* 805E6408  7C 60 07 35 */	extsh. r0, r3
/* 805E640C  40 82 00 40 */	bne lbl_805E644C
/* 805E6410  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E6414  60 00 00 01 */	ori r0, r0, 1
/* 805E6418  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E641C  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E6420  60 00 00 01 */	ori r0, r0, 1
/* 805E6424  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E6428  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E642C  60 00 00 01 */	ori r0, r0, 1
/* 805E6430  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E6434  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E6438  60 00 00 01 */	ori r0, r0, 1
/* 805E643C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E6440  38 00 00 04 */	li r0, 4
/* 805E6444  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E6448  48 00 06 50 */	b lbl_805E6A98
lbl_805E644C:
/* 805E644C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E6450  60 00 00 01 */	ori r0, r0, 1
/* 805E6454  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E6458  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E645C  60 00 00 01 */	ori r0, r0, 1
/* 805E6460  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E6464  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E6468  60 00 00 01 */	ori r0, r0, 1
/* 805E646C  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E6470  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E6474  60 00 00 01 */	ori r0, r0, 1
/* 805E6478  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E647C  7F A3 EB 78 */	mr r3, r29
/* 805E6480  38 80 00 01 */	li r4, 1
/* 805E6484  38 A0 00 01 */	li r5, 1
/* 805E6488  38 C0 00 02 */	li r6, 2
/* 805E648C  4B FF 95 D9 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6490  48 00 06 08 */	b lbl_805E6A98
lbl_805E6494:
/* 805E6494  7F A3 EB 78 */	mr r3, r29
/* 805E6498  48 00 06 19 */	bl FallChk__8daB_GG_cFv
/* 805E649C  48 00 05 FC */	b lbl_805E6A98
lbl_805E64A0:
/* 805E64A0  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E64A4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805E64A8  41 82 00 2C */	beq lbl_805E64D4
/* 805E64AC  7F A3 EB 78 */	mr r3, r29
/* 805E64B0  38 80 00 1A */	li r4, 0x1a
/* 805E64B4  38 A0 00 02 */	li r5, 2
/* 805E64B8  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E64BC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E64C0  4B FF 8A A5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E64C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E64C8  4B C8 14 8C */	b cM_rndF__Ff
/* 805E64CC  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 805E64D0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_805E64D4:
/* 805E64D4  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E64D8  2C 00 00 00 */	cmpwi r0, 0
/* 805E64DC  40 82 00 24 */	bne lbl_805E6500
/* 805E64E0  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E64E4  38 63 00 0C */	addi r3, r3, 0xc
/* 805E64E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E64EC  4B D4 1F 40 */	b checkPass__12J3DFrameCtrlFf
/* 805E64F0  2C 03 00 00 */	cmpwi r3, 0
/* 805E64F4  41 82 00 0C */	beq lbl_805E6500
/* 805E64F8  38 00 00 03 */	li r0, 3
/* 805E64FC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E6500:
/* 805E6500  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6504  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 805E6508  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E650C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E6510  40 81 00 1C */	ble lbl_805E652C
/* 805E6514  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E6518  38 63 D7 30 */	addi r3, r3, data_805ED730@l
/* 805E651C  A8 63 00 00 */	lha r3, 0(r3)
/* 805E6520  38 03 30 00 */	addi r0, r3, 0x3000
/* 805E6524  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E6528  48 00 00 18 */	b lbl_805E6540
lbl_805E652C:
/* 805E652C  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E6530  38 63 D7 30 */	addi r3, r3, data_805ED730@l
/* 805E6534  A8 63 00 00 */	lha r3, 0(r3)
/* 805E6538  38 03 D0 00 */	addi r0, r3, -12288
/* 805E653C  B0 1D 05 BA */	sth r0, 0x5ba(r29)
lbl_805E6540:
/* 805E6540  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6544  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6548  C0 3E 02 C8 */	lfs f1, 0x2c8(r30)
/* 805E654C  4B D4 1E E0 */	b checkPass__12J3DFrameCtrlFf
/* 805E6550  2C 03 00 00 */	cmpwi r3, 0
/* 805E6554  40 82 00 1C */	bne lbl_805E6570
/* 805E6558  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E655C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6560  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805E6564  4B D4 1E C8 */	b checkPass__12J3DFrameCtrlFf
/* 805E6568  2C 03 00 00 */	cmpwi r3, 0
/* 805E656C  41 82 00 14 */	beq lbl_805E6580
lbl_805E6570:
/* 805E6570  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E6574  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E6578  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E657C  48 00 00 0C */	b lbl_805E6588
lbl_805E6580:
/* 805E6580  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 805E6584  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_805E6588:
/* 805E6588  A8 1D 05 BA */	lha r0, 0x5ba(r29)
/* 805E658C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E6590  7F A3 EB 78 */	mr r3, r29
/* 805E6594  4B FF F8 E5 */	bl FookChk__8daB_GG_cFv
/* 805E6598  3C 60 80 5F */	lis r3, data_805ED728@ha
/* 805E659C  C0 23 D7 28 */	lfs f1, data_805ED728@l(r3)
/* 805E65A0  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E65A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E65A8  40 80 00 44 */	bge lbl_805E65EC
/* 805E65AC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805E65B0  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E65B4  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E65B8  7C 04 00 50 */	subf r0, r4, r0
/* 805E65BC  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805E65C0  40 80 00 2C */	bge lbl_805E65EC
/* 805E65C4  2C 00 E0 00 */	cmpwi r0, -8192
/* 805E65C8  40 81 00 24 */	ble lbl_805E65EC
/* 805E65CC  7F A3 EB 78 */	mr r3, r29
/* 805E65D0  38 80 00 01 */	li r4, 1
/* 805E65D4  38 A0 00 02 */	li r5, 2
/* 805E65D8  38 C0 00 00 */	li r6, 0
/* 805E65DC  4B FF 94 89 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E65E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E65E4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E65E8  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_805E65EC:
/* 805E65EC  7F A3 EB 78 */	mr r3, r29
/* 805E65F0  48 00 04 C1 */	bl FallChk__8daB_GG_cFv
/* 805E65F4  48 00 04 A4 */	b lbl_805E6A98
lbl_805E65F8:
/* 805E65F8  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E65FC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805E6600  41 82 00 58 */	beq lbl_805E6658
/* 805E6604  7F A3 EB 78 */	mr r3, r29
/* 805E6608  38 80 00 1E */	li r4, 0x1e
/* 805E660C  38 A0 00 02 */	li r5, 2
/* 805E6610  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E6614  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E6618  4B FF 89 4D */	bl SetAnm__8daB_GG_cFiiff
/* 805E661C  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 805E6620  4B C8 13 34 */	b cM_rndF__Ff
/* 805E6624  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E6628  EC 00 08 2A */	fadds f0, f0, f1
/* 805E662C  FC 00 00 1E */	fctiwz f0, f0
/* 805E6630  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E6634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E6638  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E663C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E6640  4B C8 13 14 */	b cM_rndF__Ff
/* 805E6644  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 805E6648  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E664C  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E6650  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E6654  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_805E6658:
/* 805E6658  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E665C  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E6660  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E6664  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E6668  2C 00 00 00 */	cmpwi r0, 0
/* 805E666C  40 82 00 2C */	bne lbl_805E6698
/* 805E6670  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E6674  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805E6678  40 82 00 20 */	bne lbl_805E6698
/* 805E667C  3C 60 80 5F */	lis r3, data_805ED728@ha
/* 805E6680  C0 23 D7 28 */	lfs f1, data_805ED728@l(r3)
/* 805E6684  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805E6688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E668C  40 80 00 0C */	bge lbl_805E6698
/* 805E6690  38 00 00 03 */	li r0, 3
/* 805E6694  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E6698:
/* 805E6698  7F A3 EB 78 */	mr r3, r29
/* 805E669C  4B FF F7 DD */	bl FookChk__8daB_GG_cFv
/* 805E66A0  3C 60 80 5F */	lis r3, data_805ED728@ha
/* 805E66A4  C0 23 D7 28 */	lfs f1, data_805ED728@l(r3)
/* 805E66A8  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E66AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E66B0  40 80 00 38 */	bge lbl_805E66E8
/* 805E66B4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805E66B8  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E66BC  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E66C0  7C 04 00 50 */	subf r0, r4, r0
/* 805E66C4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805E66C8  40 80 00 20 */	bge lbl_805E66E8
/* 805E66CC  2C 00 E0 00 */	cmpwi r0, -8192
/* 805E66D0  40 81 00 18 */	ble lbl_805E66E8
/* 805E66D4  7F A3 EB 78 */	mr r3, r29
/* 805E66D8  38 80 00 01 */	li r4, 1
/* 805E66DC  38 A0 00 02 */	li r5, 2
/* 805E66E0  38 C0 00 00 */	li r6, 0
/* 805E66E4  4B FF 93 81 */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805E66E8:
/* 805E66E8  7F A3 EB 78 */	mr r3, r29
/* 805E66EC  48 00 03 C5 */	bl FallChk__8daB_GG_cFv
/* 805E66F0  48 00 03 A8 */	b lbl_805E6A98
lbl_805E66F4:
/* 805E66F4  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E66F8  2C 00 00 1D */	cmpwi r0, 0x1d
/* 805E66FC  41 82 00 50 */	beq lbl_805E674C
/* 805E6700  7F A3 EB 78 */	mr r3, r29
/* 805E6704  38 80 00 1D */	li r4, 0x1d
/* 805E6708  38 A0 00 02 */	li r5, 2
/* 805E670C  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E6710  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E6714  4B FF 88 51 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6718  C0 3E 02 70 */	lfs f1, 0x270(r30)
/* 805E671C  4B C8 12 38 */	b cM_rndF__Ff
/* 805E6720  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 805E6724  EC 00 08 2A */	fadds f0, f0, f1
/* 805E6728  FC 00 00 1E */	fctiwz f0, f0
/* 805E672C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E6730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E6734  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E6738  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E673C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E6740  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E6744  38 00 00 00 */	li r0, 0
/* 805E6748  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_805E674C:
/* 805E674C  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E6750  2C 00 00 00 */	cmpwi r0, 0
/* 805E6754  40 82 00 A4 */	bne lbl_805E67F8
/* 805E6758  38 00 00 01 */	li r0, 1
/* 805E675C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E6760  3C 60 80 5F */	lis r3, data_805ED728@ha
/* 805E6764  C0 23 D7 28 */	lfs f1, data_805ED728@l(r3)
/* 805E6768  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 805E676C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E6770  40 80 00 78 */	bge lbl_805E67E8
/* 805E6774  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E6778  4B C8 11 DC */	b cM_rndF__Ff
/* 805E677C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805E6780  EC 02 08 2A */	fadds f0, f2, f1
/* 805E6784  FC 00 00 1E */	fctiwz f0, f0
/* 805E6788  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E678C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E6790  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E6794  FC 20 10 90 */	fmr f1, f2
/* 805E6798  4B C8 11 BC */	b cM_rndF__Ff
/* 805E679C  FC 00 08 1E */	fctiwz f0, f1
/* 805E67A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805E67A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805E67A8  2C 00 00 32 */	cmpwi r0, 0x32
/* 805E67AC  40 81 00 20 */	ble lbl_805E67CC
/* 805E67B0  7F A3 EB 78 */	mr r3, r29
/* 805E67B4  38 80 00 1A */	li r4, 0x1a
/* 805E67B8  38 A0 00 02 */	li r5, 2
/* 805E67BC  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E67C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E67C4  4B FF 87 A1 */	bl SetAnm__8daB_GG_cFiiff
/* 805E67C8  48 00 00 30 */	b lbl_805E67F8
lbl_805E67CC:
/* 805E67CC  7F A3 EB 78 */	mr r3, r29
/* 805E67D0  38 80 00 1A */	li r4, 0x1a
/* 805E67D4  38 A0 00 02 */	li r5, 2
/* 805E67D8  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E67DC  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 805E67E0  4B FF 87 85 */	bl SetAnm__8daB_GG_cFiiff
/* 805E67E4  48 00 00 14 */	b lbl_805E67F8
lbl_805E67E8:
/* 805E67E8  C0 1E 02 D4 */	lfs f0, 0x2d4(r30)
/* 805E67EC  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E67F0  38 00 00 02 */	li r0, 2
/* 805E67F4  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E67F8:
/* 805E67F8  7F A3 EB 78 */	mr r3, r29
/* 805E67FC  4B FF F6 7D */	bl FookChk__8daB_GG_cFv
/* 805E6800  7F A3 EB 78 */	mr r3, r29
/* 805E6804  48 00 02 AD */	bl FallChk__8daB_GG_cFv
/* 805E6808  48 00 02 90 */	b lbl_805E6A98
lbl_805E680C:
/* 805E680C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E6810  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 805E6814  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E6818  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 805E681C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E6820  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 805E6824  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 805E6828  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E682C  EC 01 00 2A */	fadds f0, f1, f0
/* 805E6830  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 805E6834  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 805E6838  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 805E683C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 805E6840  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 805E6844  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 805E6848  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 805E684C  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 805E6850  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E6854  EC 01 00 2A */	fadds f0, f1, f0
/* 805E6858  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 805E685C  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E6860  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805E6864  41 82 00 FC */	beq lbl_805E6960
/* 805E6868  7F A3 EB 78 */	mr r3, r29
/* 805E686C  38 80 00 1B */	li r4, 0x1b
/* 805E6870  38 A0 00 00 */	li r5, 0
/* 805E6874  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E6878  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E687C  4B FF 86 E9 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6880  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070505@ha */
/* 805E6884  38 03 05 05 */	addi r0, r3, 0x0505 /* 0x00070505@l */
/* 805E6888  90 01 00 08 */	stw r0, 8(r1)
/* 805E688C  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E6890  38 81 00 08 */	addi r4, r1, 8
/* 805E6894  38 A0 00 00 */	li r5, 0
/* 805E6898  38 C0 FF FF */	li r6, -1
/* 805E689C  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E68A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E68A4  7D 89 03 A6 */	mtctr r12
/* 805E68A8  4E 80 04 21 */	bctrl 
/* 805E68AC  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E68B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E68B4  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E68B8  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E68BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E68C0  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E68C4  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 805E68C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E68CC  90 1D 0B D4 */	stw r0, 0xbd4(r29)
/* 805E68D0  7F A3 EB 78 */	mr r3, r29
/* 805E68D4  4B FF 91 75 */	bl SpeedClear__8daB_GG_cFv
/* 805E68D8  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 805E68DC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E68E0  88 1D 05 CE */	lbz r0, 0x5ce(r29)
/* 805E68E4  28 00 00 FF */	cmplwi r0, 0xff
/* 805E68E8  41 82 00 3C */	beq lbl_805E6924
/* 805E68EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E68F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E68F4  38 80 00 8E */	li r4, 0x8e
/* 805E68F8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E68FC  7C 05 07 74 */	extsb r5, r0
/* 805E6900  4B A4 EA 60 */	b isSwitch__10dSv_info_cCFii
/* 805E6904  2C 03 00 00 */	cmpwi r3, 0
/* 805E6908  40 82 00 1C */	bne lbl_805E6924
/* 805E690C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E6910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E6914  38 80 00 8E */	li r4, 0x8e
/* 805E6918  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E691C  7C 05 07 74 */	extsb r5, r0
/* 805E6920  4B A4 E8 E0 */	b onSwitch__10dSv_info_cFii
lbl_805E6924:
/* 805E6924  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E6928  7F A4 EB 78 */	mr r4, r29
/* 805E692C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E6930  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805E6934  7D 89 03 A6 */	mtctr r12
/* 805E6938  4E 80 04 21 */	bctrl 
/* 805E693C  2C 03 00 00 */	cmpwi r3, 0
/* 805E6940  41 82 01 58 */	beq lbl_805E6A98
/* 805E6944  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E6948  7F A4 EB 78 */	mr r4, r29
/* 805E694C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E6950  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 805E6954  7D 89 03 A6 */	mtctr r12
/* 805E6958  4E 80 04 21 */	bctrl 
/* 805E695C  48 00 01 3C */	b lbl_805E6A98
lbl_805E6960:
/* 805E6960  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6964  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6968  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 805E696C  4B D4 1A C0 */	b checkPass__12J3DFrameCtrlFf
/* 805E6970  2C 03 00 00 */	cmpwi r3, 0
/* 805E6974  41 82 00 20 */	beq lbl_805E6994
/* 805E6978  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 805E697C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E6980  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E6984  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E6988  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 805E698C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E6990  48 00 01 08 */	b lbl_805E6A98
lbl_805E6994:
/* 805E6994  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E6998  38 80 00 01 */	li r4, 1
/* 805E699C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E69A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E69A4  40 82 00 18 */	bne lbl_805E69BC
/* 805E69A8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E69AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E69B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E69B4  41 82 00 08 */	beq lbl_805E69BC
/* 805E69B8  38 80 00 00 */	li r4, 0
lbl_805E69BC:
/* 805E69BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E69C0  41 82 00 D8 */	beq lbl_805E6A98
/* 805E69C4  7F A3 EB 78 */	mr r3, r29
/* 805E69C8  38 80 00 00 */	li r4, 0
/* 805E69CC  38 A0 00 01 */	li r5, 1
/* 805E69D0  38 C0 00 00 */	li r6, 0
/* 805E69D4  4B FF 90 91 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E69D8  38 00 00 00 */	li r0, 0
/* 805E69DC  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E69E0  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 805E69E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E69E8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E69EC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E69F0  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E69F4  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E69F8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E69FC  64 00 00 08 */	oris r0, r0, 8
/* 805E6A00  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E6A04  7F A3 EB 78 */	mr r3, r29
/* 805E6A08  38 80 00 0E */	li r4, 0xe
/* 805E6A0C  38 A0 00 02 */	li r5, 2
/* 805E6A10  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E6A14  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E6A18  4B FF 85 4D */	bl SetAnm__8daB_GG_cFiiff
/* 805E6A1C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E6A20  60 00 00 01 */	ori r0, r0, 1
/* 805E6A24  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E6A28  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E6A2C  60 00 00 01 */	ori r0, r0, 1
/* 805E6A30  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E6A34  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805E6A38  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 805E6A3C  38 60 00 00 */	li r3, 0
/* 805E6A40  38 80 00 07 */	li r4, 7
/* 805E6A44  38 00 00 03 */	li r0, 3
/* 805E6A48  7C 09 03 A6 */	mtctr r0
lbl_805E6A4C:
/* 805E6A4C  38 03 08 8B */	addi r0, r3, 0x88b
/* 805E6A50  7C 9D 01 AE */	stbx r4, r29, r0
/* 805E6A54  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6A58  42 00 FF F4 */	bdnz lbl_805E6A4C
/* 805E6A5C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E6A60  60 00 00 01 */	ori r0, r0, 1
/* 805E6A64  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E6A68  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E6A6C  60 00 00 01 */	ori r0, r0, 1
/* 805E6A70  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E6A74  48 00 00 24 */	b lbl_805E6A98
lbl_805E6A78:
/* 805E6A78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E6A7C  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 805E6A80  7D 89 03 A6 */	mtctr r12
/* 805E6A84  4E 80 04 21 */	bctrl 
/* 805E6A88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E6A8C  40 82 00 0C */	bne lbl_805E6A98
/* 805E6A90  38 00 00 03 */	li r0, 3
/* 805E6A94  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E6A98:
/* 805E6A98  39 61 00 30 */	addi r11, r1, 0x30
/* 805E6A9C  4B D7 B7 8C */	b _restgpr_29
/* 805E6AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E6AA4  7C 08 03 A6 */	mtlr r0
/* 805E6AA8  38 21 00 30 */	addi r1, r1, 0x30
/* 805E6AAC  4E 80 00 20 */	blr 
