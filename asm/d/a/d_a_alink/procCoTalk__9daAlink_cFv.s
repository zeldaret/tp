lbl_80119F64:
/* 80119F64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80119F68  7C 08 02 A6 */	mflr r0
/* 80119F6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80119F70  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80119F74  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80119F78  7C 7F 1B 78 */	mr r31, r3
/* 80119F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80119F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80119F84  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80119F88  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80119F8C  41 82 00 0C */	beq lbl_80119F98
/* 80119F90  38 00 00 0D */	li r0, 0xd
/* 80119F94  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_80119F98:
/* 80119F98  7F E3 FB 78 */	mr r3, r31
/* 80119F9C  4B FF E5 D1 */	bl setShapeAngleToTalkActor__9daAlink_cFv
/* 80119FA0  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80119FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80119FA8  41 82 02 00 */	beq lbl_8011A1A8
/* 80119FAC  38 61 00 18 */	addi r3, r1, 0x18
/* 80119FB0  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 80119FB4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80119FB8  48 14 CB 7D */	bl __mi__4cXyzCFRC3Vec
/* 80119FBC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80119FC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80119FC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80119FC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80119FCC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80119FD0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80119FD4  3B C0 00 00 */	li r30, 0
/* 80119FD8  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 80119FDC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80119FE0  41 82 00 38 */	beq lbl_8011A018
/* 80119FE4  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 80119FE8  38 00 00 03 */	li r0, 3
/* 80119FEC  7C 09 03 A6 */	mtctr r0
lbl_80119FF0:
/* 80119FF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80119FF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80119FF8  41 82 00 18 */	beq lbl_8011A010
/* 80119FFC  A8 63 00 3C */	lha r3, 0x3c(r3)
/* 8011A000  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8011A004  48 15 6E 21 */	bl cLib_distanceAngleS__Fss
/* 8011A008  7C 7E 1B 78 */	mr r30, r3
/* 8011A00C  48 00 00 0C */	b lbl_8011A018
lbl_8011A010:
/* 8011A010  38 63 00 40 */	addi r3, r3, 0x40
/* 8011A014  42 00 FF DC */	bdnz lbl_80119FF0
lbl_8011A018:
/* 8011A018  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8011A01C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8011A020  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A024  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8011A028  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8011A02C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011A030  38 61 00 0C */	addi r3, r1, 0xc
/* 8011A034  48 22 D1 05 */	bl PSVECSquareMag
/* 8011A038  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A03C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011A040  40 81 00 58 */	ble lbl_8011A098
/* 8011A044  FC 00 08 34 */	frsqrte f0, f1
/* 8011A048  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8011A04C  FC 44 00 32 */	fmul f2, f4, f0
/* 8011A050  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8011A054  FC 00 00 32 */	fmul f0, f0, f0
/* 8011A058  FC 01 00 32 */	fmul f0, f1, f0
/* 8011A05C  FC 03 00 28 */	fsub f0, f3, f0
/* 8011A060  FC 02 00 32 */	fmul f0, f2, f0
/* 8011A064  FC 44 00 32 */	fmul f2, f4, f0
/* 8011A068  FC 00 00 32 */	fmul f0, f0, f0
/* 8011A06C  FC 01 00 32 */	fmul f0, f1, f0
/* 8011A070  FC 03 00 28 */	fsub f0, f3, f0
/* 8011A074  FC 02 00 32 */	fmul f0, f2, f0
/* 8011A078  FC 44 00 32 */	fmul f2, f4, f0
/* 8011A07C  FC 00 00 32 */	fmul f0, f0, f0
/* 8011A080  FC 01 00 32 */	fmul f0, f1, f0
/* 8011A084  FC 03 00 28 */	fsub f0, f3, f0
/* 8011A088  FC 02 00 32 */	fmul f0, f2, f0
/* 8011A08C  FC 21 00 32 */	fmul f1, f1, f0
/* 8011A090  FC 20 08 18 */	frsp f1, f1
/* 8011A094  48 00 00 88 */	b lbl_8011A11C
lbl_8011A098:
/* 8011A098  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8011A09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011A0A0  40 80 00 10 */	bge lbl_8011A0B0
/* 8011A0A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8011A0A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8011A0AC  48 00 00 70 */	b lbl_8011A11C
lbl_8011A0B0:
/* 8011A0B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8011A0B4  80 81 00 08 */	lwz r4, 8(r1)
/* 8011A0B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8011A0BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8011A0C0  7C 03 00 00 */	cmpw r3, r0
/* 8011A0C4  41 82 00 14 */	beq lbl_8011A0D8
/* 8011A0C8  40 80 00 40 */	bge lbl_8011A108
/* 8011A0CC  2C 03 00 00 */	cmpwi r3, 0
/* 8011A0D0  41 82 00 20 */	beq lbl_8011A0F0
/* 8011A0D4  48 00 00 34 */	b lbl_8011A108
lbl_8011A0D8:
/* 8011A0D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011A0DC  41 82 00 0C */	beq lbl_8011A0E8
/* 8011A0E0  38 00 00 01 */	li r0, 1
/* 8011A0E4  48 00 00 28 */	b lbl_8011A10C
lbl_8011A0E8:
/* 8011A0E8  38 00 00 02 */	li r0, 2
/* 8011A0EC  48 00 00 20 */	b lbl_8011A10C
lbl_8011A0F0:
/* 8011A0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011A0F4  41 82 00 0C */	beq lbl_8011A100
/* 8011A0F8  38 00 00 05 */	li r0, 5
/* 8011A0FC  48 00 00 10 */	b lbl_8011A10C
lbl_8011A100:
/* 8011A100  38 00 00 03 */	li r0, 3
/* 8011A104  48 00 00 08 */	b lbl_8011A10C
lbl_8011A108:
/* 8011A108  38 00 00 04 */	li r0, 4
lbl_8011A10C:
/* 8011A10C  2C 00 00 01 */	cmpwi r0, 1
/* 8011A110  40 82 00 0C */	bne lbl_8011A11C
/* 8011A114  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8011A118  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8011A11C:
/* 8011A11C  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8011A120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011A124  41 80 00 24 */	blt lbl_8011A148
/* 8011A128  38 61 00 24 */	addi r3, r1, 0x24
/* 8011A12C  48 14 CF FD */	bl atan2sX_Z__4cXyzCFv
/* 8011A130  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8011A134  48 15 6C F1 */	bl cLib_distanceAngleS__Fss
/* 8011A138  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8011A13C  41 81 00 0C */	bgt lbl_8011A148
/* 8011A140  2C 1E 40 00 */	cmpwi r30, 0x4000
/* 8011A144  40 81 00 30 */	ble lbl_8011A174
lbl_8011A148:
/* 8011A148  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 8011A14C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8011A150  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 8011A154  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8011A158  38 00 00 00 */	li r0, 0
/* 8011A15C  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011A160  7F E3 FB 78 */	mr r3, r31
/* 8011A164  4B FF E4 F1 */	bl setTalkAnime__9daAlink_cFv
/* 8011A168  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A16C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011A170  48 00 00 88 */	b lbl_8011A1F8
lbl_8011A174:
/* 8011A174  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8011A178  2C 03 00 00 */	cmpwi r3, 0
/* 8011A17C  41 82 00 10 */	beq lbl_8011A18C
/* 8011A180  38 03 FF FF */	addi r0, r3, -1
/* 8011A184  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011A188  48 00 00 70 */	b lbl_8011A1F8
lbl_8011A18C:
/* 8011A18C  38 00 00 00 */	li r0, 0
/* 8011A190  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011A194  7F E3 FB 78 */	mr r3, r31
/* 8011A198  4B FF E4 BD */	bl setTalkAnime__9daAlink_cFv
/* 8011A19C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A1A0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011A1A4  48 00 00 54 */	b lbl_8011A1F8
lbl_8011A1A8:
/* 8011A1A8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 8011A1AC  28 00 00 48 */	cmplwi r0, 0x48
/* 8011A1B0  40 82 00 40 */	bne lbl_8011A1F0
/* 8011A1B4  A3 DF 1F 94 */	lhz r30, 0x1f94(r31)
/* 8011A1B8  7F E3 FB 78 */	mr r3, r31
/* 8011A1BC  38 80 00 19 */	li r4, 0x19
/* 8011A1C0  4B F9 22 91 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8011A1C4  A0 63 00 02 */	lhz r3, 2(r3)
/* 8011A1C8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8011A1CC  7C 00 18 40 */	cmplw r0, r3
/* 8011A1D0  41 82 00 20 */	beq lbl_8011A1F0
/* 8011A1D4  7F E3 FB 78 */	mr r3, r31
/* 8011A1D8  38 80 00 19 */	li r4, 0x19
/* 8011A1DC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 8011A1E0  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 8011A1E4  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011A1E8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011A1EC  4B F9 2D F5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011A1F0:
/* 8011A1F0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011A1F4  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8011A1F8:
/* 8011A1F8  38 60 00 01 */	li r3, 1
/* 8011A1FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011A200  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011A204  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011A208  7C 08 03 A6 */	mtlr r0
/* 8011A20C  38 21 00 40 */	addi r1, r1, 0x40
/* 8011A210  4E 80 00 20 */	blr 
