lbl_80BABCA4:
/* 80BABCA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BABCA8  7C 08 02 A6 */	mflr r0
/* 80BABCAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BABCB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BABCB4  7C 7F 1B 78 */	mr r31, r3
/* 80BABCB8  38 80 00 00 */	li r4, 0
/* 80BABCBC  4B 46 EA 11 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80BABCC0  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80BABCC4  28 00 00 02 */	cmplwi r0, 2
/* 80BABCC8  41 82 00 4C */	beq lbl_80BABD14
/* 80BABCCC  3C 60 80 BB */	lis r3, lit_4620@ha /* 0x80BACB60@ha */
/* 80BABCD0  38 83 CB 60 */	addi r4, r3, lit_4620@l /* 0x80BACB60@l */
/* 80BABCD4  80 64 00 00 */	lwz r3, 0(r4)
/* 80BABCD8  80 04 00 04 */	lwz r0, 4(r4)
/* 80BABCDC  90 61 00 08 */	stw r3, 8(r1)
/* 80BABCE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BABCE4  80 04 00 08 */	lwz r0, 8(r4)
/* 80BABCE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABCEC  38 7F 09 D0 */	addi r3, r31, 0x9d0
/* 80BABCF0  38 81 00 08 */	addi r4, r1, 8
/* 80BABCF4  4B 7B 63 55 */	bl __ptmf_cmpr
/* 80BABCF8  2C 03 00 00 */	cmpwi r3, 0
/* 80BABCFC  41 82 00 18 */	beq lbl_80BABD14
/* 80BABD00  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80BABD04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BABD08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BABD0C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BABD10  4B 4C AD 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80BABD14:
/* 80BABD14  7F E3 FB 78 */	mr r3, r31
/* 80BABD18  39 9F 09 D0 */	addi r12, r31, 0x9d0
/* 80BABD1C  4B 7B 63 69 */	bl __ptmf_scall
/* 80BABD20  60 00 00 00 */	nop 
/* 80BABD24  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80BABD28  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BABD2C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80BABD30  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BABD34  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80BABD38  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BABD3C  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80BABD40  28 00 00 02 */	cmplwi r0, 2
/* 80BABD44  41 82 00 14 */	beq lbl_80BABD58
/* 80BABD48  28 00 00 00 */	cmplwi r0, 0
/* 80BABD4C  40 82 00 0C */	bne lbl_80BABD58
/* 80BABD50  7F E3 FB 78 */	mr r3, r31
/* 80BABD54  4B 5B 23 25 */	bl Insect_GetDemoMain__9dInsect_cFv
lbl_80BABD58:
/* 80BABD58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BABD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BABD60  7C 08 03 A6 */	mtlr r0
/* 80BABD64  38 21 00 20 */	addi r1, r1, 0x20
/* 80BABD68  4E 80 00 20 */	blr 
