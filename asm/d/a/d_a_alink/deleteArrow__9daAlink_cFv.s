lbl_800DEAE4:
/* 800DEAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DEAE8  7C 08 02 A6 */	mflr r0
/* 800DEAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DEAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DEAF4  7C 7F 1B 78 */	mr r31, r3
/* 800DEAF8  80 63 28 28 */	lwz r3, 0x2828(r3)
/* 800DEAFC  28 03 00 00 */	cmplwi r3, 0
/* 800DEB00  41 82 00 78 */	beq lbl_800DEB78
/* 800DEB04  A8 03 00 08 */	lha r0, 8(r3)
/* 800DEB08  2C 00 03 08 */	cmpwi r0, 0x308
/* 800DEB0C  40 82 00 6C */	bne lbl_800DEB78
/* 800DEB10  88 03 09 3C */	lbz r0, 0x93c(r3)
/* 800DEB14  28 00 00 01 */	cmplwi r0, 1
/* 800DEB18  40 82 00 54 */	bne lbl_800DEB6C
/* 800DEB1C  A8 BF 05 6C */	lha r5, 0x56c(r31)
/* 800DEB20  3C 80 80 39 */	lis r4, m__20daAlinkHIO_damage_c0@ha
/* 800DEB24  38 84 E5 4C */	addi r4, r4, m__20daAlinkHIO_damage_c0@l
/* 800DEB28  A8 04 00 2A */	lha r0, 0x2a(r4)
/* 800DEB2C  7C 05 00 00 */	cmpw r5, r0
/* 800DEB30  41 82 00 10 */	beq lbl_800DEB40
/* 800DEB34  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DEB38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800DEB3C  41 82 00 30 */	beq lbl_800DEB6C
lbl_800DEB40:
/* 800DEB40  38 00 00 00 */	li r0, 0
/* 800DEB44  B0 03 09 50 */	sth r0, 0x950(r3)
/* 800DEB48  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800DEB4C  38 80 FF FF */	li r4, -1
/* 800DEB50  4B F4 FC ED */	bl dComIfGp_addSelectItemNum__Fis
/* 800DEB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DEB58  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DEB5C  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 800DEB60  38 03 FF FF */	addi r0, r3, -1
/* 800DEB64  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 800DEB68  48 00 00 08 */	b lbl_800DEB70
lbl_800DEB6C:
/* 800DEB6C  4B F3 B1 11 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_800DEB70:
/* 800DEB70  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800DEB74  48 08 01 89 */	bl clearData__16daPy_actorKeep_cFv
lbl_800DEB78:
/* 800DEB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DEB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DEB80  7C 08 03 A6 */	mtlr r0
/* 800DEB84  38 21 00 10 */	addi r1, r1, 0x10
/* 800DEB88  4E 80 00 20 */	blr 
