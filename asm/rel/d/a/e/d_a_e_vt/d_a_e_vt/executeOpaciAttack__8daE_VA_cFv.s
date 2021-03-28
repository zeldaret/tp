lbl_807CA364:
/* 807CA364  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807CA368  7C 08 02 A6 */	mflr r0
/* 807CA36C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807CA370  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807CA374  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807CA378  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807CA37C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807CA380  7C 7E 1B 78 */	mr r30, r3
/* 807CA384  3C 80 80 7D */	lis r4, lit_3907@ha
/* 807CA388  3B E4 EC A8 */	addi r31, r4, lit_3907@l
/* 807CA38C  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 807CA390  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 807CA394  80 03 1C C8 */	lwz r0, 0x1cc8(r3)
/* 807CA398  60 00 00 01 */	ori r0, r0, 1
/* 807CA39C  90 03 1C C8 */	stw r0, 0x1cc8(r3)
/* 807CA3A0  80 03 1E 04 */	lwz r0, 0x1e04(r3)
/* 807CA3A4  60 00 00 01 */	ori r0, r0, 1
/* 807CA3A8  90 03 1E 04 */	stw r0, 0x1e04(r3)
/* 807CA3AC  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807CA3B0  2C 00 00 01 */	cmpwi r0, 1
/* 807CA3B4  41 82 00 98 */	beq lbl_807CA44C
/* 807CA3B8  40 80 00 10 */	bge lbl_807CA3C8
/* 807CA3BC  2C 00 00 00 */	cmpwi r0, 0
/* 807CA3C0  40 80 00 14 */	bge lbl_807CA3D4
/* 807CA3C4  48 00 03 58 */	b lbl_807CA71C
lbl_807CA3C8:
/* 807CA3C8  2C 00 00 03 */	cmpwi r0, 3
/* 807CA3CC  40 80 03 50 */	bge lbl_807CA71C
/* 807CA3D0  48 00 02 40 */	b lbl_807CA610
lbl_807CA3D4:
/* 807CA3D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CA3D8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CA3DC  38 80 00 12 */	li r4, 0x12
/* 807CA3E0  38 A0 00 00 */	li r5, 0
/* 807CA3E4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807CA3E8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CA3EC  4B FF 94 2D */	bl setBck__8daE_VA_cFiUcff
/* 807CA3F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033F@ha */
/* 807CA3F4  38 03 03 3F */	addi r0, r3, 0x033F /* 0x0007033F@l */
/* 807CA3F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 807CA3FC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA400  38 81 00 20 */	addi r4, r1, 0x20
/* 807CA404  38 A0 00 00 */	li r5, 0
/* 807CA408  38 C0 FF FF */	li r6, -1
/* 807CA40C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA410  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CA414  7D 89 03 A6 */	mtctr r12
/* 807CA418  4E 80 04 21 */	bctrl 
/* 807CA41C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032B@ha */
/* 807CA420  38 03 03 2B */	addi r0, r3, 0x032B /* 0x0007032B@l */
/* 807CA424  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807CA428  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA42C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807CA430  38 A0 FF FF */	li r5, -1
/* 807CA434  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA438  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CA43C  7D 89 03 A6 */	mtctr r12
/* 807CA440  4E 80 04 21 */	bctrl 
/* 807CA444  38 00 00 01 */	li r0, 1
/* 807CA448  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807CA44C:
/* 807CA44C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA450  38 63 00 0C */	addi r3, r3, 0xc
/* 807CA454  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 807CA458  4B B5 DF D4 */	b checkPass__12J3DFrameCtrlFf
/* 807CA45C  2C 03 00 00 */	cmpwi r3, 0
/* 807CA460  41 82 00 30 */	beq lbl_807CA490
/* 807CA464  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033B@ha */
/* 807CA468  38 03 03 3B */	addi r0, r3, 0x033B /* 0x0007033B@l */
/* 807CA46C  90 01 00 18 */	stw r0, 0x18(r1)
/* 807CA470  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA474  38 81 00 18 */	addi r4, r1, 0x18
/* 807CA478  38 A0 00 00 */	li r5, 0
/* 807CA47C  38 C0 FF FF */	li r6, -1
/* 807CA480  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA484  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CA488  7D 89 03 A6 */	mtctr r12
/* 807CA48C  4E 80 04 21 */	bctrl 
lbl_807CA490:
/* 807CA490  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA494  38 63 00 0C */	addi r3, r3, 0xc
/* 807CA498  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 807CA49C  4B B5 DF 90 */	b checkPass__12J3DFrameCtrlFf
/* 807CA4A0  2C 03 00 00 */	cmpwi r3, 0
/* 807CA4A4  41 82 00 68 */	beq lbl_807CA50C
/* 807CA4A8  7F C3 F3 78 */	mr r3, r30
/* 807CA4AC  4B FF AA 65 */	bl setWeponLandEffect__8daE_VA_cFv
/* 807CA4B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033A@ha */
/* 807CA4B4  38 03 03 3A */	addi r0, r3, 0x033A /* 0x0007033A@l */
/* 807CA4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CA4BC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA4C0  38 81 00 14 */	addi r4, r1, 0x14
/* 807CA4C4  38 A0 00 00 */	li r5, 0
/* 807CA4C8  38 C0 FF FF */	li r6, -1
/* 807CA4CC  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA4D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CA4D4  7D 89 03 A6 */	mtctr r12
/* 807CA4D8  4E 80 04 21 */	bctrl 
/* 807CA4DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CA4E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807CA4E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807CA4E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CA4EC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807CA4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807CA4F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807CA4F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807CA4FC  38 80 00 05 */	li r4, 5
/* 807CA500  38 A0 00 1F */	li r5, 0x1f
/* 807CA504  38 C1 00 24 */	addi r6, r1, 0x24
/* 807CA508  4B 8A 55 1C */	b StartShock__12dVibration_cFii4cXyz
lbl_807CA50C:
/* 807CA50C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 807CA510  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807CA514  40 80 00 38 */	bge lbl_807CA54C
/* 807CA518  7F C3 F3 78 */	mr r3, r30
/* 807CA51C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807CA520  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807CA524  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807CA528  4B 85 01 E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807CA52C  7C 64 1B 78 */	mr r4, r3
/* 807CA530  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807CA534  38 A0 00 08 */	li r5, 8
/* 807CA538  38 C0 08 00 */	li r6, 0x800
/* 807CA53C  38 E0 00 80 */	li r7, 0x80
/* 807CA540  4B AA 60 00 */	b cLib_addCalcAngleS__FPsssss
/* 807CA544  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807CA548  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807CA54C:
/* 807CA54C  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807CA550  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 807CA554  4C 40 13 82 */	cror 2, 0, 2
/* 807CA558  40 82 00 20 */	bne lbl_807CA578
/* 807CA55C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 807CA560  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807CA564  4C 40 13 82 */	cror 2, 0, 2
/* 807CA568  40 82 00 10 */	bne lbl_807CA578
/* 807CA56C  7F C3 F3 78 */	mr r3, r30
/* 807CA570  4B FF 94 AD */	bl onSwordAtBit__8daE_VA_cFv
/* 807CA574  48 00 00 20 */	b lbl_807CA594
lbl_807CA578:
/* 807CA578  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 807CA57C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807CA580  40 81 00 14 */	ble lbl_807CA594
/* 807CA584  7F C3 F3 78 */	mr r3, r30
/* 807CA588  4B FF 94 C9 */	bl offSwordShield__8daE_VA_cFv
/* 807CA58C  38 00 00 01 */	li r0, 1
/* 807CA590  98 1E 13 86 */	stb r0, 0x1386(r30)
lbl_807CA594:
/* 807CA594  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA598  38 80 00 01 */	li r4, 1
/* 807CA59C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CA5A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CA5A4  40 82 00 18 */	bne lbl_807CA5BC
/* 807CA5A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CA5AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CA5B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CA5B4  41 82 00 08 */	beq lbl_807CA5BC
/* 807CA5B8  38 80 00 00 */	li r4, 0
lbl_807CA5BC:
/* 807CA5BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CA5C0  41 82 01 5C */	beq lbl_807CA71C
/* 807CA5C4  7F C3 F3 78 */	mr r3, r30
/* 807CA5C8  38 80 00 13 */	li r4, 0x13
/* 807CA5CC  38 A0 00 00 */	li r5, 0
/* 807CA5D0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CA5D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CA5D8  4B FF 92 41 */	bl setBck__8daE_VA_cFiUcff
/* 807CA5DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807CA5E0  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807CA5E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CA5E8  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA5EC  38 81 00 10 */	addi r4, r1, 0x10
/* 807CA5F0  38 A0 FF FF */	li r5, -1
/* 807CA5F4  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA5F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CA5FC  7D 89 03 A6 */	mtctr r12
/* 807CA600  4E 80 04 21 */	bctrl 
/* 807CA604  38 00 00 02 */	li r0, 2
/* 807CA608  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CA60C  48 00 01 10 */	b lbl_807CA71C
lbl_807CA610:
/* 807CA610  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA614  38 63 00 0C */	addi r3, r3, 0xc
/* 807CA618  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 807CA61C  4B B5 DE 10 */	b checkPass__12J3DFrameCtrlFf
/* 807CA620  2C 03 00 00 */	cmpwi r3, 0
/* 807CA624  41 82 00 58 */	beq lbl_807CA67C
/* 807CA628  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807CA62C  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807CA630  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CA634  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA638  38 81 00 0C */	addi r4, r1, 0xc
/* 807CA63C  38 A0 FF FF */	li r5, -1
/* 807CA640  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA644  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CA648  7D 89 03 A6 */	mtctr r12
/* 807CA64C  4E 80 04 21 */	bctrl 
/* 807CA650  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033D@ha */
/* 807CA654  38 03 03 3D */	addi r0, r3, 0x033D /* 0x0007033D@l */
/* 807CA658  90 01 00 08 */	stw r0, 8(r1)
/* 807CA65C  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807CA660  38 81 00 08 */	addi r4, r1, 8
/* 807CA664  38 A0 00 00 */	li r5, 0
/* 807CA668  38 C0 FF FF */	li r6, -1
/* 807CA66C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807CA670  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CA674  7D 89 03 A6 */	mtctr r12
/* 807CA678  4E 80 04 21 */	bctrl 
lbl_807CA67C:
/* 807CA67C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA680  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807CA684  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 807CA688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA68C  4C 40 13 82 */	cror 2, 0, 2
/* 807CA690  40 82 00 14 */	bne lbl_807CA6A4
/* 807CA694  7F C3 F3 78 */	mr r3, r30
/* 807CA698  4B FF 93 B9 */	bl offSwordShield__8daE_VA_cFv
/* 807CA69C  38 00 00 01 */	li r0, 1
/* 807CA6A0  98 1E 13 86 */	stb r0, 0x1386(r30)
lbl_807CA6A4:
/* 807CA6A4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CA6A8  38 80 00 01 */	li r4, 1
/* 807CA6AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CA6B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CA6B4  40 82 00 18 */	bne lbl_807CA6CC
/* 807CA6B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CA6BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CA6C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CA6C4  41 82 00 08 */	beq lbl_807CA6CC
/* 807CA6C8  38 80 00 00 */	li r4, 0
lbl_807CA6CC:
/* 807CA6CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CA6D0  41 82 00 4C */	beq lbl_807CA71C
/* 807CA6D4  80 1E 13 4C */	lwz r0, 0x134c(r30)
/* 807CA6D8  2C 00 00 00 */	cmpwi r0, 0
/* 807CA6DC  40 82 00 30 */	bne lbl_807CA70C
/* 807CA6E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807CA6E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807CA6E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807CA6EC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807CA6F0  38 80 00 01 */	li r4, 1
/* 807CA6F4  4B AE 77 00 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 807CA6F8  7F C3 F3 78 */	mr r3, r30
/* 807CA6FC  38 80 00 13 */	li r4, 0x13
/* 807CA700  38 A0 00 01 */	li r5, 1
/* 807CA704  4B FF 92 15 */	bl setActionMode__8daE_VA_cFii
/* 807CA708  48 00 00 14 */	b lbl_807CA71C
lbl_807CA70C:
/* 807CA70C  7F C3 F3 78 */	mr r3, r30
/* 807CA710  38 80 00 0C */	li r4, 0xc
/* 807CA714  38 A0 00 00 */	li r5, 0
/* 807CA718  4B FF 92 01 */	bl setActionMode__8daE_VA_cFii
lbl_807CA71C:
/* 807CA71C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807CA720  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807CA724  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807CA728  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807CA72C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807CA730  7C 08 03 A6 */	mtlr r0
/* 807CA734  38 21 00 50 */	addi r1, r1, 0x50
/* 807CA738  4E 80 00 20 */	blr 
