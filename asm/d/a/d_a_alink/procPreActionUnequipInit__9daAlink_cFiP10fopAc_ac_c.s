lbl_800C2DDC:
/* 800C2DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C2DE0  7C 08 02 A6 */	mflr r0
/* 800C2DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C2DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 800C2DEC  48 29 F3 F1 */	bl _savegpr_29
/* 800C2DF0  7C 7D 1B 78 */	mr r29, r3
/* 800C2DF4  7C 9E 23 78 */	mr r30, r4
/* 800C2DF8  7C BF 2B 78 */	mr r31, r5
/* 800C2DFC  38 80 00 00 */	li r4, 0
/* 800C2E00  4B FF F1 6D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C2E04  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C2E08  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 800C2E0C  7F A3 EB 78 */	mr r3, r29
/* 800C2E10  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800C2E14  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800C2E18  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C2E1C  4B FE AF F9 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C2E20  7F A3 EB 78 */	mr r3, r29
/* 800C2E24  38 80 00 00 */	li r4, 0
/* 800C2E28  4B FF 6A 15 */	bl allUnequip__9daAlink_cFi
/* 800C2E2C  38 00 00 00 */	li r0, 0
/* 800C2E30  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800C2E34  28 1F 00 00 */	cmplwi r31, 0
/* 800C2E38  41 82 00 50 */	beq lbl_800C2E88
/* 800C2E3C  38 7D 28 0C */	addi r3, r29, 0x280c
/* 800C2E40  7F E4 FB 78 */	mr r4, r31
/* 800C2E44  48 09 BE 75 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800C2E48  38 60 00 01 */	li r3, 1
/* 800C2E4C  B0 7D 30 0E */	sth r3, 0x300e(r29)
/* 800C2E50  A8 1F 00 08 */	lha r0, 8(r31)
/* 800C2E54  2C 00 02 CB */	cmpwi r0, 0x2cb
/* 800C2E58  40 82 00 34 */	bne lbl_800C2E8C
/* 800C2E5C  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800C2E60  28 00 00 48 */	cmplwi r0, 0x48
/* 800C2E64  40 82 00 0C */	bne lbl_800C2E70
/* 800C2E68  B0 7D 30 10 */	sth r3, 0x3010(r29)
/* 800C2E6C  48 00 00 20 */	b lbl_800C2E8C
lbl_800C2E70:
/* 800C2E70  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800C2E74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800C2E78  41 82 00 14 */	beq lbl_800C2E8C
/* 800C2E7C  7F A3 EB 78 */	mr r3, r29
/* 800C2E80  48 04 D9 C1 */	bl offKandelaarModel__9daAlink_cFv
/* 800C2E84  48 00 00 08 */	b lbl_800C2E8C
lbl_800C2E88:
/* 800C2E88  B0 1D 30 0E */	sth r0, 0x300e(r29)
lbl_800C2E8C:
/* 800C2E8C  93 DD 31 98 */	stw r30, 0x3198(r29)
/* 800C2E90  38 60 00 01 */	li r3, 1
/* 800C2E94  39 61 00 20 */	addi r11, r1, 0x20
/* 800C2E98  48 29 F3 91 */	bl _restgpr_29
/* 800C2E9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C2EA0  7C 08 03 A6 */	mtlr r0
/* 800C2EA4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C2EA8  4E 80 00 20 */	blr 
