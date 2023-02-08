lbl_800E5FD0:
/* 800E5FD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E5FD4  7C 08 02 A6 */	mflr r0
/* 800E5FD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E5FDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800E5FE0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800E5FE4  7C 7E 1B 78 */	mr r30, r3
/* 800E5FE8  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E5FEC  38 80 00 6D */	li r4, 0x6d
/* 800E5FF0  4B FD BF 7D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E5FF4  7F C3 F3 78 */	mr r3, r30
/* 800E5FF8  4B FF DC FD */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E5FFC  2C 03 00 00 */	cmpwi r3, 0
/* 800E6000  41 82 00 48 */	beq lbl_800E6048
/* 800E6004  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E6008  38 A3 EC 48 */	addi r5, r3, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E600C  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 800E6010  7F C3 F3 78 */	mr r3, r30
/* 800E6014  38 80 00 B5 */	li r4, 0xb5
/* 800E6018  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800E601C  EC 40 08 2A */	fadds f2, f0, f1
/* 800E6020  A8 A5 00 8C */	lha r5, 0x8c(r5)
/* 800E6024  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E6028  4B FC 6F E5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800E602C  38 00 00 01 */	li r0, 1
/* 800E6030  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E6034  7F C3 F3 78 */	mr r3, r30
/* 800E6038  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E603C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E6040  4B FF EF 69 */	bl setCarryArmAngle__9daAlink_cFff
/* 800E6044  48 00 00 34 */	b lbl_800E6078
lbl_800E6048:
/* 800E6048  7F C3 F3 78 */	mr r3, r30
/* 800E604C  38 80 00 B0 */	li r4, 0xb0
/* 800E6050  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha /* 0x8038EC48@ha */
/* 800E6054  38 A5 EC 48 */	addi r5, r5, m__18daAlinkHIO_grab_c0@l /* 0x8038EC48@l */
/* 800E6058  38 A5 00 14 */	addi r5, r5, 0x14
/* 800E605C  4B FC 70 99 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E6060  38 00 00 00 */	li r0, 0
/* 800E6064  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E6068  7F C3 F3 78 */	mr r3, r30
/* 800E606C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E6070  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800E6074  4B FF EF 35 */	bl setCarryArmAngle__9daAlink_cFff
lbl_800E6078:
/* 800E6078  38 61 00 18 */	addi r3, r1, 0x18
/* 800E607C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800E6080  38 BE 35 10 */	addi r5, r30, 0x3510
/* 800E6084  48 18 0A B1 */	bl __mi__4cXyzCFRC3Vec
/* 800E6088  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800E608C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800E6090  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800E6094  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800E6098  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800E609C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800E60A0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800E60A4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E60A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E60AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800E60B0  38 61 00 0C */	addi r3, r1, 0xc
/* 800E60B4  48 26 10 85 */	bl PSVECSquareMag
/* 800E60B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E60BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E60C0  40 81 00 58 */	ble lbl_800E6118
/* 800E60C4  FC 00 08 34 */	frsqrte f0, f1
/* 800E60C8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E60CC  FC 44 00 32 */	fmul f2, f4, f0
/* 800E60D0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E60D4  FC 00 00 32 */	fmul f0, f0, f0
/* 800E60D8  FC 01 00 32 */	fmul f0, f1, f0
/* 800E60DC  FC 03 00 28 */	fsub f0, f3, f0
/* 800E60E0  FC 02 00 32 */	fmul f0, f2, f0
/* 800E60E4  FC 44 00 32 */	fmul f2, f4, f0
/* 800E60E8  FC 00 00 32 */	fmul f0, f0, f0
/* 800E60EC  FC 01 00 32 */	fmul f0, f1, f0
/* 800E60F0  FC 03 00 28 */	fsub f0, f3, f0
/* 800E60F4  FC 02 00 32 */	fmul f0, f2, f0
/* 800E60F8  FC 44 00 32 */	fmul f2, f4, f0
/* 800E60FC  FC 00 00 32 */	fmul f0, f0, f0
/* 800E6100  FC 01 00 32 */	fmul f0, f1, f0
/* 800E6104  FC 03 00 28 */	fsub f0, f3, f0
/* 800E6108  FC 02 00 32 */	fmul f0, f2, f0
/* 800E610C  FC 21 00 32 */	fmul f1, f1, f0
/* 800E6110  FC 20 08 18 */	frsp f1, f1
/* 800E6114  48 00 00 88 */	b lbl_800E619C
lbl_800E6118:
/* 800E6118  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E611C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E6120  40 80 00 10 */	bge lbl_800E6130
/* 800E6124  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E6128  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E612C  48 00 00 70 */	b lbl_800E619C
lbl_800E6130:
/* 800E6130  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E6134  80 81 00 08 */	lwz r4, 8(r1)
/* 800E6138  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E613C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E6140  7C 03 00 00 */	cmpw r3, r0
/* 800E6144  41 82 00 14 */	beq lbl_800E6158
/* 800E6148  40 80 00 40 */	bge lbl_800E6188
/* 800E614C  2C 03 00 00 */	cmpwi r3, 0
/* 800E6150  41 82 00 20 */	beq lbl_800E6170
/* 800E6154  48 00 00 34 */	b lbl_800E6188
lbl_800E6158:
/* 800E6158  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E615C  41 82 00 0C */	beq lbl_800E6168
/* 800E6160  38 00 00 01 */	li r0, 1
/* 800E6164  48 00 00 28 */	b lbl_800E618C
lbl_800E6168:
/* 800E6168  38 00 00 02 */	li r0, 2
/* 800E616C  48 00 00 20 */	b lbl_800E618C
lbl_800E6170:
/* 800E6170  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E6174  41 82 00 0C */	beq lbl_800E6180
/* 800E6178  38 00 00 05 */	li r0, 5
/* 800E617C  48 00 00 10 */	b lbl_800E618C
lbl_800E6180:
/* 800E6180  38 00 00 03 */	li r0, 3
/* 800E6184  48 00 00 08 */	b lbl_800E618C
lbl_800E6188:
/* 800E6188  38 00 00 04 */	li r0, 4
lbl_800E618C:
/* 800E618C  2C 00 00 01 */	cmpwi r0, 1
/* 800E6190  40 82 00 0C */	bne lbl_800E619C
/* 800E6194  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E6198  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E619C:
/* 800E619C  C0 02 94 70 */	lfs f0, lit_15188(r2)
/* 800E61A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E61A4  C0 02 94 30 */	lfs f0, lit_14623(r2)
/* 800E61A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E61AC  D0 1E 33 E4 */	stfs f0, 0x33e4(r30)
/* 800E61B0  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 800E61B4  70 00 00 42 */	andi. r0, r0, 0x42
/* 800E61B8  41 82 00 24 */	beq lbl_800E61DC
/* 800E61BC  7F C3 F3 78 */	mr r3, r30
/* 800E61C0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010010@ha */
/* 800E61C4  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x00010010@l */
/* 800E61C8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E61CC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E61D0  7D 89 03 A6 */	mtctr r12
/* 800E61D4  4E 80 04 21 */	bctrl 
/* 800E61D8  48 00 00 20 */	b lbl_800E61F8
lbl_800E61DC:
/* 800E61DC  7F C3 F3 78 */	mr r3, r30
/* 800E61E0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000F@ha */
/* 800E61E4  38 84 00 0F */	addi r4, r4, 0x000F /* 0x0001000F@l */
/* 800E61E8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E61EC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E61F0  7D 89 03 A6 */	mtctr r12
/* 800E61F4  4E 80 04 21 */	bctrl 
lbl_800E61F8:
/* 800E61F8  7F E3 FB 78 */	mr r3, r31
/* 800E61FC  4B F3 36 C9 */	bl fopAcM_setStageLayer__FPv
/* 800E6200  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800E6204  60 00 80 00 */	ori r0, r0, 0x8000
/* 800E6208  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800E620C  C0 02 93 C0 */	lfs f0, lit_10193(r2)
/* 800E6210  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800E6214  38 60 00 01 */	li r3, 1
/* 800E6218  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800E621C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800E6220  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E6224  7C 08 03 A6 */	mtlr r0
/* 800E6228  38 21 00 40 */	addi r1, r1, 0x40
/* 800E622C  4E 80 00 20 */	blr 
