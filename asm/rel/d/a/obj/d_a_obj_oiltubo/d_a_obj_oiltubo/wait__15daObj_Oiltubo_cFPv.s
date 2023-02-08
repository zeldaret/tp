lbl_80CA74C8:
/* 80CA74C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA74CC  7C 08 02 A6 */	mflr r0
/* 80CA74D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA74D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA74D8  7C 7F 1B 78 */	mr r31, r3
/* 80CA74DC  3C 60 80 CA */	lis r3, mCcDObjInfo__15daObj_Oiltubo_c@ha /* 0x80CA78F4@ha */
/* 80CA74E0  38 C3 78 F4 */	addi r6, r3, mCcDObjInfo__15daObj_Oiltubo_c@l /* 0x80CA78F4@l */
/* 80CA74E4  A0 1F 0A CC */	lhz r0, 0xacc(r31)
/* 80CA74E8  2C 00 00 01 */	cmpwi r0, 1
/* 80CA74EC  41 82 00 10 */	beq lbl_80CA74FC
/* 80CA74F0  40 80 00 50 */	bge lbl_80CA7540
/* 80CA74F4  48 00 00 4C */	b lbl_80CA7540
/* 80CA74F8  48 00 00 48 */	b lbl_80CA7540
lbl_80CA74FC:
/* 80CA74FC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80CA7500  28 00 00 06 */	cmplwi r0, 6
/* 80CA7504  41 82 00 3C */	beq lbl_80CA7540
/* 80CA7508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA750C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA7510  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80CA7514  7F E4 FB 78 */	mr r4, r31
/* 80CA7518  38 A0 00 68 */	li r5, 0x68
/* 80CA751C  C0 26 00 4C */	lfs f1, 0x4c(r6)
/* 80CA7520  C0 46 00 38 */	lfs f2, 0x38(r6)
/* 80CA7524  C0 66 00 50 */	lfs f3, 0x50(r6)
/* 80CA7528  38 C0 20 00 */	li r6, 0x2000
/* 80CA752C  38 E0 00 01 */	li r7, 1
/* 80CA7530  4B 3C C4 D9 */	bl request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80CA7534  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CA7538  60 00 00 40 */	ori r0, r0, 0x40
/* 80CA753C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CA7540:
/* 80CA7540  38 60 00 01 */	li r3, 1
/* 80CA7544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA754C  7C 08 03 A6 */	mtlr r0
/* 80CA7550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7554  4E 80 00 20 */	blr 
