lbl_80A1EE38:
/* 80A1EE38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1EE3C  7C 08 02 A6 */	mflr r0
/* 80A1EE40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1EE44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A1EE48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A1EE4C  7C 7E 1B 78 */	mr r30, r3
/* 80A1EE50  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1EE54  3B E4 10 80 */	addi r31, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1EE58  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1EE5C  2C 00 00 00 */	cmpwi r0, 0
/* 80A1EE60  41 82 00 18 */	beq lbl_80A1EE78
/* 80A1EE64  40 80 00 08 */	bge lbl_80A1EE6C
/* 80A1EE68  48 00 01 0C */	b lbl_80A1EF74
lbl_80A1EE6C:
/* 80A1EE6C  2C 00 00 02 */	cmpwi r0, 2
/* 80A1EE70  40 80 01 04 */	bge lbl_80A1EF74
/* 80A1EE74  48 00 00 A0 */	b lbl_80A1EF14
lbl_80A1EE78:
/* 80A1EE78  38 80 00 09 */	li r4, 9
/* 80A1EE7C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A1EE80  38 A0 00 00 */	li r5, 0
/* 80A1EE84  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1EE88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1EE8C  7D 89 03 A6 */	mtctr r12
/* 80A1EE90  4E 80 04 21 */	bctrl 
/* 80A1EE94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1EE98  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A1EE9C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A1EEA0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A1EEA4  38 7F 00 48 */	addi r3, r31, 0x48
/* 80A1EEA8  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80A1EEAC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A1EEB0  7F C3 F3 78 */	mr r3, r30
/* 80A1EEB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1EEB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1EEBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A1EEC0  48 00 03 81 */	bl actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c
/* 80A1EEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EEC8  41 82 00 0C */	beq lbl_80A1EED4
/* 80A1EECC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80A1EED0  4B 73 1C ED */	bl reverse__13daNpcF_Path_cFv
lbl_80A1EED4:
/* 80A1EED4  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1EED8  60 00 00 20 */	ori r0, r0, 0x20
/* 80A1EEDC  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1EEE0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D3@ha */
/* 80A1EEE4  38 03 01 D3 */	addi r0, r3, 0x01D3 /* 0x000501D3@l */
/* 80A1EEE8  90 01 00 08 */	stw r0, 8(r1)
/* 80A1EEEC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A1EEF0  38 81 00 08 */	addi r4, r1, 8
/* 80A1EEF4  38 A0 FF FF */	li r5, -1
/* 80A1EEF8  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 80A1EEFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A1EF00  7D 89 03 A6 */	mtctr r12
/* 80A1EF04  4E 80 04 21 */	bctrl 
/* 80A1EF08  38 00 00 01 */	li r0, 1
/* 80A1EF0C  B0 1E 14 06 */	sth r0, 0x1406(r30)
/* 80A1EF10  48 00 00 64 */	b lbl_80A1EF74
lbl_80A1EF14:
/* 80A1EF14  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A1EF18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1EF1C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A1EF20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1EF24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A1EF28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1EF2C  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80A1EF30  38 81 00 0C */	addi r4, r1, 0xc
/* 80A1EF34  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A1EF38  4B 73 1E A9 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A1EF3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EF40  41 82 00 10 */	beq lbl_80A1EF50
/* 80A1EF44  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1EF48  4B FF CD A9 */	bl deleteAllMember__15daNpcKasi_Mng_cFv
/* 80A1EF4C  48 00 00 28 */	b lbl_80A1EF74
lbl_80A1EF50:
/* 80A1EF50  7F C3 F3 78 */	mr r3, r30
/* 80A1EF54  38 81 00 18 */	addi r4, r1, 0x18
/* 80A1EF58  38 A0 06 00 */	li r5, 0x600
/* 80A1EF5C  48 00 02 89 */	bl _turn_pos__15daNpcKasiHana_cFRC4cXyzs
/* 80A1EF60  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1EF64  4B FF C0 49 */	bl calcEscapeForm__15daNpcKasi_Mng_cFv
/* 80A1EF68  C0 1F 02 64 */	lfs f0, 0x264(r31)
/* 80A1EF6C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1EF70  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A1EF74:
/* 80A1EF74  38 60 00 01 */	li r3, 1
/* 80A1EF78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A1EF7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A1EF80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1EF84  7C 08 03 A6 */	mtlr r0
/* 80A1EF88  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1EF8C  4E 80 00 20 */	blr 
