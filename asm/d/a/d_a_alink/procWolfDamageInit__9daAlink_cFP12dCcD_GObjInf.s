lbl_801360EC:
/* 801360EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801360F0  7C 08 02 A6 */	mflr r0
/* 801360F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801360F8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801360FC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80136100  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80136104  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80136108  39 61 00 40 */	addi r11, r1, 0x40
/* 8013610C  48 22 C0 D1 */	bl _savegpr_29
/* 80136110  7C 7D 1B 78 */	mr r29, r3
/* 80136114  7C 9E 23 78 */	mr r30, r4
/* 80136118  38 80 01 07 */	li r4, 0x107
/* 8013611C  4B F8 BE 51 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80136120  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80136124  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80136128  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013612C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80136130  7F E3 04 2E */	lfsx f31, r3, r0
/* 80136134  38 83 00 04 */	addi r4, r3, 4
/* 80136138  7F C4 04 2E */	lfsx f30, r4, r0
/* 8013613C  28 1E 00 00 */	cmplwi r30, 0
/* 80136140  41 82 00 18 */	beq lbl_80136158
/* 80136144  7F A3 EB 78 */	mr r3, r29
/* 80136148  7F C4 F3 78 */	mr r4, r30
/* 8013614C  4B FA 13 A9 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 80136150  7C 7F 1B 78 */	mr r31, r3
/* 80136154  48 00 00 28 */	b lbl_8013617C
lbl_80136158:
/* 80136158  A8 1D 31 1E */	lha r0, 0x311e(r29)
/* 8013615C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80136160  7C 24 04 2E */	lfsx f1, r4, r0
/* 80136164  7C 03 04 2E */	lfsx f0, r3, r0
/* 80136168  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8013616C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80136170  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80136174  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80136178  3B E1 00 24 */	addi r31, r1, 0x24
lbl_8013617C:
/* 8013617C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80136180  EC 25 07 B2 */	fmuls f1, f5, f30
/* 80136184  C0 9F 00 00 */	lfs f4, 0(r31)
/* 80136188  EC 04 07 F2 */	fmuls f0, f4, f31
/* 8013618C  EC 61 00 2A */	fadds f3, f1, f0
/* 80136190  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80136194  FC 00 F8 50 */	fneg f0, f31
/* 80136198  EC 25 00 32 */	fmuls f1, f5, f0
/* 8013619C  EC 04 07 B2 */	fmuls f0, f4, f30
/* 801361A0  EC 01 00 2A */	fadds f0, f1, f0
/* 801361A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801361A8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801361AC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801361B0  FC 20 00 50 */	fneg f1, f0
/* 801361B4  FC 40 18 50 */	fneg f2, f3
/* 801361B8  48 13 14 BD */	bl cM_atan2s__Fff
/* 801361BC  4B F7 D2 D9 */	bl getDirectionFromAngle__9daAlink_cFs
/* 801361C0  2C 03 00 00 */	cmpwi r3, 0
/* 801361C4  40 82 00 2C */	bne lbl_801361F0
/* 801361C8  7F A3 EB 78 */	mr r3, r29
/* 801361CC  38 80 00 3C */	li r4, 0x3c
/* 801361D0  3C A0 80 39 */	lis r5, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 801361D4  38 A5 F2 3C */	addi r5, r5, m__25daAlinkHIO_wlDamNormal_c0@l
/* 801361D8  4B FF 36 71 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 801361DC  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 801361E0  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 801361E4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801361E8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 801361EC  48 00 00 94 */	b lbl_80136280
lbl_801361F0:
/* 801361F0  2C 03 00 01 */	cmpwi r3, 1
/* 801361F4  40 82 00 30 */	bne lbl_80136224
/* 801361F8  7F A3 EB 78 */	mr r3, r29
/* 801361FC  38 80 00 3D */	li r4, 0x3d
/* 80136200  3C A0 80 39 */	lis r5, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136204  38 A5 F2 3C */	addi r5, r5, m__25daAlinkHIO_wlDamNormal_c0@l
/* 80136208  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013620C  4B FF 36 3D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136210  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136214  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 80136218  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8013621C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 80136220  48 00 00 60 */	b lbl_80136280
lbl_80136224:
/* 80136224  2C 03 00 02 */	cmpwi r3, 2
/* 80136228  40 82 00 30 */	bne lbl_80136258
/* 8013622C  7F A3 EB 78 */	mr r3, r29
/* 80136230  38 80 00 3E */	li r4, 0x3e
/* 80136234  3C A0 80 39 */	lis r5, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136238  38 A5 F2 3C */	addi r5, r5, m__25daAlinkHIO_wlDamNormal_c0@l
/* 8013623C  38 A5 00 28 */	addi r5, r5, 0x28
/* 80136240  4B FF 36 09 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136244  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136248  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 8013624C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80136250  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 80136254  48 00 00 2C */	b lbl_80136280
lbl_80136258:
/* 80136258  7F A3 EB 78 */	mr r3, r29
/* 8013625C  38 80 00 3F */	li r4, 0x3f
/* 80136260  3C A0 80 39 */	lis r5, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136264  38 A5 F2 3C */	addi r5, r5, m__25daAlinkHIO_wlDamNormal_c0@l
/* 80136268  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8013626C  4B FF 35 DD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136270  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136274  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 80136278  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8013627C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
lbl_80136280:
/* 80136280  7F A3 EB 78 */	mr r3, r29
/* 80136284  38 80 00 90 */	li r4, 0x90
/* 80136288  4B F7 96 19 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013628C  7F E3 FB 78 */	mr r3, r31
/* 80136290  48 13 0E 99 */	bl atan2sX_Z__4cXyzCFv
/* 80136294  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80136298  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8013629C  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 801362A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801362A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801362A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801362AC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801362B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801362B4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801362B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801362BC  48 21 0E 7D */	bl PSVECSquareMag
/* 801362C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801362C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801362C8  40 81 00 58 */	ble lbl_80136320
/* 801362CC  FC 00 08 34 */	frsqrte f0, f1
/* 801362D0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801362D4  FC 44 00 32 */	fmul f2, f4, f0
/* 801362D8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801362DC  FC 00 00 32 */	fmul f0, f0, f0
/* 801362E0  FC 01 00 32 */	fmul f0, f1, f0
/* 801362E4  FC 03 00 28 */	fsub f0, f3, f0
/* 801362E8  FC 02 00 32 */	fmul f0, f2, f0
/* 801362EC  FC 44 00 32 */	fmul f2, f4, f0
/* 801362F0  FC 00 00 32 */	fmul f0, f0, f0
/* 801362F4  FC 01 00 32 */	fmul f0, f1, f0
/* 801362F8  FC 03 00 28 */	fsub f0, f3, f0
/* 801362FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80136300  FC 44 00 32 */	fmul f2, f4, f0
/* 80136304  FC 00 00 32 */	fmul f0, f0, f0
/* 80136308  FC 01 00 32 */	fmul f0, f1, f0
/* 8013630C  FC 03 00 28 */	fsub f0, f3, f0
/* 80136310  FC 02 00 32 */	fmul f0, f2, f0
/* 80136314  FC 21 00 32 */	fmul f1, f1, f0
/* 80136318  FC 20 08 18 */	frsp f1, f1
/* 8013631C  48 00 00 88 */	b lbl_801363A4
lbl_80136320:
/* 80136320  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80136324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136328  40 80 00 10 */	bge lbl_80136338
/* 8013632C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80136330  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80136334  48 00 00 70 */	b lbl_801363A4
lbl_80136338:
/* 80136338  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013633C  80 81 00 08 */	lwz r4, 8(r1)
/* 80136340  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80136344  3C 00 7F 80 */	lis r0, 0x7f80
/* 80136348  7C 03 00 00 */	cmpw r3, r0
/* 8013634C  41 82 00 14 */	beq lbl_80136360
/* 80136350  40 80 00 40 */	bge lbl_80136390
/* 80136354  2C 03 00 00 */	cmpwi r3, 0
/* 80136358  41 82 00 20 */	beq lbl_80136378
/* 8013635C  48 00 00 34 */	b lbl_80136390
lbl_80136360:
/* 80136360  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80136364  41 82 00 0C */	beq lbl_80136370
/* 80136368  38 00 00 01 */	li r0, 1
/* 8013636C  48 00 00 28 */	b lbl_80136394
lbl_80136370:
/* 80136370  38 00 00 02 */	li r0, 2
/* 80136374  48 00 00 20 */	b lbl_80136394
lbl_80136378:
/* 80136378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013637C  41 82 00 0C */	beq lbl_80136388
/* 80136380  38 00 00 05 */	li r0, 5
/* 80136384  48 00 00 10 */	b lbl_80136394
lbl_80136388:
/* 80136388  38 00 00 03 */	li r0, 3
/* 8013638C  48 00 00 08 */	b lbl_80136394
lbl_80136390:
/* 80136390  38 00 00 04 */	li r0, 4
lbl_80136394:
/* 80136394  2C 00 00 01 */	cmpwi r0, 1
/* 80136398  40 82 00 0C */	bne lbl_801363A4
/* 8013639C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801363A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801363A4:
/* 801363A4  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 801363A8  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 801363AC  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801363B0  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 801363B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801363B8  EC 02 00 2A */	fadds f0, f2, f0
/* 801363BC  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 801363C0  C0 1D 33 98 */	lfs f0, 0x3398(r29)
/* 801363C4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 801363C8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 801363CC  C0 23 00 64 */	lfs f1, 0x64(r3)
/* 801363D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801363D4  40 81 00 08 */	ble lbl_801363DC
/* 801363D8  D0 3D 33 98 */	stfs f1, 0x3398(r29)
lbl_801363DC:
/* 801363DC  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 801363E0  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 801363E4  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 801363E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801363EC  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 801363F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801363F4  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 801363F8  28 1E 00 00 */	cmplwi r30, 0
/* 801363FC  41 82 00 28 */	beq lbl_80136424
/* 80136400  7F C3 F3 78 */	mr r3, r30
/* 80136404  4B F4 E1 45 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80136408  28 03 00 00 */	cmplwi r3, 0
/* 8013640C  41 82 00 88 */	beq lbl_80136494
/* 80136410  7F C3 F3 78 */	mr r3, r30
/* 80136414  4B F4 E1 35 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80136418  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8013641C  28 00 00 02 */	cmplwi r0, 2
/* 80136420  40 82 00 74 */	bne lbl_80136494
lbl_80136424:
/* 80136424  3C 60 80 39 */	lis r3, m__25daAlinkHIO_wlDamNormal_c0@ha
/* 80136428  38 63 F2 3C */	addi r3, r3, m__25daAlinkHIO_wlDamNormal_c0@l
/* 8013642C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80136430  D0 1D 1F DC */	stfs f0, 0x1fdc(r29)
/* 80136434  38 00 00 03 */	li r0, 3
/* 80136438  B0 1D 1F D8 */	sth r0, 0x1fd8(r29)
/* 8013643C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80136440  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 80136444  38 00 00 5A */	li r0, 0x5a
/* 80136448  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8013644C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80136450  64 00 40 00 */	oris r0, r0, 0x4000
/* 80136454  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80136458  7F A3 EB 78 */	mr r3, r29
/* 8013645C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004C@ha */
/* 80136460  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0002004C@l */
/* 80136464  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80136468  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013646C  7D 89 03 A6 */	mtctr r12
/* 80136470  4E 80 04 21 */	bctrl 
/* 80136474  7F A3 EB 78 */	mr r3, r29
/* 80136478  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100C1@ha */
/* 8013647C  38 84 00 C1 */	addi r4, r4, 0x00C1 /* 0x000100C1@l */
/* 80136480  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80136484  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80136488  7D 89 03 A6 */	mtctr r12
/* 8013648C  4E 80 04 21 */	bctrl 
/* 80136490  48 00 00 44 */	b lbl_801364D4
lbl_80136494:
/* 80136494  38 00 00 00 */	li r0, 0
/* 80136498  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8013649C  7F A3 EB 78 */	mr r3, r29
/* 801364A0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 801364A4  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 801364A8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801364AC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801364B0  7D 89 03 A6 */	mtctr r12
/* 801364B4  4E 80 04 21 */	bctrl 
/* 801364B8  7F A3 EB 78 */	mr r3, r29
/* 801364BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010034@ha */
/* 801364C0  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x00010034@l */
/* 801364C4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801364C8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 801364CC  7D 89 03 A6 */	mtctr r12
/* 801364D0  4E 80 04 21 */	bctrl 
lbl_801364D4:
/* 801364D4  38 00 00 00 */	li r0, 0
/* 801364D8  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 801364DC  38 60 00 01 */	li r3, 1
/* 801364E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 801364E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801364E8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 801364EC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801364F0  39 61 00 40 */	addi r11, r1, 0x40
/* 801364F4  48 22 BD 35 */	bl _restgpr_29
/* 801364F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801364FC  7C 08 03 A6 */	mtlr r0
/* 80136500  38 21 00 60 */	addi r1, r1, 0x60
/* 80136504  4E 80 00 20 */	blr 
