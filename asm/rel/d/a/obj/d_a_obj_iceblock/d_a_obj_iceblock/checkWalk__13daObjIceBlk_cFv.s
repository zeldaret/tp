lbl_80C2294C:
/* 80C2294C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C22950  7C 08 02 A6 */	mflr r0
/* 80C22954  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C22958  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2295C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C22960  7C 7E 1B 78 */	mr r30, r3
/* 80C22964  3B E0 FF FF */	li r31, -1
/* 80C22968  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C2296C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C22970  28 04 00 FF */	cmplwi r4, 0xff
/* 80C22974  41 82 00 28 */	beq lbl_80C2299C
/* 80C22978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2297C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22980  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C22984  7C 05 07 74 */	extsb r5, r0
/* 80C22988  4B 41 29 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80C2298C  2C 03 00 00 */	cmpwi r3, 0
/* 80C22990  40 82 00 0C */	bne lbl_80C2299C
/* 80C22994  38 60 FF FF */	li r3, -1
/* 80C22998  48 00 01 54 */	b lbl_80C22AEC
lbl_80C2299C:
/* 80C2299C  38 80 00 00 */	li r4, 0
/* 80C229A0  38 60 00 01 */	li r3, 1
/* 80C229A4  38 00 00 04 */	li r0, 4
/* 80C229A8  7C 09 03 A6 */	mtctr r0
lbl_80C229AC:
/* 80C229AC  38 04 09 48 */	addi r0, r4, 0x948
/* 80C229B0  7C 1E 00 AE */	lbzx r0, r30, r0
/* 80C229B4  28 00 00 00 */	cmplwi r0, 0
/* 80C229B8  41 82 00 0C */	beq lbl_80C229C4
/* 80C229BC  7C 9F 23 78 */	mr r31, r4
/* 80C229C0  98 7E 09 D0 */	stb r3, 0x9d0(r30)
lbl_80C229C4:
/* 80C229C4  38 84 00 01 */	addi r4, r4, 1
/* 80C229C8  42 00 FF E4 */	bdnz lbl_80C229AC
/* 80C229CC  38 7E 08 04 */	addi r3, r30, 0x804
/* 80C229D0  4B 46 1A 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C229D4  28 03 00 00 */	cmplwi r3, 0
/* 80C229D8  41 82 00 E4 */	beq lbl_80C22ABC
/* 80C229DC  38 7E 08 04 */	addi r3, r30, 0x804
/* 80C229E0  4B 46 1B 69 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C229E4  88 1E 09 D1 */	lbz r0, 0x9d1(r30)
/* 80C229E8  28 00 00 00 */	cmplwi r0, 0
/* 80C229EC  40 82 00 D0 */	bne lbl_80C22ABC
/* 80C229F0  28 03 00 00 */	cmplwi r3, 0
/* 80C229F4  41 82 00 C8 */	beq lbl_80C22ABC
/* 80C229F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C229FC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C22A00  41 82 00 BC */	beq lbl_80C22ABC
/* 80C22A04  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C22A08  28 00 00 03 */	cmplwi r0, 3
/* 80C22A0C  40 82 00 B0 */	bne lbl_80C22ABC
/* 80C22A10  38 61 00 08 */	addi r3, r1, 8
/* 80C22A14  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C22A18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22A1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22A20  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 80C22A24  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C22A28  4B 64 41 0D */	bl __mi__4cXyzCFRC3Vec
/* 80C22A2C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C22A30  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C22A34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C22A38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C22A3C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80C22A40  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C22A44  4B 64 4C 31 */	bl cM_atan2s__Fff
/* 80C22A48  7C 60 07 34 */	extsh r0, r3
/* 80C22A4C  2C 00 E0 00 */	cmpwi r0, -8192
/* 80C22A50  41 80 00 14 */	blt lbl_80C22A64
/* 80C22A54  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C22A58  40 80 00 0C */	bge lbl_80C22A64
/* 80C22A5C  3B E0 00 00 */	li r31, 0
/* 80C22A60  48 00 00 54 */	b lbl_80C22AB4
lbl_80C22A64:
/* 80C22A64  7C 60 07 34 */	extsh r0, r3
/* 80C22A68  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C22A6C  41 80 00 14 */	blt lbl_80C22A80
/* 80C22A70  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80C22A74  40 80 00 0C */	bge lbl_80C22A80
/* 80C22A78  3B E0 00 01 */	li r31, 1
/* 80C22A7C  48 00 00 38 */	b lbl_80C22AB4
lbl_80C22A80:
/* 80C22A80  7C 60 07 34 */	extsh r0, r3
/* 80C22A84  2C 00 E0 00 */	cmpwi r0, -8192
/* 80C22A88  40 80 00 14 */	bge lbl_80C22A9C
/* 80C22A8C  2C 00 A0 00 */	cmpwi r0, -24576
/* 80C22A90  41 80 00 0C */	blt lbl_80C22A9C
/* 80C22A94  3B E0 00 03 */	li r31, 3
/* 80C22A98  48 00 00 1C */	b lbl_80C22AB4
lbl_80C22A9C:
/* 80C22A9C  7C 60 07 34 */	extsh r0, r3
/* 80C22AA0  2C 00 A0 00 */	cmpwi r0, -24576
/* 80C22AA4  41 80 00 0C */	blt lbl_80C22AB0
/* 80C22AA8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80C22AAC  41 80 00 08 */	blt lbl_80C22AB4
lbl_80C22AB0:
/* 80C22AB0  3B E0 00 02 */	li r31, 2
lbl_80C22AB4:
/* 80C22AB4  38 00 00 02 */	li r0, 2
/* 80C22AB8  98 1E 09 D0 */	stb r0, 0x9d0(r30)
lbl_80C22ABC:
/* 80C22ABC  2C 1F FF FF */	cmpwi r31, -1
/* 80C22AC0  41 82 00 28 */	beq lbl_80C22AE8
/* 80C22AC4  7F C3 F3 78 */	mr r3, r30
/* 80C22AC8  57 E0 08 3C */	slwi r0, r31, 1
/* 80C22ACC  3C 80 80 C2 */	lis r4, l_dir_angle@ha /* 0x80C24324@ha */
/* 80C22AD0  38 84 43 24 */	addi r4, r4, l_dir_angle@l /* 0x80C24324@l */
/* 80C22AD4  7C 84 02 AE */	lhax r4, r4, r0
/* 80C22AD8  48 00 0A 35 */	bl checkWallPre__13daObjIceBlk_cFs
/* 80C22ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80C22AE0  41 80 00 08 */	blt lbl_80C22AE8
/* 80C22AE4  3B E0 FF FF */	li r31, -1
lbl_80C22AE8:
/* 80C22AE8  7F E3 FB 78 */	mr r3, r31
lbl_80C22AEC:
/* 80C22AEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C22AF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C22AF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C22AF8  7C 08 03 A6 */	mtlr r0
/* 80C22AFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C22B00  4E 80 00 20 */	blr 
