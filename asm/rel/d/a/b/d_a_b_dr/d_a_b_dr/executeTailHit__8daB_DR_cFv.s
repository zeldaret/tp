lbl_805BDBC4:
/* 805BDBC4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805BDBC8  7C 08 02 A6 */	mflr r0
/* 805BDBCC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805BDBD0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805BDBD4  4B DA 46 01 */	bl _savegpr_27
/* 805BDBD8  7C 7F 1B 78 */	mr r31, r3
/* 805BDBDC  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805BDBE0  3B C4 6C 74 */	addi r30, r4, lit_3800@l /* 0x805C6C74@l */
/* 805BDBE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDBE8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDBEC  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 805BDBF0  88 1D 5D B0 */	lbz r0, 0x5db0(r29)
/* 805BDBF4  7C 00 07 74 */	extsb r0, r0
/* 805BDBF8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805BDBFC  7C 9D 02 14 */	add r4, r29, r0
/* 805BDC00  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 805BDC04  4B FF F4 59 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BDC08  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BDC0C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805BDC10  7C 00 07 35 */	extsh. r0, r0
/* 805BDC14  41 82 00 44 */	beq lbl_805BDC58
/* 805BDC18  4B C3 C4 75 */	bl dMw_onPauseWindow__Fv
/* 805BDC1C  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805BDC20  28 00 00 02 */	cmplwi r0, 2
/* 805BDC24  41 82 00 20 */	beq lbl_805BDC44
/* 805BDC28  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805BDC2C  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805BDC30  7F E3 FB 78 */	mr r3, r31
/* 805BDC34  38 80 00 00 */	li r4, 0
/* 805BDC38  38 A0 00 00 */	li r5, 0
/* 805BDC3C  4B FF D8 79 */	bl setActionMode__8daB_DR_cFii
/* 805BDC40  48 00 0D 5C */	b lbl_805BE99C
lbl_805BDC44:
/* 805BDC44  7F E3 FB 78 */	mr r3, r31
/* 805BDC48  38 80 00 01 */	li r4, 1
/* 805BDC4C  38 A0 00 00 */	li r5, 0
/* 805BDC50  4B FF D8 65 */	bl setActionMode__8daB_DR_cFii
/* 805BDC54  48 00 0D 48 */	b lbl_805BE99C
lbl_805BDC58:
/* 805BDC58  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BDC5C  2C 00 00 00 */	cmpwi r0, 0
/* 805BDC60  41 82 00 0C */	beq lbl_805BDC6C
/* 805BDC64  2C 00 00 01 */	cmpwi r0, 1
/* 805BDC68  40 82 00 34 */	bne lbl_805BDC9C
lbl_805BDC6C:
/* 805BDC6C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805BDC70  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805BDC74  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BDC78  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BDC7C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805BDC80  EC 21 00 2A */	fadds f1, f1, f0
/* 805BDC84  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805BDC88  40 80 00 14 */	bge lbl_805BDC9C
/* 805BDC8C  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 805BDC90  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 805BDC94  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 805BDC98  4B CB 1D A5 */	bl cLib_addCalc2__FPffff
lbl_805BDC9C:
/* 805BDC9C  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BDCA0  2C 00 00 0F */	cmpwi r0, 0xf
/* 805BDCA4  41 82 08 24 */	beq lbl_805BE4C8
/* 805BDCA8  40 80 00 4C */	bge lbl_805BDCF4
/* 805BDCAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805BDCB0  41 82 03 C0 */	beq lbl_805BE070
/* 805BDCB4  40 80 00 28 */	bge lbl_805BDCDC
/* 805BDCB8  2C 00 00 01 */	cmpwi r0, 1
/* 805BDCBC  41 82 00 E4 */	beq lbl_805BDDA0
/* 805BDCC0  40 80 00 10 */	bge lbl_805BDCD0
/* 805BDCC4  2C 00 00 00 */	cmpwi r0, 0
/* 805BDCC8  40 80 00 68 */	bge lbl_805BDD30
/* 805BDCCC  48 00 0A 30 */	b lbl_805BE6FC
lbl_805BDCD0:
/* 805BDCD0  2C 00 00 03 */	cmpwi r0, 3
/* 805BDCD4  40 80 0A 28 */	bge lbl_805BE6FC
/* 805BDCD8  48 00 01 E4 */	b lbl_805BDEBC
lbl_805BDCDC:
/* 805BDCDC  2C 00 00 0D */	cmpwi r0, 0xd
/* 805BDCE0  41 82 06 2C */	beq lbl_805BE30C
/* 805BDCE4  40 80 07 30 */	bge lbl_805BE414
/* 805BDCE8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805BDCEC  40 80 05 CC */	bge lbl_805BE2B8
/* 805BDCF0  48 00 04 10 */	b lbl_805BE100
lbl_805BDCF4:
/* 805BDCF4  2C 00 00 64 */	cmpwi r0, 0x64
/* 805BDCF8  41 82 09 54 */	beq lbl_805BE64C
/* 805BDCFC  40 80 00 1C */	bge lbl_805BDD18
/* 805BDD00  2C 00 00 15 */	cmpwi r0, 0x15
/* 805BDD04  41 82 08 D8 */	beq lbl_805BE5DC
/* 805BDD08  40 80 09 F4 */	bge lbl_805BE6FC
/* 805BDD0C  2C 00 00 14 */	cmpwi r0, 0x14
/* 805BDD10  40 80 08 6C */	bge lbl_805BE57C
/* 805BDD14  48 00 09 E8 */	b lbl_805BE6FC
lbl_805BDD18:
/* 805BDD18  2C 00 27 10 */	cmpwi r0, 0x2710
/* 805BDD1C  41 82 09 C8 */	beq lbl_805BE6E4
/* 805BDD20  40 80 09 DC */	bge lbl_805BE6FC
/* 805BDD24  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 805BDD28  41 82 09 B4 */	beq lbl_805BE6DC
/* 805BDD2C  48 00 09 D0 */	b lbl_805BE6FC
lbl_805BDD30:
/* 805BDD30  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BDD34  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BDD38  41 82 00 1C */	beq lbl_805BDD54
/* 805BDD3C  7F E3 FB 78 */	mr r3, r31
/* 805BDD40  38 80 00 35 */	li r4, 0x35
/* 805BDD44  38 A0 00 02 */	li r5, 2
/* 805BDD48  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BDD4C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BDD50  4B FF D6 B9 */	bl setBck__8daB_DR_cFiUcff
lbl_805BDD54:
/* 805BDD54  7F E3 FB 78 */	mr r3, r31
/* 805BDD58  4B FF EE C1 */	bl mAllClr__8daB_DR_cFv
/* 805BDD5C  4B C3 C3 51 */	bl dMw_offPauseWindow__Fv
/* 805BDD60  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BDD64  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805BDD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDD6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDD70  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805BDD74  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 805BDD78  41 82 09 84 */	beq lbl_805BE6FC
/* 805BDD7C  D0 1F 07 28 */	stfs f0, 0x728(r31)
/* 805BDD80  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BDD84  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BDD88  A8 03 00 38 */	lha r0, 0x38(r3)
/* 805BDD8C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BDD90  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BDD94  38 03 00 01 */	addi r0, r3, 1
/* 805BDD98  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDD9C  48 00 09 60 */	b lbl_805BE6FC
lbl_805BDDA0:
/* 805BDDA0  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BDDA4  48 00 8E 39 */	bl func_805C6BDC
/* 805BDDA8  2C 03 00 00 */	cmpwi r3, 0
/* 805BDDAC  41 82 00 C8 */	beq lbl_805BDE74
/* 805BDDB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDDB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDDB8  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805BDDBC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 805BDDC0  41 82 00 A8 */	beq lbl_805BDE68
/* 805BDDC4  7F 63 DB 78 */	mr r3, r27
/* 805BDDC8  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 805BDDCC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 805BDDD0  7D 89 03 A6 */	mtctr r12
/* 805BDDD4  4E 80 04 21 */	bctrl 
/* 805BDDD8  2C 03 00 00 */	cmpwi r3, 0
/* 805BDDDC  41 82 09 20 */	beq lbl_805BE6FC
/* 805BDDE0  38 00 00 01 */	li r0, 1
/* 805BDDE4  98 1F 07 D6 */	stb r0, 0x7d6(r31)
/* 805BDDE8  88 1F 07 D2 */	lbz r0, 0x7d2(r31)
/* 805BDDEC  28 00 00 00 */	cmplwi r0, 0
/* 805BDDF0  40 82 00 20 */	bne lbl_805BDE10
/* 805BDDF4  38 00 00 00 */	li r0, 0
/* 805BDDF8  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BDDFC  7F E3 FB 78 */	mr r3, r31
/* 805BDE00  38 80 00 0B */	li r4, 0xb
/* 805BDE04  38 A0 00 00 */	li r5, 0
/* 805BDE08  4B FF D6 AD */	bl setActionMode__8daB_DR_cFii
/* 805BDE0C  48 00 0B 90 */	b lbl_805BE99C
lbl_805BDE10:
/* 805BDE10  88 9F 07 EC */	lbz r4, 0x7ec(r31)
/* 805BDE14  28 04 00 FF */	cmplwi r4, 0xff
/* 805BDE18  41 82 00 18 */	beq lbl_805BDE30
/* 805BDE1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDE20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDE24  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BDE28  7C 05 07 74 */	extsb r5, r0
/* 805BDE2C  4B A7 73 D5 */	bl onSwitch__10dSv_info_cFii
lbl_805BDE30:
/* 805BDE30  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BDE34  2C 00 00 10 */	cmpwi r0, 0x10
/* 805BDE38  41 82 00 1C */	beq lbl_805BDE54
/* 805BDE3C  7F E3 FB 78 */	mr r3, r31
/* 805BDE40  38 80 00 10 */	li r4, 0x10
/* 805BDE44  38 A0 00 00 */	li r5, 0
/* 805BDE48  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BDE4C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BDE50  4B FF D5 B9 */	bl setBck__8daB_DR_cFiUcff
lbl_805BDE54:
/* 805BDE54  38 00 00 00 */	li r0, 0
/* 805BDE58  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BDE5C  38 00 00 0A */	li r0, 0xa
/* 805BDE60  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDE64  48 00 08 98 */	b lbl_805BE6FC
lbl_805BDE68:
/* 805BDE68  38 00 00 00 */	li r0, 0
/* 805BDE6C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BDE70  48 00 08 8C */	b lbl_805BE6FC
lbl_805BDE74:
/* 805BDE74  88 9F 07 EC */	lbz r4, 0x7ec(r31)
/* 805BDE78  28 04 00 FF */	cmplwi r4, 0xff
/* 805BDE7C  41 82 00 18 */	beq lbl_805BDE94
/* 805BDE80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDE84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDE88  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BDE8C  7C 05 07 74 */	extsb r5, r0
/* 805BDE90  4B A7 74 21 */	bl offSwitch__10dSv_info_cFii
lbl_805BDE94:
/* 805BDE94  7F E3 FB 78 */	mr r3, r31
/* 805BDE98  38 80 00 3F */	li r4, 0x3f
/* 805BDE9C  38 A0 00 00 */	li r5, 0
/* 805BDEA0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805BDEA4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BDEA8  4B FF D5 61 */	bl setBck__8daB_DR_cFiUcff
/* 805BDEAC  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BDEB0  38 03 00 01 */	addi r0, r3, 1
/* 805BDEB4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDEB8  48 00 08 44 */	b lbl_805BE6FC
lbl_805BDEBC:
/* 805BDEBC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BDEC0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BDEC4  FC 00 00 1E */	fctiwz f0, f0
/* 805BDEC8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805BDECC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805BDED0  2C 00 00 1C */	cmpwi r0, 0x1c
/* 805BDED4  40 80 00 AC */	bge lbl_805BDF80
/* 805BDED8  7F 63 DB 78 */	mr r3, r27
/* 805BDEDC  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 805BDEE0  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 805BDEE4  7D 89 03 A6 */	mtctr r12
/* 805BDEE8  4E 80 04 21 */	bctrl 
/* 805BDEEC  2C 03 00 00 */	cmpwi r3, 0
/* 805BDEF0  41 82 08 0C */	beq lbl_805BE6FC
/* 805BDEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDEFC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805BDF00  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 805BDF04  41 82 07 F8 */	beq lbl_805BE6FC
/* 805BDF08  38 00 00 01 */	li r0, 1
/* 805BDF0C  98 1F 07 D6 */	stb r0, 0x7d6(r31)
/* 805BDF10  88 1F 07 D2 */	lbz r0, 0x7d2(r31)
/* 805BDF14  28 00 00 00 */	cmplwi r0, 0
/* 805BDF18  40 82 00 18 */	bne lbl_805BDF30
/* 805BDF1C  7F E3 FB 78 */	mr r3, r31
/* 805BDF20  38 80 00 0B */	li r4, 0xb
/* 805BDF24  38 A0 00 00 */	li r5, 0
/* 805BDF28  4B FF D5 8D */	bl setActionMode__8daB_DR_cFii
/* 805BDF2C  48 00 0A 70 */	b lbl_805BE99C
lbl_805BDF30:
/* 805BDF30  88 9F 07 EC */	lbz r4, 0x7ec(r31)
/* 805BDF34  28 04 00 FF */	cmplwi r4, 0xff
/* 805BDF38  41 82 00 10 */	beq lbl_805BDF48
/* 805BDF3C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BDF40  7C 05 07 74 */	extsb r5, r0
/* 805BDF44  4B A7 72 BD */	bl onSwitch__10dSv_info_cFii
lbl_805BDF48:
/* 805BDF48  38 00 00 00 */	li r0, 0
/* 805BDF4C  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 805BDF50  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BDF54  2C 00 00 10 */	cmpwi r0, 0x10
/* 805BDF58  41 82 00 1C */	beq lbl_805BDF74
/* 805BDF5C  7F E3 FB 78 */	mr r3, r31
/* 805BDF60  38 80 00 10 */	li r4, 0x10
/* 805BDF64  38 A0 00 00 */	li r5, 0
/* 805BDF68  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BDF6C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BDF70  4B FF D4 99 */	bl setBck__8daB_DR_cFiUcff
lbl_805BDF74:
/* 805BDF74  38 00 00 0A */	li r0, 0xa
/* 805BDF78  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDF7C  48 00 07 80 */	b lbl_805BE6FC
lbl_805BDF80:
/* 805BDF80  38 63 00 0C */	addi r3, r3, 0xc
/* 805BDF84  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805BDF88  4B D6 A4 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 805BDF8C  2C 03 00 00 */	cmpwi r3, 0
/* 805BDF90  41 82 00 34 */	beq lbl_805BDFC4
/* 805BDF94  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BDF98  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805BDF9C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805BDFA0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805BDFA4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805BDFA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDFAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDFB0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805BDFB4  38 80 00 05 */	li r4, 5
/* 805BDFB8  38 A0 00 4F */	li r5, 0x4f
/* 805BDFBC  38 C1 00 54 */	addi r6, r1, 0x54
/* 805BDFC0  4B AB 1A 65 */	bl StartShock__12dVibration_cFii4cXyz
lbl_805BDFC4:
/* 805BDFC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BDFC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BDFCC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805BDFD0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 805BDFD4  41 82 00 10 */	beq lbl_805BDFE4
/* 805BDFD8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805BDFDC  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 805BDFE0  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_805BDFE4:
/* 805BDFE4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BDFE8  38 80 00 01 */	li r4, 1
/* 805BDFEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BDFF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BDFF4  40 82 00 18 */	bne lbl_805BE00C
/* 805BDFF8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BDFFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE000  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE004  41 82 00 08 */	beq lbl_805BE00C
/* 805BE008  38 80 00 00 */	li r4, 0
lbl_805BE00C:
/* 805BE00C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE010  41 82 06 EC */	beq lbl_805BE6FC
/* 805BE014  4B C3 C0 79 */	bl dMw_onPauseWindow__Fv
/* 805BE018  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805BE01C  28 00 00 02 */	cmplwi r0, 2
/* 805BE020  41 82 00 34 */	beq lbl_805BE054
/* 805BE024  28 00 00 00 */	cmplwi r0, 0
/* 805BE028  41 82 00 18 */	beq lbl_805BE040
/* 805BE02C  7F E3 FB 78 */	mr r3, r31
/* 805BE030  38 80 00 07 */	li r4, 7
/* 805BE034  38 A0 00 00 */	li r5, 0
/* 805BE038  4B FF D4 7D */	bl setActionMode__8daB_DR_cFii
/* 805BE03C  48 00 06 C0 */	b lbl_805BE6FC
lbl_805BE040:
/* 805BE040  7F E3 FB 78 */	mr r3, r31
/* 805BE044  38 80 00 04 */	li r4, 4
/* 805BE048  38 A0 00 00 */	li r5, 0
/* 805BE04C  4B FF D4 69 */	bl setActionMode__8daB_DR_cFii
/* 805BE050  48 00 06 AC */	b lbl_805BE6FC
lbl_805BE054:
/* 805BE054  38 00 00 C8 */	li r0, 0xc8
/* 805BE058  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 805BE05C  7F E3 FB 78 */	mr r3, r31
/* 805BE060  38 80 00 01 */	li r4, 1
/* 805BE064  38 A0 00 00 */	li r5, 0
/* 805BE068  4B FF D4 4D */	bl setActionMode__8daB_DR_cFii
/* 805BE06C  48 00 06 90 */	b lbl_805BE6FC
lbl_805BE070:
/* 805BE070  7F E3 FB 78 */	mr r3, r31
/* 805BE074  38 80 00 00 */	li r4, 0
/* 805BE078  4B FF D5 D5 */	bl mStatusONOFF__8daB_DR_cFi
/* 805BE07C  38 60 00 16 */	li r3, 0x16
/* 805BE080  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BE084  7C 04 07 74 */	extsb r4, r0
/* 805BE088  4B A6 F8 C5 */	bl dComIfGs_onZoneSwitch__Fii
/* 805BE08C  88 1F 07 D2 */	lbz r0, 0x7d2(r31)
/* 805BE090  28 00 00 00 */	cmplwi r0, 0
/* 805BE094  40 82 00 10 */	bne lbl_805BE0A4
/* 805BE098  4B BC 35 A9 */	bl dCam_getBody__Fv
/* 805BE09C  38 80 00 02 */	li r4, 2
/* 805BE0A0  4B BA 4F 89 */	bl SetTrimTypeForce__9dCamera_cFl
lbl_805BE0A4:
/* 805BE0A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE0A8  38 80 00 01 */	li r4, 1
/* 805BE0AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BE0B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BE0B4  40 82 00 18 */	bne lbl_805BE0CC
/* 805BE0B8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BE0BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE0C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE0C4  41 82 00 08 */	beq lbl_805BE0CC
/* 805BE0C8  38 80 00 00 */	li r4, 0
lbl_805BE0CC:
/* 805BE0CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE0D0  41 82 06 2C */	beq lbl_805BE6FC
/* 805BE0D4  7F E3 FB 78 */	mr r3, r31
/* 805BE0D8  38 80 00 12 */	li r4, 0x12
/* 805BE0DC  38 A0 00 02 */	li r5, 2
/* 805BE0E0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BE0E4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE0E8  4B FF D3 21 */	bl setBck__8daB_DR_cFiUcff
/* 805BE0EC  7F E3 FB 78 */	mr r3, r31
/* 805BE0F0  4B FF F0 6D */	bl mBgFallGroundCheck__8daB_DR_cFv
/* 805BE0F4  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE0F8  38 03 00 01 */	addi r0, r3, 1
/* 805BE0FC  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BE100:
/* 805BE100  88 1F 07 D2 */	lbz r0, 0x7d2(r31)
/* 805BE104  28 00 00 00 */	cmplwi r0, 0
/* 805BE108  40 82 00 10 */	bne lbl_805BE118
/* 805BE10C  4B BC 35 35 */	bl dCam_getBody__Fv
/* 805BE110  38 80 00 02 */	li r4, 2
/* 805BE114  4B BA 4F 15 */	bl SetTrimTypeForce__9dCamera_cFl
lbl_805BE118:
/* 805BE118  C0 3F 07 28 */	lfs f1, 0x728(r31)
/* 805BE11C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BE120  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BE124  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805BE128  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE12C  D0 1F 07 28 */	stfs f0, 0x728(r31)
/* 805BE130  C0 1F 07 28 */	lfs f0, 0x728(r31)
/* 805BE134  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805BE138  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805BE13C  4C 41 13 82 */	cror 2, 1, 2
/* 805BE140  40 82 00 08 */	bne lbl_805BE148
/* 805BE144  D0 3F 07 28 */	stfs f1, 0x728(r31)
lbl_805BE148:
/* 805BE148  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 805BE14C  C0 3F 07 34 */	lfs f1, 0x734(r31)
/* 805BE150  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805BE154  C0 7F 07 28 */	lfs f3, 0x728(r31)
/* 805BE158  4B CB 18 E5 */	bl cLib_addCalc2__FPffff
/* 805BE15C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805BE160  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 805BE164  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805BE168  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 805BE16C  4B CB 18 D1 */	bl cLib_addCalc2__FPffff
/* 805BE170  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 805BE174  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 805BE178  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805BE17C  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 805BE180  4B CB 18 BD */	bl cLib_addCalc2__FPffff
/* 805BE184  80 1F 08 5C */	lwz r0, 0x85c(r31)
/* 805BE188  60 00 00 04 */	ori r0, r0, 4
/* 805BE18C  90 1F 08 5C */	stw r0, 0x85c(r31)
/* 805BE190  38 7F 08 30 */	addi r3, r31, 0x830
/* 805BE194  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805BE198  4B AB 8F 7D */	bl SetGroundUpY__9dBgS_AcchFf
/* 805BE19C  38 7F 08 30 */	addi r3, r31, 0x830
/* 805BE1A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BE1A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BE1A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805BE1AC  4B AB 89 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805BE1B0  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 805BE1B4  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 805BE1B8  40 82 00 1C */	bne lbl_805BE1D4
/* 805BE1BC  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 805BE1C0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BE1C4  C0 1F 07 34 */	lfs f0, 0x734(r31)
/* 805BE1C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE1CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BE1D0  40 80 05 2C */	bge lbl_805BE6FC
lbl_805BE1D4:
/* 805BE1D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DF@ha */
/* 805BE1D8  38 03 04 DF */	addi r0, r3, 0x04DF /* 0x000704DF@l */
/* 805BE1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BE1E0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BE1E4  38 81 00 14 */	addi r4, r1, 0x14
/* 805BE1E8  38 A0 00 00 */	li r5, 0
/* 805BE1EC  38 C0 FF FF */	li r6, -1
/* 805BE1F0  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BE1F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805BE1F8  7D 89 03 A6 */	mtctr r12
/* 805BE1FC  4E 80 04 21 */	bctrl 
/* 805BE200  88 1F 07 D2 */	lbz r0, 0x7d2(r31)
/* 805BE204  28 00 00 00 */	cmplwi r0, 0
/* 805BE208  41 82 00 20 */	beq lbl_805BE228
/* 805BE20C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805BE210  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805BE214  80 63 00 00 */	lwz r3, 0(r3)
/* 805BE218  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BE21C  38 80 00 1E */	li r4, 0x1e
/* 805BE220  38 A0 00 00 */	li r5, 0
/* 805BE224  4B CF 11 E5 */	bl bgmStop__8Z2SeqMgrFUll
lbl_805BE228:
/* 805BE228  38 00 00 00 */	li r0, 0
/* 805BE22C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805BE230  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BE234  D0 1F 07 6C */	stfs f0, 0x76c(r31)
/* 805BE238  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 805BE23C  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 805BE240  88 9F 07 EC */	lbz r4, 0x7ec(r31)
/* 805BE244  28 04 00 FF */	cmplwi r4, 0xff
/* 805BE248  41 82 00 18 */	beq lbl_805BE260
/* 805BE24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BE250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BE254  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805BE258  7C 05 07 74 */	extsb r5, r0
/* 805BE25C  4B A7 70 55 */	bl offSwitch__10dSv_info_cFii
lbl_805BE260:
/* 805BE260  7F E3 FB 78 */	mr r3, r31
/* 805BE264  38 80 00 00 */	li r4, 0
/* 805BE268  4B FF D3 E5 */	bl mStatusONOFF__8daB_DR_cFi
/* 805BE26C  88 7F 07 D2 */	lbz r3, 0x7d2(r31)
/* 805BE270  28 03 00 00 */	cmplwi r3, 0
/* 805BE274  40 82 00 20 */	bne lbl_805BE294
/* 805BE278  38 00 00 00 */	li r0, 0
/* 805BE27C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BE280  7F E3 FB 78 */	mr r3, r31
/* 805BE284  38 80 00 0B */	li r4, 0xb
/* 805BE288  38 A0 00 0A */	li r5, 0xa
/* 805BE28C  4B FF D2 29 */	bl setActionMode__8daB_DR_cFii
/* 805BE290  48 00 07 0C */	b lbl_805BE99C
lbl_805BE294:
/* 805BE294  38 03 00 01 */	addi r0, r3, 1
/* 805BE298  98 1F 07 D2 */	stb r0, 0x7d2(r31)
/* 805BE29C  80 1F 14 20 */	lwz r0, 0x1420(r31)
/* 805BE2A0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805BE2A4  90 1F 14 20 */	stw r0, 0x1420(r31)
/* 805BE2A8  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE2AC  38 03 00 01 */	addi r0, r3, 1
/* 805BE2B0  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BE2B4  48 00 04 48 */	b lbl_805BE6FC
lbl_805BE2B8:
/* 805BE2B8  7F E3 FB 78 */	mr r3, r31
/* 805BE2BC  48 00 49 2D */	bl startDemoCheck__8daB_DR_cFv
/* 805BE2C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BE2C4  41 82 04 38 */	beq lbl_805BE6FC
/* 805BE2C8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 805BE2CC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805BE2D0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805BE2D4  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 805BE2D8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805BE2DC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 805BE2E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805BE2E4  7F E3 FB 78 */	mr r3, r31
/* 805BE2E8  38 80 00 37 */	li r4, 0x37
/* 805BE2EC  38 A0 00 00 */	li r5, 0
/* 805BE2F0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BE2F4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE2F8  4B FF D1 11 */	bl setBck__8daB_DR_cFiUcff
/* 805BE2FC  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE300  38 03 00 01 */	addi r0, r3, 1
/* 805BE304  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BE308  48 00 03 F4 */	b lbl_805BE6FC
lbl_805BE30C:
/* 805BE30C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE310  2C 00 00 13 */	cmpwi r0, 0x13
/* 805BE314  40 82 00 84 */	bne lbl_805BE398
/* 805BE318  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE31C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BE320  FC 00 00 1E */	fctiwz f0, f0
/* 805BE324  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805BE328  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805BE32C  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BE330  41 80 00 18 */	blt lbl_805BE348
/* 805BE334  38 7F 27 D4 */	addi r3, r31, 0x27d4
/* 805BE338  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805BE33C  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 805BE340  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 805BE344  4B CB 16 F9 */	bl cLib_addCalc2__FPffff
lbl_805BE348:
/* 805BE348  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE34C  38 80 00 01 */	li r4, 1
/* 805BE350  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BE354  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BE358  40 82 00 18 */	bne lbl_805BE370
/* 805BE35C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BE360  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE364  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE368  41 82 00 08 */	beq lbl_805BE370
/* 805BE36C  38 80 00 00 */	li r4, 0
lbl_805BE370:
/* 805BE370  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE374  41 82 00 24 */	beq lbl_805BE398
/* 805BE378  7F E3 FB 78 */	mr r3, r31
/* 805BE37C  38 80 00 1F */	li r4, 0x1f
/* 805BE380  38 A0 00 02 */	li r5, 2
/* 805BE384  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BE388  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE38C  4B FF D0 7D */	bl setBck__8daB_DR_cFiUcff
/* 805BE390  38 00 00 23 */	li r0, 0x23
/* 805BE394  90 1F 07 C0 */	stw r0, 0x7c0(r31)
lbl_805BE398:
/* 805BE398  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE39C  2C 00 00 37 */	cmpwi r0, 0x37
/* 805BE3A0  40 82 00 54 */	bne lbl_805BE3F4
/* 805BE3A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE3A8  38 80 00 01 */	li r4, 1
/* 805BE3AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BE3B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BE3B4  40 82 00 18 */	bne lbl_805BE3CC
/* 805BE3B8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BE3BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE3C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE3C4  41 82 00 08 */	beq lbl_805BE3CC
/* 805BE3C8  38 80 00 00 */	li r4, 0
lbl_805BE3CC:
/* 805BE3CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE3D0  41 82 00 24 */	beq lbl_805BE3F4
/* 805BE3D4  7F E3 FB 78 */	mr r3, r31
/* 805BE3D8  38 80 00 13 */	li r4, 0x13
/* 805BE3DC  38 A0 00 00 */	li r5, 0
/* 805BE3E0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BE3E4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE3E8  4B FF D0 21 */	bl setBck__8daB_DR_cFiUcff
/* 805BE3EC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805BE3F0  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_805BE3F4:
/* 805BE3F4  7F E3 FB 78 */	mr r3, r31
/* 805BE3F8  4B FF ED 65 */	bl mBgFallGroundCheck__8daB_DR_cFv
/* 805BE3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BE400  41 82 02 FC */	beq lbl_805BE6FC
/* 805BE404  4B C3 BC 89 */	bl dMw_onPauseWindow__Fv
/* 805BE408  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE40C  38 03 00 01 */	addi r0, r3, 1
/* 805BE410  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BE414:
/* 805BE414  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE418  2C 00 00 13 */	cmpwi r0, 0x13
/* 805BE41C  40 82 00 64 */	bne lbl_805BE480
/* 805BE420  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE424  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BE428  FC 00 00 1E */	fctiwz f0, f0
/* 805BE42C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805BE430  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805BE434  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BE438  41 80 00 18 */	blt lbl_805BE450
/* 805BE43C  38 7F 27 D4 */	addi r3, r31, 0x27d4
/* 805BE440  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805BE444  C0 5E 03 78 */	lfs f2, 0x378(r30)
/* 805BE448  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 805BE44C  4B CB 15 F1 */	bl cLib_addCalc2__FPffff
lbl_805BE450:
/* 805BE450  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE454  38 80 00 01 */	li r4, 1
/* 805BE458  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BE45C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BE460  40 82 00 18 */	bne lbl_805BE478
/* 805BE464  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BE468  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE46C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE470  41 82 00 08 */	beq lbl_805BE478
/* 805BE474  38 80 00 00 */	li r4, 0
lbl_805BE478:
/* 805BE478  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE47C  41 82 02 80 */	beq lbl_805BE6FC
lbl_805BE480:
/* 805BE480  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE484  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805BE488  41 82 00 24 */	beq lbl_805BE4AC
/* 805BE48C  7F E3 FB 78 */	mr r3, r31
/* 805BE490  38 80 00 1F */	li r4, 0x1f
/* 805BE494  38 A0 00 02 */	li r5, 2
/* 805BE498  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BE49C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE4A0  4B FF CF 69 */	bl setBck__8daB_DR_cFiUcff
/* 805BE4A4  38 00 00 23 */	li r0, 0x23
/* 805BE4A8  90 1F 07 C0 */	stw r0, 0x7c0(r31)
lbl_805BE4AC:
/* 805BE4AC  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BE4B0  48 00 87 2D */	bl func_805C6BDC
/* 805BE4B4  2C 03 00 00 */	cmpwi r3, 0
/* 805BE4B8  40 82 02 44 */	bne lbl_805BE6FC
/* 805BE4BC  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE4C0  38 03 00 01 */	addi r0, r3, 1
/* 805BE4C4  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BE4C8:
/* 805BE4C8  38 61 00 48 */	addi r3, r1, 0x48
/* 805BE4CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805BE4D0  38 BF 07 6C */	addi r5, r31, 0x76c
/* 805BE4D4  4B CA 86 11 */	bl __pl__4cXyzCFRC3Vec
/* 805BE4D8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805BE4DC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805BE4E0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805BE4E4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805BE4E8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805BE4EC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805BE4F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BE4F4  7C 07 07 74 */	extsb r7, r0
/* 805BE4F8  38 00 00 00 */	li r0, 0
/* 805BE4FC  90 01 00 08 */	stw r0, 8(r1)
/* 805BE500  38 60 02 15 */	li r3, 0x215
/* 805BE504  28 1F 00 00 */	cmplwi r31, 0
/* 805BE508  41 82 00 0C */	beq lbl_805BE514
/* 805BE50C  80 9F 00 04 */	lwz r4, 4(r31)
/* 805BE510  48 00 00 08 */	b lbl_805BE518
lbl_805BE514:
/* 805BE514  38 80 FF FF */	li r4, -1
lbl_805BE518:
/* 805BE518  38 A0 00 01 */	li r5, 1
/* 805BE51C  38 C1 00 6C */	addi r6, r1, 0x6c
/* 805BE520  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 805BE524  39 20 00 00 */	li r9, 0
/* 805BE528  39 40 FF FF */	li r10, -1
/* 805BE52C  4B A5 B9 C5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805BE530  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 805BE534  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805BE538  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805BE53C  80 63 00 00 */	lwz r3, 0(r3)
/* 805BE540  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BE544  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008E@ha */
/* 805BE548  38 84 00 8E */	addi r4, r4, 0x008E /* 0x0100008E@l */
/* 805BE54C  4B CF 0F 51 */	bl subBgmStart__8Z2SeqMgrFUl
/* 805BE550  38 60 00 17 */	li r3, 0x17
/* 805BE554  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BE558  7C 04 07 74 */	extsb r4, r0
/* 805BE55C  4B A6 F3 F1 */	bl dComIfGs_onZoneSwitch__Fii
/* 805BE560  38 00 00 00 */	li r0, 0
/* 805BE564  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 805BE568  38 00 00 64 */	li r0, 0x64
/* 805BE56C  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 805BE570  38 00 03 E8 */	li r0, 0x3e8
/* 805BE574  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BE578  48 00 01 84 */	b lbl_805BE6FC
lbl_805BE57C:
/* 805BE57C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE580  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805BE584  40 82 01 78 */	bne lbl_805BE6FC
/* 805BE588  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BE58C  48 00 86 51 */	bl func_805C6BDC
/* 805BE590  2C 03 00 00 */	cmpwi r3, 0
/* 805BE594  40 82 01 68 */	bne lbl_805BE6FC
/* 805BE598  4B C3 BA F5 */	bl dMw_onPauseWindow__Fv
/* 805BE59C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805BE5A0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 805BE5A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE5A8  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 805BE5AC  7F E3 FB 78 */	mr r3, r31
/* 805BE5B0  38 80 00 41 */	li r4, 0x41
/* 805BE5B4  38 A0 00 00 */	li r5, 0
/* 805BE5B8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BE5BC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE5C0  4B FF CE 49 */	bl setBck__8daB_DR_cFiUcff
/* 805BE5C4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805BE5C8  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805BE5CC  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 805BE5D0  38 03 00 01 */	addi r0, r3, 1
/* 805BE5D4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BE5D8  48 00 01 24 */	b lbl_805BE6FC
lbl_805BE5DC:
/* 805BE5DC  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE5E0  2C 00 00 41 */	cmpwi r0, 0x41
/* 805BE5E4  40 82 00 68 */	bne lbl_805BE64C
/* 805BE5E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE5EC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805BE5F0  C0 1E 03 C0 */	lfs f0, 0x3c0(r30)
/* 805BE5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BE5F8  4C 41 13 82 */	cror 2, 1, 2
/* 805BE5FC  40 82 00 50 */	bne lbl_805BE64C
/* 805BE600  38 00 00 00 */	li r0, 0
/* 805BE604  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 805BE608  7F E3 FB 78 */	mr r3, r31
/* 805BE60C  38 80 00 01 */	li r4, 1
/* 805BE610  4B FF CF 31 */	bl mBoot_c_tranceSet__8daB_DR_cFb
/* 805BE614  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805BE618  28 00 00 02 */	cmplwi r0, 2
/* 805BE61C  41 82 00 14 */	beq lbl_805BE630
/* 805BE620  7F E3 FB 78 */	mr r3, r31
/* 805BE624  38 80 00 01 */	li r4, 1
/* 805BE628  4B FF E7 55 */	bl flapMove__8daB_DR_cFb
/* 805BE62C  48 00 00 20 */	b lbl_805BE64C
lbl_805BE630:
/* 805BE630  7F E3 FB 78 */	mr r3, r31
/* 805BE634  4B FF E8 71 */	bl revolutionMove__8daB_DR_cFv
/* 805BE638  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 805BE63C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805BE640  38 A0 00 08 */	li r5, 8
/* 805BE644  38 C0 04 00 */	li r6, 0x400
/* 805BE648  4B CB 1F C1 */	bl cLib_addCalcAngleS2__FPssss
lbl_805BE64C:
/* 805BE64C  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE650  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BE654  41 82 00 A8 */	beq lbl_805BE6FC
/* 805BE658  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE65C  38 80 00 01 */	li r4, 1
/* 805BE660  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BE664  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BE668  40 82 00 18 */	bne lbl_805BE680
/* 805BE66C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BE670  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BE674  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BE678  41 82 00 08 */	beq lbl_805BE680
/* 805BE67C  38 80 00 00 */	li r4, 0
lbl_805BE680:
/* 805BE680  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BE684  41 82 00 78 */	beq lbl_805BE6FC
/* 805BE688  4B C3 BA 05 */	bl dMw_onPauseWindow__Fv
/* 805BE68C  7F E3 FB 78 */	mr r3, r31
/* 805BE690  38 80 00 35 */	li r4, 0x35
/* 805BE694  38 A0 00 02 */	li r5, 2
/* 805BE698  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805BE69C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BE6A0  4B FF CD 69 */	bl setBck__8daB_DR_cFiUcff
/* 805BE6A4  7F E3 FB 78 */	mr r3, r31
/* 805BE6A8  4B FF E9 B5 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BE6AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BE6B0  41 82 00 18 */	beq lbl_805BE6C8
/* 805BE6B4  7F E3 FB 78 */	mr r3, r31
/* 805BE6B8  38 80 00 05 */	li r4, 5
/* 805BE6BC  38 A0 00 00 */	li r5, 0
/* 805BE6C0  4B FF CD F5 */	bl setActionMode__8daB_DR_cFii
/* 805BE6C4  48 00 00 38 */	b lbl_805BE6FC
lbl_805BE6C8:
/* 805BE6C8  7F E3 FB 78 */	mr r3, r31
/* 805BE6CC  38 80 00 07 */	li r4, 7
/* 805BE6D0  38 A0 00 00 */	li r5, 0
/* 805BE6D4  4B FF CD E1 */	bl setActionMode__8daB_DR_cFii
/* 805BE6D8  48 00 00 24 */	b lbl_805BE6FC
lbl_805BE6DC:
/* 805BE6DC  38 00 27 10 */	li r0, 0x2710
/* 805BE6E0  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BE6E4:
/* 805BE6E4  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 805BE6E8  48 00 84 F5 */	bl func_805C6BDC
/* 805BE6EC  2C 03 00 00 */	cmpwi r3, 0
/* 805BE6F0  40 82 00 0C */	bne lbl_805BE6FC
/* 805BE6F4  38 00 00 FE */	li r0, 0xfe
/* 805BE6F8  98 1F 07 EA */	stb r0, 0x7ea(r31)
lbl_805BE6FC:
/* 805BE6FC  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BE700  2C 00 00 0C */	cmpwi r0, 0xc
/* 805BE704  41 80 01 58 */	blt lbl_805BE85C
/* 805BE708  2C 00 00 0E */	cmpwi r0, 0xe
/* 805BE70C  41 81 01 50 */	bgt lbl_805BE85C
/* 805BE710  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE714  2C 00 00 13 */	cmpwi r0, 0x13
/* 805BE718  41 82 00 48 */	beq lbl_805BE760
/* 805BE71C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805BE720  41 82 00 40 */	beq lbl_805BE760
/* 805BE724  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 805BE728  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 805BE72C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 805BE730  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805BE734  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 805BE738  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805BE73C  C0 1E 03 C4 */	lfs f0, 0x3c4(r30)
/* 805BE740  EC 01 00 2A */	fadds f0, f1, f0
/* 805BE744  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805BE748  D0 5F 27 D0 */	stfs f2, 0x27d0(r31)
/* 805BE74C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805BE750  D0 1F 27 D4 */	stfs f0, 0x27d4(r31)
/* 805BE754  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805BE758  D0 1F 27 D8 */	stfs f0, 0x27d8(r31)
/* 805BE75C  48 00 00 38 */	b lbl_805BE794
lbl_805BE760:
/* 805BE760  C0 3E 03 C8 */	lfs f1, 0x3c8(r30)
/* 805BE764  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 805BE768  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BE76C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805BE770  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 805BE774  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BE778  38 81 00 6C */	addi r4, r1, 0x6c
/* 805BE77C  38 A0 80 00 */	li r5, -32768
/* 805BE780  38 C0 00 00 */	li r6, 0
/* 805BE784  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805BE788  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805BE78C  7D 89 03 A6 */	mtctr r12
/* 805BE790  4E 80 04 21 */	bctrl 
lbl_805BE794:
/* 805BE794  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805BE798  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805BE79C  80 63 00 00 */	lwz r3, 0(r3)
/* 805BE7A0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805BE7A4  38 04 F0 00 */	addi r0, r4, -4096
/* 805BE7A8  7C 04 07 34 */	extsh r4, r0
/* 805BE7AC  4B A4 DC 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 805BE7B0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BE7B4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805BE7B8  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805BE7BC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805BE7C0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805BE7C4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805BE7C8  38 61 00 78 */	addi r3, r1, 0x78
/* 805BE7CC  38 81 00 6C */	addi r4, r1, 0x6c
/* 805BE7D0  4B CB 27 1D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805BE7D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805BE7D8  38 81 00 6C */	addi r4, r1, 0x6c
/* 805BE7DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805BE7E0  4B CA 83 05 */	bl __pl__4cXyzCFRC3Vec
/* 805BE7E4  38 61 00 30 */	addi r3, r1, 0x30
/* 805BE7E8  38 81 00 3C */	addi r4, r1, 0x3c
/* 805BE7EC  38 BF 07 6C */	addi r5, r31, 0x76c
/* 805BE7F0  4B CA 82 F5 */	bl __pl__4cXyzCFRC3Vec
/* 805BE7F4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805BE7F8  D0 1F 27 C4 */	stfs f0, 0x27c4(r31)
/* 805BE7FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805BE800  D0 1F 27 C8 */	stfs f0, 0x27c8(r31)
/* 805BE804  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805BE808  D0 1F 27 CC */	stfs f0, 0x27cc(r31)
/* 805BE80C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BE810  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805BE814  64 00 02 00 */	oris r0, r0, 0x200
/* 805BE818  90 03 05 88 */	stw r0, 0x588(r3)
/* 805BE81C  C0 1F 27 D0 */	lfs f0, 0x27d0(r31)
/* 805BE820  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BE824  C0 1F 27 D4 */	lfs f0, 0x27d4(r31)
/* 805BE828  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BE82C  C0 1F 27 D8 */	lfs f0, 0x27d8(r31)
/* 805BE830  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805BE834  C0 1F 27 C4 */	lfs f0, 0x27c4(r31)
/* 805BE838  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BE83C  C0 1F 27 C8 */	lfs f0, 0x27c8(r31)
/* 805BE840  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BE844  C0 1F 27 CC */	lfs f0, 0x27cc(r31)
/* 805BE848  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BE84C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805BE850  38 81 00 24 */	addi r4, r1, 0x24
/* 805BE854  38 A1 00 18 */	addi r5, r1, 0x18
/* 805BE858  4B BC 22 51 */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_805BE85C:
/* 805BE85C  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BE860  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 805BE864  41 82 00 90 */	beq lbl_805BE8F4
/* 805BE868  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 805BE86C  2C 00 00 13 */	cmpwi r0, 0x13
/* 805BE870  40 82 00 84 */	bne lbl_805BE8F4
/* 805BE874  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE878  38 63 00 0C */	addi r3, r3, 0xc
/* 805BE87C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 805BE880  4B D6 9B AD */	bl checkPass__12J3DFrameCtrlFf
/* 805BE884  2C 03 00 00 */	cmpwi r3, 0
/* 805BE888  41 82 00 38 */	beq lbl_805BE8C0
/* 805BE88C  38 00 00 00 */	li r0, 0
/* 805BE890  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 805BE894  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E0@ha */
/* 805BE898  38 03 04 E0 */	addi r0, r3, 0x04E0 /* 0x000704E0@l */
/* 805BE89C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BE8A0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805BE8A4  38 81 00 10 */	addi r4, r1, 0x10
/* 805BE8A8  38 A0 00 00 */	li r5, 0
/* 805BE8AC  38 C0 FF FF */	li r6, -1
/* 805BE8B0  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805BE8B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805BE8B8  7D 89 03 A6 */	mtctr r12
/* 805BE8BC  4E 80 04 21 */	bctrl 
lbl_805BE8C0:
/* 805BE8C0  7F E3 FB 78 */	mr r3, r31
/* 805BE8C4  38 80 00 00 */	li r4, 0
/* 805BE8C8  4B FF CC 79 */	bl mBoot_c_tranceSet__8daB_DR_cFb
/* 805BE8CC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BE8D0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BE8D4  FC 00 00 1E */	fctiwz f0, f0
/* 805BE8D8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805BE8DC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805BE8E0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805BE8E4  41 80 00 10 */	blt lbl_805BE8F4
/* 805BE8E8  7F E3 FB 78 */	mr r3, r31
/* 805BE8EC  38 80 00 00 */	li r4, 0
/* 805BE8F0  4B FF D7 C9 */	bl chkPartCreate__8daB_DR_cFb
lbl_805BE8F4:
/* 805BE8F4  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BE8F8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805BE8FC  41 80 00 34 */	blt lbl_805BE930
/* 805BE900  2C 00 00 0B */	cmpwi r0, 0xb
/* 805BE904  41 81 00 2C */	bgt lbl_805BE930
/* 805BE908  7F E3 FB 78 */	mr r3, r31
/* 805BE90C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 805BE910  4B A5 BE 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BE914  7C 64 1B 78 */	mr r4, r3
/* 805BE918  38 7F 04 DE */	addi r3, r31, 0x4de
/* 805BE91C  38 A0 00 28 */	li r5, 0x28
/* 805BE920  38 C0 02 00 */	li r6, 0x200
/* 805BE924  4B CB 1C E5 */	bl cLib_addCalcAngleS2__FPssss
/* 805BE928  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805BE92C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_805BE930:
/* 805BE930  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BE934  2C 00 00 0B */	cmpwi r0, 0xb
/* 805BE938  41 81 00 64 */	bgt lbl_805BE99C
/* 805BE93C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805BE940  4B A4 E4 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805BE944  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805BE948  4B A4 E5 FD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805BE94C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805BE950  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805BE954  7C 64 1B 78 */	mr r4, r3
/* 805BE958  4B D8 7C 59 */	bl PSMTXInverse
/* 805BE95C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805BE960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805BE964  38 9F 05 38 */	addi r4, r31, 0x538
/* 805BE968  38 A1 00 60 */	addi r5, r1, 0x60
/* 805BE96C  4B D8 84 01 */	bl PSMTXMultVec
/* 805BE970  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BE974  28 1F 00 00 */	cmplwi r31, 0
/* 805BE978  41 82 00 0C */	beq lbl_805BE984
/* 805BE97C  80 9F 00 04 */	lwz r4, 4(r31)
/* 805BE980  48 00 00 08 */	b lbl_805BE988
lbl_805BE984:
/* 805BE984  38 80 FF FF */	li r4, -1
lbl_805BE988:
/* 805BE988  38 A1 00 60 */	addi r5, r1, 0x60
/* 805BE98C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805BE990  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 805BE994  7D 89 03 A6 */	mtctr r12
/* 805BE998  4E 80 04 21 */	bctrl 
lbl_805BE99C:
/* 805BE99C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805BE9A0  4B DA 38 81 */	bl _restgpr_27
/* 805BE9A4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805BE9A8  7C 08 03 A6 */	mtlr r0
/* 805BE9AC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805BE9B0  4E 80 00 20 */	blr 
