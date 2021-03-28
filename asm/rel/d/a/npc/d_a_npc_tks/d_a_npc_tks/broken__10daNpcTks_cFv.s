lbl_80B181EC:
/* 80B181EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B181F0  7C 08 02 A6 */	mflr r0
/* 80B181F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B181F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B181FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B18200  7C 7E 1B 78 */	mr r30, r3
/* 80B18204  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B18208  3B E4 DD 58 */	addi r31, r4, m__16daNpcTks_Param_c@l
/* 80B1820C  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B18210  2C 00 00 02 */	cmpwi r0, 2
/* 80B18214  41 82 00 D0 */	beq lbl_80B182E4
/* 80B18218  40 80 01 B8 */	bge lbl_80B183D0
/* 80B1821C  2C 00 00 00 */	cmpwi r0, 0
/* 80B18220  41 82 00 0C */	beq lbl_80B1822C
/* 80B18224  48 00 01 AC */	b lbl_80B183D0
/* 80B18228  48 00 01 A8 */	b lbl_80B183D0
lbl_80B1822C:
/* 80B1822C  38 80 00 0B */	li r4, 0xb
/* 80B18230  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B18234  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B18238  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B1823C  7D 89 03 A6 */	mtctr r12
/* 80B18240  4E 80 04 21 */	bctrl 
/* 80B18244  88 1E 11 5F */	lbz r0, 0x115f(r30)
/* 80B18248  28 00 00 00 */	cmplwi r0, 0
/* 80B1824C  41 82 00 10 */	beq lbl_80B1825C
/* 80B18250  7F C3 F3 78 */	mr r3, r30
/* 80B18254  4B 51 EF BC */	b make_eff_break_kotubo2__5daObjFP10fopAc_ac_c
/* 80B18258  48 00 00 0C */	b lbl_80B18264
lbl_80B1825C:
/* 80B1825C  7F C3 F3 78 */	mr r3, r30
/* 80B18260  4B 51 EF 20 */	b make_eff_break_kotubo__5daObjFP10fopAc_ac_c
lbl_80B18264:
/* 80B18264  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002E@ha */
/* 80B18268  38 03 00 2E */	addi r0, r3, 0x002E /* 0x0005002E@l */
/* 80B1826C  90 01 00 08 */	stw r0, 8(r1)
/* 80B18270  38 7E 0F 64 */	addi r3, r30, 0xf64
/* 80B18274  38 81 00 08 */	addi r4, r1, 8
/* 80B18278  38 A0 00 00 */	li r5, 0
/* 80B1827C  38 C0 FF FF */	li r6, -1
/* 80B18280  81 9E 0F 64 */	lwz r12, 0xf64(r30)
/* 80B18284  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B18288  7D 89 03 A6 */	mtctr r12
/* 80B1828C  4E 80 04 21 */	bctrl 
/* 80B18290  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80B18294  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B18298  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B1829C  38 00 00 00 */	li r0, 0
/* 80B182A0  98 1E 13 8A */	stb r0, 0x138a(r30)
/* 80B182A4  98 1E 11 5E */	stb r0, 0x115e(r30)
/* 80B182A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B182AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B182B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B182B4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B182B8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B182BC  7C 05 07 74 */	extsb r5, r0
/* 80B182C0  4B 51 CF 40 */	b onSwitch__10dSv_info_cFii
/* 80B182C4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B182C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B182CC  38 7F 00 00 */	addi r3, r31, 0
/* 80B182D0  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B182D4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B182D8  38 00 00 02 */	li r0, 2
/* 80B182DC  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B182E0  48 00 00 F0 */	b lbl_80B183D0
lbl_80B182E4:
/* 80B182E4  80 9E 05 FC */	lwz r4, 0x5fc(r30)
/* 80B182E8  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 80B182EC  41 82 00 24 */	beq lbl_80B18310
/* 80B182F0  38 80 00 06 */	li r4, 6
/* 80B182F4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B182F8  38 A0 00 00 */	li r5, 0
/* 80B182FC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B18300  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18304  7D 89 03 A6 */	mtctr r12
/* 80B18308  4E 80 04 21 */	bctrl 
/* 80B1830C  48 00 00 C4 */	b lbl_80B183D0
lbl_80B18310:
/* 80B18310  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80B18314  41 82 00 BC */	beq lbl_80B183D0
/* 80B18318  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B1831C  38 80 00 01 */	li r4, 1
/* 80B18320  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B18324  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B18328  40 82 00 18 */	bne lbl_80B18340
/* 80B1832C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B18330  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B18334  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B18338  41 82 00 08 */	beq lbl_80B18340
/* 80B1833C  38 80 00 00 */	li r4, 0
lbl_80B18340:
/* 80B18340  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B18344  41 82 00 8C */	beq lbl_80B183D0
/* 80B18348  3C 60 80 B2 */	lis r3, lit_5775@ha
/* 80B1834C  38 83 E3 E4 */	addi r4, r3, lit_5775@l
/* 80B18350  80 64 00 00 */	lwz r3, 0(r4)
/* 80B18354  80 04 00 04 */	lwz r0, 4(r4)
/* 80B18358  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B1835C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B18360  80 04 00 08 */	lwz r0, 8(r4)
/* 80B18364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B18368  38 00 00 03 */	li r0, 3
/* 80B1836C  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B18370  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B18374  4B 84 9C A4 */	b __ptmf_test
/* 80B18378  2C 03 00 00 */	cmpwi r3, 0
/* 80B1837C  41 82 00 14 */	beq lbl_80B18390
/* 80B18380  7F C3 F3 78 */	mr r3, r30
/* 80B18384  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B18388  4B 84 9C FC */	b __ptmf_scall
/* 80B1838C  60 00 00 00 */	nop 
lbl_80B18390:
/* 80B18390  38 00 00 00 */	li r0, 0
/* 80B18394  B0 1E 13 88 */	sth r0, 0x1388(r30)
/* 80B18398  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80B1839C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B183A0  90 7E 13 4C */	stw r3, 0x134c(r30)
/* 80B183A4  90 1E 13 50 */	stw r0, 0x1350(r30)
/* 80B183A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B183AC  90 1E 13 54 */	stw r0, 0x1354(r30)
/* 80B183B0  38 7E 13 4C */	addi r3, r30, 0x134c
/* 80B183B4  4B 84 9C 64 */	b __ptmf_test
/* 80B183B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B183BC  41 82 00 14 */	beq lbl_80B183D0
/* 80B183C0  7F C3 F3 78 */	mr r3, r30
/* 80B183C4  39 9E 13 4C */	addi r12, r30, 0x134c
/* 80B183C8  4B 84 9C BC */	b __ptmf_scall
/* 80B183CC  60 00 00 00 */	nop 
lbl_80B183D0:
/* 80B183D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B183D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B183D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B183DC  7C 08 03 A6 */	mtlr r0
/* 80B183E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B183E4  4E 80 00 20 */	blr 
