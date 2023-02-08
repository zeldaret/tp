lbl_8013E034:
/* 8013E034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013E038  7C 08 02 A6 */	mflr r0
/* 8013E03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013E040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013E044  93 C1 00 08 */	stw r30, 8(r1)
/* 8013E048  7C 7F 1B 78 */	mr r31, r3
/* 8013E04C  38 9F 1F D0 */	addi r4, r31, 0x1fd0
/* 8013E050  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8013E054  2C 00 00 00 */	cmpwi r0, 0
/* 8013E058  40 82 01 78 */	bne lbl_8013E1D0
/* 8013E05C  83 DF 28 10 */	lwz r30, 0x2810(r31)
/* 8013E060  28 1E 00 00 */	cmplwi r30, 0
/* 8013E064  40 82 00 18 */	bne lbl_8013E07C
/* 8013E068  4B FD 9C 29 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013E06C  7F E3 FB 78 */	mr r3, r31
/* 8013E070  4B FE F1 39 */	bl procWolfWaitInit__9daAlink_cFv
/* 8013E074  38 60 00 01 */	li r3, 1
/* 8013E078  48 00 01 B0 */	b lbl_8013E228
lbl_8013E07C:
/* 8013E07C  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 8013E080  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8013E084  41 82 00 10 */	beq lbl_8013E094
/* 8013E088  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8013E08C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013E090  40 82 00 28 */	bne lbl_8013E0B8
lbl_8013E094:
/* 8013E094  7F E3 FB 78 */	mr r3, r31
/* 8013E098  4B FD 9B F9 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013E09C  88 1E 05 8D */	lbz r0, 0x58d(r30)
/* 8013E0A0  60 00 00 04 */	ori r0, r0, 4
/* 8013E0A4  98 1E 05 8D */	stb r0, 0x58d(r30)
/* 8013E0A8  7F E3 FB 78 */	mr r3, r31
/* 8013E0AC  4B FE F0 FD */	bl procWolfWaitInit__9daAlink_cFv
/* 8013E0B0  38 60 00 01 */	li r3, 1
/* 8013E0B4  48 00 01 74 */	b lbl_8013E228
lbl_8013E0B8:
/* 8013E0B8  7C 83 23 78 */	mr r3, r4
/* 8013E0BC  48 02 04 11 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013E0C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013E0C4  41 82 00 10 */	beq lbl_8013E0D4
/* 8013E0C8  7F E3 FB 78 */	mr r3, r31
/* 8013E0CC  38 80 00 8E */	li r4, 0x8e
/* 8013E0D0  4B FE B5 A9 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
lbl_8013E0D4:
/* 8013E0D4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8013E0D8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013E0DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E0E0  40 81 00 20 */	ble lbl_8013E100
/* 8013E0E4  A8 7F 2F E0 */	lha r3, 0x2fe0(r31)
/* 8013E0E8  4B F7 53 AD */	bl getDirectionFromAngle__9daAlink_cFs
/* 8013E0EC  2C 03 00 02 */	cmpwi r3, 2
/* 8013E0F0  41 82 00 0C */	beq lbl_8013E0FC
/* 8013E0F4  2C 03 00 03 */	cmpwi r3, 3
/* 8013E0F8  40 82 00 08 */	bne lbl_8013E100
lbl_8013E0FC:
/* 8013E0FC  B0 7F 30 10 */	sth r3, 0x3010(r31)
lbl_8013E100:
/* 8013E100  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8013E104  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013E108  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 8013E10C  48 13 26 35 */	bl cLib_chaseF__FPfff
/* 8013E110  2C 03 00 00 */	cmpwi r3, 0
/* 8013E114  41 82 00 A0 */	beq lbl_8013E1B4
/* 8013E118  A8 7F 30 12 */	lha r3, 0x3012(r31)
/* 8013E11C  2C 03 00 00 */	cmpwi r3, 0
/* 8013E120  41 82 00 10 */	beq lbl_8013E130
/* 8013E124  38 03 FF FF */	addi r0, r3, -1
/* 8013E128  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013E12C  48 00 00 F8 */	b lbl_8013E224
lbl_8013E130:
/* 8013E130  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8013E134  2C 00 00 02 */	cmpwi r0, 2
/* 8013E138  40 82 00 20 */	bne lbl_8013E158
/* 8013E13C  7F E3 FB 78 */	mr r3, r31
/* 8013E140  38 80 00 8F */	li r4, 0x8f
/* 8013E144  4B FE B5 35 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013E148  88 1E 05 8D */	lbz r0, 0x58d(r30)
/* 8013E14C  60 00 00 08 */	ori r0, r0, 8
/* 8013E150  98 1E 05 8D */	stb r0, 0x58d(r30)
/* 8013E154  48 00 00 4C */	b lbl_8013E1A0
lbl_8013E158:
/* 8013E158  2C 00 00 03 */	cmpwi r0, 3
/* 8013E15C  40 82 00 20 */	bne lbl_8013E17C
/* 8013E160  7F E3 FB 78 */	mr r3, r31
/* 8013E164  38 80 00 91 */	li r4, 0x91
/* 8013E168  4B FE B5 11 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013E16C  88 1E 05 8D */	lbz r0, 0x58d(r30)
/* 8013E170  60 00 00 10 */	ori r0, r0, 0x10
/* 8013E174  98 1E 05 8D */	stb r0, 0x58d(r30)
/* 8013E178  48 00 00 28 */	b lbl_8013E1A0
lbl_8013E17C:
/* 8013E17C  7F E3 FB 78 */	mr r3, r31
/* 8013E180  4B FD 9B 11 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013E184  88 1E 05 8D */	lbz r0, 0x58d(r30)
/* 8013E188  60 00 00 04 */	ori r0, r0, 4
/* 8013E18C  98 1E 05 8D */	stb r0, 0x58d(r30)
/* 8013E190  7F E3 FB 78 */	mr r3, r31
/* 8013E194  4B FE F0 15 */	bl procWolfWaitInit__9daAlink_cFv
/* 8013E198  38 60 00 01 */	li r3, 1
/* 8013E19C  48 00 00 8C */	b lbl_8013E228
lbl_8013E1A0:
/* 8013E1A0  38 00 00 01 */	li r0, 1
/* 8013E1A4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013E1A8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013E1AC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013E1B0  48 00 00 74 */	b lbl_8013E224
lbl_8013E1B4:
/* 8013E1B4  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 8013E1B8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8013E1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E1C0  40 81 00 64 */	ble lbl_8013E224
/* 8013E1C4  38 00 00 60 */	li r0, 0x60
/* 8013E1C8  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 8013E1CC  48 00 00 58 */	b lbl_8013E224
lbl_8013E1D0:
/* 8013E1D0  7C 83 23 78 */	mr r3, r4
/* 8013E1D4  48 02 02 F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013E1D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013E1DC  41 82 00 2C */	beq lbl_8013E208
/* 8013E1E0  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8013E1E4  2C 00 00 02 */	cmpwi r0, 2
/* 8013E1E8  40 82 00 14 */	bne lbl_8013E1FC
/* 8013E1EC  7F E3 FB 78 */	mr r3, r31
/* 8013E1F0  38 80 00 90 */	li r4, 0x90
/* 8013E1F4  4B FE B4 85 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013E1F8  48 00 00 10 */	b lbl_8013E208
lbl_8013E1FC:
/* 8013E1FC  7F E3 FB 78 */	mr r3, r31
/* 8013E200  38 80 00 92 */	li r4, 0x92
/* 8013E204  4B FE B4 75 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
lbl_8013E208:
/* 8013E208  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8013E20C  2C 00 00 00 */	cmpwi r0, 0
/* 8013E210  41 82 00 14 */	beq lbl_8013E224
/* 8013E214  7F E3 FB 78 */	mr r3, r31
/* 8013E218  4B FD 9A 79 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013E21C  7F E3 FB 78 */	mr r3, r31
/* 8013E220  4B FE EF 89 */	bl procWolfWaitInit__9daAlink_cFv
lbl_8013E224:
/* 8013E224  38 60 00 01 */	li r3, 1
lbl_8013E228:
/* 8013E228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013E22C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013E230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013E234  7C 08 03 A6 */	mtlr r0
/* 8013E238  38 21 00 10 */	addi r1, r1, 0x10
/* 8013E23C  4E 80 00 20 */	blr 
