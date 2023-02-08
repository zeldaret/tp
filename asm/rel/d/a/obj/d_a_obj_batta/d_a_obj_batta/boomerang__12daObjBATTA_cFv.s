lbl_80BAB934:
/* 80BAB934  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BAB938  7C 08 02 A6 */	mflr r0
/* 80BAB93C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAB940  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BAB944  7C 7F 1B 78 */	mr r31, r3
/* 80BAB948  80 03 09 E8 */	lwz r0, 0x9e8(r3)
/* 80BAB94C  2C 00 00 00 */	cmpwi r0, 0
/* 80BAB950  40 82 00 40 */	bne lbl_80BAB990
/* 80BAB954  38 00 00 00 */	li r0, 0
/* 80BAB958  90 1F 08 A8 */	stw r0, 0x8a8(r31)
/* 80BAB95C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80BAB960  4B 4D 8B E9 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80BAB964  38 7F 09 B8 */	addi r3, r31, 0x9b8
/* 80BAB968  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BAB96C  4B 5B 2C 45 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80BAB970  3C 60 80 BB */	lis r3, lit_3956@ha /* 0x80BAC98C@ha */
/* 80BAB974  C0 03 C9 8C */	lfs f0, lit_3956@l(r3)  /* 0x80BAC98C@l */
/* 80BAB978  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80BAB97C  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80BAB980  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 80BAB984  38 03 00 01 */	addi r0, r3, 1
/* 80BAB988  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 80BAB98C  48 00 00 F8 */	b lbl_80BABA84
lbl_80BAB990:
/* 80BAB990  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB994  40 82 00 84 */	bne lbl_80BABA18
/* 80BAB998  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80BAB99C  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80BAB9A0  90 1F 08 A8 */	stw r0, 0x8a8(r31)
/* 80BAB9A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAB9A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAB9AC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BAB9B0  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 80BAB9B4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80BAB9B8  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80BAB9BC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BAB9C0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80BAB9C4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BAB9C8  3C 60 80 BB */	lis r3, lit_4552@ha /* 0x80BACA3C@ha */
/* 80BAB9CC  C0 03 CA 3C */	lfs f0, lit_4552@l(r3)  /* 0x80BACA3C@l */
/* 80BAB9D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80BAB9D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BAB9D8  D0 7F 04 BC */	stfs f3, 0x4bc(r31)
/* 80BAB9DC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80BAB9E0  D0 3F 04 C4 */	stfs f1, 0x4c4(r31)
/* 80BAB9E4  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80BAB9E8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BAB9EC  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80BAB9F0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BAB9F4  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80BAB9F8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BAB9FC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BABA00  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80BABA04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BABA08  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80BABA0C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BABA10  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80BABA14  48 00 00 70 */	b lbl_80BABA84
lbl_80BABA18:
/* 80BABA18  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80BABA1C  28 00 00 00 */	cmplwi r0, 0
/* 80BABA20  41 82 00 08 */	beq lbl_80BABA28
/* 80BABA24  48 00 00 75 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BABA28:
/* 80BABA28  38 7F 09 B8 */	addi r3, r31, 0x9b8
/* 80BABA2C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BABA30  38 BF 04 DE */	addi r5, r31, 0x4de
/* 80BABA34  38 C0 00 00 */	li r6, 0
/* 80BABA38  38 E0 1C 00 */	li r7, 0x1c00
/* 80BABA3C  4B 5B 2C 19 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80BABA40  2C 03 00 00 */	cmpwi r3, 0
/* 80BABA44  40 82 00 34 */	bne lbl_80BABA78
/* 80BABA48  3C 60 80 BB */	lis r3, lit_4521@ha /* 0x80BACB54@ha */
/* 80BABA4C  38 83 CB 54 */	addi r4, r3, lit_4521@l /* 0x80BACB54@l */
/* 80BABA50  80 64 00 00 */	lwz r3, 0(r4)
/* 80BABA54  80 04 00 04 */	lwz r0, 4(r4)
/* 80BABA58  90 61 00 08 */	stw r3, 8(r1)
/* 80BABA5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BABA60  80 04 00 08 */	lwz r0, 8(r4)
/* 80BABA64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABA68  7F E3 FB 78 */	mr r3, r31
/* 80BABA6C  38 81 00 08 */	addi r4, r1, 8
/* 80BABA70  4B FF E3 ED */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BABA74  48 00 00 10 */	b lbl_80BABA84
lbl_80BABA78:
/* 80BABA78  38 7F 09 B8 */	addi r3, r31, 0x9b8
/* 80BABA7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BABA80  4B 5B 2D FD */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
lbl_80BABA84:
/* 80BABA84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BABA88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BABA8C  7C 08 03 A6 */	mtlr r0
/* 80BABA90  38 21 00 30 */	addi r1, r1, 0x30
/* 80BABA94  4E 80 00 20 */	blr 
