lbl_80CB604C:
/* 80CB604C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80CB6050  7C 08 02 A6 */	mflr r0
/* 80CB6054  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CB6058  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80CB605C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80CB6060  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80CB6064  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80CB6068  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CB606C  4B 6A C1 65 */	bl _savegpr_26
/* 80CB6070  7C 7F 1B 78 */	mr r31, r3
/* 80CB6074  3C 60 80 CC */	lis r3, m__21daObj_Pumpkin_Param_c@ha /* 0x80CB8370@ha */
/* 80CB6078  3B C3 83 70 */	addi r30, r3, m__21daObj_Pumpkin_Param_c@l /* 0x80CB8370@l */
/* 80CB607C  38 7E 00 00 */	addi r3, r30, 0
/* 80CB6080  C3 E3 00 28 */	lfs f31, 0x28(r3)
/* 80CB6084  C3 C3 00 08 */	lfs f30, 8(r3)
/* 80CB6088  38 00 00 00 */	li r0, 0
/* 80CB608C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80CB6090  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CB6094  D0 1F 0B 18 */	stfs f0, 0xb18(r31)
/* 80CB6098  88 1F 0B 1C */	lbz r0, 0xb1c(r31)
/* 80CB609C  28 00 00 01 */	cmplwi r0, 1
/* 80CB60A0  40 82 00 18 */	bne lbl_80CB60B8
/* 80CB60A4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80CB60A8  D0 1F 0B 18 */	stfs f0, 0xb18(r31)
/* 80CB60AC  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB60B0  EF FF 00 32 */	fmuls f31, f31, f0
/* 80CB60B4  EF DE 00 32 */	fmuls f30, f30, f0
lbl_80CB60B8:
/* 80CB60B8  D3 DF 04 EC */	stfs f30, 0x4ec(r31)
/* 80CB60BC  D3 DF 04 F0 */	stfs f30, 0x4f0(r31)
/* 80CB60C0  D3 DF 04 F4 */	stfs f30, 0x4f4(r31)
/* 80CB60C4  88 7F 04 9A */	lbz r3, 0x49a(r31)
/* 80CB60C8  38 00 FF 7A */	li r0, -134
/* 80CB60CC  7C 60 00 38 */	and r0, r3, r0
/* 80CB60D0  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80CB60D4  38 00 00 00 */	li r0, 0
/* 80CB60D8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CB60DC  88 1F 0B 1C */	lbz r0, 0xb1c(r31)
/* 80CB60E0  2C 00 00 02 */	cmpwi r0, 2
/* 80CB60E4  41 82 00 3C */	beq lbl_80CB6120
/* 80CB60E8  40 80 00 14 */	bge lbl_80CB60FC
/* 80CB60EC  2C 00 00 00 */	cmpwi r0, 0
/* 80CB60F0  41 82 00 18 */	beq lbl_80CB6108
/* 80CB60F4  40 80 00 20 */	bge lbl_80CB6114
/* 80CB60F8  48 00 00 40 */	b lbl_80CB6138
lbl_80CB60FC:
/* 80CB60FC  2C 00 00 04 */	cmpwi r0, 4
/* 80CB6100  40 80 00 38 */	bge lbl_80CB6138
/* 80CB6104  48 00 00 28 */	b lbl_80CB612C
lbl_80CB6108:
/* 80CB6108  38 00 00 06 */	li r0, 6
/* 80CB610C  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CB6110  48 00 00 30 */	b lbl_80CB6140
lbl_80CB6114:
/* 80CB6114  38 00 00 08 */	li r0, 8
/* 80CB6118  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CB611C  48 00 00 24 */	b lbl_80CB6140
lbl_80CB6120:
/* 80CB6120  38 00 00 06 */	li r0, 6
/* 80CB6124  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CB6128  48 00 00 18 */	b lbl_80CB6140
lbl_80CB612C:
/* 80CB612C  38 00 00 08 */	li r0, 8
/* 80CB6130  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CB6134  48 00 00 0C */	b lbl_80CB6140
lbl_80CB6138:
/* 80CB6138  38 00 00 06 */	li r0, 6
/* 80CB613C  98 1F 05 48 */	stb r0, 0x548(r31)
lbl_80CB6140:
/* 80CB6140  38 7F 07 8C */	addi r3, r31, 0x78c
/* 80CB6144  3B 9E 00 00 */	addi r28, r30, 0
/* 80CB6148  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80CB614C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB6150  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB6154  4B 3B FD ED */	bl SetWallR__12dBgS_AcchCirFf
/* 80CB6158  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 80CB615C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB6160  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB6164  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80CB6168  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80CB616C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB6170  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB6174  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CB6178  3B A0 00 00 */	li r29, 0
/* 80CB617C  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 80CB6180  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80CB6184  40 82 00 18 */	bne lbl_80CB619C
/* 80CB6188  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80CB618C  40 82 00 10 */	bne lbl_80CB619C
/* 80CB6190  88 1F 0B B3 */	lbz r0, 0xbb3(r31)
/* 80CB6194  28 00 00 00 */	cmplwi r0, 0
/* 80CB6198  41 82 00 08 */	beq lbl_80CB61A0
lbl_80CB619C:
/* 80CB619C  3B A0 00 01 */	li r29, 1
lbl_80CB61A0:
/* 80CB61A0  88 1F 0B AE */	lbz r0, 0xbae(r31)
/* 80CB61A4  28 00 00 00 */	cmplwi r0, 0
/* 80CB61A8  41 82 01 5C */	beq lbl_80CB6304
/* 80CB61AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB61B0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CB61B4  28 00 00 FF */	cmplwi r0, 0xff
/* 80CB61B8  38 80 FF FF */	li r4, -1
/* 80CB61BC  41 82 00 08 */	beq lbl_80CB61C4
/* 80CB61C0  7C 04 03 78 */	mr r4, r0
lbl_80CB61C4:
/* 80CB61C4  2C 04 00 00 */	cmpwi r4, 0
/* 80CB61C8  41 80 00 48 */	blt lbl_80CB6210
/* 80CB61CC  80 7F 0B 40 */	lwz r3, 0xb40(r31)
/* 80CB61D0  3C 03 00 01 */	addis r0, r3, 1
/* 80CB61D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CB61D8  40 82 00 38 */	bne lbl_80CB6210
/* 80CB61DC  38 00 00 00 */	li r0, 0
/* 80CB61E0  90 01 00 08 */	stw r0, 8(r1)
/* 80CB61E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB61E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB61EC  38 A0 FF FF */	li r5, -1
/* 80CB61F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB61F4  7C 06 07 74 */	extsb r6, r0
/* 80CB61F8  38 E0 00 00 */	li r7, 0
/* 80CB61FC  39 00 00 00 */	li r8, 0
/* 80CB6200  39 20 00 00 */	li r9, 0
/* 80CB6204  39 40 00 00 */	li r10, 0
/* 80CB6208  4B 36 5D 5D */	bl fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 80CB620C  90 7F 0B 40 */	stw r3, 0xb40(r31)
lbl_80CB6210:
/* 80CB6210  80 7F 0B 40 */	lwz r3, 0xb40(r31)
/* 80CB6214  3C 03 00 01 */	addis r0, r3, 1
/* 80CB6218  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CB621C  41 82 00 10 */	beq lbl_80CB622C
/* 80CB6220  4B 36 B1 7D */	bl fpcEx_IsExist__FUi
/* 80CB6224  2C 03 00 00 */	cmpwi r3, 0
/* 80CB6228  41 82 11 B0 */	beq lbl_80CB73D8
lbl_80CB622C:
/* 80CB622C  88 1F 0B 1C */	lbz r0, 0xb1c(r31)
/* 80CB6230  28 00 00 00 */	cmplwi r0, 0
/* 80CB6234  40 82 00 BC */	bne lbl_80CB62F0
/* 80CB6238  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB623C  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80CB6240  38 03 FF F1 */	addi r0, r3, -15
/* 80CB6244  30 00 FF FF */	addic r0, r0, -1
/* 80CB6248  7C 00 01 10 */	subfe r0, r0, r0
/* 80CB624C  7C 60 00 78 */	andc r0, r3, r0
/* 80CB6250  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CB6254  28 00 00 02 */	cmplwi r0, 2
/* 80CB6258  41 82 00 98 */	beq lbl_80CB62F0
/* 80CB625C  38 7E 00 00 */	addi r3, r30, 0
/* 80CB6260  A8 03 00 30 */	lha r0, 0x30(r3)
/* 80CB6264  90 1F 0B 48 */	stw r0, 0xb48(r31)
/* 80CB6268  A8 03 00 32 */	lha r0, 0x32(r3)
/* 80CB626C  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 80CB6270  38 00 00 00 */	li r0, 0
/* 80CB6274  98 1F 0B AF */	stb r0, 0xbaf(r31)
/* 80CB6278  98 1F 0B B0 */	stb r0, 0xbb0(r31)
/* 80CB627C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CB6280  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CB6284  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CB6288  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CB628C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CB6290  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CB6294  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CB6298  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CB629C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CB62A0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CB62A4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CB62A8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CB62AC  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CB62B0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CB62B4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80CB62B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80CB62BC  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CB62C0  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CB62C4  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CB62C8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CB62CC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80CB62D0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CB62D4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CB62D8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CB62DC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB62E0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80CB62E4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80CB62E8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80CB62EC  48 00 00 0C */	b lbl_80CB62F8
lbl_80CB62F0:
/* 80CB62F0  7F E3 FB 78 */	mr r3, r31
/* 80CB62F4  4B 36 39 89 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80CB62F8:
/* 80CB62F8  38 00 00 00 */	li r0, 0
/* 80CB62FC  98 1F 0B AE */	stb r0, 0xbae(r31)
/* 80CB6300  48 00 10 D8 */	b lbl_80CB73D8
lbl_80CB6304:
/* 80CB6304  80 7F 0B 4C */	lwz r3, 0xb4c(r31)
/* 80CB6308  2C 03 00 00 */	cmpwi r3, 0
/* 80CB630C  41 82 01 80 */	beq lbl_80CB648C
/* 80CB6310  88 1F 0B AF */	lbz r0, 0xbaf(r31)
/* 80CB6314  28 00 00 00 */	cmplwi r0, 0
/* 80CB6318  41 82 00 B4 */	beq lbl_80CB63CC
/* 80CB631C  C0 9E 00 78 */	lfs f4, 0x78(r30)
/* 80CB6320  38 9E 00 00 */	addi r4, r30, 0
/* 80CB6324  A8 A4 00 32 */	lha r5, 0x32(r4)
/* 80CB6328  7C 03 28 50 */	subf r0, r3, r5
/* 80CB632C  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80CB6330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB6334  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CB6338  3C 60 43 30 */	lis r3, 0x4330
/* 80CB633C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80CB6340  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80CB6344  EC 20 18 28 */	fsubs f1, f0, f3
/* 80CB6348  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80CB634C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80CB6350  90 61 00 68 */	stw r3, 0x68(r1)
/* 80CB6354  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80CB6358  EC 00 18 28 */	fsubs f0, f0, f3
/* 80CB635C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CB6360  EC 44 00 32 */	fmuls f2, f4, f0
/* 80CB6364  A8 84 00 30 */	lha r4, 0x30(r4)
/* 80CB6368  80 1F 0B 48 */	lwz r0, 0xb48(r31)
/* 80CB636C  7C 00 20 50 */	subf r0, r0, r4
/* 80CB6370  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB6374  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CB6378  90 61 00 70 */	stw r3, 0x70(r1)
/* 80CB637C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80CB6380  EC 20 18 28 */	fsubs f1, f0, f3
/* 80CB6384  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80CB6388  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80CB638C  90 61 00 78 */	stw r3, 0x78(r1)
/* 80CB6390  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80CB6394  EC 00 18 28 */	fsubs f0, f0, f3
/* 80CB6398  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CB639C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80CB63A0  EC 02 00 2A */	fadds f0, f2, f0
/* 80CB63A4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80CB63A8  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 80CB63AC  48 00 1E C9 */	bl func_80CB8274
/* 80CB63B0  2C 03 00 00 */	cmpwi r3, 0
/* 80CB63B4  40 82 00 B8 */	bne lbl_80CB646C
/* 80CB63B8  38 00 00 00 */	li r0, 0
/* 80CB63BC  98 1F 0B AF */	stb r0, 0xbaf(r31)
/* 80CB63C0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CB63C4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80CB63C8  48 00 00 A4 */	b lbl_80CB646C
lbl_80CB63CC:
/* 80CB63CC  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80CB63D0  38 7E 00 00 */	addi r3, r30, 0
/* 80CB63D4  A8 83 00 30 */	lha r4, 0x30(r3)
/* 80CB63D8  80 1F 0B 48 */	lwz r0, 0xb48(r31)
/* 80CB63DC  7C 00 20 50 */	subf r0, r0, r4
/* 80CB63E0  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80CB63E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB63E8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80CB63EC  3C 60 43 30 */	lis r3, 0x4330
/* 80CB63F0  90 61 00 78 */	stw r3, 0x78(r1)
/* 80CB63F4  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80CB63F8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CB63FC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80CB6400  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CB6404  90 61 00 70 */	stw r3, 0x70(r1)
/* 80CB6408  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80CB640C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CB6410  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CB6414  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CB6418  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80CB641C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB6420  4B 3C E0 41 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CB6424  28 03 00 00 */	cmplwi r3, 0
/* 80CB6428  41 82 00 44 */	beq lbl_80CB646C
/* 80CB642C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB6430  4B 3C E1 19 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB6434  28 03 00 00 */	cmplwi r3, 0
/* 80CB6438  41 82 00 34 */	beq lbl_80CB646C
/* 80CB643C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB6440  4B 3C E1 09 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB6444  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CB6448  28 00 02 00 */	cmplwi r0, 0x200
/* 80CB644C  40 82 00 20 */	bne lbl_80CB646C
/* 80CB6450  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB6454  4B 3C E0 F5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB6458  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80CB645C  28 00 00 06 */	cmplwi r0, 6
/* 80CB6460  40 82 00 0C */	bne lbl_80CB646C
/* 80CB6464  38 00 00 01 */	li r0, 1
/* 80CB6468  98 1F 0B AF */	stb r0, 0xbaf(r31)
lbl_80CB646C:
/* 80CB646C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80CB6470  48 00 1E 05 */	bl func_80CB8274
/* 80CB6474  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80CB6478  EF DE 00 32 */	fmuls f30, f30, f0
/* 80CB647C  D3 DF 04 EC */	stfs f30, 0x4ec(r31)
/* 80CB6480  D3 DF 04 F0 */	stfs f30, 0x4f0(r31)
/* 80CB6484  D3 DF 04 F4 */	stfs f30, 0x4f4(r31)
/* 80CB6488  48 00 0F 50 */	b lbl_80CB73D8
lbl_80CB648C:
/* 80CB648C  3B 60 00 00 */	li r27, 0
/* 80CB6490  88 1F 0B AA */	lbz r0, 0xbaa(r31)
/* 80CB6494  28 00 00 00 */	cmplwi r0, 0
/* 80CB6498  40 82 01 24 */	bne lbl_80CB65BC
/* 80CB649C  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB64A0  4B 3C DF C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CB64A4  28 03 00 00 */	cmplwi r3, 0
/* 80CB64A8  41 82 01 14 */	beq lbl_80CB65BC
/* 80CB64AC  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB64B0  4B 3C E0 99 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB64B4  28 03 00 00 */	cmplwi r3, 0
/* 80CB64B8  41 82 00 FC */	beq lbl_80CB65B4
/* 80CB64BC  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB64C0  4B 3C E0 89 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB64C4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80CB64C8  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80CB64CC  28 00 00 00 */	cmplwi r0, 0
/* 80CB64D0  40 82 00 E4 */	bne lbl_80CB65B4
/* 80CB64D4  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB64D8  4B 3C E0 71 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80CB64DC  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80CB64E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB64E4  4B 4A 80 CD */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80CB64E8  38 00 00 01 */	li r0, 1
/* 80CB64EC  98 1F 0B AA */	stb r0, 0xbaa(r31)
/* 80CB64F0  3B A0 00 00 */	li r29, 0
/* 80CB64F4  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 80CB64F8  28 00 00 00 */	cmplwi r0, 0
/* 80CB64FC  41 82 01 1C */	beq lbl_80CB6618
/* 80CB6500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB6504  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB6508  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CB650C  38 00 00 FF */	li r0, 0xff
/* 80CB6510  90 01 00 08 */	stw r0, 8(r1)
/* 80CB6514  38 80 00 00 */	li r4, 0
/* 80CB6518  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB651C  38 00 FF FF */	li r0, -1
/* 80CB6520  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB6524  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB6528  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB652C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB6530  38 80 FF FF */	li r4, -1
/* 80CB6534  38 A0 00 00 */	li r5, 0
/* 80CB6538  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008241@ha */
/* 80CB653C  38 C6 82 41 */	addi r6, r6, 0x8241 /* 0x00008241@l */
/* 80CB6540  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB6544  39 00 00 00 */	li r8, 0
/* 80CB6548  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB654C  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB6550  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB6554  4B 39 6F 79 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB6558  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CB655C  38 00 00 FF */	li r0, 0xff
/* 80CB6560  90 01 00 08 */	stw r0, 8(r1)
/* 80CB6564  38 80 00 00 */	li r4, 0
/* 80CB6568  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB656C  38 00 FF FF */	li r0, -1
/* 80CB6570  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB6574  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB6578  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB657C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB6580  38 80 FF FF */	li r4, -1
/* 80CB6584  38 A0 00 00 */	li r5, 0
/* 80CB6588  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008242@ha */
/* 80CB658C  38 C6 82 42 */	addi r6, r6, 0x8242 /* 0x00008242@l */
/* 80CB6590  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB6594  39 00 00 00 */	li r8, 0
/* 80CB6598  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB659C  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB65A0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB65A4  4B 39 6F 29 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB65A8  38 00 00 00 */	li r0, 0
/* 80CB65AC  98 1F 0B A8 */	stb r0, 0xba8(r31)
/* 80CB65B0  48 00 00 68 */	b lbl_80CB6618
lbl_80CB65B4:
/* 80CB65B4  3B 60 00 01 */	li r27, 1
/* 80CB65B8  48 00 00 60 */	b lbl_80CB6618
lbl_80CB65BC:
/* 80CB65BC  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB65C0  28 00 00 00 */	cmplwi r0, 0
/* 80CB65C4  41 82 00 54 */	beq lbl_80CB6618
/* 80CB65C8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CB65CC  FC 00 02 10 */	fabs f0, f0
/* 80CB65D0  FC 20 00 18 */	frsp f1, f0
/* 80CB65D4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CB65D8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CB65DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB65E0  7C 00 00 26 */	mfcr r0
/* 80CB65E4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80CB65E8  40 82 00 30 */	bne lbl_80CB6618
/* 80CB65EC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80CB65F0  4B 3C E0 69 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80CB65F4  28 03 00 00 */	cmplwi r3, 0
/* 80CB65F8  41 82 00 20 */	beq lbl_80CB6618
/* 80CB65FC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80CB6600  4B 3C E0 F1 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80CB6604  4B 5A D4 45 */	bl GetAc__8cCcD_ObjFv
/* 80CB6608  A8 03 00 08 */	lha r0, 8(r3)
/* 80CB660C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80CB6610  41 82 00 08 */	beq lbl_80CB6618
/* 80CB6614  3B 60 00 01 */	li r27, 1
lbl_80CB6618:
/* 80CB6618  2C 1B 00 00 */	cmpwi r27, 0
/* 80CB661C  41 82 00 14 */	beq lbl_80CB6630
/* 80CB6620  7F E3 FB 78 */	mr r3, r31
/* 80CB6624  48 00 18 D1 */	bl crash__15daObj_Pumpkin_cFv
/* 80CB6628  3B A0 00 00 */	li r29, 0
/* 80CB662C  48 00 0D AC */	b lbl_80CB73D8
lbl_80CB6630:
/* 80CB6630  88 1F 0B AA */	lbz r0, 0xbaa(r31)
/* 80CB6634  28 00 00 00 */	cmplwi r0, 0
/* 80CB6638  41 82 00 54 */	beq lbl_80CB668C
/* 80CB663C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80CB6640  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB6644  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 80CB6648  7F E6 FB 78 */	mr r6, r31
/* 80CB664C  38 E0 1C 00 */	li r7, 0x1c00
/* 80CB6650  4B 4A 80 05 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80CB6654  2C 03 00 00 */	cmpwi r3, 0
/* 80CB6658  40 82 00 1C */	bne lbl_80CB6674
/* 80CB665C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CB6660  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80CB6664  7C 1D 03 78 */	mr r29, r0
/* 80CB6668  38 00 00 00 */	li r0, 0
/* 80CB666C  98 1F 0B AA */	stb r0, 0xbaa(r31)
/* 80CB6670  48 00 00 1C */	b lbl_80CB668C
lbl_80CB6674:
/* 80CB6674  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6678  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CB667C  41 82 00 10 */	beq lbl_80CB668C
/* 80CB6680  3B A0 00 00 */	li r29, 0
/* 80CB6684  7F E3 FB 78 */	mr r3, r31
/* 80CB6688  48 00 18 6D */	bl crash__15daObj_Pumpkin_cFv
lbl_80CB668C:
/* 80CB668C  2C 1D 00 00 */	cmpwi r29, 0
/* 80CB6690  41 82 03 24 */	beq lbl_80CB69B4
/* 80CB6694  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB6698  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80CB669C  38 03 FF F1 */	addi r0, r3, -15
/* 80CB66A0  30 00 FF FF */	addic r0, r0, -1
/* 80CB66A4  7C 00 01 10 */	subfe r0, r0, r0
/* 80CB66A8  7C 60 00 78 */	andc r0, r3, r0
/* 80CB66AC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CB66B0  40 82 02 84 */	bne lbl_80CB6934
/* 80CB66B4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CB66B8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CB66BC  41 82 01 5C */	beq lbl_80CB6818
/* 80CB66C0  88 1F 0B AA */	lbz r0, 0xbaa(r31)
/* 80CB66C4  28 00 00 00 */	cmplwi r0, 0
/* 80CB66C8  40 82 01 50 */	bne lbl_80CB6818
/* 80CB66CC  80 9F 0B 44 */	lwz r4, 0xb44(r31)
/* 80CB66D0  3B 7E 00 00 */	addi r27, r30, 0
/* 80CB66D4  A8 7B 00 2C */	lha r3, 0x2c(r27)
/* 80CB66D8  A8 1B 00 2E */	lha r0, 0x2e(r27)
/* 80CB66DC  7C 63 02 14 */	add r3, r3, r0
/* 80CB66E0  7C 04 18 00 */	cmpw r4, r3
/* 80CB66E4  40 80 02 50 */	bge lbl_80CB6934
/* 80CB66E8  38 04 00 01 */	addi r0, r4, 1
/* 80CB66EC  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80CB66F0  80 1F 0B 44 */	lwz r0, 0xb44(r31)
/* 80CB66F4  7C 03 00 00 */	cmpw r3, r0
/* 80CB66F8  41 81 00 50 */	bgt lbl_80CB6748
/* 80CB66FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB6700  7C 03 07 74 */	extsb r3, r0
/* 80CB6704  4B 37 69 69 */	bl dComIfGp_getReverb__Fi
/* 80CB6708  7C 67 1B 78 */	mr r7, r3
/* 80CB670C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A7@ha */
/* 80CB6710  38 03 00 A7 */	addi r0, r3, 0x00A7 /* 0x000800A7@l */
/* 80CB6714  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CB6718  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB671C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB6720  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB6724  38 81 00 30 */	addi r4, r1, 0x30
/* 80CB6728  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CB672C  38 C0 00 00 */	li r6, 0
/* 80CB6730  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB6734  FC 40 08 90 */	fmr f2, f1
/* 80CB6738  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80CB673C  FC 80 18 90 */	fmr f4, f3
/* 80CB6740  39 00 00 00 */	li r8, 0
/* 80CB6744  4B 5F 52 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CB6748:
/* 80CB6748  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 80CB674C  28 00 00 00 */	cmplwi r0, 0
/* 80CB6750  41 82 01 E4 */	beq lbl_80CB6934
/* 80CB6754  A8 7B 00 2C */	lha r3, 0x2c(r27)
/* 80CB6758  80 1F 0B 44 */	lwz r0, 0xb44(r31)
/* 80CB675C  7C 03 00 00 */	cmpw r3, r0
/* 80CB6760  41 81 01 D4 */	bgt lbl_80CB6934
/* 80CB6764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB6768  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB676C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CB6770  38 00 00 FF */	li r0, 0xff
/* 80CB6774  90 01 00 08 */	stw r0, 8(r1)
/* 80CB6778  38 80 00 00 */	li r4, 0
/* 80CB677C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB6780  38 00 FF FF */	li r0, -1
/* 80CB6784  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB6788  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB678C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB6790  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB6794  38 80 FF FF */	li r4, -1
/* 80CB6798  38 A0 00 00 */	li r5, 0
/* 80CB679C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008241@ha */
/* 80CB67A0  38 C6 82 41 */	addi r6, r6, 0x8241 /* 0x00008241@l */
/* 80CB67A4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB67A8  39 00 00 00 */	li r8, 0
/* 80CB67AC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB67B0  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB67B4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB67B8  4B 39 6D 15 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB67BC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CB67C0  38 00 00 FF */	li r0, 0xff
/* 80CB67C4  90 01 00 08 */	stw r0, 8(r1)
/* 80CB67C8  38 80 00 00 */	li r4, 0
/* 80CB67CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB67D0  38 00 FF FF */	li r0, -1
/* 80CB67D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB67D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB67DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB67E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB67E4  38 80 FF FF */	li r4, -1
/* 80CB67E8  38 A0 00 00 */	li r5, 0
/* 80CB67EC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008242@ha */
/* 80CB67F0  38 C6 82 42 */	addi r6, r6, 0x8242 /* 0x00008242@l */
/* 80CB67F4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB67F8  39 00 00 00 */	li r8, 0
/* 80CB67FC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB6800  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB6804  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB6808  4B 39 6C C5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB680C  38 00 00 00 */	li r0, 0
/* 80CB6810  98 1F 0B A8 */	stb r0, 0xba8(r31)
/* 80CB6814  48 00 01 20 */	b lbl_80CB6934
lbl_80CB6818:
/* 80CB6818  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 80CB681C  28 00 00 00 */	cmplwi r0, 0
/* 80CB6820  41 82 01 14 */	beq lbl_80CB6934
/* 80CB6824  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB6828  7C 03 07 74 */	extsb r3, r0
/* 80CB682C  4B 37 68 41 */	bl dComIfGp_getReverb__Fi
/* 80CB6830  7C 67 1B 78 */	mr r7, r3
/* 80CB6834  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A7@ha */
/* 80CB6838  38 03 00 A7 */	addi r0, r3, 0x00A7 /* 0x000800A7@l */
/* 80CB683C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CB6840  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB6844  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB6848  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB684C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CB6850  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CB6854  38 C0 00 00 */	li r6, 0
/* 80CB6858  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB685C  FC 40 08 90 */	fmr f2, f1
/* 80CB6860  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80CB6864  FC 80 18 90 */	fmr f4, f3
/* 80CB6868  39 00 00 00 */	li r8, 0
/* 80CB686C  4B 5F 51 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB6870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB6874  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB6878  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CB687C  38 00 00 FF */	li r0, 0xff
/* 80CB6880  90 01 00 08 */	stw r0, 8(r1)
/* 80CB6884  38 80 00 00 */	li r4, 0
/* 80CB6888  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB688C  38 00 FF FF */	li r0, -1
/* 80CB6890  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB6894  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB6898  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB689C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB68A0  38 80 FF FF */	li r4, -1
/* 80CB68A4  38 A0 00 00 */	li r5, 0
/* 80CB68A8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008241@ha */
/* 80CB68AC  38 C6 82 41 */	addi r6, r6, 0x8241 /* 0x00008241@l */
/* 80CB68B0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB68B4  39 00 00 00 */	li r8, 0
/* 80CB68B8  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB68BC  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB68C0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB68C4  4B 39 6C 09 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB68C8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CB68CC  38 00 00 FF */	li r0, 0xff
/* 80CB68D0  90 01 00 08 */	stw r0, 8(r1)
/* 80CB68D4  38 80 00 00 */	li r4, 0
/* 80CB68D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB68DC  38 00 FF FF */	li r0, -1
/* 80CB68E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB68E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB68E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB68EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB68F0  38 80 FF FF */	li r4, -1
/* 80CB68F4  38 A0 00 00 */	li r5, 0
/* 80CB68F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008242@ha */
/* 80CB68FC  38 C6 82 42 */	addi r6, r6, 0x8242 /* 0x00008242@l */
/* 80CB6900  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB6904  39 00 00 00 */	li r8, 0
/* 80CB6908  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80CB690C  39 5F 04 EC */	addi r10, r31, 0x4ec
/* 80CB6910  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB6914  4B 39 6B B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB6918  38 9E 00 00 */	addi r4, r30, 0
/* 80CB691C  A8 64 00 2C */	lha r3, 0x2c(r4)
/* 80CB6920  A8 04 00 2E */	lha r0, 0x2e(r4)
/* 80CB6924  7C 03 02 14 */	add r0, r3, r0
/* 80CB6928  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80CB692C  38 00 00 00 */	li r0, 0
/* 80CB6930  98 1F 0B A8 */	stb r0, 0xba8(r31)
lbl_80CB6934:
/* 80CB6934  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6938  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CB693C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB6940  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6944  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80CB6948  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB694C  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6950  60 00 00 04 */	ori r0, r0, 4
/* 80CB6954  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB6958  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB695C  60 00 00 02 */	ori r0, r0, 2
/* 80CB6960  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB6964  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6968  D0 1F 0B 60 */	stfs f0, 0xb60(r31)
/* 80CB696C  38 00 00 00 */	li r0, 0
/* 80CB6970  98 1F 07 64 */	stb r0, 0x764(r31)
/* 80CB6974  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CB6978  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB697C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CB6980  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6984  D0 1F 0B 20 */	stfs f0, 0xb20(r31)
/* 80CB6988  D0 1F 0B 24 */	stfs f0, 0xb24(r31)
/* 80CB698C  D0 1F 0B 28 */	stfs f0, 0xb28(r31)
/* 80CB6990  B0 1F 0B 38 */	sth r0, 0xb38(r31)
/* 80CB6994  B0 1F 0B 3A */	sth r0, 0xb3a(r31)
/* 80CB6998  B0 1F 0B 3C */	sth r0, 0xb3c(r31)
/* 80CB699C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CB69A0  98 1F 0B AB */	stb r0, 0xbab(r31)
/* 80CB69A4  98 1F 0B AC */	stb r0, 0xbac(r31)
/* 80CB69A8  98 1F 0B AD */	stb r0, 0xbad(r31)
/* 80CB69AC  98 1F 0B B2 */	stb r0, 0xbb2(r31)
/* 80CB69B0  48 00 0A 28 */	b lbl_80CB73D8
lbl_80CB69B4:
/* 80CB69B4  38 7E 00 00 */	addi r3, r30, 0
/* 80CB69B8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80CB69BC  FC 00 00 1E */	fctiwz f0, f0
/* 80CB69C0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CB69C4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80CB69C8  98 1F 07 64 */	stb r0, 0x764(r31)
/* 80CB69CC  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 80CB69D0  28 00 00 00 */	cmplwi r0, 0
/* 80CB69D4  40 82 00 10 */	bne lbl_80CB69E4
/* 80CB69D8  88 1F 0B 1C */	lbz r0, 0xb1c(r31)
/* 80CB69DC  28 00 00 01 */	cmplwi r0, 1
/* 80CB69E0  40 82 00 0C */	bne lbl_80CB69EC
lbl_80CB69E4:
/* 80CB69E4  38 00 00 FF */	li r0, 0xff
/* 80CB69E8  98 1F 07 64 */	stb r0, 0x764(r31)
lbl_80CB69EC:
/* 80CB69EC  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB69F0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80CB69F4  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB69F8  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB69FC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80CB6A00  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB6A04  88 1F 0B B1 */	lbz r0, 0xbb1(r31)
/* 80CB6A08  28 00 00 00 */	cmplwi r0, 0
/* 80CB6A0C  41 82 00 C0 */	beq lbl_80CB6ACC
/* 80CB6A10  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CB6A14  FC 00 02 10 */	fabs f0, f0
/* 80CB6A18  FC 20 00 18 */	frsp f1, f0
/* 80CB6A1C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CB6A20  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CB6A24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6A28  7C 00 00 26 */	mfcr r0
/* 80CB6A2C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80CB6A30  40 82 00 9C */	bne lbl_80CB6ACC
/* 80CB6A34  38 7E 00 00 */	addi r3, r30, 0
/* 80CB6A38  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80CB6A3C  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80CB6A40  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80CB6A44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CB6A48  FC 00 00 1E */	fctiwz f0, f0
/* 80CB6A4C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CB6A50  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80CB6A54  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CB6A58  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 80CB6A5C  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80CB6A60  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 80CB6A64  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB6A68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CB6A6C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CB6A70  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CB6A74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB6A78  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6A7C  7C 63 02 14 */	add r3, r3, r0
/* 80CB6A80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CB6A84  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB6A88  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6A8C  38 00 00 06 */	li r0, 6
/* 80CB6A90  90 1F 0B 50 */	stw r0, 0xb50(r31)
/* 80CB6A94  38 00 40 00 */	li r0, 0x4000
/* 80CB6A98  B0 1F 0B 7C */	sth r0, 0xb7c(r31)
/* 80CB6A9C  38 00 00 01 */	li r0, 1
/* 80CB6AA0  98 1F 0B AD */	stb r0, 0xbad(r31)
/* 80CB6AA4  D0 3F 0B 74 */	stfs f1, 0xb74(r31)
/* 80CB6AA8  7F E3 FB 78 */	mr r3, r31
/* 80CB6AAC  4B 36 67 51 */	bl fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80CB6AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80CB6AB4  41 82 03 D0 */	beq lbl_80CB6E84
/* 80CB6AB8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6ABC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CB6AC0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6AC4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CB6AC8  48 00 03 BC */	b lbl_80CB6E84
lbl_80CB6ACC:
/* 80CB6ACC  3B 40 00 00 */	li r26, 0
/* 80CB6AD0  3B 60 00 80 */	li r27, 0x80
/* 80CB6AD4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB6AD8  38 9F 0B 64 */	addi r4, r31, 0xb64
/* 80CB6ADC  4B 36 6D B5 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80CB6AE0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80CB6AE4  C0 3F 0B 64 */	lfs f1, 0xb64(r31)
/* 80CB6AE8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CB6AEC  41 82 03 98 */	beq lbl_80CB6E84
/* 80CB6AF0  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80CB6AF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CB6AF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80CB6AFC  40 80 03 88 */	bge lbl_80CB6E84
/* 80CB6B00  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB6B04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CB6B08  4C 40 13 82 */	cror 2, 0, 2
/* 80CB6B0C  40 82 03 78 */	bne lbl_80CB6E84
/* 80CB6B10  88 1F 0B AC */	lbz r0, 0xbac(r31)
/* 80CB6B14  28 00 00 00 */	cmplwi r0, 0
/* 80CB6B18  40 82 00 EC */	bne lbl_80CB6C04
/* 80CB6B1C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CB6B20  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80CB6B24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB6B28  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6B2C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CB6B30  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80CB6B34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB6B38  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6B3C  38 00 00 00 */	li r0, 0
/* 80CB6B40  98 1F 0B AB */	stb r0, 0xbab(r31)
/* 80CB6B44  38 00 00 01 */	li r0, 1
/* 80CB6B48  98 1F 0B AC */	stb r0, 0xbac(r31)
/* 80CB6B4C  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB6B50  28 00 00 00 */	cmplwi r0, 0
/* 80CB6B54  40 82 00 1C */	bne lbl_80CB6B70
/* 80CB6B58  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 80CB6B5C  28 00 00 00 */	cmplwi r0, 0
/* 80CB6B60  40 82 00 10 */	bne lbl_80CB6B70
/* 80CB6B64  88 1F 0B B1 */	lbz r0, 0xbb1(r31)
/* 80CB6B68  28 00 00 00 */	cmplwi r0, 0
/* 80CB6B6C  41 82 00 8C */	beq lbl_80CB6BF8
lbl_80CB6B70:
/* 80CB6B70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB6B74  7C 03 07 74 */	extsb r3, r0
/* 80CB6B78  4B 37 64 F5 */	bl dComIfGp_getReverb__Fi
/* 80CB6B7C  7C 67 1B 78 */	mr r7, r3
/* 80CB6B80  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80CB6B84  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80CB6B88  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CB6B8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB6B90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB6B94  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB6B98  38 81 00 28 */	addi r4, r1, 0x28
/* 80CB6B9C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CB6BA0  38 C0 00 00 */	li r6, 0
/* 80CB6BA4  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB6BA8  FC 40 08 90 */	fmr f2, f1
/* 80CB6BAC  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80CB6BB0  FC 80 18 90 */	fmr f4, f3
/* 80CB6BB4  39 00 00 00 */	li r8, 0
/* 80CB6BB8  4B 5F 4D CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB6BBC  7F E3 FB 78 */	mr r3, r31
/* 80CB6BC0  48 00 11 D9 */	bl setWaterPrtcl__15daObj_Pumpkin_cFv
/* 80CB6BC4  3B 40 00 01 */	li r26, 1
/* 80CB6BC8  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB6BCC  28 00 00 00 */	cmplwi r0, 0
/* 80CB6BD0  40 82 00 10 */	bne lbl_80CB6BE0
/* 80CB6BD4  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 80CB6BD8  28 00 00 00 */	cmplwi r0, 0
/* 80CB6BDC  41 82 00 1C */	beq lbl_80CB6BF8
lbl_80CB6BE0:
/* 80CB6BE0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CB6BE4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6BE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6BEC  40 80 00 0C */	bge lbl_80CB6BF8
/* 80CB6BF0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80CB6BF4  D0 1F 0B 70 */	stfs f0, 0xb70(r31)
lbl_80CB6BF8:
/* 80CB6BF8  38 00 00 00 */	li r0, 0
/* 80CB6BFC  98 1F 0B AD */	stb r0, 0xbad(r31)
/* 80CB6C00  98 1F 0B B2 */	stb r0, 0xbb2(r31)
lbl_80CB6C04:
/* 80CB6C04  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB6C08  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80CB6C0C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80CB6C10  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CB6C14  38 E0 00 00 */	li r7, 0
/* 80CB6C18  4B 36 6D 91 */	bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80CB6C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80CB6C20  41 82 00 FC */	beq lbl_80CB6D1C
/* 80CB6C24  38 61 00 38 */	addi r3, r1, 0x38
/* 80CB6C28  38 81 00 50 */	addi r4, r1, 0x50
/* 80CB6C2C  4B 5B 03 1D */	bl normalizeZP__4cXyzFv
/* 80CB6C30  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CB6C34  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80CB6C38  4B 5B 0A 3D */	bl cM_atan2s__Fff
/* 80CB6C3C  7C 64 1B 78 */	mr r4, r3
/* 80CB6C40  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80CB6C44  38 A0 00 04 */	li r5, 4
/* 80CB6C48  38 C0 02 00 */	li r6, 0x200
/* 80CB6C4C  4B 5B 99 BD */	bl cLib_addCalcAngleS2__FPssss
/* 80CB6C50  2C 1A 00 00 */	cmpwi r26, 0
/* 80CB6C54  41 82 00 14 */	beq lbl_80CB6C68
/* 80CB6C58  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CB6C5C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80CB6C60  4B 5B 0A 15 */	bl cM_atan2s__Fff
/* 80CB6C64  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_80CB6C68:
/* 80CB6C68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB6C6C  7C 1B 01 D6 */	mullw r0, r27, r0
/* 80CB6C70  7C 1B 07 34 */	extsh r27, r0
/* 80CB6C74  38 7F 0B 3A */	addi r3, r31, 0xb3a
/* 80CB6C78  A8 1F 0B 3A */	lha r0, 0xb3a(r31)
/* 80CB6C7C  2C 00 00 00 */	cmpwi r0, 0
/* 80CB6C80  7F 60 DB 78 */	mr r0, r27
/* 80CB6C84  40 80 00 08 */	bge lbl_80CB6C8C
/* 80CB6C88  7C 1B 00 D0 */	neg r0, r27
lbl_80CB6C8C:
/* 80CB6C8C  7C 04 07 34 */	extsh r4, r0
/* 80CB6C90  38 A0 00 10 */	li r5, 0x10
/* 80CB6C94  4B 5B 9E FD */	bl cLib_chaseAngleS__FPsss
/* 80CB6C98  88 1F 0B AB */	lbz r0, 0xbab(r31)
/* 80CB6C9C  28 00 00 00 */	cmplwi r0, 0
/* 80CB6CA0  41 82 00 40 */	beq lbl_80CB6CE0
/* 80CB6CA4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80CB6CA8  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80CB6CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB6CB0  C8 3E 00 D8 */	lfd f1, 0xd8(r30)
/* 80CB6CB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB6CB8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80CB6CBC  3C 00 43 30 */	lis r0, 0x4330
/* 80CB6CC0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80CB6CC4  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80CB6CC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CB6CCC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CB6CD0  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80CB6CD4  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80CB6CD8  4B 5B 8D 65 */	bl cLib_addCalc2__FPffff
/* 80CB6CDC  48 00 00 50 */	b lbl_80CB6D2C
lbl_80CB6CE0:
/* 80CB6CE0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80CB6CE4  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80CB6CE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB6CEC  C8 3E 00 D8 */	lfd f1, 0xd8(r30)
/* 80CB6CF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB6CF4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80CB6CF8  3C 00 43 30 */	lis r0, 0x4330
/* 80CB6CFC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80CB6D00  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80CB6D04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CB6D08  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CB6D0C  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80CB6D10  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80CB6D14  4B 5B 8D 29 */	bl cLib_addCalc2__FPffff
/* 80CB6D18  48 00 00 14 */	b lbl_80CB6D2C
lbl_80CB6D1C:
/* 80CB6D1C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80CB6D20  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CB6D24  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80CB6D28  4B 5B 9A 19 */	bl cLib_chaseF__FPfff
lbl_80CB6D2C:
/* 80CB6D2C  80 1F 0B 54 */	lwz r0, 0xb54(r31)
/* 80CB6D30  2C 00 00 00 */	cmpwi r0, 0
/* 80CB6D34  40 82 00 9C */	bne lbl_80CB6DD0
/* 80CB6D38  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6D3C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CB6D40  41 82 00 90 */	beq lbl_80CB6DD0
/* 80CB6D44  7F E3 FB 78 */	mr r3, r31
/* 80CB6D48  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CB6D4C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CB6D50  48 00 0E 35 */	bl getWallAngle__15daObj_Pumpkin_cFsPs
/* 80CB6D54  2C 03 00 00 */	cmpwi r3, 0
/* 80CB6D58  41 82 00 30 */	beq lbl_80CB6D88
/* 80CB6D5C  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80CB6D60  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80CB6D64  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80CB6D68  4B 5B 0C 25 */	bl cM_rndFX__Ff
/* 80CB6D6C  FC 00 08 1E */	fctiwz f0, f1
/* 80CB6D70  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CB6D74  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80CB6D78  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CB6D7C  7C 00 1A 14 */	add r0, r0, r3
/* 80CB6D80  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80CB6D84  48 00 00 30 */	b lbl_80CB6DB4
lbl_80CB6D88:
/* 80CB6D88  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80CB6D8C  4B 5B 0C 01 */	bl cM_rndFX__Ff
/* 80CB6D90  FC 00 08 1E */	fctiwz f0, f1
/* 80CB6D94  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CB6D98  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80CB6D9C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CB6DA0  7C 00 1A 14 */	add r0, r0, r3
/* 80CB6DA4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80CB6DA8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80CB6DAC  38 03 80 00 */	addi r0, r3, -32768
/* 80CB6DB0  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80CB6DB4:
/* 80CB6DB4  A8 1F 0B 3A */	lha r0, 0xb3a(r31)
/* 80CB6DB8  7C 00 00 D0 */	neg r0, r0
/* 80CB6DBC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80CB6DC0  7C 00 01 94 */	addze r0, r0
/* 80CB6DC4  B0 1F 0B 3A */	sth r0, 0xb3a(r31)
/* 80CB6DC8  38 00 00 0A */	li r0, 0xa
/* 80CB6DCC  90 1F 0B 54 */	stw r0, 0xb54(r31)
lbl_80CB6DD0:
/* 80CB6DD0  88 1F 0B AB */	lbz r0, 0xbab(r31)
/* 80CB6DD4  28 00 00 00 */	cmplwi r0, 0
/* 80CB6DD8  41 82 00 30 */	beq lbl_80CB6E08
/* 80CB6DDC  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80CB6DE0  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80CB6DE4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80CB6DE8  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80CB6DEC  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 80CB6DF0  4B 5B 8C 4D */	bl cLib_addCalc2__FPffff
/* 80CB6DF4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6DF8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6DFC  7F E3 FB 78 */	mr r3, r31
/* 80CB6E00  48 00 10 99 */	bl setHamonPrtcl__15daObj_Pumpkin_cFv
/* 80CB6E04  48 00 00 78 */	b lbl_80CB6E7C
lbl_80CB6E08:
/* 80CB6E08  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB6E0C  EC 20 F8 2A */	fadds f1, f0, f31
/* 80CB6E10  C0 1F 0B 64 */	lfs f0, 0xb64(r31)
/* 80CB6E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6E18  40 80 00 64 */	bge lbl_80CB6E7C
/* 80CB6E1C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CB6E20  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6E28  40 80 00 20 */	bge lbl_80CB6E48
/* 80CB6E2C  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80CB6E30  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80CB6E34  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80CB6E38  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80CB6E3C  C0 9E 00 AC */	lfs f4, 0xac(r30)
/* 80CB6E40  4B 5B 8B 3D */	bl cLib_addCalc__FPfffff
/* 80CB6E44  48 00 00 1C */	b lbl_80CB6E60
lbl_80CB6E48:
/* 80CB6E48  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80CB6E4C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80CB6E50  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80CB6E54  FC 60 10 90 */	fmr f3, f2
/* 80CB6E58  C0 9E 00 AC */	lfs f4, 0xac(r30)
/* 80CB6E5C  4B 5B 8B 21 */	bl cLib_addCalc__FPfffff
lbl_80CB6E60:
/* 80CB6E60  38 00 01 00 */	li r0, 0x100
/* 80CB6E64  B0 1F 0B 3A */	sth r0, 0xb3a(r31)
/* 80CB6E68  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6E6C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80CB6E70  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CB6E74  38 00 00 01 */	li r0, 1
/* 80CB6E78  98 1F 0B AB */	stb r0, 0xbab(r31)
lbl_80CB6E7C:
/* 80CB6E7C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6E80  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80CB6E84:
/* 80CB6E84  88 1F 0B AB */	lbz r0, 0xbab(r31)
/* 80CB6E88  28 00 00 00 */	cmplwi r0, 0
/* 80CB6E8C  41 82 00 40 */	beq lbl_80CB6ECC
/* 80CB6E90  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6E94  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CB6E98  41 82 01 F4 */	beq lbl_80CB708C
/* 80CB6E9C  38 00 00 00 */	li r0, 0
/* 80CB6EA0  98 1F 0B AB */	stb r0, 0xbab(r31)
/* 80CB6EA4  98 1F 0B AC */	stb r0, 0xbac(r31)
/* 80CB6EA8  B0 1F 0B 38 */	sth r0, 0xb38(r31)
/* 80CB6EAC  B0 1F 0B 3A */	sth r0, 0xb3a(r31)
/* 80CB6EB0  B0 1F 0B 3C */	sth r0, 0xb3c(r31)
/* 80CB6EB4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6EB8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6EBC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CB6EC0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6EC4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CB6EC8  48 00 01 C4 */	b lbl_80CB708C
lbl_80CB6ECC:
/* 80CB6ECC  88 1F 0B AC */	lbz r0, 0xbac(r31)
/* 80CB6ED0  28 00 00 00 */	cmplwi r0, 0
/* 80CB6ED4  40 82 01 B8 */	bne lbl_80CB708C
/* 80CB6ED8  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB6EDC  28 00 00 00 */	cmplwi r0, 0
/* 80CB6EE0  41 82 00 B0 */	beq lbl_80CB6F90
/* 80CB6EE4  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CB6EE8  C0 1F 0B 24 */	lfs f0, 0xb24(r31)
/* 80CB6EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6EF0  4C 40 13 82 */	cror 2, 0, 2
/* 80CB6EF4  40 82 00 18 */	bne lbl_80CB6F0C
/* 80CB6EF8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80CB6EFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CB6F00  40 80 00 0C */	bge lbl_80CB6F0C
/* 80CB6F04  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80CB6F08  D0 1F 0B 74 */	stfs f0, 0xb74(r31)
lbl_80CB6F0C:
/* 80CB6F0C  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CB6F10  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80CB6F14  41 82 00 10 */	beq lbl_80CB6F24
/* 80CB6F18  7F E3 FB 78 */	mr r3, r31
/* 80CB6F1C  48 00 0F D9 */	bl crash__15daObj_Pumpkin_cFv
/* 80CB6F20  48 00 01 6C */	b lbl_80CB708C
lbl_80CB6F24:
/* 80CB6F24  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80CB6F28  41 82 01 64 */	beq lbl_80CB708C
/* 80CB6F2C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80CB6F30  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80CB6F34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CB6F38  40 80 00 4C */	bge lbl_80CB6F84
/* 80CB6F3C  FC 00 0A 10 */	fabs f0, f1
/* 80CB6F40  FC 20 00 18 */	frsp f1, f0
/* 80CB6F44  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CB6F48  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CB6F4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6F50  7C 00 00 26 */	mfcr r0
/* 80CB6F54  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80CB6F58  40 82 00 0C */	bne lbl_80CB6F64
/* 80CB6F5C  7F E3 FB 78 */	mr r3, r31
/* 80CB6F60  48 00 0D B5 */	bl setSmokePrtcl__15daObj_Pumpkin_cFv
lbl_80CB6F64:
/* 80CB6F64  38 00 00 00 */	li r0, 0
/* 80CB6F68  98 1F 0B AD */	stb r0, 0xbad(r31)
/* 80CB6F6C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6F70  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6F74  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CB6F78  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6F7C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CB6F80  48 00 01 0C */	b lbl_80CB708C
lbl_80CB6F84:
/* 80CB6F84  7F E3 FB 78 */	mr r3, r31
/* 80CB6F88  48 00 0F 6D */	bl crash__15daObj_Pumpkin_cFv
/* 80CB6F8C  48 00 01 00 */	b lbl_80CB708C
lbl_80CB6F90:
/* 80CB6F90  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 80CB6F94  28 00 00 00 */	cmplwi r0, 0
/* 80CB6F98  41 82 00 74 */	beq lbl_80CB700C
/* 80CB6F9C  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB6FA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CB6FA4  41 82 00 E8 */	beq lbl_80CB708C
/* 80CB6FA8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80CB6FAC  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80CB6FB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CB6FB4  40 80 00 4C */	bge lbl_80CB7000
/* 80CB6FB8  FC 00 0A 10 */	fabs f0, f1
/* 80CB6FBC  FC 20 00 18 */	frsp f1, f0
/* 80CB6FC0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CB6FC4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CB6FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB6FCC  7C 00 00 26 */	mfcr r0
/* 80CB6FD0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80CB6FD4  40 82 00 0C */	bne lbl_80CB6FE0
/* 80CB6FD8  7F E3 FB 78 */	mr r3, r31
/* 80CB6FDC  48 00 0D 39 */	bl setSmokePrtcl__15daObj_Pumpkin_cFv
lbl_80CB6FE0:
/* 80CB6FE0  38 00 00 00 */	li r0, 0
/* 80CB6FE4  98 1F 0B B2 */	stb r0, 0xbb2(r31)
/* 80CB6FE8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB6FEC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CB6FF0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CB6FF4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CB6FF8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CB6FFC  48 00 00 90 */	b lbl_80CB708C
lbl_80CB7000:
/* 80CB7000  7F E3 FB 78 */	mr r3, r31
/* 80CB7004  48 00 0E F1 */	bl crash__15daObj_Pumpkin_cFv
/* 80CB7008  48 00 00 84 */	b lbl_80CB708C
lbl_80CB700C:
/* 80CB700C  88 1F 0B B1 */	lbz r0, 0xbb1(r31)
/* 80CB7010  28 00 00 00 */	cmplwi r0, 0
/* 80CB7014  41 82 00 54 */	beq lbl_80CB7068
/* 80CB7018  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB701C  7C 03 07 74 */	extsb r3, r0
/* 80CB7020  4B 37 60 4D */	bl dComIfGp_getReverb__Fi
/* 80CB7024  7C 67 1B 78 */	mr r7, r3
/* 80CB7028  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A8@ha */
/* 80CB702C  38 03 00 A8 */	addi r0, r3, 0x00A8 /* 0x000800A8@l */
/* 80CB7030  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB7034  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB7038  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB703C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB7040  38 81 00 24 */	addi r4, r1, 0x24
/* 80CB7044  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CB7048  38 C0 00 00 */	li r6, 0
/* 80CB704C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CB7050  FC 40 08 90 */	fmr f2, f1
/* 80CB7054  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80CB7058  FC 80 18 90 */	fmr f4, f3
/* 80CB705C  39 00 00 00 */	li r8, 0
/* 80CB7060  4B 5F 49 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB7064  48 00 00 28 */	b lbl_80CB708C
lbl_80CB7068:
/* 80CB7068  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CB706C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CB7070  40 82 00 1C */	bne lbl_80CB708C
/* 80CB7074  C0 3F 0B 60 */	lfs f1, 0xb60(r31)
/* 80CB7078  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB707C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CB7080  D0 1F 0B 74 */	stfs f0, 0xb74(r31)
/* 80CB7084  38 00 00 01 */	li r0, 1
/* 80CB7088  98 1F 0B B2 */	stb r0, 0xbb2(r31)
lbl_80CB708C:
/* 80CB708C  88 1F 0B B0 */	lbz r0, 0xbb0(r31)
/* 80CB7090  28 00 00 00 */	cmplwi r0, 0
/* 80CB7094  40 82 00 68 */	bne lbl_80CB70FC
/* 80CB7098  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB709C  28 00 00 00 */	cmplwi r0, 0
/* 80CB70A0  40 82 00 5C */	bne lbl_80CB70FC
/* 80CB70A4  88 1F 0B B2 */	lbz r0, 0xbb2(r31)
/* 80CB70A8  28 00 00 00 */	cmplwi r0, 0
/* 80CB70AC  40 82 00 50 */	bne lbl_80CB70FC
/* 80CB70B0  88 1F 0B 1C */	lbz r0, 0xb1c(r31)
/* 80CB70B4  28 00 00 01 */	cmplwi r0, 1
/* 80CB70B8  41 82 00 10 */	beq lbl_80CB70C8
/* 80CB70BC  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 80CB70C0  28 00 00 00 */	cmplwi r0, 0
/* 80CB70C4  41 82 00 14 */	beq lbl_80CB70D8
lbl_80CB70C8:
/* 80CB70C8  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CB70CC  60 00 00 01 */	ori r0, r0, 1
/* 80CB70D0  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80CB70D4  48 00 00 10 */	b lbl_80CB70E4
lbl_80CB70D8:
/* 80CB70D8  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CB70DC  60 00 00 04 */	ori r0, r0, 4
/* 80CB70E0  98 1F 04 9A */	stb r0, 0x49a(r31)
lbl_80CB70E4:
/* 80CB70E4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CB70E8  60 00 00 10 */	ori r0, r0, 0x10
/* 80CB70EC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CB70F0  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CB70F4  60 00 00 80 */	ori r0, r0, 0x80
/* 80CB70F8  98 1F 04 9A */	stb r0, 0x49a(r31)
lbl_80CB70FC:
/* 80CB70FC  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CB7100  D0 1F 0B 20 */	stfs f0, 0xb20(r31)
/* 80CB7104  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80CB7108  D0 1F 0B 24 */	stfs f0, 0xb24(r31)
/* 80CB710C  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80CB7110  D0 1F 0B 28 */	stfs f0, 0xb28(r31)
/* 80CB7114  88 1F 0B AC */	lbz r0, 0xbac(r31)
/* 80CB7118  28 00 00 00 */	cmplwi r0, 0
/* 80CB711C  41 82 00 2C */	beq lbl_80CB7148
/* 80CB7120  38 7F 0B 70 */	addi r3, r31, 0xb70
/* 80CB7124  34 1F 07 50 */	addic. r0, r31, 0x750
/* 80CB7128  41 82 00 0C */	beq lbl_80CB7134
/* 80CB712C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80CB7130  48 00 00 08 */	b lbl_80CB7138
lbl_80CB7134:
/* 80CB7134  C0 3E 00 BC */	lfs f1, 0xbc(r30)
lbl_80CB7138:
/* 80CB7138  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 80CB713C  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80CB7140  4B 5B 88 FD */	bl cLib_addCalc2__FPffff
/* 80CB7144  48 00 00 18 */	b lbl_80CB715C
lbl_80CB7148:
/* 80CB7148  38 7F 0B 70 */	addi r3, r31, 0xb70
/* 80CB714C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CB7150  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80CB7154  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80CB7158  4B 5B 88 E5 */	bl cLib_addCalc2__FPffff
lbl_80CB715C:
/* 80CB715C  A8 1F 0B 78 */	lha r0, 0xb78(r31)
/* 80CB7160  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80CB7164  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB7168  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CB716C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CB7170  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CB7174  C0 1F 0B 70 */	lfs f0, 0xb70(r31)
/* 80CB7178  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CB717C  FC 00 00 1E */	fctiwz f0, f0
/* 80CB7180  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CB7184  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80CB7188  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CB718C  3B 63 00 04 */	addi r27, r3, 4
/* 80CB7190  A8 1F 0B 78 */	lha r0, 0xb78(r31)
/* 80CB7194  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80CB7198  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB719C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 80CB71A0  C0 1F 0B 70 */	lfs f0, 0xb70(r31)
/* 80CB71A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CB71A8  FC 00 00 1E */	fctiwz f0, f0
/* 80CB71AC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80CB71B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CB71B4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CB71B8  38 7F 0B 3A */	addi r3, r31, 0xb3a
/* 80CB71BC  38 80 00 00 */	li r4, 0
/* 80CB71C0  38 A0 00 0A */	li r5, 0xa
/* 80CB71C4  4B 5B 99 CD */	bl cLib_chaseAngleS__FPsss
/* 80CB71C8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80CB71CC  A8 1F 0B 3A */	lha r0, 0xb3a(r31)
/* 80CB71D0  7C 03 02 14 */	add r0, r3, r0
/* 80CB71D4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CB71D8  A8 7F 0B 78 */	lha r3, 0xb78(r31)
/* 80CB71DC  38 03 00 01 */	addi r0, r3, 1
/* 80CB71E0  B0 1F 0B 78 */	sth r0, 0xb78(r31)
/* 80CB71E4  88 1F 0B AB */	lbz r0, 0xbab(r31)
/* 80CB71E8  28 00 00 00 */	cmplwi r0, 0
/* 80CB71EC  41 82 00 8C */	beq lbl_80CB7278
/* 80CB71F0  C0 3F 07 50 */	lfs f1, 0x750(r31)
/* 80CB71F4  EC 41 00 72 */	fmuls f2, f1, f1
/* 80CB71F8  C0 1F 07 58 */	lfs f0, 0x758(r31)
/* 80CB71FC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CB7200  EF C2 00 2A */	fadds f30, f2, f0
/* 80CB7204  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB7208  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CB720C  40 81 00 0C */	ble lbl_80CB7218
/* 80CB7210  FC 00 F0 34 */	frsqrte f0, f30
/* 80CB7214  EF C0 07 B2 */	fmuls f30, f0, f30
lbl_80CB7218:
/* 80CB7218  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CB721C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80CB7220  40 80 00 60 */	bge lbl_80CB7280
/* 80CB7224  C0 5F 07 58 */	lfs f2, 0x758(r31)
/* 80CB7228  4B 5B 04 4D */	bl cM_atan2s__Fff
/* 80CB722C  B0 7F 0B 80 */	sth r3, 0xb80(r31)
/* 80CB7230  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CB7234  2C 00 00 00 */	cmpwi r0, 0
/* 80CB7238  40 82 00 48 */	bne lbl_80CB7280
/* 80CB723C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80CB7240  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80CB7244  40 80 00 0C */	bge lbl_80CB7250
/* 80CB7248  FF C0 00 90 */	fmr f30, f0
/* 80CB724C  48 00 00 14 */	b lbl_80CB7260
lbl_80CB7250:
/* 80CB7250  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB7254  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CB7258  40 80 00 08 */	bge lbl_80CB7260
/* 80CB725C  FF C0 00 90 */	fmr f30, f0
lbl_80CB7260:
/* 80CB7260  D3 DF 0B 5C */	stfs f30, 0xb5c(r31)
/* 80CB7264  38 00 02 00 */	li r0, 0x200
/* 80CB7268  B0 1F 0B 3A */	sth r0, 0xb3a(r31)
/* 80CB726C  38 00 00 0A */	li r0, 0xa
/* 80CB7270  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CB7274  48 00 00 0C */	b lbl_80CB7280
lbl_80CB7278:
/* 80CB7278  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB727C  D0 1F 0B 5C */	stfs f0, 0xb5c(r31)
lbl_80CB7280:
/* 80CB7280  38 7F 0B 5C */	addi r3, r31, 0xb5c
/* 80CB7284  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CB7288  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 80CB728C  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 80CB7290  4B 5B 87 AD */	bl cLib_addCalc2__FPffff
/* 80CB7294  7F E3 FB 78 */	mr r3, r31
/* 80CB7298  4B 36 33 75 */	bl fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80CB729C  88 1F 0B AB */	lbz r0, 0xbab(r31)
/* 80CB72A0  28 00 00 00 */	cmplwi r0, 0
/* 80CB72A4  41 82 00 54 */	beq lbl_80CB72F8
/* 80CB72A8  A8 1F 0B 80 */	lha r0, 0xb80(r31)
/* 80CB72AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB72B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CB72B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CB72B8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CB72BC  C0 1F 0B 5C */	lfs f0, 0xb5c(r31)
/* 80CB72C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CB72C4  D0 1F 0B 2C */	stfs f0, 0xb2c(r31)
/* 80CB72C8  A8 1F 0B 80 */	lha r0, 0xb80(r31)
/* 80CB72CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB72D0  7C 3B 04 2E */	lfsx f1, r27, r0
/* 80CB72D4  C0 1F 0B 5C */	lfs f0, 0xb5c(r31)
/* 80CB72D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CB72DC  D0 1F 0B 34 */	stfs f0, 0xb34(r31)
/* 80CB72E0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80CB72E4  D0 1F 0B 30 */	stfs f0, 0xb30(r31)
/* 80CB72E8  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CB72EC  38 9F 0B 2C */	addi r4, r31, 0xb2c
/* 80CB72F0  7C 65 1B 78 */	mr r5, r3
/* 80CB72F4  4B 68 FD 9D */	bl PSVECAdd
lbl_80CB72F8:
/* 80CB72F8  7F E3 FB 78 */	mr r3, r31
/* 80CB72FC  38 9F 07 50 */	addi r4, r31, 0x750
/* 80CB7300  4B 36 33 61 */	bl fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80CB7304  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CB7308  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB730C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7310  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CB7314  4B 3B F7 99 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CB7318  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80CB731C  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 80CB7320  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80CB7324  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CB7328  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80CB732C  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 80CB7330  88 1F 06 60 */	lbz r0, 0x660(r31)
/* 80CB7334  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 80CB7338  A0 1F 06 68 */	lhz r0, 0x668(r31)
/* 80CB733C  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
/* 80CB7340  A0 1F 06 6A */	lhz r0, 0x66a(r31)
/* 80CB7344  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 80CB7348  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80CB734C  90 1F 07 E4 */	stw r0, 0x7e4(r31)
/* 80CB7350  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80CB7354  90 1F 07 E8 */	stw r0, 0x7e8(r31)
/* 80CB7358  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80CB735C  D0 1F 07 F0 */	stfs f0, 0x7f0(r31)
/* 80CB7360  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80CB7364  D0 1F 07 F4 */	stfs f0, 0x7f4(r31)
/* 80CB7368  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80CB736C  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 80CB7370  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80CB7374  90 1F 07 FC */	stw r0, 0x7fc(r31)
/* 80CB7378  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80CB737C  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 80CB7380  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80CB7384  90 1F 08 04 */	stw r0, 0x804(r31)
/* 80CB7388  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80CB738C  D0 1F 0B 60 */	stfs f0, 0xb60(r31)
/* 80CB7390  88 1F 0B AA */	lbz r0, 0xbaa(r31)
/* 80CB7394  28 00 00 00 */	cmplwi r0, 0
/* 80CB7398  41 82 00 10 */	beq lbl_80CB73A8
/* 80CB739C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80CB73A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB73A4  4B 4A 74 D9 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
lbl_80CB73A8:
/* 80CB73A8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80CB73AC  C0 1F 0B 60 */	lfs f0, 0xb60(r31)
/* 80CB73B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CB73B4  41 82 00 24 */	beq lbl_80CB73D8
/* 80CB73B8  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 80CB73BC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CB73C0  4B 49 E1 AD */	bl daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80CB73C4  B0 7F 0B 7A */	sth r3, 0xb7a(r31)
/* 80CB73C8  7F E3 FB 78 */	mr r3, r31
/* 80CB73CC  48 00 04 FD */	bl setEnvTevColor__15daObj_Pumpkin_cFv
/* 80CB73D0  7F E3 FB 78 */	mr r3, r31
/* 80CB73D4  48 00 05 51 */	bl setRoomNo__15daObj_Pumpkin_cFv
lbl_80CB73D8:
/* 80CB73D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB73DC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CB73E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB73E4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CB73E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CB73EC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CB73F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB73F4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CB73F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB73FC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CB7400  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CB7404  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CB7408  88 1F 0B B3 */	lbz r0, 0xbb3(r31)
/* 80CB740C  28 00 00 00 */	cmplwi r0, 0
/* 80CB7410  40 82 00 0C */	bne lbl_80CB741C
/* 80CB7414  7F E3 FB 78 */	mr r3, r31
/* 80CB7418  48 00 05 C5 */	bl setMtx__15daObj_Pumpkin_cFv
lbl_80CB741C:
/* 80CB741C  7F E3 FB 78 */	mr r3, r31
/* 80CB7420  A8 9F 0B 7C */	lha r4, 0xb7c(r31)
/* 80CB7424  3C A0 00 01 */	lis r5, 1
/* 80CB7428  48 00 06 BD */	bl calcRollAngle__15daObj_Pumpkin_cFsi
/* 80CB742C  B0 7F 0B 7C */	sth r3, 0xb7c(r31)
/* 80CB7430  88 1F 0B B0 */	lbz r0, 0xbb0(r31)
/* 80CB7434  28 00 00 00 */	cmplwi r0, 0
/* 80CB7438  40 82 01 6C */	bne lbl_80CB75A4
/* 80CB743C  80 1F 0B 50 */	lwz r0, 0xb50(r31)
/* 80CB7440  2C 00 00 00 */	cmpwi r0, 0
/* 80CB7444  40 82 01 60 */	bne lbl_80CB75A4
/* 80CB7448  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB744C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CB7450  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80CB7454  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80CB7458  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CB745C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CB7460  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80CB7464  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB7468  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CB746C  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 80CB7470  28 00 00 00 */	cmplwi r0, 0
/* 80CB7474  41 82 00 44 */	beq lbl_80CB74B8
/* 80CB7478  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CB747C  FC 00 02 10 */	fabs f0, f0
/* 80CB7480  FC 20 00 18 */	frsp f1, f0
/* 80CB7484  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80CB7488  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80CB748C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB7490  7C 00 00 26 */	mfcr r0
/* 80CB7494  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80CB7498  40 82 00 20 */	bne lbl_80CB74B8
/* 80CB749C  38 00 00 08 */	li r0, 8
/* 80CB74A0  90 1F 08 18 */	stw r0, 0x818(r31)
/* 80CB74A4  38 00 00 01 */	li r0, 1
/* 80CB74A8  98 1F 08 1C */	stb r0, 0x81c(r31)
/* 80CB74AC  38 00 00 1F */	li r0, 0x1f
/* 80CB74B0  90 1F 08 08 */	stw r0, 0x808(r31)
/* 80CB74B4  48 00 00 10 */	b lbl_80CB74C4
lbl_80CB74B8:
/* 80CB74B8  38 00 00 00 */	li r0, 0
/* 80CB74BC  90 1F 08 18 */	stw r0, 0x818(r31)
/* 80CB74C0  90 1F 08 08 */	stw r0, 0x808(r31)
lbl_80CB74C4:
/* 80CB74C4  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 80CB74C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CB74CC  40 82 00 50 */	bne lbl_80CB751C
/* 80CB74D0  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80CB74D4  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80CB74D8  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB74DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB74E0  4B 5B 7D 21 */	bl SetR__8cM3dGCylFf
/* 80CB74E4  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80CB74E8  38 9E 00 00 */	addi r4, r30, 0
/* 80CB74EC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80CB74F0  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB74F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB74F8  4B 5B 7D 01 */	bl SetH__8cM3dGCylFf
/* 80CB74FC  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80CB7500  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CB7504  4B 5B 7C D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CB7508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB750C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7510  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CB7514  38 9F 08 08 */	addi r4, r31, 0x808
/* 80CB7518  4B 5A D6 91 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80CB751C:
/* 80CB751C  38 00 00 00 */	li r0, 0
/* 80CB7520  90 1F 09 70 */	stw r0, 0x970(r31)
/* 80CB7524  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 80CB7528  2C 00 00 00 */	cmpwi r0, 0
/* 80CB752C  41 82 00 18 */	beq lbl_80CB7544
/* 80CB7530  38 00 02 00 */	li r0, 0x200
/* 80CB7534  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80CB7538  38 00 00 1F */	li r0, 0x1f
/* 80CB753C  90 1F 09 5C */	stw r0, 0x95c(r31)
/* 80CB7540  48 00 00 18 */	b lbl_80CB7558
lbl_80CB7544:
/* 80CB7544  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CB7548  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CB754C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80CB7550  38 00 00 1F */	li r0, 0x1f
/* 80CB7554  90 1F 09 5C */	stw r0, 0x95c(r31)
lbl_80CB7558:
/* 80CB7558  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 80CB755C  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80CB7560  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB7564  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB7568  4B 5B 7C 99 */	bl SetR__8cM3dGCylFf
/* 80CB756C  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 80CB7570  38 9E 00 00 */	addi r4, r30, 0
/* 80CB7574  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80CB7578  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB757C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB7580  4B 5B 7C 79 */	bl SetH__8cM3dGCylFf
/* 80CB7584  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 80CB7588  38 81 00 44 */	addi r4, r1, 0x44
/* 80CB758C  4B 5B 7C 51 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CB7590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB7594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7598  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CB759C  38 9F 09 44 */	addi r4, r31, 0x944
/* 80CB75A0  4B 5A D6 09 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80CB75A4:
/* 80CB75A4  38 7F 09 44 */	addi r3, r31, 0x944
/* 80CB75A8  81 9F 09 80 */	lwz r12, 0x980(r31)
/* 80CB75AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CB75B0  7D 89 03 A6 */	mtctr r12
/* 80CB75B4  4E 80 04 21 */	bctrl 
/* 80CB75B8  38 7F 08 08 */	addi r3, r31, 0x808
/* 80CB75BC  81 9F 08 44 */	lwz r12, 0x844(r31)
/* 80CB75C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CB75C4  7D 89 03 A6 */	mtctr r12
/* 80CB75C8  4E 80 04 21 */	bctrl 
/* 80CB75CC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80CB75D0  81 9F 08 44 */	lwz r12, 0x844(r31)
/* 80CB75D4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80CB75D8  7D 89 03 A6 */	mtctr r12
/* 80CB75DC  4E 80 04 21 */	bctrl 
/* 80CB75E0  30 1D FF FF */	addic r0, r29, -1
/* 80CB75E4  7C 00 E9 10 */	subfe r0, r0, r29
/* 80CB75E8  98 1F 0B B1 */	stb r0, 0xbb1(r31)
/* 80CB75EC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CB75F0  48 00 0C 85 */	bl func_80CB8274
/* 80CB75F4  38 7F 0B 54 */	addi r3, r31, 0xb54
/* 80CB75F8  48 00 0C 7D */	bl func_80CB8274
/* 80CB75FC  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80CB7600  48 00 0C 75 */	bl func_80CB8274
/* 80CB7604  38 00 00 00 */	li r0, 0
/* 80CB7608  98 1F 0B B3 */	stb r0, 0xbb3(r31)
/* 80CB760C  38 60 00 01 */	li r3, 1
/* 80CB7610  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80CB7614  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80CB7618  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80CB761C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80CB7620  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CB7624  4B 6A AB F9 */	bl _restgpr_26
/* 80CB7628  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80CB762C  7C 08 03 A6 */	mtlr r0
/* 80CB7630  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80CB7634  4E 80 00 20 */	blr 
