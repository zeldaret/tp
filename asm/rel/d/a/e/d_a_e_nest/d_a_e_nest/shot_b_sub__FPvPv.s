lbl_80503668:
/* 80503668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050366C  7C 08 02 A6 */	mflr r0
/* 80503670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503678  7C 7F 1B 78 */	mr r31, r3
/* 8050367C  4B B1 56 65 */	bl fopAc_IsActor__FPv
/* 80503680  2C 03 00 00 */	cmpwi r3, 0
/* 80503684  41 82 00 44 */	beq lbl_805036C8
/* 80503688  A8 1F 00 08 */	lha r0, 8(r31)
/* 8050368C  2C 00 00 FE */	cmpwi r0, 0xfe
/* 80503690  40 82 00 38 */	bne lbl_805036C8
/* 80503694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80503698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050369C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805036A0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805036A4  40 82 00 24 */	bne lbl_805036C8
/* 805036A8  4B C5 C1 F5 */	bl checkBoomerangCharge__9daPy_py_cFv
/* 805036AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805036B0  41 82 00 18 */	beq lbl_805036C8
/* 805036B4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805036B8  28 00 00 01 */	cmplwi r0, 1
/* 805036BC  40 82 00 0C */	bne lbl_805036C8
/* 805036C0  7F E3 FB 78 */	mr r3, r31
/* 805036C4  48 00 00 08 */	b lbl_805036CC
lbl_805036C8:
/* 805036C8  38 60 00 00 */	li r3, 0
lbl_805036CC:
/* 805036CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805036D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805036D4  7C 08 03 A6 */	mtlr r0
/* 805036D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805036DC  4E 80 00 20 */	blr 
