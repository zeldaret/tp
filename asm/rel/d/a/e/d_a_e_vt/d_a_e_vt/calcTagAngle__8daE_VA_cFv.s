lbl_807C6164:
/* 807C6164  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C6168  7C 08 02 A6 */	mflr r0
/* 807C616C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C6170  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807C6174  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807C6178  39 61 00 40 */	addi r11, r1, 0x40
/* 807C617C  4B B9 C0 55 */	bl _savegpr_26
/* 807C6180  7C 7B 1B 78 */	mr r27, r3
/* 807C6184  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807C6188  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807C618C  3B 80 00 00 */	li r28, 0
/* 807C6190  3B 40 00 00 */	li r26, 0
lbl_807C6194:
/* 807C6194  3B DC 09 30 */	addi r30, r28, 0x930
/* 807C6198  7C 7B F0 AE */	lbzx r3, r27, r30
/* 807C619C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 807C61A0  41 82 00 D0 */	beq lbl_807C6270
/* 807C61A4  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 807C61A8  2C 00 00 01 */	cmpwi r0, 1
/* 807C61AC  41 82 00 28 */	beq lbl_807C61D4
/* 807C61B0  40 80 00 10 */	bge lbl_807C61C0
/* 807C61B4  2C 00 00 00 */	cmpwi r0, 0
/* 807C61B8  40 80 00 14 */	bge lbl_807C61CC
/* 807C61BC  48 00 00 24 */	b lbl_807C61E0
lbl_807C61C0:
/* 807C61C0  2C 00 00 03 */	cmpwi r0, 3
/* 807C61C4  40 80 00 1C */	bge lbl_807C61E0
/* 807C61C8  48 00 00 14 */	b lbl_807C61DC
lbl_807C61CC:
/* 807C61CC  C3 FF 00 EC */	lfs f31, 0xec(r31)
/* 807C61D0  48 00 00 10 */	b lbl_807C61E0
lbl_807C61D4:
/* 807C61D4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 807C61D8  48 00 00 08 */	b lbl_807C61E0
lbl_807C61DC:
/* 807C61DC  C3 FF 00 70 */	lfs f31, 0x70(r31)
lbl_807C61E0:
/* 807C61E0  3C 60 80 7D */	lis r3, va_tag_set_num@ha /* 0x807CF0AC@ha */
/* 807C61E4  38 63 F0 AC */	addi r3, r3, va_tag_set_num@l /* 0x807CF0AC@l */
/* 807C61E8  7C 03 E0 AE */	lbzx r0, r3, r28
/* 807C61EC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807C61F0  38 03 09 98 */	addi r0, r3, 0x998
/* 807C61F4  7C 3B 04 2E */	lfsx f1, r27, r0
/* 807C61F8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807C61FC  EC 41 00 28 */	fsubs f2, f1, f0
/* 807C6200  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807C6204  40 80 00 6C */	bge lbl_807C6270
/* 807C6208  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807C620C  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 807C6210  41 82 00 48 */	beq lbl_807C6258
/* 807C6214  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 807C6218  EC 02 00 B2 */	fmuls f0, f2, f2
/* 807C621C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807C6220  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 807C6224  40 81 00 0C */	ble lbl_807C6230
/* 807C6228  FC 00 08 34 */	frsqrte f0, f1
/* 807C622C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807C6230:
/* 807C6230  3B BA 06 60 */	addi r29, r26, 0x660
/* 807C6234  7C 1B EA AE */	lhax r0, r27, r29
/* 807C6238  2C 00 00 00 */	cmpwi r0, 0
/* 807C623C  40 80 00 14 */	bge lbl_807C6250
/* 807C6240  4B AA 14 35 */	bl cM_atan2s__Fff
/* 807C6244  7C 03 00 D0 */	neg r0, r3
/* 807C6248  7C 1B EB 2E */	sthx r0, r27, r29
/* 807C624C  48 00 00 0C */	b lbl_807C6258
lbl_807C6250:
/* 807C6250  4B AA 14 25 */	bl cM_atan2s__Fff
/* 807C6254  7C 7B EB 2E */	sthx r3, r27, r29
lbl_807C6258:
/* 807C6258  38 60 00 00 */	li r3, 0
/* 807C625C  38 1A 06 64 */	addi r0, r26, 0x664
/* 807C6260  7C 7B 03 2E */	sthx r3, r27, r0
/* 807C6264  7C 1B F0 AE */	lbzx r0, r27, r30
/* 807C6268  60 00 00 04 */	ori r0, r0, 4
/* 807C626C  7C 1B F1 AE */	stbx r0, r27, r30
lbl_807C6270:
/* 807C6270  7C 1B F0 AE */	lbzx r0, r27, r30
/* 807C6274  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C6278  40 82 00 D8 */	bne lbl_807C6350
/* 807C627C  7F BB D2 14 */	add r29, r27, r26
/* 807C6280  A8 BD 07 50 */	lha r5, 0x750(r29)
/* 807C6284  57 80 0F BC */	rlwinm r0, r28, 1, 0x1e, 0x1e
/* 807C6288  3C 60 80 7D */	lis r3, TAG_VIB_ANGLE@ha /* 0x807CF1F8@ha */
/* 807C628C  38 83 F1 F8 */	addi r4, r3, TAG_VIB_ANGLE@l /* 0x807CF1F8@l */
/* 807C6290  7C 04 02 AE */	lhax r0, r4, r0
/* 807C6294  7C 05 02 14 */	add r0, r5, r0
/* 807C6298  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 807C629C  A8 7D 07 54 */	lha r3, 0x754(r29)
/* 807C62A0  57 80 07 BC */	rlwinm r0, r28, 0, 0x1e, 0x1e
/* 807C62A4  7C 04 02 AE */	lhax r0, r4, r0
/* 807C62A8  7C 03 02 14 */	add r0, r3, r0
/* 807C62AC  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 807C62B0  38 7D 08 40 */	addi r3, r29, 0x840
/* 807C62B4  38 80 00 00 */	li r4, 0
/* 807C62B8  38 A0 00 04 */	li r5, 4
/* 807C62BC  4B AA A8 D5 */	bl cLib_chaseAngleS__FPsss
/* 807C62C0  38 7D 08 44 */	addi r3, r29, 0x844
/* 807C62C4  38 80 00 00 */	li r4, 0
/* 807C62C8  38 A0 00 04 */	li r5, 4
/* 807C62CC  4B AA A8 C5 */	bl cLib_chaseAngleS__FPsss
/* 807C62D0  A8 1D 07 50 */	lha r0, 0x750(r29)
/* 807C62D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C62D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807C62DC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807C62E0  7C 44 04 2E */	lfsx f2, r4, r0
/* 807C62E4  A8 1D 08 40 */	lha r0, 0x840(r29)
/* 807C62E8  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 807C62EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C62F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C62F4  3C 60 43 30 */	lis r3, 0x4330
/* 807C62F8  90 61 00 08 */	stw r3, 8(r1)
/* 807C62FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 807C6300  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C6304  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C6308  FC 00 00 1E */	fctiwz f0, f0
/* 807C630C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807C6310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C6314  B0 1D 06 60 */	sth r0, 0x660(r29)
/* 807C6318  A8 1D 07 54 */	lha r0, 0x754(r29)
/* 807C631C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C6320  7C 44 04 2E */	lfsx f2, r4, r0
/* 807C6324  A8 1D 08 44 */	lha r0, 0x844(r29)
/* 807C6328  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C632C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C6330  90 61 00 18 */	stw r3, 0x18(r1)
/* 807C6334  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807C6338  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C633C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C6340  FC 00 00 1E */	fctiwz f0, f0
/* 807C6344  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807C6348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C634C  B0 1D 06 64 */	sth r0, 0x664(r29)
lbl_807C6350:
/* 807C6350  7C 1B F0 AE */	lbzx r0, r27, r30
/* 807C6354  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807C6358  7C 1B F1 AE */	stbx r0, r27, r30
/* 807C635C  3B 9C 00 01 */	addi r28, r28, 1
/* 807C6360  2C 1C 00 28 */	cmpwi r28, 0x28
/* 807C6364  3B 5A 00 06 */	addi r26, r26, 6
/* 807C6368  41 80 FE 2C */	blt lbl_807C6194
/* 807C636C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807C6370  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807C6374  39 61 00 40 */	addi r11, r1, 0x40
/* 807C6378  4B B9 BE A5 */	bl _restgpr_26
/* 807C637C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C6380  7C 08 03 A6 */	mtlr r0
/* 807C6384  38 21 00 50 */	addi r1, r1, 0x50
/* 807C6388  4E 80 00 20 */	blr 
