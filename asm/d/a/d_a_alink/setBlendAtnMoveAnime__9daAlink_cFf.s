lbl_800AEA70:
/* 800AEA70  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800AEA74  7C 08 02 A6 */	mflr r0
/* 800AEA78  90 01 00 94 */	stw r0, 0x94(r1)
/* 800AEA7C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800AEA80  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 800AEA84  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 800AEA88  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 800AEA8C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 800AEA90  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 800AEA94  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 800AEA98  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 800AEA9C  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 800AEAA0  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 800AEAA4  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 800AEAA8  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 800AEAAC  39 61 00 30 */	addi r11, r1, 0x30
/* 800AEAB0  48 2B 37 29 */	bl _savegpr_28
/* 800AEAB4  7C 7D 1B 78 */	mr r29, r3
/* 800AEAB8  FF E0 08 90 */	fmr f31, f1
/* 800AEABC  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800AEAC0  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 800AEAC4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800AEAC8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 800AEACC  7C 03 00 50 */	subf r0, r3, r0
/* 800AEAD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AEAD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AEAD8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AEADC  7C 43 04 2E */	lfsx f2, r3, r0
/* 800AEAE0  7C 63 02 14 */	add r3, r3, r0
/* 800AEAE4  C0 63 00 04 */	lfs f3, 4(r3)
/* 800AEAE8  3B C0 00 00 */	li r30, 0
/* 800AEAEC  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800AEAF0  28 00 00 17 */	cmplwi r0, 0x17
/* 800AEAF4  40 82 00 70 */	bne lbl_800AEB64
/* 800AEAF8  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 800AEAFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEB00  41 82 00 10 */	beq lbl_800AEB10
/* 800AEB04  38 00 00 02 */	li r0, 2
/* 800AEB08  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEB0C  48 00 00 0C */	b lbl_800AEB18
lbl_800AEB10:
/* 800AEB10  38 00 00 03 */	li r0, 3
/* 800AEB14  98 1D 2F 98 */	stb r0, 0x2f98(r29)
lbl_800AEB18:
/* 800AEB18  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800AEB1C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AEB20  40 82 01 B8 */	bne lbl_800AECD8
/* 800AEB24  7F A3 EB 78 */	mr r3, r29
/* 800AEB28  48 00 A8 19 */	bl checkEquipAnime__9daAlink_cCFv
/* 800AEB2C  2C 03 00 00 */	cmpwi r3, 0
/* 800AEB30  40 82 01 A8 */	bne lbl_800AECD8
/* 800AEB34  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800AEB38  28 00 01 03 */	cmplwi r0, 0x103
/* 800AEB3C  41 82 01 9C */	beq lbl_800AECD8
/* 800AEB40  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 800AEB44  2C 00 00 02 */	cmpwi r0, 2
/* 800AEB48  41 82 00 0C */	beq lbl_800AEB54
/* 800AEB4C  2C 00 00 03 */	cmpwi r0, 3
/* 800AEB50  40 82 01 88 */	bne lbl_800AECD8
lbl_800AEB54:
/* 800AEB54  7F A3 EB 78 */	mr r3, r29
/* 800AEB58  38 80 00 00 */	li r4, 0
/* 800AEB5C  48 00 A8 99 */	bl swordEquip__9daAlink_cFi
/* 800AEB60  48 00 01 78 */	b lbl_800AECD8
lbl_800AEB64:
/* 800AEB64  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800AEB68  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800AEB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AEB70  40 81 01 28 */	ble lbl_800AEC98
/* 800AEB74  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 800AEB78  28 04 00 00 */	cmplwi r4, 0
/* 800AEB7C  40 82 00 5C */	bne lbl_800AEBD8
/* 800AEB80  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800AEB84  28 00 00 2A */	cmplwi r0, 0x2a
/* 800AEB88  41 82 00 50 */	beq lbl_800AEBD8
/* 800AEB8C  C0 02 98 80 */	lfs f0, lit_63332(r2)
/* 800AEB90  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800AEB94  4C 40 13 82 */	cror 2, 0, 2
/* 800AEB98  41 82 00 14 */	beq lbl_800AEBAC
/* 800AEB9C  C0 02 93 70 */	lfs f0, lit_8501(r2)
/* 800AEBA0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800AEBA4  4C 41 13 82 */	cror 2, 1, 2
/* 800AEBA8  40 82 00 30 */	bne lbl_800AEBD8
lbl_800AEBAC:
/* 800AEBAC  C0 02 98 80 */	lfs f0, lit_63332(r2)
/* 800AEBB0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800AEBB4  4C 40 13 82 */	cror 2, 0, 2
/* 800AEBB8  40 82 00 10 */	bne lbl_800AEBC8
/* 800AEBBC  38 00 00 01 */	li r0, 1
/* 800AEBC0  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEBC4  48 00 01 14 */	b lbl_800AECD8
lbl_800AEBC8:
/* 800AEBC8  38 00 00 00 */	li r0, 0
/* 800AEBCC  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEBD0  3B C0 00 01 */	li r30, 1
/* 800AEBD4  48 00 01 04 */	b lbl_800AECD8
lbl_800AEBD8:
/* 800AEBD8  38 60 00 00 */	li r3, 0
/* 800AEBDC  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800AEBE0  28 00 00 62 */	cmplwi r0, 0x62
/* 800AEBE4  41 82 00 10 */	beq lbl_800AEBF4
/* 800AEBE8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AEBEC  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800AEBF0  40 82 00 08 */	bne lbl_800AEBF8
lbl_800AEBF4:
/* 800AEBF4  38 60 00 01 */	li r3, 1
lbl_800AEBF8:
/* 800AEBF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AEBFC  41 82 00 10 */	beq lbl_800AEC0C
/* 800AEC00  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800AEC04  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 800AEC08  48 00 00 28 */	b lbl_800AEC30
lbl_800AEC0C:
/* 800AEC0C  28 04 00 00 */	cmplwi r4, 0
/* 800AEC10  41 82 00 14 */	beq lbl_800AEC24
/* 800AEC14  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800AEC18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800AEC1C  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 800AEC20  48 00 00 10 */	b lbl_800AEC30
lbl_800AEC24:
/* 800AEC24  38 7F 01 10 */	addi r3, r31, 0x110
/* 800AEC28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800AEC2C  D0 1D 05 94 */	stfs f0, 0x594(r29)
lbl_800AEC30:
/* 800AEC30  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 800AEC34  28 00 00 00 */	cmplwi r0, 0
/* 800AEC38  41 82 00 20 */	beq lbl_800AEC58
/* 800AEC3C  C0 02 98 84 */	lfs f0, lit_63333(r2)
/* 800AEC40  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800AEC44  4C 41 13 82 */	cror 2, 1, 2
/* 800AEC48  40 82 00 10 */	bne lbl_800AEC58
/* 800AEC4C  38 00 00 00 */	li r0, 0
/* 800AEC50  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEC54  48 00 00 84 */	b lbl_800AECD8
lbl_800AEC58:
/* 800AEC58  C0 02 98 88 */	lfs f0, lit_63334(r2)
/* 800AEC5C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800AEC60  40 80 00 10 */	bge lbl_800AEC70
/* 800AEC64  38 00 00 01 */	li r0, 1
/* 800AEC68  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEC6C  48 00 00 6C */	b lbl_800AECD8
lbl_800AEC70:
/* 800AEC70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AEC74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800AEC78  40 81 00 10 */	ble lbl_800AEC88
/* 800AEC7C  38 00 00 02 */	li r0, 2
/* 800AEC80  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEC84  48 00 00 54 */	b lbl_800AECD8
lbl_800AEC88:
/* 800AEC88  40 80 00 50 */	bge lbl_800AECD8
/* 800AEC8C  38 00 00 03 */	li r0, 3
/* 800AEC90  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 800AEC94  48 00 00 44 */	b lbl_800AECD8
lbl_800AEC98:
/* 800AEC98  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800AEC9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AECA0  41 82 00 38 */	beq lbl_800AECD8
/* 800AECA4  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800AECA8  28 00 01 6C */	cmplwi r0, 0x16c
/* 800AECAC  41 82 00 24 */	beq lbl_800AECD0
/* 800AECB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AECB4  28 00 00 50 */	cmplwi r0, 0x50
/* 800AECB8  41 82 00 18 */	beq lbl_800AECD0
/* 800AECBC  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 800AECC0  28 00 00 00 */	cmplwi r0, 0
/* 800AECC4  41 82 00 0C */	beq lbl_800AECD0
/* 800AECC8  28 00 00 01 */	cmplwi r0, 1
/* 800AECCC  40 82 00 0C */	bne lbl_800AECD8
lbl_800AECD0:
/* 800AECD0  38 00 00 03 */	li r0, 3
/* 800AECD4  98 1D 2F 98 */	stb r0, 0x2f98(r29)
lbl_800AECD8:
/* 800AECD8  7F A3 EB 78 */	mr r3, r29
/* 800AECDC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 800AECE0  48 03 8B B5 */	bl checkSetChainPullAnime__9daAlink_cFs
/* 800AECE4  2C 03 00 00 */	cmpwi r3, 0
/* 800AECE8  41 82 00 70 */	beq lbl_800AED58
/* 800AECEC  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 800AECF0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AECF4  38 80 01 82 */	li r4, 0x182
/* 800AECF8  41 82 00 08 */	beq lbl_800AED00
/* 800AECFC  38 80 01 84 */	li r4, 0x184
lbl_800AED00:
/* 800AED00  7C 9C 23 78 */	mr r28, r4
/* 800AED04  7F A3 EB 78 */	mr r3, r29
/* 800AED08  4B FF D8 51 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AED0C  2C 03 00 00 */	cmpwi r3, 0
/* 800AED10  40 82 00 3C */	bne lbl_800AED4C
/* 800AED14  7F A3 EB 78 */	mr r3, r29
/* 800AED18  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800AED1C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800AED20  7D 89 03 A6 */	mtctr r12
/* 800AED24  4E 80 04 21 */	bctrl 
/* 800AED28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AED2C  41 82 00 0C */	beq lbl_800AED38
/* 800AED30  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 800AED34  48 00 00 08 */	b lbl_800AED3C
lbl_800AED38:
/* 800AED38  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_800AED3C:
/* 800AED3C  7F A3 EB 78 */	mr r3, r29
/* 800AED40  7F 84 E3 78 */	mr r4, r28
/* 800AED44  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800AED48  4B FF E2 99 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800AED4C:
/* 800AED4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AED50  D0 1D 33 9C */	stfs f0, 0x339c(r29)
/* 800AED54  48 00 03 80 */	b lbl_800AF0D4
lbl_800AED58:
/* 800AED58  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 800AED5C  28 00 00 01 */	cmplwi r0, 1
/* 800AED60  40 82 00 14 */	bne lbl_800AED74
/* 800AED64  7F A3 EB 78 */	mr r3, r29
/* 800AED68  FC 20 F8 90 */	fmr f1, f31
/* 800AED6C  48 00 03 B1 */	bl setBlendAtnBackMoveAnime__9daAlink_cFf
/* 800AED70  48 00 03 64 */	b lbl_800AF0D4
lbl_800AED74:
/* 800AED74  2C 1E 00 00 */	cmpwi r30, 0
/* 800AED78  41 82 00 20 */	beq lbl_800AED98
/* 800AED7C  38 7F 00 64 */	addi r3, r31, 0x64
/* 800AED80  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800AED84  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 800AED88  7F A3 EB 78 */	mr r3, r29
/* 800AED8C  FC 20 F8 90 */	fmr f1, f31
/* 800AED90  4B FF F0 85 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800AED94  48 00 03 40 */	b lbl_800AF0D4
lbl_800AED98:
/* 800AED98  7F A3 EB 78 */	mr r3, r29
/* 800AED9C  4B FF EF ED */	bl getMoveGroundAngleSpeedRate__9daAlink_cFv
/* 800AEDA0  FF C0 08 90 */	fmr f30, f1
/* 800AEDA4  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 800AEDA8  28 04 00 00 */	cmplwi r4, 0
/* 800AEDAC  41 82 00 24 */	beq lbl_800AEDD0
/* 800AEDB0  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800AEDB4  C3 83 00 44 */	lfs f28, 0x44(r3)
/* 800AEDB8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800AEDBC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 800AEDC0  C3 63 00 08 */	lfs f27, 8(r3)
/* 800AEDC4  C3 43 00 0C */	lfs f26, 0xc(r3)
/* 800AEDC8  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 800AEDCC  48 00 00 20 */	b lbl_800AEDEC
lbl_800AEDD0:
/* 800AEDD0  38 7F 01 10 */	addi r3, r31, 0x110
/* 800AEDD4  C3 83 00 44 */	lfs f28, 0x44(r3)
/* 800AEDD8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800AEDDC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 800AEDE0  C3 63 00 08 */	lfs f27, 8(r3)
/* 800AEDE4  C3 43 00 0C */	lfs f26, 0xc(r3)
/* 800AEDE8  C0 63 00 10 */	lfs f3, 0x10(r3)
lbl_800AEDEC:
/* 800AEDEC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AEDF0  40 80 00 CC */	bge lbl_800AEEBC
/* 800AEDF4  EF BE 00 24 */	fdivs f29, f30, f0
/* 800AEDF8  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 800AEDFC  28 00 00 00 */	cmplwi r0, 0
/* 800AEE00  40 82 00 18 */	bne lbl_800AEE18
/* 800AEE04  3B C0 00 11 */	li r30, 0x11
/* 800AEE08  3B 80 00 00 */	li r28, 0
/* 800AEE0C  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800AEE10  C3 43 00 4C */	lfs f26, 0x4c(r3)
/* 800AEE14  48 00 00 40 */	b lbl_800AEE54
lbl_800AEE18:
/* 800AEE18  28 00 00 02 */	cmplwi r0, 2
/* 800AEE1C  40 82 00 20 */	bne lbl_800AEE3C
/* 800AEE20  3B C0 00 10 */	li r30, 0x10
/* 800AEE24  28 04 00 00 */	cmplwi r4, 0
/* 800AEE28  41 82 00 0C */	beq lbl_800AEE34
/* 800AEE2C  3B 80 00 07 */	li r28, 7
/* 800AEE30  48 00 00 24 */	b lbl_800AEE54
lbl_800AEE34:
/* 800AEE34  3B 80 00 06 */	li r28, 6
/* 800AEE38  48 00 00 1C */	b lbl_800AEE54
lbl_800AEE3C:
/* 800AEE3C  3B C0 00 11 */	li r30, 0x11
/* 800AEE40  28 04 00 00 */	cmplwi r4, 0
/* 800AEE44  41 82 00 0C */	beq lbl_800AEE50
/* 800AEE48  3B 80 00 09 */	li r28, 9
/* 800AEE4C  48 00 00 08 */	b lbl_800AEE54
lbl_800AEE50:
/* 800AEE50  3B 80 00 08 */	li r28, 8
lbl_800AEE54:
/* 800AEE54  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800AEE58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AEE5C  40 82 00 14 */	bne lbl_800AEE70
/* 800AEE60  7F A3 EB 78 */	mr r3, r29
/* 800AEE64  48 00 4A A1 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800AEE68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AEE6C  41 82 00 14 */	beq lbl_800AEE80
lbl_800AEE70:
/* 800AEE70  38 C0 00 02 */	li r6, 2
/* 800AEE74  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AEE78  D0 1D 33 9C */	stfs f0, 0x339c(r29)
/* 800AEE7C  48 00 00 1C */	b lbl_800AEE98
lbl_800AEE80:
/* 800AEE80  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AEE84  EC 01 E0 28 */	fsubs f0, f1, f28
/* 800AEE88  EC 1D 00 32 */	fmuls f0, f29, f0
/* 800AEE8C  EF BC 00 2A */	fadds f29, f28, f0
/* 800AEE90  38 C0 00 03 */	li r6, 3
/* 800AEE94  D0 3D 33 9C */	stfs f1, 0x339c(r29)
lbl_800AEE98:
/* 800AEE98  7F A3 EB 78 */	mr r3, r29
/* 800AEE9C  FC 20 E8 90 */	fmr f1, f29
/* 800AEEA0  FC 40 D8 90 */	fmr f2, f27
/* 800AEEA4  FC 60 D0 90 */	fmr f3, f26
/* 800AEEA8  7F C4 F3 78 */	mr r4, r30
/* 800AEEAC  7F 85 E3 78 */	mr r5, r28
/* 800AEEB0  FC 80 F8 90 */	fmr f4, f31
/* 800AEEB4  4B FF DB 61 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEEB8  48 00 01 1C */	b lbl_800AEFD4
lbl_800AEEBC:
/* 800AEEBC  FC 1E 10 40 */	fcmpo cr0, f30, f2
/* 800AEEC0  40 80 00 A0 */	bge lbl_800AEF60
/* 800AEEC4  EC 3E 00 28 */	fsubs f1, f30, f0
/* 800AEEC8  EC 02 00 28 */	fsubs f0, f2, f0
/* 800AEECC  EF A1 00 24 */	fdivs f29, f1, f0
/* 800AEED0  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 800AEED4  28 00 00 00 */	cmplwi r0, 0
/* 800AEED8  40 82 00 1C */	bne lbl_800AEEF4
/* 800AEEDC  38 80 00 00 */	li r4, 0
/* 800AEEE0  38 A0 00 01 */	li r5, 1
/* 800AEEE4  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800AEEE8  C3 43 00 4C */	lfs f26, 0x4c(r3)
/* 800AEEEC  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 800AEEF0  48 00 00 48 */	b lbl_800AEF38
lbl_800AEEF4:
/* 800AEEF4  28 00 00 02 */	cmplwi r0, 2
/* 800AEEF8  40 82 00 24 */	bne lbl_800AEF1C
/* 800AEEFC  28 04 00 00 */	cmplwi r4, 0
/* 800AEF00  41 82 00 10 */	beq lbl_800AEF10
/* 800AEF04  38 80 00 07 */	li r4, 7
/* 800AEF08  38 A0 00 0B */	li r5, 0xb
/* 800AEF0C  48 00 00 2C */	b lbl_800AEF38
lbl_800AEF10:
/* 800AEF10  38 80 00 06 */	li r4, 6
/* 800AEF14  38 A0 00 0A */	li r5, 0xa
/* 800AEF18  48 00 00 20 */	b lbl_800AEF38
lbl_800AEF1C:
/* 800AEF1C  28 04 00 00 */	cmplwi r4, 0
/* 800AEF20  41 82 00 10 */	beq lbl_800AEF30
/* 800AEF24  38 80 00 09 */	li r4, 9
/* 800AEF28  38 A0 00 0D */	li r5, 0xd
/* 800AEF2C  48 00 00 0C */	b lbl_800AEF38
lbl_800AEF30:
/* 800AEF30  38 80 00 08 */	li r4, 8
/* 800AEF34  38 A0 00 0C */	li r5, 0xc
lbl_800AEF38:
/* 800AEF38  7F A3 EB 78 */	mr r3, r29
/* 800AEF3C  FC 20 E8 90 */	fmr f1, f29
/* 800AEF40  FC 40 D0 90 */	fmr f2, f26
/* 800AEF44  38 C0 00 03 */	li r6, 3
/* 800AEF48  FC 80 F8 90 */	fmr f4, f31
/* 800AEF4C  4B FF DA C9 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEF50  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AEF54  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800AEF58  D0 1D 33 9C */	stfs f0, 0x339c(r29)
/* 800AEF5C  48 00 00 78 */	b lbl_800AEFD4
lbl_800AEF60:
/* 800AEF60  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 800AEF64  28 00 00 00 */	cmplwi r0, 0
/* 800AEF68  40 82 00 14 */	bne lbl_800AEF7C
/* 800AEF6C  38 80 00 01 */	li r4, 1
/* 800AEF70  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800AEF74  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 800AEF78  48 00 00 38 */	b lbl_800AEFB0
lbl_800AEF7C:
/* 800AEF7C  28 00 00 02 */	cmplwi r0, 2
/* 800AEF80  40 82 00 1C */	bne lbl_800AEF9C
/* 800AEF84  28 04 00 00 */	cmplwi r4, 0
/* 800AEF88  41 82 00 0C */	beq lbl_800AEF94
/* 800AEF8C  38 80 00 0B */	li r4, 0xb
/* 800AEF90  48 00 00 20 */	b lbl_800AEFB0
lbl_800AEF94:
/* 800AEF94  38 80 00 0A */	li r4, 0xa
/* 800AEF98  48 00 00 18 */	b lbl_800AEFB0
lbl_800AEF9C:
/* 800AEF9C  28 04 00 00 */	cmplwi r4, 0
/* 800AEFA0  41 82 00 0C */	beq lbl_800AEFAC
/* 800AEFA4  38 80 00 0D */	li r4, 0xd
/* 800AEFA8  48 00 00 08 */	b lbl_800AEFB0
lbl_800AEFAC:
/* 800AEFAC  38 80 00 0C */	li r4, 0xc
lbl_800AEFB0:
/* 800AEFB0  7F A3 EB 78 */	mr r3, r29
/* 800AEFB4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AEFB8  FC 40 18 90 */	fmr f2, f3
/* 800AEFBC  7C 85 23 78 */	mr r5, r4
/* 800AEFC0  38 C0 00 03 */	li r6, 3
/* 800AEFC4  FC 80 F8 90 */	fmr f4, f31
/* 800AEFC8  4B FF DA 4D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AEFCC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AEFD0  D0 1D 33 9C */	stfs f0, 0x339c(r29)
lbl_800AEFD4:
/* 800AEFD4  88 1D 2F 8C */	lbz r0, 0x2f8c(r29)
/* 800AEFD8  28 00 00 02 */	cmplwi r0, 2
/* 800AEFDC  41 82 00 F8 */	beq lbl_800AF0D4
/* 800AEFE0  3B 9D 1F D0 */	addi r28, r29, 0x1fd0
/* 800AEFE4  88 7D 2F 98 */	lbz r3, 0x2f98(r29)
/* 800AEFE8  28 03 00 00 */	cmplwi r3, 0
/* 800AEFEC  40 82 00 10 */	bne lbl_800AEFFC
/* 800AEFF0  C3 42 92 C0 */	lfs f26, lit_6108(r2)
/* 800AEFF4  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 800AEFF8  48 00 00 38 */	b lbl_800AF030
lbl_800AEFFC:
/* 800AEFFC  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 800AF000  28 00 00 00 */	cmplwi r0, 0
/* 800AF004  41 82 00 10 */	beq lbl_800AF014
/* 800AF008  C3 42 93 44 */	lfs f26, lit_7977(r2)
/* 800AF00C  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 800AF010  48 00 00 0C */	b lbl_800AF01C
lbl_800AF014:
/* 800AF014  C3 42 93 34 */	lfs f26, lit_7710(r2)
/* 800AF018  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_800AF01C:
/* 800AF01C  28 03 00 02 */	cmplwi r3, 2
/* 800AF020  41 82 00 10 */	beq lbl_800AF030
/* 800AF024  FC 00 08 90 */	fmr f0, f1
/* 800AF028  FC 20 D0 90 */	fmr f1, f26
/* 800AF02C  FF 40 00 90 */	fmr f26, f0
lbl_800AF030:
/* 800AF030  7F 83 E3 78 */	mr r3, r28
/* 800AF034  48 27 93 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 800AF038  2C 03 00 00 */	cmpwi r3, 0
/* 800AF03C  41 82 00 14 */	beq lbl_800AF050
/* 800AF040  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 800AF044  60 00 00 10 */	ori r0, r0, 0x10
/* 800AF048  90 1D 05 84 */	stw r0, 0x584(r29)
/* 800AF04C  48 00 00 24 */	b lbl_800AF070
lbl_800AF050:
/* 800AF050  7F 83 E3 78 */	mr r3, r28
/* 800AF054  FC 20 D0 90 */	fmr f1, f26
/* 800AF058  48 27 93 D5 */	bl checkPass__12J3DFrameCtrlFf
/* 800AF05C  2C 03 00 00 */	cmpwi r3, 0
/* 800AF060  41 82 00 10 */	beq lbl_800AF070
/* 800AF064  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 800AF068  60 00 00 20 */	ori r0, r0, 0x20
/* 800AF06C  90 1D 05 84 */	stw r0, 0x584(r29)
lbl_800AF070:
/* 800AF070  7F A3 EB 78 */	mr r3, r29
/* 800AF074  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800AF078  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800AF07C  7D 89 03 A6 */	mtctr r12
/* 800AF080  4E 80 04 21 */	bctrl 
/* 800AF084  2C 03 00 00 */	cmpwi r3, 0
/* 800AF088  41 82 00 4C */	beq lbl_800AF0D4
/* 800AF08C  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800AF090  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AF094  40 81 00 40 */	ble lbl_800AF0D4
/* 800AF098  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 800AF09C  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 800AF0A0  41 82 00 34 */	beq lbl_800AF0D4
/* 800AF0A4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AF0A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AF0AC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AF0B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800AF0B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800AF0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AF0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AF0C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800AF0C4  38 80 00 01 */	li r4, 1
/* 800AF0C8  38 A0 00 0F */	li r5, 0xf
/* 800AF0CC  38 C1 00 08 */	addi r6, r1, 8
/* 800AF0D0  4B FC 09 55 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800AF0D4:
/* 800AF0D4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 800AF0D8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 800AF0DC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 800AF0E0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 800AF0E4  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 800AF0E8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 800AF0EC  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 800AF0F0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 800AF0F4  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 800AF0F8  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 800AF0FC  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 800AF100  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 800AF104  39 61 00 30 */	addi r11, r1, 0x30
/* 800AF108  48 2B 31 1D */	bl _restgpr_28
/* 800AF10C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800AF110  7C 08 03 A6 */	mtlr r0
/* 800AF114  38 21 00 90 */	addi r1, r1, 0x90
/* 800AF118  4E 80 00 20 */	blr 
