lbl_8054BC98:
/* 8054BC98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054BC9C  7C 08 02 A6 */	mflr r0
/* 8054BCA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054BCA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8054BCA8  4B E1 65 35 */	bl _savegpr_29
/* 8054BCAC  7C 7F 1B 78 */	mr r31, r3
/* 8054BCB0  3C 60 80 55 */	lis r3, m__21daNpc_Kakashi_Param_c@ha /* 0x8054EAC4@ha */
/* 8054BCB4  3B C3 EA C4 */	addi r30, r3, m__21daNpc_Kakashi_Param_c@l /* 0x8054EAC4@l */
/* 8054BCB8  38 7F 13 4C */	addi r3, r31, 0x134c
/* 8054BCBC  38 1F 13 94 */	addi r0, r31, 0x1394
/* 8054BCC0  7F A3 00 50 */	subf r29, r3, r0
/* 8054BCC4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8054BCC8  28 03 00 00 */	cmplwi r3, 0
/* 8054BCCC  41 82 00 08 */	beq lbl_8054BCD4
/* 8054BCD0  4B BF 9A 95 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8054BCD4:
/* 8054BCD4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8054BCD8  38 80 00 00 */	li r4, 0
/* 8054BCDC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8054BCE0  7C A3 00 50 */	subf r5, r3, r0
/* 8054BCE4  4B AB 77 75 */	bl memset
/* 8054BCE8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8054BCEC  4B BF 9B AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054BCF0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8054BCF4  4B BF 9B A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054BCF8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8054BCFC  4B BF 99 D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054BD00  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8054BD04  4B BF 99 D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054BD08  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8054BD0C  4B BF AF 8D */	bl initialize__15daNpcT_JntAnm_cFv
/* 8054BD10  38 A0 00 00 */	li r5, 0
/* 8054BD14  38 60 00 00 */	li r3, 0
/* 8054BD18  7C A4 2B 78 */	mr r4, r5
/* 8054BD1C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8054BD20  38 00 00 02 */	li r0, 2
/* 8054BD24  7C 09 03 A6 */	mtctr r0
lbl_8054BD28:
/* 8054BD28  7C DF 22 14 */	add r6, r31, r4
/* 8054BD2C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8054BD30  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8054BD34  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8054BD38  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8054BD3C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8054BD40  38 63 00 04 */	addi r3, r3, 4
/* 8054BD44  38 84 00 06 */	addi r4, r4, 6
/* 8054BD48  42 00 FF E0 */	bdnz lbl_8054BD28
/* 8054BD4C  38 00 00 00 */	li r0, 0
/* 8054BD50  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8054BD54  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8054BD58  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8054BD5C  38 00 FF FF */	li r0, -1
/* 8054BD60  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8054BD64  38 00 00 01 */	li r0, 1
/* 8054BD68  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8054BD6C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8054BD70  4B D1 BB E5 */	bl cM_rndF__Ff
/* 8054BD74  FC 00 08 1E */	fctiwz f0, f1
/* 8054BD78  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8054BD7C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8054BD80  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8054BD84  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8054BD88  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8054BD8C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8054BD90  38 7F 13 4C */	addi r3, r31, 0x134c
/* 8054BD94  38 80 00 00 */	li r4, 0
/* 8054BD98  7F A5 EB 78 */	mr r5, r29
/* 8054BD9C  4B AB 76 BD */	bl memset
/* 8054BDA0  38 00 00 00 */	li r0, 0
/* 8054BDA4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8054BDA8  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8054BDAC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8054BDB0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8054BDB4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8054BDB8  88 1F 13 48 */	lbz r0, 0x1348(r31)
/* 8054BDBC  2C 00 00 02 */	cmpwi r0, 2
/* 8054BDC0  41 82 00 5C */	beq lbl_8054BE1C
/* 8054BDC4  40 80 00 14 */	bge lbl_8054BDD8
/* 8054BDC8  2C 00 00 00 */	cmpwi r0, 0
/* 8054BDCC  41 82 00 1C */	beq lbl_8054BDE8
/* 8054BDD0  40 80 00 40 */	bge lbl_8054BE10
/* 8054BDD4  48 00 00 68 */	b lbl_8054BE3C
lbl_8054BDD8:
/* 8054BDD8  2C 00 00 04 */	cmpwi r0, 4
/* 8054BDDC  41 82 00 58 */	beq lbl_8054BE34
/* 8054BDE0  40 80 00 5C */	bge lbl_8054BE3C
/* 8054BDE4  48 00 00 44 */	b lbl_8054BE28
lbl_8054BDE8:
/* 8054BDE8  38 60 00 00 */	li r3, 0
/* 8054BDEC  4B AE 58 BD */	bl daNpcKakashi_setSwdTutorialStep__FUc
/* 8054BDF0  4B AE 5A 49 */	bl daNpcKakashi_clrSuccessCount__Fv
/* 8054BDF4  38 60 00 11 */	li r3, 0x11
/* 8054BDF8  4B C0 0D 35 */	bl daNpcT_offTmpBit__FUl
/* 8054BDFC  38 60 00 12 */	li r3, 0x12
/* 8054BE00  4B C0 0D 2D */	bl daNpcT_offTmpBit__FUl
/* 8054BE04  38 00 00 02 */	li r0, 2
/* 8054BE08  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8054BE0C  48 00 00 30 */	b lbl_8054BE3C
lbl_8054BE10:
/* 8054BE10  38 00 00 01 */	li r0, 1
/* 8054BE14  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8054BE18  48 00 00 24 */	b lbl_8054BE3C
lbl_8054BE1C:
/* 8054BE1C  38 00 00 02 */	li r0, 2
/* 8054BE20  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8054BE24  48 00 00 18 */	b lbl_8054BE3C
lbl_8054BE28:
/* 8054BE28  38 00 00 02 */	li r0, 2
/* 8054BE2C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8054BE30  48 00 00 0C */	b lbl_8054BE3C
lbl_8054BE34:
/* 8054BE34  38 00 00 02 */	li r0, 2
/* 8054BE38  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_8054BE3C:
/* 8054BE3C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8054BE40  2C 00 00 02 */	cmpwi r0, 2
/* 8054BE44  40 82 00 30 */	bne lbl_8054BE74
/* 8054BE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054BE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054BE50  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8054BE54  3C 80 80 55 */	lis r4, d_a_npc_kakashi__stringBase0@ha /* 0x8054EBD0@ha */
/* 8054BE58  38 84 EB D0 */	addi r4, r4, d_a_npc_kakashi__stringBase0@l /* 0x8054EBD0@l */
/* 8054BE5C  38 84 01 BE */	addi r4, r4, 0x1be
/* 8054BE60  4B E1 CB 35 */	bl strcmp
/* 8054BE64  2C 03 00 00 */	cmpwi r3, 0
/* 8054BE68  40 82 00 0C */	bne lbl_8054BE74
/* 8054BE6C  38 00 00 01 */	li r0, 1
/* 8054BE70  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_8054BE74:
/* 8054BE74  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8054BE78  90 01 00 08 */	stw r0, 8(r1)
/* 8054BE7C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8054BE80  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8054BE84  7F E3 FB 78 */	mr r3, r31
/* 8054BE88  38 81 00 08 */	addi r4, r1, 8
/* 8054BE8C  4B BF EB 11 */	bl setAngle__8daNpcT_cF5csXyz
/* 8054BE90  39 61 00 30 */	addi r11, r1, 0x30
/* 8054BE94  4B E1 63 95 */	bl _restgpr_29
/* 8054BE98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054BE9C  7C 08 03 A6 */	mtlr r0
/* 8054BEA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8054BEA4  4E 80 00 20 */	blr 
