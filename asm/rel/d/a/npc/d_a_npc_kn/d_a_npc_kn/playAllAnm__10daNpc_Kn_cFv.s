lbl_80A3917C:
/* 80A3917C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A39180  7C 08 02 A6 */	mflr r0
/* 80A39184  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A39188  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A3918C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A39190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A39194  7C 7F 1B 78 */	mr r31, r3
/* 80A39198  80 63 0D CC */	lwz r3, 0xdcc(r3)
/* 80A3919C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80A391A0  40 82 00 FC */	bne lbl_80A3929C
/* 80A391A4  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80A391A8  41 82 00 4C */	beq lbl_80A391F4
/* 80A391AC  C3 FF 06 60 */	lfs f31, 0x660(r31)
/* 80A391B0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80A391B4  41 82 00 10 */	beq lbl_80A391C4
/* 80A391B8  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A391BC  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A391C0  D0 1F 06 60 */	stfs f0, 0x660(r31)
lbl_80A391C4:
/* 80A391C4  38 7F 06 54 */	addi r3, r31, 0x654
/* 80A391C8  4B 5D 42 61 */	bl play__14mDoExt_baseAnmFv
/* 80A391CC  7F E3 FB 78 */	mr r3, r31
/* 80A391D0  38 9F 06 54 */	addi r4, r31, 0x654
/* 80A391D4  FC 20 F8 90 */	fmr f1, f31
/* 80A391D8  4B FF FF 21 */	bl checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf
/* 80A391DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A391E0  41 82 00 10 */	beq lbl_80A391F0
/* 80A391E4  A0 7F 0E 28 */	lhz r3, 0xe28(r31)
/* 80A391E8  38 03 00 01 */	addi r0, r3, 1
/* 80A391EC  B0 1F 0E 28 */	sth r0, 0xe28(r31)
lbl_80A391F0:
/* 80A391F0  D3 FF 06 60 */	stfs f31, 0x660(r31)
lbl_80A391F4:
/* 80A391F4  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A391F8  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80A391FC  41 82 00 A0 */	beq lbl_80A3929C
/* 80A39200  C3 FF 06 7C */	lfs f31, 0x67c(r31)
/* 80A39204  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80A39208  41 82 00 2C */	beq lbl_80A39234
/* 80A3920C  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A39210  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A39214  D0 1F 06 7C */	stfs f0, 0x67c(r31)
/* 80A39218  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A3921C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A39220  41 82 00 14 */	beq lbl_80A39234
/* 80A39224  38 60 00 5A */	li r3, 0x5a
/* 80A39228  38 80 00 5A */	li r4, 0x5a
/* 80A3922C  48 00 2B BD */	bl func_80A3BDE8
/* 80A39230  90 7F 0D E8 */	stw r3, 0xde8(r31)
lbl_80A39234:
/* 80A39234  38 7F 0D E8 */	addi r3, r31, 0xde8
/* 80A39238  48 00 2B 11 */	bl func_80A3BD48
/* 80A3923C  2C 03 00 00 */	cmpwi r3, 0
/* 80A39240  41 82 00 10 */	beq lbl_80A39250
/* 80A39244  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A39248  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A3924C  D0 1F 06 7C */	stfs f0, 0x67c(r31)
lbl_80A39250:
/* 80A39250  38 7F 06 70 */	addi r3, r31, 0x670
/* 80A39254  4B 5D 41 D5 */	bl play__14mDoExt_baseAnmFv
/* 80A39258  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A3925C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A39260  41 82 00 30 */	beq lbl_80A39290
/* 80A39264  7F E3 FB 78 */	mr r3, r31
/* 80A39268  38 9F 06 70 */	addi r4, r31, 0x670
/* 80A3926C  C0 3F 06 7C */	lfs f1, 0x67c(r31)
/* 80A39270  4B FF FE 89 */	bl checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf
/* 80A39274  2C 03 00 00 */	cmpwi r3, 0
/* 80A39278  41 82 00 20 */	beq lbl_80A39298
/* 80A3927C  38 60 00 5A */	li r3, 0x5a
/* 80A39280  38 80 00 5A */	li r4, 0x5a
/* 80A39284  48 00 2B 65 */	bl func_80A3BDE8
/* 80A39288  90 7F 0D E8 */	stw r3, 0xde8(r31)
/* 80A3928C  48 00 00 0C */	b lbl_80A39298
lbl_80A39290:
/* 80A39290  38 00 00 00 */	li r0, 0
/* 80A39294  90 1F 0D E8 */	stw r0, 0xde8(r31)
lbl_80A39298:
/* 80A39298  D3 FF 06 7C */	stfs f31, 0x67c(r31)
lbl_80A3929C:
/* 80A3929C  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A392A0  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80A392A4  41 82 00 E8 */	beq lbl_80A3938C
/* 80A392A8  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80A392AC  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 80A392B0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80A392B4  41 82 00 74 */	beq lbl_80A39328
/* 80A392B8  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A392BC  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A392C0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80A392C4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A392C8  7C 03 07 74 */	extsb r3, r0
/* 80A392CC  4B 5F 3D A1 */	bl dComIfGp_getReverb__Fi
/* 80A392D0  7C 65 1B 78 */	mr r5, r3
/* 80A392D4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A392D8  38 80 00 00 */	li r4, 0
/* 80A392DC  4B 5D 7D D5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80A392E0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A392E4  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80A392E8  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80A392EC  28 04 00 00 */	cmplwi r4, 0
/* 80A392F0  41 82 00 9C */	beq lbl_80A3938C
/* 80A392F4  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A392F8  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A392FC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80A39300  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A39304  7C 03 07 74 */	extsb r3, r0
/* 80A39308  4B 5F 3D 65 */	bl dComIfGp_getReverb__Fi
/* 80A3930C  7C 65 1B 78 */	mr r5, r3
/* 80A39310  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39314  38 80 00 00 */	li r4, 0
/* 80A39318  4B 5D 7D 99 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80A3931C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39320  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 80A39324  48 00 00 68 */	b lbl_80A3938C
lbl_80A39328:
/* 80A39328  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A3932C  7C 03 07 74 */	extsb r3, r0
/* 80A39330  4B 5F 3D 3D */	bl dComIfGp_getReverb__Fi
/* 80A39334  7C 65 1B 78 */	mr r5, r3
/* 80A39338  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A3933C  38 80 00 00 */	li r4, 0
/* 80A39340  4B 5D 7D 71 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80A39344  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80A39348  28 00 00 00 */	cmplwi r0, 0
/* 80A3934C  41 82 00 20 */	beq lbl_80A3936C
/* 80A39350  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A39354  7C 03 07 74 */	extsb r3, r0
/* 80A39358  4B 5F 3D 15 */	bl dComIfGp_getReverb__Fi
/* 80A3935C  7C 65 1B 78 */	mr r5, r3
/* 80A39360  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A39364  38 80 00 00 */	li r4, 0
/* 80A39368  4B 5D 7D 49 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80A3936C:
/* 80A3936C  7F E3 FB 78 */	mr r3, r31
/* 80A39370  FC 20 F8 90 */	fmr f1, f31
/* 80A39374  4B FF FC D9 */	bl checkEndAnm__10daNpc_Kn_cFf
/* 80A39378  2C 03 00 00 */	cmpwi r3, 0
/* 80A3937C  41 82 00 10 */	beq lbl_80A3938C
/* 80A39380  A0 7F 0E 26 */	lhz r3, 0xe26(r31)
/* 80A39384  38 03 00 01 */	addi r0, r3, 1
/* 80A39388  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80A3938C:
/* 80A3938C  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A39390  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80A39394  41 82 00 3C */	beq lbl_80A393D0
/* 80A39398  C3 FF 06 94 */	lfs f31, 0x694(r31)
/* 80A3939C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80A393A0  41 82 00 10 */	beq lbl_80A393B0
/* 80A393A4  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A393A8  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A393AC  D0 1F 06 94 */	stfs f0, 0x694(r31)
lbl_80A393B0:
/* 80A393B0  7F E3 FB 78 */	mr r3, r31
/* 80A393B4  81 9F 0E 40 */	lwz r12, 0xe40(r31)
/* 80A393B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A393BC  7D 89 03 A6 */	mtctr r12
/* 80A393C0  4E 80 04 21 */	bctrl 
/* 80A393C4  38 7F 06 88 */	addi r3, r31, 0x688
/* 80A393C8  4B 5D 40 61 */	bl play__14mDoExt_baseAnmFv
/* 80A393CC  D3 FF 06 94 */	stfs f31, 0x694(r31)
lbl_80A393D0:
/* 80A393D0  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A393D4  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80A393D8  41 82 00 28 */	beq lbl_80A39400
/* 80A393DC  C3 FF 06 AC */	lfs f31, 0x6ac(r31)
/* 80A393E0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80A393E4  41 82 00 10 */	beq lbl_80A393F4
/* 80A393E8  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A393EC  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A393F0  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
lbl_80A393F4:
/* 80A393F4  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 80A393F8  4B 5D 40 31 */	bl play__14mDoExt_baseAnmFv
/* 80A393FC  D3 FF 06 AC */	stfs f31, 0x6ac(r31)
lbl_80A39400:
/* 80A39400  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A39404  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80A39408  41 82 00 28 */	beq lbl_80A39430
/* 80A3940C  C3 FF 06 C4 */	lfs f31, 0x6c4(r31)
/* 80A39410  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80A39414  41 82 00 10 */	beq lbl_80A39424
/* 80A39418  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A3941C  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A39420  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
lbl_80A39424:
/* 80A39424  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 80A39428  4B 5D 40 01 */	bl play__14mDoExt_baseAnmFv
/* 80A3942C  D3 FF 06 C4 */	stfs f31, 0x6c4(r31)
lbl_80A39430:
/* 80A39430  80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 80A39434  38 00 BF C0 */	li r0, -16448
/* 80A39438  7C 60 00 38 */	and r0, r3, r0
/* 80A3943C  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A39440  80 7F 15 A4 */	lwz r3, 0x15a4(r31)
/* 80A39444  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80A39448  41 82 00 28 */	beq lbl_80A39470
/* 80A3944C  C3 FF 15 94 */	lfs f31, 0x1594(r31)
/* 80A39450  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80A39454  41 82 00 10 */	beq lbl_80A39464
/* 80A39458  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A3945C  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A39460  D0 1F 15 94 */	stfs f0, 0x1594(r31)
lbl_80A39464:
/* 80A39464  38 7F 15 88 */	addi r3, r31, 0x1588
/* 80A39468  4B 5D 3F C1 */	bl play__14mDoExt_baseAnmFv
/* 80A3946C  D3 FF 15 94 */	stfs f31, 0x1594(r31)
lbl_80A39470:
/* 80A39470  80 7F 15 A4 */	lwz r3, 0x15a4(r31)
/* 80A39474  38 00 BF C0 */	li r0, -16448
/* 80A39478  7C 60 00 38 */	and r0, r3, r0
/* 80A3947C  90 1F 15 A4 */	stw r0, 0x15a4(r31)
/* 80A39480  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A39484  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A39488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3948C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A39490  7C 08 03 A6 */	mtlr r0
/* 80A39494  38 21 00 20 */	addi r1, r1, 0x20
/* 80A39498  4E 80 00 20 */	blr 
