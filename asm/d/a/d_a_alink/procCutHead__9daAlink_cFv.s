lbl_800D5FC8:
/* 800D5FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D5FCC  7C 08 02 A6 */	mflr r0
/* 800D5FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D5FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D5FD8  93 C1 00 08 */	stw r30, 8(r1)
/* 800D5FDC  7C 7E 1B 78 */	mr r30, r3
/* 800D5FE0  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 800D5FE4  2C 00 00 00 */	cmpwi r0, 0
/* 800D5FE8  40 82 00 80 */	bne lbl_800D6068
/* 800D5FEC  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800D5FF0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D5FF4  C0 5E 34 78 */	lfs f2, 0x3478(r30)
/* 800D5FF8  48 19 A7 49 */	bl cLib_chaseF__FPfff
/* 800D5FFC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 800D6000  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D6004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6008  4C 40 13 82 */	cror 2, 0, 2
/* 800D600C  40 82 01 08 */	bne lbl_800D6114
/* 800D6010  7F C3 F3 78 */	mr r3, r30
/* 800D6014  38 80 00 7D */	li r4, 0x7d
/* 800D6018  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D601C  38 A5 DD B8 */	addi r5, r5, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D6020  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D6024  4B FD 70 D1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D6028  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D602C  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 800D6030  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 800D6034  7F C3 F3 78 */	mr r3, r30
/* 800D6038  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800D603C  38 80 00 00 */	li r4, 0
/* 800D6040  4B FE 57 31 */	bl setSpecialGravity__9daAlink_cFffi
/* 800D6044  38 00 00 01 */	li r0, 1
/* 800D6048  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800D604C  7F C3 F3 78 */	mr r3, r30
/* 800D6050  48 04 E0 F5 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D6054  7F C3 F3 78 */	mr r3, r30
/* 800D6058  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010099@ha */
/* 800D605C  38 84 00 99 */	addi r4, r4, 0x0099 /* 0x00010099@l */
/* 800D6060  4B FF C2 25 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D6064  48 00 00 B0 */	b lbl_800D6114
lbl_800D6068:
/* 800D6068  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D606C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800D6070  C0 02 93 70 */	lfs f0, lit_8501(r2)
/* 800D6074  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D6078  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D607C  7F E3 FB 78 */	mr r3, r31
/* 800D6080  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800D6084  48 25 23 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 800D6088  2C 03 00 00 */	cmpwi r3, 0
/* 800D608C  41 82 00 24 */	beq lbl_800D60B0
/* 800D6090  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D6094  38 63 DD B8 */	addi r3, r3, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D6098  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800D609C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800D60A0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800D60A4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D60A8  7F C3 F3 78 */	mr r3, r30
/* 800D60AC  4B FE 55 99 */	bl initGravity__9daAlink_cFv
lbl_800D60B0:
/* 800D60B0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D60B4  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D60B8  38 63 DD B8 */	addi r3, r3, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D60BC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800D60C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D60C4  4C 41 13 82 */	cror 2, 1, 2
/* 800D60C8  40 82 00 38 */	bne lbl_800D6100
/* 800D60CC  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 800D60D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D60D4  40 80 00 2C */	bge lbl_800D6100
/* 800D60D8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D60DC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D60E0  40 82 00 14 */	bne lbl_800D60F4
/* 800D60E4  7F C3 F3 78 */	mr r3, r30
/* 800D60E8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020003@ha */
/* 800D60EC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00020003@l */
/* 800D60F0  4B FE 8F FD */	bl seStartSwordCut__9daAlink_cFUl
lbl_800D60F4:
/* 800D60F4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D60F8  60 00 00 02 */	ori r0, r0, 2
/* 800D60FC  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800D6100:
/* 800D6100  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800D6104  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D6108  41 82 00 0C */	beq lbl_800D6114
/* 800D610C  7F C3 F3 78 */	mr r3, r30
/* 800D6110  48 00 00 21 */	bl procCutHeadLandInit__9daAlink_cFv
lbl_800D6114:
/* 800D6114  38 60 00 01 */	li r3, 1
/* 800D6118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D611C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D6120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6124  7C 08 03 A6 */	mtlr r0
/* 800D6128  38 21 00 10 */	addi r1, r1, 0x10
/* 800D612C  4E 80 00 20 */	blr 
