lbl_806BA024:
/* 806BA024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BA028  7C 08 02 A6 */	mflr r0
/* 806BA02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BA030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BA034  93 C1 00 08 */	stw r30, 8(r1)
/* 806BA038  7C 7E 1B 78 */	mr r30, r3
/* 806BA03C  3C 60 80 6C */	lis r3, lit_3826@ha /* 0x806BB6D0@ha */
/* 806BA040  3B E3 B6 D0 */	addi r31, r3, lit_3826@l /* 0x806BB6D0@l */
/* 806BA044  88 1E 06 16 */	lbz r0, 0x616(r30)
/* 806BA048  2C 00 00 01 */	cmpwi r0, 1
/* 806BA04C  41 82 00 CC */	beq lbl_806BA118
/* 806BA050  40 80 01 00 */	bge lbl_806BA150
/* 806BA054  2C 00 00 00 */	cmpwi r0, 0
/* 806BA058  40 80 00 08 */	bge lbl_806BA060
/* 806BA05C  48 00 00 F4 */	b lbl_806BA150
lbl_806BA060:
/* 806BA060  38 7E 06 04 */	addi r3, r30, 0x604
/* 806BA064  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806BA068  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 806BA06C  4B BB 66 D5 */	bl cLib_chaseF__FPfff
/* 806BA070  2C 03 00 00 */	cmpwi r3, 0
/* 806BA074  41 82 00 24 */	beq lbl_806BA098
/* 806BA078  7F C3 F3 78 */	mr r3, r30
/* 806BA07C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BA080  38 A0 00 0F */	li r5, 0xf
/* 806BA084  38 C0 00 03 */	li r6, 3
/* 806BA088  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 806BA08C  4B 96 2A 4D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806BA090  7F C3 F3 78 */	mr r3, r30
/* 806BA094  4B 95 FB E9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806BA098:
/* 806BA098  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 806BA09C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BA0A0  90 1E 06 30 */	stw r0, 0x630(r30)
/* 806BA0A4  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806BA0A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BA0AC  90 1E 07 68 */	stw r0, 0x768(r30)
/* 806BA0B0  80 7E 0C 30 */	lwz r3, 0xc30(r30)
/* 806BA0B4  38 80 00 01 */	li r4, 1
/* 806BA0B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BA0BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BA0C0  40 82 00 18 */	bne lbl_806BA0D8
/* 806BA0C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BA0C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BA0CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BA0D0  41 82 00 08 */	beq lbl_806BA0D8
/* 806BA0D4  38 80 00 00 */	li r4, 0
lbl_806BA0D8:
/* 806BA0D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BA0DC  41 82 00 74 */	beq lbl_806BA150
/* 806BA0E0  7F C3 F3 78 */	mr r3, r30
/* 806BA0E4  38 80 00 09 */	li r4, 9
/* 806BA0E8  38 A0 00 02 */	li r5, 2
/* 806BA0EC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806BA0F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BA0F4  4B FF F9 35 */	bl SetAnm__8daE_FK_cFiiff
/* 806BA0F8  88 7E 06 16 */	lbz r3, 0x616(r30)
/* 806BA0FC  38 03 00 01 */	addi r0, r3, 1
/* 806BA100  98 1E 06 16 */	stb r0, 0x616(r30)
/* 806BA104  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BA108  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 806BA10C  38 00 00 00 */	li r0, 0
/* 806BA110  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 806BA114  48 00 00 3C */	b lbl_806BA150
lbl_806BA118:
/* 806BA118  38 7E 06 04 */	addi r3, r30, 0x604
/* 806BA11C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 806BA120  C0 5F 01 0C */	lfs f2, 0x10c(r31)
/* 806BA124  4B BB 66 1D */	bl cLib_chaseF__FPfff
/* 806BA128  2C 03 00 00 */	cmpwi r3, 0
/* 806BA12C  41 82 00 24 */	beq lbl_806BA150
/* 806BA130  7F C3 F3 78 */	mr r3, r30
/* 806BA134  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BA138  38 A0 00 0F */	li r5, 0xf
/* 806BA13C  38 C0 00 03 */	li r6, 3
/* 806BA140  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 806BA144  4B 96 29 95 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806BA148  7F C3 F3 78 */	mr r3, r30
/* 806BA14C  4B 95 FB 31 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806BA150:
/* 806BA150  7F C3 F3 78 */	mr r3, r30
/* 806BA154  4B FF FA C5 */	bl SpeedChk__8daE_FK_cFv
/* 806BA158  7F C3 F3 78 */	mr r3, r30
/* 806BA15C  4B FF F9 D1 */	bl SpeedSet__8daE_FK_cFv
/* 806BA160  7F C3 F3 78 */	mr r3, r30
/* 806BA164  4B FF FA B9 */	bl SetAnmSpeed__8daE_FK_cFv
/* 806BA168  7F C3 F3 78 */	mr r3, r30
/* 806BA16C  4B FF FA A9 */	bl HsAngleSet__8daE_FK_cFv
/* 806BA170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BA174  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BA178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BA17C  7C 08 03 A6 */	mtlr r0
/* 806BA180  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA184  4E 80 00 20 */	blr 
