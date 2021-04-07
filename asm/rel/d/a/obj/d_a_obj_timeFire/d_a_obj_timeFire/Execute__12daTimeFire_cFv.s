lbl_80D0EB88:
/* 80D0EB88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0EB8C  7C 08 02 A6 */	mflr r0
/* 80D0EB90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0EB94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D0EB98  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D0EB9C  7C 7F 1B 78 */	mr r31, r3
/* 80D0EBA0  8B C3 05 6C */	lbz r30, 0x56c(r3)
/* 80D0EBA4  38 80 00 00 */	li r4, 0
/* 80D0EBA8  48 00 01 C1 */	bl fireCheck__12daTimeFire_cFUc
/* 80D0EBAC  98 7F 05 6C */	stb r3, 0x56c(r31)
/* 80D0EBB0  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80D0EBB4  7C 1E 00 40 */	cmplw r30, r0
/* 80D0EBB8  41 82 00 30 */	beq lbl_80D0EBE8
/* 80D0EBBC  28 00 00 00 */	cmplwi r0, 0
/* 80D0EBC0  40 82 00 18 */	bne lbl_80D0EBD8
/* 80D0EBC4  7F E3 FB 78 */	mr r3, r31
/* 80D0EBC8  4B FF FF 9D */	bl cutLight__12daTimeFire_cFv
/* 80D0EBCC  38 00 00 00 */	li r0, 0
/* 80D0EBD0  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80D0EBD4  48 00 00 14 */	b lbl_80D0EBE8
lbl_80D0EBD8:
/* 80D0EBD8  7F E3 FB 78 */	mr r3, r31
/* 80D0EBDC  4B FF FF 65 */	bl setLight__12daTimeFire_cFv
/* 80D0EBE0  38 00 00 01 */	li r0, 1
/* 80D0EBE4  98 1F 05 6D */	stb r0, 0x56d(r31)
lbl_80D0EBE8:
/* 80D0EBE8  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80D0EBEC  28 00 00 00 */	cmplwi r0, 0
/* 80D0EBF0  41 82 01 5C */	beq lbl_80D0ED4C
/* 80D0EBF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0EBF8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0EBFC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D0EC00  38 00 00 FF */	li r0, 0xff
/* 80D0EC04  90 01 00 08 */	stw r0, 8(r1)
/* 80D0EC08  38 80 00 00 */	li r4, 0
/* 80D0EC0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D0EC10  38 00 FF FF */	li r0, -1
/* 80D0EC14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0EC18  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D0EC1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D0EC20  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D0EC24  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80D0EC28  38 A0 00 00 */	li r5, 0
/* 80D0EC2C  38 C0 03 AD */	li r6, 0x3ad
/* 80D0EC30  38 FF 05 70 */	addi r7, r31, 0x570
/* 80D0EC34  39 00 00 00 */	li r8, 0
/* 80D0EC38  39 20 00 00 */	li r9, 0
/* 80D0EC3C  39 5F 05 7C */	addi r10, r31, 0x57c
/* 80D0EC40  3D 60 80 D1 */	lis r11, lit_3708@ha /* 0x80D0F0F8@ha */
/* 80D0EC44  C0 2B F0 F8 */	lfs f1, lit_3708@l(r11)  /* 0x80D0F0F8@l */
/* 80D0EC48  4B 33 E8 85 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D0EC4C  90 7F 05 88 */	stw r3, 0x588(r31)
/* 80D0EC50  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D0EC54  38 00 00 FF */	li r0, 0xff
/* 80D0EC58  90 01 00 08 */	stw r0, 8(r1)
/* 80D0EC5C  38 80 00 00 */	li r4, 0
/* 80D0EC60  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D0EC64  38 00 FF FF */	li r0, -1
/* 80D0EC68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0EC6C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D0EC70  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D0EC74  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D0EC78  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 80D0EC7C  38 A0 00 00 */	li r5, 0
/* 80D0EC80  38 C0 03 AF */	li r6, 0x3af
/* 80D0EC84  38 FF 05 70 */	addi r7, r31, 0x570
/* 80D0EC88  39 00 00 00 */	li r8, 0
/* 80D0EC8C  39 20 00 00 */	li r9, 0
/* 80D0EC90  39 5F 05 7C */	addi r10, r31, 0x57c
/* 80D0EC94  3D 60 80 D1 */	lis r11, lit_3708@ha /* 0x80D0F0F8@ha */
/* 80D0EC98  C0 2B F0 F8 */	lfs f1, lit_3708@l(r11)  /* 0x80D0F0F8@l */
/* 80D0EC9C  4B 33 E8 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D0ECA0  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80D0ECA4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D0ECA8  38 00 00 FF */	li r0, 0xff
/* 80D0ECAC  90 01 00 08 */	stw r0, 8(r1)
/* 80D0ECB0  38 80 00 00 */	li r4, 0
/* 80D0ECB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D0ECB8  38 00 FF FF */	li r0, -1
/* 80D0ECBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0ECC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D0ECC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D0ECC8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D0ECCC  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 80D0ECD0  38 A0 00 00 */	li r5, 0
/* 80D0ECD4  38 C0 03 AE */	li r6, 0x3ae
/* 80D0ECD8  38 FF 05 70 */	addi r7, r31, 0x570
/* 80D0ECDC  39 00 00 00 */	li r8, 0
/* 80D0ECE0  39 20 00 00 */	li r9, 0
/* 80D0ECE4  39 5F 05 7C */	addi r10, r31, 0x57c
/* 80D0ECE8  3D 60 80 D1 */	lis r11, lit_3708@ha /* 0x80D0F0F8@ha */
/* 80D0ECEC  C0 2B F0 F8 */	lfs f1, lit_3708@l(r11)  /* 0x80D0F0F8@l */
/* 80D0ECF0  4B 33 E7 DD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D0ECF4  90 7F 05 90 */	stw r3, 0x590(r31)
/* 80D0ECF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D0ECFC  7C 03 07 74 */	extsb r3, r0
/* 80D0ED00  4B 31 E3 6D */	bl dComIfGp_getReverb__Fi
/* 80D0ED04  7C 67 1B 78 */	mr r7, r3
/* 80D0ED08  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80D0ED0C  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80D0ED10  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D0ED14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D0ED18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D0ED1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0ED20  38 81 00 20 */	addi r4, r1, 0x20
/* 80D0ED24  38 BF 05 70 */	addi r5, r31, 0x570
/* 80D0ED28  38 C0 00 00 */	li r6, 0
/* 80D0ED2C  3D 00 80 D1 */	lis r8, lit_3708@ha /* 0x80D0F0F8@ha */
/* 80D0ED30  C0 28 F0 F8 */	lfs f1, lit_3708@l(r8)  /* 0x80D0F0F8@l */
/* 80D0ED34  FC 40 08 90 */	fmr f2, f1
/* 80D0ED38  3D 00 80 D1 */	lis r8, lit_3757@ha /* 0x80D0F0FC@ha */
/* 80D0ED3C  C0 68 F0 FC */	lfs f3, lit_3757@l(r8)  /* 0x80D0F0FC@l */
/* 80D0ED40  FC 80 18 90 */	fmr f4, f3
/* 80D0ED44  39 00 00 00 */	li r8, 0
/* 80D0ED48  4B 59 D7 C5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D0ED4C:
/* 80D0ED4C  38 60 00 01 */	li r3, 1
/* 80D0ED50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D0ED54  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D0ED58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0ED5C  7C 08 03 A6 */	mtlr r0
/* 80D0ED60  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0ED64  4E 80 00 20 */	blr 
