lbl_80D1A904:
/* 80D1A904  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1A908  7C 08 02 A6 */	mflr r0
/* 80D1A90C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1A910  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D1A914  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D1A918  7C 7F 1B 78 */	mr r31, r3
/* 80D1A91C  3C 80 80 D2 */	lis r4, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D1A920  3B C4 B6 D8 */	addi r30, r4, lit_3775@l /* 0x80D1B6D8@l */
/* 80D1A924  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D1A928  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A92C  40 81 00 70 */	ble lbl_80D1A99C
/* 80D1A930  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 80D1A934  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 80D1A938  C8 3E 00 E0 */	lfd f1, 0xe0(r30)
/* 80D1A93C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D1A940  3C 00 43 30 */	lis r0, 0x4330
/* 80D1A944  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D1A948  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D1A94C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1A950  EC 02 00 2A */	fadds f0, f2, f0
/* 80D1A954  D0 1F 07 50 */	stfs f0, 0x750(r31)
/* 80D1A958  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80D1A95C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80D1A960  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A964  38 7F 07 60 */	addi r3, r31, 0x760
/* 80D1A968  38 81 00 24 */	addi r4, r1, 0x24
/* 80D1A96C  38 A0 00 00 */	li r5, 0
/* 80D1A970  38 C0 FF FF */	li r6, -1
/* 80D1A974  81 9F 07 60 */	lwz r12, 0x760(r31)
/* 80D1A978  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D1A97C  7D 89 03 A6 */	mtctr r12
/* 80D1A980  4E 80 04 21 */	bctrl 
/* 80D1A984  7F E3 FB 78 */	mr r3, r31
/* 80D1A988  4B 44 36 F1 */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80D1A98C  7F E3 FB 78 */	mr r3, r31
/* 80D1A990  4B FF FB 95 */	bl ParticleSet__12daObjTOMBO_cFv
/* 80D1A994  38 60 00 01 */	li r3, 1
/* 80D1A998  48 00 01 70 */	b lbl_80D1AB08
lbl_80D1A99C:
/* 80D1A99C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D1A9A0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D1A9A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D1A9A8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D1A9AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D1A9B0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D1A9B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D1A9B8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D1A9BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D1A9C0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D1A9C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D1A9C8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D1A9CC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80D1A9D0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80D1A9D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1A9D8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D1A9DC  88 1F 07 5C */	lbz r0, 0x75c(r31)
/* 80D1A9E0  2C 00 00 01 */	cmpwi r0, 1
/* 80D1A9E4  41 82 00 94 */	beq lbl_80D1AA78
/* 80D1A9E8  40 80 00 94 */	bge lbl_80D1AA7C
/* 80D1A9EC  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A9F0  40 80 00 08 */	bge lbl_80D1A9F8
/* 80D1A9F4  48 00 00 88 */	b lbl_80D1AA7C
lbl_80D1A9F8:
/* 80D1A9F8  4B FF F8 89 */	bl Action__12daObjTOMBO_cFv
/* 80D1A9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1AA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1AA04  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D1AA08  38 00 00 FF */	li r0, 0xff
/* 80D1AA0C  90 01 00 08 */	stw r0, 8(r1)
/* 80D1AA10  38 80 00 00 */	li r4, 0
/* 80D1AA14  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D1AA18  38 00 FF FF */	li r0, -1
/* 80D1AA1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D1AA20  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1AA24  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1AA28  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D1AA2C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D1AA30  38 A0 00 00 */	li r5, 0
/* 80D1AA34  38 C0 0A 1C */	li r6, 0xa1c
/* 80D1AA38  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D1AA3C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D1AA40  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D1AA44  39 40 00 00 */	li r10, 0
/* 80D1AA48  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80D1AA4C  4B 33 2A 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D1AA50  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D1AA54  7F E3 FB 78 */	mr r3, r31
/* 80D1AA58  4B FF E8 15 */	bl SetCcSph__12daObjTOMBO_cFv
/* 80D1AA5C  7F E3 FB 78 */	mr r3, r31
/* 80D1AA60  48 00 00 C1 */	bl ObjHit__12daObjTOMBO_cFv
/* 80D1AA64  7F E3 FB 78 */	mr r3, r31
/* 80D1AA68  4B FF FB E1 */	bl BoomChk__12daObjTOMBO_cFv
/* 80D1AA6C  7F E3 FB 78 */	mr r3, r31
/* 80D1AA70  4B FF FA B5 */	bl ParticleSet__12daObjTOMBO_cFv
/* 80D1AA74  48 00 00 08 */	b lbl_80D1AA7C
lbl_80D1AA78:
/* 80D1AA78  4B FF F9 75 */	bl ShopAction__12daObjTOMBO_cFv
lbl_80D1AA7C:
/* 80D1AA7C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80D1AA80  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80D1AA84  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D1AA88  38 7F 07 60 */	addi r3, r31, 0x760
/* 80D1AA8C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D1AA90  38 A0 00 00 */	li r5, 0
/* 80D1AA94  38 C0 FF FF */	li r6, -1
/* 80D1AA98  81 9F 07 60 */	lwz r12, 0x760(r31)
/* 80D1AA9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D1AAA0  7D 89 03 A6 */	mtctr r12
/* 80D1AAA4  4E 80 04 21 */	bctrl 
/* 80D1AAA8  38 7F 08 34 */	addi r3, r31, 0x834
/* 80D1AAAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1AAB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1AAB4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D1AAB8  4B 35 BF F5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D1AABC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1AAC0  7C 03 07 74 */	extsb r3, r0
/* 80D1AAC4  4B 31 25 A9 */	bl dComIfGp_getReverb__Fi
/* 80D1AAC8  7C 65 1B 78 */	mr r5, r3
/* 80D1AACC  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D1AAD0  38 80 00 00 */	li r4, 0
/* 80D1AAD4  4B 2F 65 DD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80D1AAD8  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D1B900@ha */
/* 80D1AADC  38 63 B9 00 */	addi r3, r3, l_HIO@l /* 0x80D1B900@l */
/* 80D1AAE0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D1AAE4  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 80D1AAE8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D1AAEC  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 80D1AAF0  4B 2F 29 39 */	bl play__14mDoExt_baseAnmFv
/* 80D1AAF4  80 7F 07 48 */	lwz r3, 0x748(r31)
/* 80D1AAF8  4B 2F 29 31 */	bl play__14mDoExt_baseAnmFv
/* 80D1AAFC  7F E3 FB 78 */	mr r3, r31
/* 80D1AB00  48 00 03 69 */	bl setBaseMtx__12daObjTOMBO_cFv
/* 80D1AB04  38 60 00 01 */	li r3, 1
lbl_80D1AB08:
/* 80D1AB08  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D1AB0C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D1AB10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1AB14  7C 08 03 A6 */	mtlr r0
/* 80D1AB18  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1AB1C  4E 80 00 20 */	blr 
