lbl_80129114:
/* 80129114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80129118  7C 08 02 A6 */	mflr r0
/* 8012911C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80129120  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80129124  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80129128  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8012912C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80129130  39 61 00 20 */	addi r11, r1, 0x20
/* 80129134  48 23 90 A9 */	bl _savegpr_29
/* 80129138  7C 7E 1B 78 */	mr r30, r3
/* 8012913C  FF C0 08 90 */	fmr f30, f1
/* 80129140  3C 80 80 39 */	lis r4, lit_3757@ha
/* 80129144  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 80129148  A8 83 2F E4 */	lha r4, 0x2fe4(r3)
/* 8012914C  4B FB E7 49 */	bl checkSetChainPullAnime__9daAlink_cFs
/* 80129150  2C 03 00 00 */	cmpwi r3, 0
/* 80129154  41 82 00 68 */	beq lbl_801291BC
/* 80129158  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8012915C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80129160  38 80 00 8A */	li r4, 0x8a
/* 80129164  41 82 00 08 */	beq lbl_8012916C
/* 80129168  38 80 00 8B */	li r4, 0x8b
lbl_8012916C:
/* 8012916C  7C 9F 23 78 */	mr r31, r4
/* 80129170  7F C3 F3 78 */	mr r3, r30
/* 80129174  4B FF F6 99 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80129178  2C 03 00 00 */	cmpwi r3, 0
/* 8012917C  40 82 01 98 */	bne lbl_80129314
/* 80129180  7F C3 F3 78 */	mr r3, r30
/* 80129184  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80129188  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8012918C  7D 89 03 A6 */	mtctr r12
/* 80129190  4E 80 04 21 */	bctrl 
/* 80129194  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129198  41 82 00 0C */	beq lbl_801291A4
/* 8012919C  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 801291A0  48 00 00 08 */	b lbl_801291A8
lbl_801291A4:
/* 801291A4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_801291A8:
/* 801291A8  7F C3 F3 78 */	mr r3, r30
/* 801291AC  7F E4 FB 78 */	mr r4, r31
/* 801291B0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 801291B4  48 00 05 25 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 801291B8  48 00 01 5C */	b lbl_80129314
lbl_801291BC:
/* 801291BC  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 801291C0  28 00 00 01 */	cmplwi r0, 1
/* 801291C4  40 82 00 14 */	bne lbl_801291D8
/* 801291C8  7F C3 F3 78 */	mr r3, r30
/* 801291CC  FC 20 F0 90 */	fmr f1, f30
/* 801291D0  48 00 01 6D */	bl setBlendWolfAtnBackMoveAnime__9daAlink_cFf
/* 801291D4  48 00 01 40 */	b lbl_80129314
lbl_801291D8:
/* 801291D8  38 00 00 00 */	li r0, 0
/* 801291DC  98 1E 2F C1 */	stb r0, 0x2fc1(r30)
/* 801291E0  80 1E 31 74 */	lwz r0, 0x3174(r30)
/* 801291E4  2C 00 00 08 */	cmpwi r0, 8
/* 801291E8  41 82 00 10 */	beq lbl_801291F8
/* 801291EC  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 801291F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801291F4  40 82 00 0C */	bne lbl_80129200
lbl_801291F8:
/* 801291F8  38 60 00 00 */	li r3, 0
/* 801291FC  48 00 00 14 */	b lbl_80129210
lbl_80129200:
/* 80129200  7F C3 F3 78 */	mr r3, r30
/* 80129204  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 80129208  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 8012920C  4B F8 6E 8D */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
lbl_80129210:
/* 80129210  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80129214  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80129218  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8012921C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80129220  7C 64 02 14 */	add r3, r4, r0
/* 80129224  C0 03 00 04 */	lfs f0, 4(r3)
/* 80129228  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012922C  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80129230  EC 01 00 24 */	fdivs f0, f1, f0
/* 80129234  FC 00 02 10 */	fabs f0, f0
/* 80129238  FC 00 00 18 */	frsp f0, f0
/* 8012923C  38 9F 19 18 */	addi r4, r31, 0x1918
/* 80129240  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80129244  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80129248  40 80 00 6C */	bge lbl_801292B4
/* 8012924C  EF E0 10 24 */	fdivs f31, f0, f2
/* 80129250  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80129254  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80129258  7C 60 00 D0 */	neg r3, r0
/* 8012925C  38 03 00 03 */	addi r0, r3, 3
/* 80129260  7C 1D 03 78 */	mr r29, r0
/* 80129264  7F C3 F3 78 */	mr r3, r30
/* 80129268  4B FF F5 31 */	bl checkWolfAtnWait__9daAlink_cFv
/* 8012926C  2C 03 00 00 */	cmpwi r3, 0
/* 80129270  41 82 00 14 */	beq lbl_80129284
/* 80129274  38 80 00 1C */	li r4, 0x1c
/* 80129278  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 8012927C  C0 43 00 B8 */	lfs f2, 0xb8(r3)
/* 80129280  48 00 00 10 */	b lbl_80129290
lbl_80129284:
/* 80129284  38 80 00 00 */	li r4, 0
/* 80129288  38 7F 18 D0 */	addi r3, r31, 0x18d0
/* 8012928C  C0 43 00 14 */	lfs f2, 0x14(r3)
lbl_80129290:
/* 80129290  7F C3 F3 78 */	mr r3, r30
/* 80129294  FC 20 F8 90 */	fmr f1, f31
/* 80129298  38 BF 19 18 */	addi r5, r31, 0x1918
/* 8012929C  C0 65 00 08 */	lfs f3, 8(r5)
/* 801292A0  38 A0 00 45 */	li r5, 0x45
/* 801292A4  7F A6 EB 78 */	mr r6, r29
/* 801292A8  FC 80 F0 90 */	fmr f4, f30
/* 801292AC  48 00 01 E1 */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 801292B0  48 00 00 64 */	b lbl_80129314
lbl_801292B4:
/* 801292B4  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 801292B8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801292BC  40 80 00 34 */	bge lbl_801292F0
/* 801292C0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801292C4  EC 03 10 28 */	fsubs f0, f3, f2
/* 801292C8  EC 21 00 24 */	fdivs f1, f1, f0
/* 801292CC  7F C3 F3 78 */	mr r3, r30
/* 801292D0  C0 44 00 08 */	lfs f2, 8(r4)
/* 801292D4  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 801292D8  38 80 00 45 */	li r4, 0x45
/* 801292DC  38 A0 00 46 */	li r5, 0x46
/* 801292E0  38 C0 00 03 */	li r6, 3
/* 801292E4  FC 80 F0 90 */	fmr f4, f30
/* 801292E8  48 00 01 A5 */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 801292EC  48 00 00 28 */	b lbl_80129314
lbl_801292F0:
/* 801292F0  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 801292F4  7F C3 F3 78 */	mr r3, r30
/* 801292F8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801292FC  FC 60 10 90 */	fmr f3, f2
/* 80129300  38 80 00 46 */	li r4, 0x46
/* 80129304  38 A0 00 46 */	li r5, 0x46
/* 80129308  38 C0 00 03 */	li r6, 3
/* 8012930C  FC 80 F0 90 */	fmr f4, f30
/* 80129310  48 00 01 7D */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
lbl_80129314:
/* 80129314  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80129318  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8012931C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80129320  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80129324  39 61 00 20 */	addi r11, r1, 0x20
/* 80129328  48 23 8F 01 */	bl _restgpr_29
/* 8012932C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80129330  7C 08 03 A6 */	mtlr r0
/* 80129334  38 21 00 40 */	addi r1, r1, 0x40
/* 80129338  4E 80 00 20 */	blr 
