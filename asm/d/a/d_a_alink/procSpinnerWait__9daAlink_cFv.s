lbl_8010DF4C:
/* 8010DF4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010DF50  7C 08 02 A6 */	mflr r0
/* 8010DF54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010DF58  39 61 00 30 */	addi r11, r1, 0x30
/* 8010DF5C  48 25 42 7D */	bl _savegpr_28
/* 8010DF60  7C 7E 1B 78 */	mr r30, r3
/* 8010DF64  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 8010DF68  28 1F 00 00 */	cmplwi r31, 0
/* 8010DF6C  41 82 00 54 */	beq lbl_8010DFC0
/* 8010DF70  88 1F 0A 71 */	lbz r0, 0xa71(r31)
/* 8010DF74  2C 00 00 00 */	cmpwi r0, 0
/* 8010DF78  40 82 00 48 */	bne lbl_8010DFC0
/* 8010DF7C  C0 3E 35 C0 */	lfs f1, 0x35c0(r30)
/* 8010DF80  C0 1E 35 B8 */	lfs f0, 0x35b8(r30)
/* 8010DF84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8010DF88  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010DF8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010DF90  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8010DF94  38 61 00 0C */	addi r3, r1, 0xc
/* 8010DF98  48 23 91 A1 */	bl PSVECSquareMag
/* 8010DF9C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010DFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010DFA4  41 81 00 1C */	bgt lbl_8010DFC0
/* 8010DFA8  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8010DFAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8010DFB0  40 82 00 10 */	bne lbl_8010DFC0
/* 8010DFB4  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 8010DFB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8010DFBC  41 82 00 30 */	beq lbl_8010DFEC
lbl_8010DFC0:
/* 8010DFC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010DFC4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010DFC8  7F C3 F3 78 */	mr r3, r30
/* 8010DFCC  4B FA 69 05 */	bl setJumpMode__9daAlink_cFv
/* 8010DFD0  7F C3 F3 78 */	mr r3, r30
/* 8010DFD4  38 80 00 01 */	li r4, 1
/* 8010DFD8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 8010DFDC  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 8010DFE0  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8010DFE4  4B FB 8A 65 */	bl procFallInit__9daAlink_cFif
/* 8010DFE8  48 00 04 8C */	b lbl_8010E474
lbl_8010DFEC:
/* 8010DFEC  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 8010DFF0  28 00 00 05 */	cmplwi r0, 5
/* 8010DFF4  40 82 00 14 */	bne lbl_8010E008
/* 8010DFF8  7F C3 F3 78 */	mr r3, r30
/* 8010DFFC  38 80 00 02 */	li r4, 2
/* 8010E000  4B FB 90 F9 */	bl procSmallJumpInit__9daAlink_cFi
/* 8010E004  48 00 04 70 */	b lbl_8010E474
lbl_8010E008:
/* 8010E008  7F C3 F3 78 */	mr r3, r30
/* 8010E00C  38 80 00 41 */	li r4, 0x41
/* 8010E010  4B FB 21 F9 */	bl checkItemSetButton__9daAlink_cFi
/* 8010E014  7C 7D 1B 78 */	mr r29, r3
/* 8010E018  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8010E01C  2C 00 00 00 */	cmpwi r0, 0
/* 8010E020  40 82 00 C8 */	bne lbl_8010E0E8
/* 8010E024  7F C3 F3 78 */	mr r3, r30
/* 8010E028  4B FA 45 DD */	bl itemButton__9daAlink_cFv
/* 8010E02C  2C 03 00 00 */	cmpwi r3, 0
/* 8010E030  40 82 00 44 */	bne lbl_8010E074
/* 8010E034  38 00 00 01 */	li r0, 1
/* 8010E038  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010E03C  7F C3 F3 78 */	mr r3, r30
/* 8010E040  4B FF F9 71 */	bl getSpinnerRideSpeedF__9daAlink_cFv
/* 8010E044  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 8010E048  7F C3 F3 78 */	mr r3, r30
/* 8010E04C  4B FF F9 21 */	bl getSpinnerRideMoveTime__9daAlink_cFv
/* 8010E050  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 8010E054  38 00 00 01 */	li r0, 1
/* 8010E058  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8010E05C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8010E060  B0 7F 0A 7A */	sth r3, 0xa7a(r31)
/* 8010E064  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 8010E068  60 00 00 01 */	ori r0, r0, 1
/* 8010E06C  90 1F 09 28 */	stw r0, 0x928(r31)
/* 8010E070  48 00 03 F0 */	b lbl_8010E460
lbl_8010E074:
/* 8010E074  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8010E078  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010E07C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E080  40 81 03 E0 */	ble lbl_8010E460
/* 8010E084  A8 7E 2F E0 */	lha r3, 0x2fe0(r30)
/* 8010E088  4B FA 54 0D */	bl getDirectionFromAngle__9daAlink_cFs
/* 8010E08C  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8010E090  C0 02 96 04 */	lfs f0, lit_31530(r2)
/* 8010E094  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010E098  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010E09C  FC 00 00 1E */	fctiwz f0, f0
/* 8010E0A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8010E0A4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8010E0A8  2C 03 00 02 */	cmpwi r3, 2
/* 8010E0AC  40 82 00 14 */	bne lbl_8010E0C0
/* 8010E0B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010E0B4  7C 00 22 14 */	add r0, r0, r4
/* 8010E0B8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8010E0BC  48 00 00 18 */	b lbl_8010E0D4
lbl_8010E0C0:
/* 8010E0C0  2C 03 00 03 */	cmpwi r3, 3
/* 8010E0C4  40 82 00 10 */	bne lbl_8010E0D4
/* 8010E0C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010E0CC  7C 04 00 50 */	subf r0, r4, r0
/* 8010E0D0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8010E0D4:
/* 8010E0D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010E0D8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010E0DC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010E0E0  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8010E0E4  48 00 03 7C */	b lbl_8010E460
lbl_8010E0E8:
/* 8010E0E8  7F C3 F3 78 */	mr r3, r30
/* 8010E0EC  38 80 00 41 */	li r4, 0x41
/* 8010E0F0  4B FB 20 75 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010E0F4  2C 03 00 00 */	cmpwi r3, 0
/* 8010E0F8  40 82 00 1C */	bne lbl_8010E114
/* 8010E0FC  7F C3 F3 78 */	mr r3, r30
/* 8010E100  4B FA 45 B9 */	bl swordSwingTrigger__9daAlink_cFv
/* 8010E104  2C 03 00 00 */	cmpwi r3, 0
/* 8010E108  40 82 00 0C */	bne lbl_8010E114
/* 8010E10C  2C 1D 00 02 */	cmpwi r29, 2
/* 8010E110  40 82 00 4C */	bne lbl_8010E15C
lbl_8010E114:
/* 8010E114  7F C3 F3 78 */	mr r3, r30
/* 8010E118  4B FA 45 A1 */	bl swordSwingTrigger__9daAlink_cFv
/* 8010E11C  2C 03 00 00 */	cmpwi r3, 0
/* 8010E120  41 82 00 10 */	beq lbl_8010E130
/* 8010E124  7F C3 F3 78 */	mr r3, r30
/* 8010E128  38 80 00 00 */	li r4, 0
/* 8010E12C  4B FA B2 C9 */	bl swordEquip__9daAlink_cFi
lbl_8010E130:
/* 8010E130  7F C3 F3 78 */	mr r3, r30
/* 8010E134  4B FA 67 9D */	bl setJumpMode__9daAlink_cFv
/* 8010E138  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010E13C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010E140  7F C3 F3 78 */	mr r3, r30
/* 8010E144  38 80 00 01 */	li r4, 1
/* 8010E148  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 8010E14C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 8010E150  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8010E154  4B FB 88 F5 */	bl procFallInit__9daAlink_cFif
/* 8010E158  48 00 03 1C */	b lbl_8010E474
lbl_8010E15C:
/* 8010E15C  3B 9E 1F D0 */	addi r28, r30, 0x1fd0
/* 8010E160  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8010E164  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8010E168  7F A4 EB 78 */	mr r4, r29
/* 8010E16C  48 10 E7 C9 */	bl onDirectUseItem__13dMeter2Info_cFi
/* 8010E170  80 1F 0A 64 */	lwz r0, 0xa64(r31)
/* 8010E174  28 00 00 00 */	cmplwi r0, 0
/* 8010E178  40 82 00 34 */	bne lbl_8010E1AC
/* 8010E17C  7F C3 F3 78 */	mr r3, r30
/* 8010E180  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006C@ha */
/* 8010E184  38 84 00 6C */	addi r4, r4, 0x006C /* 0x0002006C@l */
/* 8010E188  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010E18C  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010E190  7D 89 03 A6 */	mtctr r12
/* 8010E194  4E 80 04 21 */	bctrl 
/* 8010E198  7F C3 F3 78 */	mr r3, r30
/* 8010E19C  38 80 00 03 */	li r4, 3
/* 8010E1A0  38 A0 00 00 */	li r5, 0
/* 8010E1A4  4B FF FC C1 */	bl setSpinnerStatus__9daAlink_cFUcUc
/* 8010E1A8  48 00 00 30 */	b lbl_8010E1D8
lbl_8010E1AC:
/* 8010E1AC  7F C3 F3 78 */	mr r3, r30
/* 8010E1B0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006E@ha */
/* 8010E1B4  38 84 00 6E */	addi r4, r4, 0x006E /* 0x0002006E@l */
/* 8010E1B8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010E1BC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010E1C0  7D 89 03 A6 */	mtctr r12
/* 8010E1C4  4E 80 04 21 */	bctrl 
/* 8010E1C8  7F C3 F3 78 */	mr r3, r30
/* 8010E1CC  38 80 00 65 */	li r4, 0x65
/* 8010E1D0  38 A0 00 00 */	li r5, 0
/* 8010E1D4  4B FF FC 91 */	bl setSpinnerStatus__9daAlink_cFUcUc
lbl_8010E1D8:
/* 8010E1D8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8010E1DC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010E1E0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8010E1E4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010E1E8  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 8010E1EC  28 00 00 04 */	cmplwi r0, 4
/* 8010E1F0  40 82 00 A8 */	bne lbl_8010E298
/* 8010E1F4  38 00 00 01 */	li r0, 1
/* 8010E1F8  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8010E1FC  7F C3 F3 78 */	mr r3, r30
/* 8010E200  38 80 00 58 */	li r4, 0x58
/* 8010E204  38 A0 00 04 */	li r5, 4
/* 8010E208  4B FF FC 5D */	bl setSpinnerStatus__9daAlink_cFUcUc
/* 8010E20C  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8010E210  2C 00 00 F9 */	cmpwi r0, 0xf9
/* 8010E214  41 82 02 4C */	beq lbl_8010E460
/* 8010E218  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 8010E21C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8010E220  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8010E224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E228  40 80 02 38 */	bge lbl_8010E460
/* 8010E22C  7F C3 F3 78 */	mr r3, r30
/* 8010E230  38 80 00 F4 */	li r4, 0xf4
/* 8010E234  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E238  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E23C  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 8010E240  C0 45 00 80 */	lfs f2, 0x80(r5)
/* 8010E244  4B F9 ED 9D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010E248  38 00 00 F9 */	li r0, 0xf9
/* 8010E24C  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8010E250  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8010E254  7C 03 07 74 */	extsb r3, r0
/* 8010E258  4B F1 EE 15 */	bl dComIfGp_getReverb__Fi
/* 8010E25C  7C 67 1B 78 */	mr r7, r3
/* 8010E260  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080220@ha */
/* 8010E264  38 03 02 20 */	addi r0, r3, 0x0220 /* 0x00080220@l */
/* 8010E268  90 01 00 08 */	stw r0, 8(r1)
/* 8010E26C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8010E270  38 81 00 08 */	addi r4, r1, 8
/* 8010E274  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8010E278  38 C0 00 00 */	li r6, 0
/* 8010E27C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010E280  FC 40 08 90 */	fmr f2, f1
/* 8010E284  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8010E288  FC 80 18 90 */	fmr f4, f3
/* 8010E28C  39 00 00 00 */	li r8, 0
/* 8010E290  48 19 D6 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8010E294  48 00 01 CC */	b lbl_8010E460
lbl_8010E298:
/* 8010E298  28 00 00 03 */	cmplwi r0, 3
/* 8010E29C  40 82 00 8C */	bne lbl_8010E328
/* 8010E2A0  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 8010E2A4  2C 00 00 00 */	cmpwi r0, 0
/* 8010E2A8  41 82 00 18 */	beq lbl_8010E2C0
/* 8010E2AC  7F C3 F3 78 */	mr r3, r30
/* 8010E2B0  38 80 00 58 */	li r4, 0x58
/* 8010E2B4  38 A0 00 04 */	li r5, 4
/* 8010E2B8  4B FF FB AD */	bl setSpinnerStatus__9daAlink_cFUcUc
/* 8010E2BC  48 00 00 14 */	b lbl_8010E2D0
lbl_8010E2C0:
/* 8010E2C0  7F C3 F3 78 */	mr r3, r30
/* 8010E2C4  38 80 00 58 */	li r4, 0x58
/* 8010E2C8  38 A0 00 00 */	li r5, 0
/* 8010E2CC  4B FF FB 99 */	bl setSpinnerStatus__9daAlink_cFUcUc
lbl_8010E2D0:
/* 8010E2D0  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8010E2D4  2C 00 00 F9 */	cmpwi r0, 0xf9
/* 8010E2D8  40 82 00 18 */	bne lbl_8010E2F0
/* 8010E2DC  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 8010E2E0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8010E2E4  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8010E2E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E2EC  41 80 00 14 */	blt lbl_8010E300
lbl_8010E2F0:
/* 8010E2F0  2C 00 00 F9 */	cmpwi r0, 0xf9
/* 8010E2F4  41 82 01 6C */	beq lbl_8010E460
/* 8010E2F8  2C 00 00 F2 */	cmpwi r0, 0xf2
/* 8010E2FC  41 82 01 64 */	beq lbl_8010E460
lbl_8010E300:
/* 8010E300  7F C3 F3 78 */	mr r3, r30
/* 8010E304  38 80 00 F2 */	li r4, 0xf2
/* 8010E308  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E30C  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E310  C0 25 00 60 */	lfs f1, 0x60(r5)
/* 8010E314  C0 45 00 64 */	lfs f2, 0x64(r5)
/* 8010E318  4B F9 EC C9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010E31C  38 00 00 F2 */	li r0, 0xf2
/* 8010E320  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8010E324  48 00 01 3C */	b lbl_8010E460
lbl_8010E328:
/* 8010E328  88 1F 0A 70 */	lbz r0, 0xa70(r31)
/* 8010E32C  28 00 00 00 */	cmplwi r0, 0
/* 8010E330  41 82 00 48 */	beq lbl_8010E378
/* 8010E334  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8010E338  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 8010E33C  41 82 00 3C */	beq lbl_8010E378
/* 8010E340  38 00 00 F7 */	li r0, 0xf7
/* 8010E344  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8010E348  7F C3 F3 78 */	mr r3, r30
/* 8010E34C  38 80 00 F7 */	li r4, 0xf7
/* 8010E350  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010E354  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E358  38 C5 E8 70 */	addi r6, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E35C  C0 46 00 1C */	lfs f2, 0x1c(r6)
/* 8010E360  A8 A6 00 14 */	lha r5, 0x14(r6)
/* 8010E364  C0 66 00 20 */	lfs f3, 0x20(r6)
/* 8010E368  4B F9 EC A5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8010E36C  38 00 00 00 */	li r0, 0
/* 8010E370  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8010E374  48 00 00 EC */	b lbl_8010E460
lbl_8010E378:
/* 8010E378  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8010E37C  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 8010E380  40 82 00 90 */	bne lbl_8010E410
/* 8010E384  88 1F 0A 6D */	lbz r0, 0xa6d(r31)
/* 8010E388  28 00 00 00 */	cmplwi r0, 0
/* 8010E38C  40 82 00 34 */	bne lbl_8010E3C0
/* 8010E390  7F C3 F3 78 */	mr r3, r30
/* 8010E394  38 80 00 F8 */	li r4, 0xf8
/* 8010E398  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E39C  38 C5 E8 70 */	addi r6, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E3A0  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 8010E3A4  C0 46 00 30 */	lfs f2, 0x30(r6)
/* 8010E3A8  38 A0 00 10 */	li r5, 0x10
/* 8010E3AC  C0 66 00 34 */	lfs f3, 0x34(r6)
/* 8010E3B0  4B F9 EC 5D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8010E3B4  38 00 00 F8 */	li r0, 0xf8
/* 8010E3B8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8010E3BC  48 00 00 A4 */	b lbl_8010E460
lbl_8010E3C0:
/* 8010E3C0  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8010E3C4  2C 00 00 00 */	cmpwi r0, 0
/* 8010E3C8  40 82 00 98 */	bne lbl_8010E460
/* 8010E3CC  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 8010E3D0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8010E3D4  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8010E3D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E3DC  40 80 00 84 */	bge lbl_8010E460
/* 8010E3E0  7F C3 F3 78 */	mr r3, r30
/* 8010E3E4  38 80 00 F7 */	li r4, 0xf7
/* 8010E3E8  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E3EC  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E3F0  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 8010E3F4  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 8010E3F8  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 8010E3FC  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8010E400  4B F9 EC 0D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8010E404  38 00 00 01 */	li r0, 1
/* 8010E408  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8010E40C  48 00 00 54 */	b lbl_8010E460
lbl_8010E410:
/* 8010E410  2C 00 00 F8 */	cmpwi r0, 0xf8
/* 8010E414  40 82 00 14 */	bne lbl_8010E428
/* 8010E418  7F 83 E3 78 */	mr r3, r28
/* 8010E41C  48 05 00 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010E420  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010E424  40 82 00 18 */	bne lbl_8010E43C
lbl_8010E428:
/* 8010E428  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8010E42C  2C 00 00 F8 */	cmpwi r0, 0xf8
/* 8010E430  41 82 00 30 */	beq lbl_8010E460
/* 8010E434  2C 00 00 F4 */	cmpwi r0, 0xf4
/* 8010E438  41 82 00 28 */	beq lbl_8010E460
lbl_8010E43C:
/* 8010E43C  7F C3 F3 78 */	mr r3, r30
/* 8010E440  38 80 00 F4 */	li r4, 0xf4
/* 8010E444  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 8010E448  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010E44C  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 8010E450  C0 45 00 6C */	lfs f2, 0x6c(r5)
/* 8010E454  4B F9 EB 8D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010E458  38 00 00 F4 */	li r0, 0xf4
/* 8010E45C  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_8010E460:
/* 8010E460  7F C3 F3 78 */	mr r3, r30
/* 8010E464  4B FF F7 65 */	bl setSpinnerSyncPos__9daAlink_cFv
/* 8010E468  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8010E46C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8010E470  38 60 00 01 */	li r3, 1
lbl_8010E474:
/* 8010E474  39 61 00 30 */	addi r11, r1, 0x30
/* 8010E478  48 25 3D AD */	bl _restgpr_28
/* 8010E47C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010E480  7C 08 03 A6 */	mtlr r0
/* 8010E484  38 21 00 30 */	addi r1, r1, 0x30
/* 8010E488  4E 80 00 20 */	blr 
