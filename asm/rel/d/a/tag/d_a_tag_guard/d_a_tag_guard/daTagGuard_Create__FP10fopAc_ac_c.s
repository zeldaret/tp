lbl_80D59928:
/* 80D59928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5992C  7C 08 02 A6 */	mflr r0
/* 80D59930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59938  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5993C  7C 7E 1B 78 */	mr r30, r3
/* 80D59940  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D59944  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D59948  40 82 00 1C */	bne lbl_80D59964
/* 80D5994C  28 1E 00 00 */	cmplwi r30, 0
/* 80D59950  41 82 00 08 */	beq lbl_80D59958
/* 80D59954  4B 2B F2 10 */	b __ct__10fopAc_ac_cFv
lbl_80D59958:
/* 80D59958  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D5995C  60 00 00 08 */	ori r0, r0, 8
/* 80D59960  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D59964:
/* 80D59964  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D59968  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80D5996C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D59970  7C 04 07 74 */	extsb r4, r0
/* 80D59974  4B 2F 7E 78 */	b dPath_GetRoomPath__Fii
/* 80D59978  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80D5997C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D59980  38 80 00 00 */	li r4, 0
/* 80D59984  4B 2F 7E 2C */	b dPath_GetPnt__FPC5dPathi
/* 80D59988  7C 7F 1B 78 */	mr r31, r3
/* 80D5998C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D59990  38 80 00 01 */	li r4, 1
/* 80D59994  4B 2F 7E 1C */	b dPath_GetPnt__FPC5dPathi
/* 80D59998  7C 64 1B 78 */	mr r4, r3
/* 80D5999C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D599A0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D599A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D599A8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D599AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D599B0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D599B4  38 7F 00 04 */	addi r3, r31, 4
/* 80D599B8  38 84 00 04 */	addi r4, r4, 4
/* 80D599BC  4B 51 72 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D599C0  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80D599C4  38 60 00 04 */	li r3, 4
/* 80D599C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D599CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D599D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D599D4  7C 08 03 A6 */	mtlr r0
/* 80D599D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D599DC  4E 80 00 20 */	blr 
