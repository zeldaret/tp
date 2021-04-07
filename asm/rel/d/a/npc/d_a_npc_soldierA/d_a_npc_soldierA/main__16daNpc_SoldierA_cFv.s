lbl_80AF02B0:
/* 80AF02B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF02B4  7C 08 02 A6 */	mflr r0
/* 80AF02B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF02BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF02C0  4B 87 1F 1D */	bl _savegpr_29
/* 80AF02C4  7C 7E 1B 78 */	mr r30, r3
/* 80AF02C8  3C 80 80 AF */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AF2888@ha */
/* 80AF02CC  3B E4 28 88 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80AF2888@l */
/* 80AF02D0  48 00 0E E9 */	bl doEvent__16daNpc_SoldierA_cFv
/* 80AF02D4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF02D8  40 82 00 10 */	bne lbl_80AF02E8
/* 80AF02DC  7F C3 F3 78 */	mr r3, r30
/* 80AF02E0  38 80 00 01 */	li r4, 1
/* 80AF02E4  48 00 0D C1 */	bl doNormalAction__16daNpc_SoldierA_cFi
lbl_80AF02E8:
/* 80AF02E8  3B A0 00 00 */	li r29, 0
/* 80AF02EC  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80AF02F0  28 00 00 00 */	cmplwi r0, 0
/* 80AF02F4  40 82 00 1C */	bne lbl_80AF0310
/* 80AF02F8  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80AF02FC  28 00 00 00 */	cmplwi r0, 0
/* 80AF0300  41 82 00 14 */	beq lbl_80AF0314
/* 80AF0304  4B 53 F7 51 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80AF0308  2C 03 00 00 */	cmpwi r3, 0
/* 80AF030C  40 82 00 08 */	bne lbl_80AF0314
lbl_80AF0310:
/* 80AF0310  3B A0 00 01 */	li r29, 1
lbl_80AF0314:
/* 80AF0314  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80AF0318  41 82 00 0C */	beq lbl_80AF0324
/* 80AF031C  38 00 00 00 */	li r0, 0
/* 80AF0320  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AF0324:
/* 80AF0324  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF0328  38 63 26 E8 */	addi r3, r3, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF032C  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80AF0330  28 00 00 00 */	cmplwi r0, 0
/* 80AF0334  40 82 00 AC */	bne lbl_80AF03E0
/* 80AF0338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF033C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF0340  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80AF0344  28 03 00 00 */	cmplwi r3, 0
/* 80AF0348  41 82 00 30 */	beq lbl_80AF0378
/* 80AF034C  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 80AF0350  28 00 00 00 */	cmplwi r0, 0
/* 80AF0354  41 82 00 8C */	beq lbl_80AF03E0
/* 80AF0358  38 00 00 00 */	li r0, 0
/* 80AF035C  28 03 00 00 */	cmplwi r3, 0
/* 80AF0360  41 82 00 0C */	beq lbl_80AF036C
/* 80AF0364  28 03 00 02 */	cmplwi r3, 2
/* 80AF0368  40 82 00 08 */	bne lbl_80AF0370
lbl_80AF036C:
/* 80AF036C  38 00 00 01 */	li r0, 1
lbl_80AF0370:
/* 80AF0370  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF0374  41 82 00 6C */	beq lbl_80AF03E0
lbl_80AF0378:
/* 80AF0378  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AF037C  28 00 00 00 */	cmplwi r0, 0
/* 80AF0380  41 82 00 24 */	beq lbl_80AF03A4
/* 80AF0384  38 7F 00 68 */	addi r3, r31, 0x68
/* 80AF0388  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80AF038C  7C 63 02 14 */	add r3, r3, r0
/* 80AF0390  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF0394  54 00 10 3A */	slwi r0, r0, 2
/* 80AF0398  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80AF039C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF03A0  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80AF03A4:
/* 80AF03A4  7F C3 F3 78 */	mr r3, r30
/* 80AF03A8  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 80AF03AC  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AF03B0  54 00 18 38 */	slwi r0, r0, 3
/* 80AF03B4  38 BF 00 68 */	addi r5, r31, 0x68
/* 80AF03B8  7C 05 00 2E */	lwzx r0, r5, r0
/* 80AF03BC  54 00 10 3A */	slwi r0, r0, 2
/* 80AF03C0  38 BF 00 78 */	addi r5, r31, 0x78
/* 80AF03C4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AF03C8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AF03CC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AF03D0  38 E0 00 28 */	li r7, 0x28
/* 80AF03D4  39 00 00 FF */	li r8, 0xff
/* 80AF03D8  39 20 00 01 */	li r9, 1
/* 80AF03DC  4B 66 34 A1 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AF03E0:
/* 80AF03E0  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 80AF03E4  28 00 00 00 */	cmplwi r0, 0
/* 80AF03E8  41 82 00 1C */	beq lbl_80AF0404
/* 80AF03EC  3C 60 80 AF */	lis r3, lit_4449@ha /* 0x80AF2768@ha */
/* 80AF03F0  C0 03 27 68 */	lfs f0, lit_4449@l(r3)  /* 0x80AF2768@l */
/* 80AF03F4  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80AF03F8  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80AF03FC  38 00 00 00 */	li r0, 0
/* 80AF0400  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_80AF0404:
/* 80AF0404  7F C3 F3 78 */	mr r3, r30
/* 80AF0408  48 00 09 2D */	bl playMotion__16daNpc_SoldierA_cFv
/* 80AF040C  38 60 00 01 */	li r3, 1
/* 80AF0410  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF0414  4B 87 1E 15 */	bl _restgpr_29
/* 80AF0418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF041C  7C 08 03 A6 */	mtlr r0
/* 80AF0420  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF0424  4E 80 00 20 */	blr 
