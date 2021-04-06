lbl_80BABD6C:
/* 80BABD6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BABD70  7C 08 02 A6 */	mflr r0
/* 80BABD74  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BABD78  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80BABD7C  7C 7F 1B 78 */	mr r31, r3
/* 80BABD80  38 7F 08 60 */	addi r3, r31, 0x860
/* 80BABD84  4B 4D 7A AD */	bl Move__10dCcD_GSttsFv
/* 80BABD88  38 7F 08 80 */	addi r3, r31, 0x880
/* 80BABD8C  4B 4D 86 D5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BABD90  28 03 00 00 */	cmplwi r3, 0
/* 80BABD94  41 82 00 78 */	beq lbl_80BABE0C
/* 80BABD98  38 7F 08 80 */	addi r3, r31, 0x880
/* 80BABD9C  4B 4D 87 5D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BABDA0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BABDA4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BABDA8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80BABDAC  41 82 00 34 */	beq lbl_80BABDE0
/* 80BABDB0  3C 60 80 BB */	lis r3, lit_4648@ha /* 0x80BACB6C@ha */
/* 80BABDB4  38 83 CB 6C */	addi r4, r3, lit_4648@l /* 0x80BACB6C@l */
/* 80BABDB8  80 64 00 00 */	lwz r3, 0(r4)
/* 80BABDBC  80 04 00 04 */	lwz r0, 4(r4)
/* 80BABDC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80BABDC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BABDC8  80 04 00 08 */	lwz r0, 8(r4)
/* 80BABDCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BABDD0  7F E3 FB 78 */	mr r3, r31
/* 80BABDD4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BABDD8  4B FF E0 85 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BABDDC  48 00 00 30 */	b lbl_80BABE0C
lbl_80BABDE0:
/* 80BABDE0  3C 60 80 BB */	lis r3, lit_4651@ha /* 0x80BACB78@ha */
/* 80BABDE4  38 83 CB 78 */	addi r4, r3, lit_4651@l /* 0x80BACB78@l */
/* 80BABDE8  80 64 00 00 */	lwz r3, 0(r4)
/* 80BABDEC  80 04 00 04 */	lwz r0, 4(r4)
/* 80BABDF0  90 61 00 08 */	stw r3, 8(r1)
/* 80BABDF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BABDF8  80 04 00 08 */	lwz r0, 8(r4)
/* 80BABDFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABE00  7F E3 FB 78 */	mr r3, r31
/* 80BABE04  38 81 00 08 */	addi r4, r1, 8
/* 80BABE08  4B FF E0 55 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BABE0C:
/* 80BABE0C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80BABE10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BABE14  7C 08 03 A6 */	mtlr r0
/* 80BABE18  38 21 00 50 */	addi r1, r1, 0x50
/* 80BABE1C  4E 80 00 20 */	blr 
