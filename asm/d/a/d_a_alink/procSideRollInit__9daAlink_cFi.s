lbl_800C5328:
/* 800C5328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C532C  7C 08 02 A6 */	mflr r0
/* 800C5330  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C5334  39 61 00 20 */	addi r11, r1, 0x20
/* 800C5338  48 29 CE A5 */	bl _savegpr_29
/* 800C533C  7C 7E 1B 78 */	mr r30, r3
/* 800C5340  7C 9D 23 78 */	mr r29, r4
/* 800C5344  48 01 7A AD */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C5348  7C 7F 1B 78 */	mr r31, r3
/* 800C534C  7F C3 F3 78 */	mr r3, r30
/* 800C5350  38 80 00 11 */	li r4, 0x11
/* 800C5354  4B FF DA 51 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5358  2C 03 00 00 */	cmpwi r3, 0
/* 800C535C  40 82 00 0C */	bne lbl_800C5368
/* 800C5360  38 60 00 00 */	li r3, 0
/* 800C5364  48 00 01 08 */	b lbl_800C546C
lbl_800C5368:
/* 800C5368  9B BE 2F 98 */	stb r29, 0x2f98(r30)
/* 800C536C  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800C5370  28 00 00 02 */	cmplwi r0, 2
/* 800C5374  40 82 00 18 */	bne lbl_800C538C
/* 800C5378  38 80 00 F0 */	li r4, 0xf0
/* 800C537C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800C5380  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C5384  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C5388  48 00 00 14 */	b lbl_800C539C
lbl_800C538C:
/* 800C538C  38 80 00 F1 */	li r4, 0xf1
/* 800C5390  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800C5394  38 03 C0 00 */	addi r0, r3, -16384
/* 800C5398  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800C539C:
/* 800C539C  7F C3 F3 78 */	mr r3, r30
/* 800C53A0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_turnMove_c0@ha
/* 800C53A4  38 C5 DF 70 */	addi r6, r5, m__22daAlinkHIO_turnMove_c0@l
/* 800C53A8  C0 26 00 24 */	lfs f1, 0x24(r6)
/* 800C53AC  C0 46 00 08 */	lfs f2, 8(r6)
/* 800C53B0  A8 A6 00 00 */	lha r5, 0(r6)
/* 800C53B4  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800C53B8  4B FE 7C 55 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800C53BC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha
/* 800C53C0  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l
/* 800C53C4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800C53C8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C53CC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C53D0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C53D4  41 82 00 20 */	beq lbl_800C53F4
/* 800C53D8  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800C53DC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800C53E0  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800C53E4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800C53E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C53EC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C53F0  48 00 00 2C */	b lbl_800C541C
lbl_800C53F4:
/* 800C53F4  7F C3 F3 78 */	mr r3, r30
/* 800C53F8  38 80 00 01 */	li r4, 1
/* 800C53FC  38 A0 00 01 */	li r5, 1
/* 800C5400  4B FF 60 B9 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800C5404  2C 03 00 00 */	cmpwi r3, 0
/* 800C5408  41 82 00 14 */	beq lbl_800C541C
/* 800C540C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800C5410  C0 1E 34 34 */	lfs f0, 0x3434(r30)
/* 800C5414  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C5418  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800C541C:
/* 800C541C  7F C3 F3 78 */	mr r3, r30
/* 800C5420  38 80 00 00 */	li r4, 0
/* 800C5424  48 05 BD 9D */	bl setFootEffectProcType__9daAlink_cFi
/* 800C5428  38 00 00 04 */	li r0, 4
/* 800C542C  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800C5430  7F C3 F3 78 */	mr r3, r30
/* 800C5434  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010096@ha */
/* 800C5438  38 84 00 96 */	addi r4, r4, 0x0096 /* 0x00010096@l */
/* 800C543C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C5440  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C5444  7D 89 03 A6 */	mtctr r12
/* 800C5448  4E 80 04 21 */	bctrl 
/* 800C544C  2C 1F 00 00 */	cmpwi r31, 0
/* 800C5450  41 82 00 10 */	beq lbl_800C5460
/* 800C5454  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C5458  60 00 00 02 */	ori r0, r0, 2
/* 800C545C  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_800C5460:
/* 800C5460  38 00 00 00 */	li r0, 0
/* 800C5464  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C5468  38 60 00 01 */	li r3, 1
lbl_800C546C:
/* 800C546C  39 61 00 20 */	addi r11, r1, 0x20
/* 800C5470  48 29 CD B9 */	bl _restgpr_29
/* 800C5474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C5478  7C 08 03 A6 */	mtlr r0
/* 800C547C  38 21 00 20 */	addi r1, r1, 0x20
/* 800C5480  4E 80 00 20 */	blr 
