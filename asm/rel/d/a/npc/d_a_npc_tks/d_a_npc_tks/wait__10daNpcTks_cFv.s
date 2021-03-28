lbl_80B16148:
/* 80B16148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B1614C  7C 08 02 A6 */	mflr r0
/* 80B16150  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B16154  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B16158  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B1615C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80B16160  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80B16164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B16168  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1616C  7C 7F 1B 78 */	mr r31, r3
/* 80B16170  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B16174  3B C4 DD 58 */	addi r30, r4, m__16daNpcTks_Param_c@l
/* 80B16178  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B1617C  2C 00 00 02 */	cmpwi r0, 2
/* 80B16180  41 82 00 58 */	beq lbl_80B161D8
/* 80B16184  40 80 01 98 */	bge lbl_80B1631C
/* 80B16188  2C 00 00 00 */	cmpwi r0, 0
/* 80B1618C  41 82 00 0C */	beq lbl_80B16198
/* 80B16190  48 00 01 8C */	b lbl_80B1631C
/* 80B16194  48 00 01 88 */	b lbl_80B1631C
lbl_80B16198:
/* 80B16198  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80B1619C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B161A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B161A4  38 80 00 02 */	li r4, 2
/* 80B161A8  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80B161AC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B161B0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B161B4  7D 89 03 A6 */	mtctr r12
/* 80B161B8  4E 80 04 21 */	bctrl 
/* 80B161BC  38 00 00 00 */	li r0, 0
/* 80B161C0  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B161C4  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80B161C8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B161CC  38 00 00 02 */	li r0, 2
/* 80B161D0  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B161D4  48 00 01 48 */	b lbl_80B1631C
lbl_80B161D8:
/* 80B161D8  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B161DC  4B 63 A5 10 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B161E0  28 03 00 00 */	cmplwi r3, 0
/* 80B161E4  41 82 00 70 */	beq lbl_80B16254
/* 80B161E8  38 7E 00 00 */	addi r3, r30, 0
/* 80B161EC  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80B161F0  C8 5E 01 C8 */	lfd f2, 0x1c8(r30)
/* 80B161F4  4B 85 65 8C */	b pow
/* 80B161F8  FF C0 08 18 */	frsp f30, f1
/* 80B161FC  7F E3 FB 78 */	mr r3, r31
/* 80B16200  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B16204  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B16208  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B1620C  4B 50 48 88 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16210  FF E0 08 90 */	fmr f31, f1
/* 80B16214  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B16218  4B 63 A4 C8 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B1621C  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80B16220  4C 40 13 82 */	cror 2, 0, 2
/* 80B16224  40 82 00 18 */	bne lbl_80B1623C
/* 80B16228  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B1622C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B16230  4B 63 A4 8C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B16234  38 00 00 01 */	li r0, 1
/* 80B16238  48 00 00 08 */	b lbl_80B16240
lbl_80B1623C:
/* 80B1623C  38 00 00 00 */	li r0, 0
lbl_80B16240:
/* 80B16240  2C 00 00 00 */	cmpwi r0, 0
/* 80B16244  40 82 00 78 */	bne lbl_80B162BC
/* 80B16248  38 00 00 00 */	li r0, 0
/* 80B1624C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B16250  48 00 00 6C */	b lbl_80B162BC
lbl_80B16254:
/* 80B16254  38 7E 00 00 */	addi r3, r30, 0
/* 80B16258  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80B1625C  C8 5E 01 C8 */	lfd f2, 0x1c8(r30)
/* 80B16260  4B 85 65 20 */	b pow
/* 80B16264  FF C0 08 18 */	frsp f30, f1
/* 80B16268  7F E3 FB 78 */	mr r3, r31
/* 80B1626C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B16270  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B16274  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B16278  4B 50 48 1C */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1627C  FF E0 08 90 */	fmr f31, f1
/* 80B16280  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B16284  4B 63 A4 5C */	b remove__18daNpcF_ActorMngr_cFv
/* 80B16288  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80B1628C  4C 40 13 82 */	cror 2, 0, 2
/* 80B16290  40 82 00 18 */	bne lbl_80B162A8
/* 80B16294  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B16298  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B1629C  4B 63 A4 20 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B162A0  38 00 00 01 */	li r0, 1
/* 80B162A4  48 00 00 08 */	b lbl_80B162AC
lbl_80B162A8:
/* 80B162A8  38 00 00 00 */	li r0, 0
lbl_80B162AC:
/* 80B162AC  2C 00 00 00 */	cmpwi r0, 0
/* 80B162B0  41 82 00 0C */	beq lbl_80B162BC
/* 80B162B4  38 00 00 00 */	li r0, 0
/* 80B162B8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B162BC:
/* 80B162BC  38 7F 12 00 */	addi r3, r31, 0x1200
/* 80B162C0  4B 63 A4 2C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B162C4  28 03 00 00 */	cmplwi r3, 0
/* 80B162C8  41 82 00 30 */	beq lbl_80B162F8
/* 80B162CC  A8 1F 13 86 */	lha r0, 0x1386(r31)
/* 80B162D0  2C 00 00 02 */	cmpwi r0, 2
/* 80B162D4  40 82 00 10 */	bne lbl_80B162E4
/* 80B162D8  80 1F 12 08 */	lwz r0, 0x1208(r31)
/* 80B162DC  28 00 00 00 */	cmplwi r0, 0
/* 80B162E0  41 82 00 3C */	beq lbl_80B1631C
lbl_80B162E4:
/* 80B162E4  38 00 00 02 */	li r0, 2
/* 80B162E8  B0 1F 13 86 */	sth r0, 0x1386(r31)
/* 80B162EC  38 00 00 00 */	li r0, 0
/* 80B162F0  90 1F 12 08 */	stw r0, 0x1208(r31)
/* 80B162F4  48 00 00 28 */	b lbl_80B1631C
lbl_80B162F8:
/* 80B162F8  A8 1F 13 86 */	lha r0, 0x1386(r31)
/* 80B162FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B16300  40 82 00 10 */	bne lbl_80B16310
/* 80B16304  80 1F 12 08 */	lwz r0, 0x1208(r31)
/* 80B16308  28 00 00 00 */	cmplwi r0, 0
/* 80B1630C  41 82 00 10 */	beq lbl_80B1631C
lbl_80B16310:
/* 80B16310  38 00 00 00 */	li r0, 0
/* 80B16314  B0 1F 13 86 */	sth r0, 0x1386(r31)
/* 80B16318  90 1F 12 08 */	stw r0, 0x1208(r31)
lbl_80B1631C:
/* 80B1631C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B16320  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B16324  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80B16328  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80B1632C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B16330  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B16334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B16338  7C 08 03 A6 */	mtlr r0
/* 80B1633C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B16340  4E 80 00 20 */	blr 
