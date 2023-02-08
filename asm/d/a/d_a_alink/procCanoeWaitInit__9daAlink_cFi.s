lbl_800F51E4:
/* 800F51E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F51E8  7C 08 02 A6 */	mflr r0
/* 800F51EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F51F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800F51F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800F51F8  39 61 00 30 */	addi r11, r1, 0x30
/* 800F51FC  48 26 CF D9 */	bl _savegpr_27
/* 800F5200  7C 7C 1B 78 */	mr r28, r3
/* 800F5204  7C 9D 23 78 */	mr r29, r4
/* 800F5208  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800F520C  28 00 00 95 */	cmplwi r0, 0x95
/* 800F5210  40 82 00 14 */	bne lbl_800F5224
/* 800F5214  38 00 00 01 */	li r0, 1
/* 800F5218  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 800F521C  48 00 0F 25 */	bl procCanoePaddleGrabInit__9daAlink_cFv
/* 800F5220  48 00 01 EC */	b lbl_800F540C
lbl_800F5224:
/* 800F5224  20 00 00 9B */	subfic r0, r0, 0x9b
/* 800F5228  7C 00 00 34 */	cntlzw r0, r0
/* 800F522C  54 1F DE 3E */	rlwinm r31, r0, 0x1b, 0x18, 0x1f
/* 800F5230  38 80 00 8F */	li r4, 0x8f
/* 800F5234  4B FC DB 71 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F5238  2C 03 00 00 */	cmpwi r3, 0
/* 800F523C  40 82 00 0C */	bne lbl_800F5248
/* 800F5240  38 60 00 00 */	li r3, 0
/* 800F5244  48 00 01 C8 */	b lbl_800F540C
lbl_800F5248:
/* 800F5248  2C 1D 00 00 */	cmpwi r29, 0
/* 800F524C  41 82 01 0C */	beq lbl_800F5358
/* 800F5250  83 DC 28 18 */	lwz r30, 0x2818(r28)
/* 800F5254  7F 83 E3 78 */	mr r3, r28
/* 800F5258  38 80 00 00 */	li r4, 0
/* 800F525C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 800F5260  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800F5264  7C 05 00 50 */	subf r0, r5, r0
/* 800F5268  7C 05 07 34 */	extsh r5, r0
/* 800F526C  38 C0 00 00 */	li r6, 0
/* 800F5270  4B FB 89 09 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800F5274  80 7C 20 60 */	lwz r3, 0x2060(r28)
/* 800F5278  83 63 00 1C */	lwz r27, 0x1c(r3)
/* 800F527C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800F5280  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800F5284  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800F5288  7C 00 00 D0 */	neg r0, r0
/* 800F528C  7C 04 07 34 */	extsh r4, r0
/* 800F5290  4B F1 71 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 800F5294  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800F5298  FC 20 00 50 */	fneg f1, f0
/* 800F529C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800F52A0  FC 40 00 50 */	fneg f2, f0
/* 800F52A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800F52A8  FC 60 00 50 */	fneg f3, f0
/* 800F52AC  4B F1 7A F1 */	bl transM__14mDoMtx_stack_cFfff
/* 800F52B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800F52B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800F52B8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 800F52BC  38 A1 00 08 */	addi r5, r1, 8
/* 800F52C0  48 25 1A AD */	bl PSMTXMultVec
/* 800F52C4  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 800F52C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F52CC  EC 01 00 2A */	fadds f0, f1, f0
/* 800F52D0  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 800F52D4  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 800F52D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F52DC  EC 01 00 2A */	fadds f0, f1, f0
/* 800F52E0  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 800F52E4  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 800F52E8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800F52EC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800F52F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F52F4  EC 02 00 2A */	fadds f0, f2, f0
/* 800F52F8  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 800F52FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 800F5300  28 00 00 02 */	cmplwi r0, 2
/* 800F5304  40 82 00 14 */	bne lbl_800F5318
/* 800F5308  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 800F530C  C0 02 95 18 */	lfs f0, lit_20824(r2)
/* 800F5310  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F5314  D0 1B 00 1C */	stfs f0, 0x1c(r27)
lbl_800F5318:
/* 800F5318  2C 1D 00 02 */	cmpwi r29, 2
/* 800F531C  40 82 00 28 */	bne lbl_800F5344
/* 800F5320  C3 E2 92 BC */	lfs f31, lit_6041(r2)
/* 800F5324  38 00 00 00 */	li r0, 0
/* 800F5328  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800F532C  38 00 01 0B */	li r0, 0x10b
/* 800F5330  B0 1C 2F DC */	sth r0, 0x2fdc(r28)
/* 800F5334  3B 60 00 DA */	li r27, 0xda
/* 800F5338  38 00 00 04 */	li r0, 4
/* 800F533C  98 1E 14 40 */	stb r0, 0x1440(r30)
/* 800F5340  48 00 00 60 */	b lbl_800F53A0
lbl_800F5344:
/* 800F5344  C3 E2 93 30 */	lfs f31, lit_7625(r2)
/* 800F5348  38 00 00 0A */	li r0, 0xa
/* 800F534C  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800F5350  3B 60 00 D8 */	li r27, 0xd8
/* 800F5354  48 00 00 4C */	b lbl_800F53A0
lbl_800F5358:
/* 800F5358  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
/* 800F535C  38 00 00 00 */	li r0, 0
/* 800F5360  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800F5364  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800F5368  28 00 00 FF */	cmplwi r0, 0xff
/* 800F536C  41 82 00 14 */	beq lbl_800F5380
/* 800F5370  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F5374  41 82 00 14 */	beq lbl_800F5388
/* 800F5378  28 00 01 05 */	cmplwi r0, 0x105
/* 800F537C  41 82 00 0C */	beq lbl_800F5388
lbl_800F5380:
/* 800F5380  3B 60 00 D8 */	li r27, 0xd8
/* 800F5384  48 00 00 1C */	b lbl_800F53A0
lbl_800F5388:
/* 800F5388  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F538C  2C 00 00 00 */	cmpwi r0, 0
/* 800F5390  40 82 00 0C */	bne lbl_800F539C
/* 800F5394  3B 60 00 D9 */	li r27, 0xd9
/* 800F5398  48 00 00 08 */	b lbl_800F53A0
lbl_800F539C:
/* 800F539C  3B 60 00 DA */	li r27, 0xda
lbl_800F53A0:
/* 800F53A0  7F 83 E3 78 */	mr r3, r28
/* 800F53A4  4B FF F1 F9 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F53A8  7F 83 E3 78 */	mr r3, r28
/* 800F53AC  7F 64 DB 78 */	mr r4, r27
/* 800F53B0  FC 20 F8 90 */	fmr f1, f31
/* 800F53B4  4B FB 7B FD */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800F53B8  2C 1D 00 00 */	cmpwi r29, 0
/* 800F53BC  41 82 00 2C */	beq lbl_800F53E8
/* 800F53C0  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800F53C4  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F53C8  41 82 00 20 */	beq lbl_800F53E8
/* 800F53CC  28 00 00 FF */	cmplwi r0, 0xff
/* 800F53D0  41 82 00 18 */	beq lbl_800F53E8
/* 800F53D4  28 00 01 05 */	cmplwi r0, 0x105
/* 800F53D8  41 82 00 10 */	beq lbl_800F53E8
/* 800F53DC  7F 83 E3 78 */	mr r3, r28
/* 800F53E0  38 80 00 00 */	li r4, 0
/* 800F53E4  4B FC 44 59 */	bl allUnequip__9daAlink_cFi
lbl_800F53E8:
/* 800F53E8  B3 FC 30 0A */	sth r31, 0x300a(r28)
/* 800F53EC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F53F0  D0 3C 33 98 */	stfs f1, 0x3398(r28)
/* 800F53F4  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
/* 800F53F8  7F 83 E3 78 */	mr r3, r28
/* 800F53FC  C0 5C 05 34 */	lfs f2, 0x534(r28)
/* 800F5400  38 80 00 00 */	li r4, 0
/* 800F5404  4B FC 63 6D */	bl setSpecialGravity__9daAlink_cFffi
/* 800F5408  38 60 00 01 */	li r3, 1
lbl_800F540C:
/* 800F540C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800F5410  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800F5414  39 61 00 30 */	addi r11, r1, 0x30
/* 800F5418  48 26 CE 09 */	bl _restgpr_27
/* 800F541C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F5420  7C 08 03 A6 */	mtlr r0
/* 800F5424  38 21 00 40 */	addi r1, r1, 0x40
/* 800F5428  4E 80 00 20 */	blr 
