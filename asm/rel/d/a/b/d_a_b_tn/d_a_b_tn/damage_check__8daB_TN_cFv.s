lbl_806213FC:
/* 806213FC  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80621400  7C 08 02 A6 */	mflr r0
/* 80621404  90 01 01 74 */	stw r0, 0x174(r1)
/* 80621408  39 61 01 70 */	addi r11, r1, 0x170
/* 8062140C  4B D4 0D B4 */	b _savegpr_22
/* 80621410  7C 79 1B 78 */	mr r25, r3
/* 80621414  38 79 2E 6C */	addi r3, r25, 0x2e6c
/* 80621418  4B A6 24 18 */	b Move__10dCcD_GSttsFv
/* 8062141C  3A E0 00 00 */	li r23, 0
/* 80621420  3B 00 00 00 */	li r24, 0
/* 80621424  3B 40 00 01 */	li r26, 1
lbl_80621428:
/* 80621428  7F 79 C2 14 */	add r27, r25, r24
/* 8062142C  38 7B 37 50 */	addi r3, r27, 0x3750
/* 80621430  4B A6 2E 90 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80621434  28 03 00 00 */	cmplwi r3, 0
/* 80621438  41 82 00 38 */	beq lbl_80621470
/* 8062143C  9B 59 0A 9A */	stb r26, 0xa9a(r25)
/* 80621440  80 1B 37 AC */	lwz r0, 0x37ac(r27)
/* 80621444  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80621448  41 82 00 28 */	beq lbl_80621470
/* 8062144C  88 1B 37 C7 */	lbz r0, 0x37c7(r27)
/* 80621450  2C 00 00 0A */	cmpwi r0, 0xa
/* 80621454  40 82 00 1C */	bne lbl_80621470
/* 80621458  7F 23 CB 78 */	mr r3, r25
/* 8062145C  38 80 00 00 */	li r4, 0
/* 80621460  4B FF F5 81 */	bl setSwordAtBit__8daB_TN_cFi
/* 80621464  3C 60 80 63 */	lis r3, m_attack_tn@ha
/* 80621468  93 23 F2 FC */	stw r25, m_attack_tn@l(r3)
/* 8062146C  48 00 00 14 */	b lbl_80621480
lbl_80621470:
/* 80621470  3A F7 00 01 */	addi r23, r23, 1
/* 80621474  2C 17 00 04 */	cmpwi r23, 4
/* 80621478  3B 18 01 38 */	addi r24, r24, 0x138
/* 8062147C  41 80 FF AC */	blt lbl_80621428
lbl_80621480:
/* 80621480  38 79 3C 30 */	addi r3, r25, 0x3c30
/* 80621484  4B A6 2E 3C */	b ChkAtHit__12dCcD_GObjInfFv
/* 80621488  28 03 00 00 */	cmplwi r3, 0
/* 8062148C  41 82 00 38 */	beq lbl_806214C4
/* 80621490  38 00 00 01 */	li r0, 1
/* 80621494  98 19 0A 9A */	stb r0, 0xa9a(r25)
/* 80621498  80 19 3C 8C */	lwz r0, 0x3c8c(r25)
/* 8062149C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806214A0  41 82 00 24 */	beq lbl_806214C4
/* 806214A4  88 19 3C A7 */	lbz r0, 0x3ca7(r25)
/* 806214A8  2C 00 00 0A */	cmpwi r0, 0xa
/* 806214AC  40 82 00 18 */	bne lbl_806214C4
/* 806214B0  7F 23 CB 78 */	mr r3, r25
/* 806214B4  38 80 00 00 */	li r4, 0
/* 806214B8  4B FF F5 29 */	bl setSwordAtBit__8daB_TN_cFi
/* 806214BC  3C 60 80 63 */	lis r3, m_attack_tn@ha
/* 806214C0  93 23 F2 FC */	stw r25, m_attack_tn@l(r3)
lbl_806214C4:
/* 806214C4  38 79 36 18 */	addi r3, r25, 0x3618
/* 806214C8  4B A6 2D F8 */	b ChkAtHit__12dCcD_GObjInfFv
/* 806214CC  28 03 00 00 */	cmplwi r3, 0
/* 806214D0  41 82 00 60 */	beq lbl_80621530
/* 806214D4  80 19 36 74 */	lwz r0, 0x3674(r25)
/* 806214D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806214DC  40 82 00 54 */	bne lbl_80621530
/* 806214E0  38 00 00 01 */	li r0, 1
/* 806214E4  98 19 0A 9A */	stb r0, 0xa9a(r25)
/* 806214E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703AB@ha */
/* 806214EC  38 03 03 AB */	addi r0, r3, 0x03AB /* 0x000703AB@l */
/* 806214F0  90 01 00 08 */	stw r0, 8(r1)
/* 806214F4  38 79 06 4C */	addi r3, r25, 0x64c
/* 806214F8  38 81 00 08 */	addi r4, r1, 8
/* 806214FC  38 A0 00 00 */	li r5, 0
/* 80621500  38 C0 FF FF */	li r6, -1
/* 80621504  81 99 06 4C */	lwz r12, 0x64c(r25)
/* 80621508  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062150C  7D 89 03 A6 */	mtctr r12
/* 80621510  4E 80 04 21 */	bctrl 
/* 80621514  38 79 36 18 */	addi r3, r25, 0x3618
/* 80621518  81 99 36 54 */	lwz r12, 0x3654(r25)
/* 8062151C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80621520  7D 89 03 A6 */	mtctr r12
/* 80621524  4E 80 04 21 */	bctrl 
/* 80621528  3C 60 80 63 */	lis r3, m_attack_tn@ha
/* 8062152C  93 23 F2 FC */	stw r25, m_attack_tn@l(r3)
lbl_80621530:
/* 80621530  A8 19 0A 68 */	lha r0, 0xa68(r25)
/* 80621534  2C 00 00 00 */	cmpwi r0, 0
/* 80621538  40 82 0E 50 */	bne lbl_80622388
/* 8062153C  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 80621540  2C 00 00 08 */	cmpwi r0, 8
/* 80621544  41 82 0E 44 */	beq lbl_80622388
/* 80621548  2C 00 00 0E */	cmpwi r0, 0xe
/* 8062154C  41 82 0E 3C */	beq lbl_80622388
/* 80621550  38 61 00 0C */	addi r3, r1, 0xc
/* 80621554  4B A6 24 D4 */	b __ct__12dCcD_GObjInfFv
/* 80621558  3B 61 01 10 */	addi r27, r1, 0x110
/* 8062155C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621560  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621564  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621568  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 8062156C  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621570  90 01 01 28 */	stw r0, 0x128(r1)
/* 80621574  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621578  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8062157C  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621580  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621584  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80621588  90 61 01 2C */	stw r3, 0x12c(r1)
/* 8062158C  3B 43 00 58 */	addi r26, r3, 0x58
/* 80621590  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621594  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621598  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8062159C  90 61 00 48 */	stw r3, 0x48(r1)
/* 806215A0  3B A3 00 2C */	addi r29, r3, 0x2c
/* 806215A4  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 806215A8  3B 83 00 84 */	addi r28, r3, 0x84
/* 806215AC  93 81 01 40 */	stw r28, 0x140(r1)
/* 806215B0  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 806215B4  2C 00 00 01 */	cmpwi r0, 1
/* 806215B8  41 81 01 84 */	bgt lbl_8062173C
/* 806215BC  38 00 00 00 */	li r0, 0
/* 806215C0  90 19 3E B8 */	stw r0, 0x3eb8(r25)
/* 806215C4  38 79 36 18 */	addi r3, r25, 0x3618
/* 806215C8  4B A6 2E 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806215CC  28 03 00 00 */	cmplwi r3, 0
/* 806215D0  41 82 00 1C */	beq lbl_806215EC
/* 806215D4  38 79 36 18 */	addi r3, r25, 0x3618
/* 806215D8  4B A6 2F 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806215DC  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 806215E0  38 61 00 0C */	addi r3, r1, 0xc
/* 806215E4  38 99 36 18 */	addi r4, r25, 0x3618
/* 806215E8  48 00 0D B9 */	bl __as__8dCcD_SphFRC8dCcD_Sph
lbl_806215EC:
/* 806215EC  3A E0 00 00 */	li r23, 0
/* 806215F0  3B 00 00 00 */	li r24, 0
lbl_806215F4:
/* 806215F4  3B D8 2E C8 */	addi r30, r24, 0x2ec8
/* 806215F8  7F D9 F2 14 */	add r30, r25, r30
/* 806215FC  7F C3 F3 78 */	mr r3, r30
/* 80621600  4B A6 2E 60 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80621604  28 03 00 00 */	cmplwi r3, 0
/* 80621608  41 82 00 20 */	beq lbl_80621628
/* 8062160C  7F C3 F3 78 */	mr r3, r30
/* 80621610  4B A6 2E E8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621614  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 80621618  38 61 00 0C */	addi r3, r1, 0xc
/* 8062161C  7F C4 F3 78 */	mr r4, r30
/* 80621620  48 00 0D 81 */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 80621624  48 00 00 14 */	b lbl_80621638
lbl_80621628:
/* 80621628  3A F7 00 01 */	addi r23, r23, 1
/* 8062162C  2C 17 00 03 */	cmpwi r23, 3
/* 80621630  3B 18 01 38 */	addi r24, r24, 0x138
/* 80621634  41 80 FF C0 */	blt lbl_806215F4
lbl_80621638:
/* 80621638  3A E0 00 00 */	li r23, 0
/* 8062163C  3B 00 00 00 */	li r24, 0
lbl_80621640:
/* 80621640  3B D8 32 70 */	addi r30, r24, 0x3270
/* 80621644  7F D9 F2 14 */	add r30, r25, r30
/* 80621648  7F C3 F3 78 */	mr r3, r30
/* 8062164C  4B A6 2E 14 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80621650  28 03 00 00 */	cmplwi r3, 0
/* 80621654  41 82 00 20 */	beq lbl_80621674
/* 80621658  7F C3 F3 78 */	mr r3, r30
/* 8062165C  4B A6 2E 9C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621660  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 80621664  38 61 00 0C */	addi r3, r1, 0xc
/* 80621668  7F C4 F3 78 */	mr r4, r30
/* 8062166C  48 00 0D 35 */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 80621670  48 00 00 14 */	b lbl_80621684
lbl_80621674:
/* 80621674  3A F7 00 01 */	addi r23, r23, 1
/* 80621678  2C 17 00 03 */	cmpwi r23, 3
/* 8062167C  3B 18 01 38 */	addi r24, r24, 0x138
/* 80621680  41 80 FF C0 */	blt lbl_80621640
lbl_80621684:
/* 80621684  80 19 3E B8 */	lwz r0, 0x3eb8(r25)
/* 80621688  28 00 00 00 */	cmplwi r0, 0
/* 8062168C  41 82 00 48 */	beq lbl_806216D4
/* 80621690  7F 23 CB 78 */	mr r3, r25
/* 80621694  38 81 00 0C */	addi r4, r1, 0xc
/* 80621698  4B FF FC F5 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 8062169C  7F 23 CB 78 */	mr r3, r25
/* 806216A0  38 80 00 01 */	li r4, 1
/* 806216A4  38 A0 00 02 */	li r5, 2
/* 806216A8  4B FF F3 21 */	bl setActionMode__8daB_TN_cFii
/* 806216AC  80 79 3E B8 */	lwz r3, 0x3eb8(r25)
/* 806216B0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806216B4  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 806216B8  40 82 00 14 */	bne lbl_806216CC
/* 806216BC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 806216C0  40 82 00 0C */	bne lbl_806216CC
/* 806216C4  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 806216C8  41 82 00 0C */	beq lbl_806216D4
lbl_806216CC:
/* 806216CC  38 00 00 0F */	li r0, 0xf
/* 806216D0  90 19 0A 60 */	stw r0, 0xa60(r25)
lbl_806216D4:
/* 806216D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806216D8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806216DC  90 01 00 48 */	stw r0, 0x48(r1)
/* 806216E0  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 806216E4  93 81 01 40 */	stw r28, 0x140(r1)
/* 806216E8  28 1B 00 00 */	cmplwi r27, 0
/* 806216EC  41 82 00 40 */	beq lbl_8062172C
/* 806216F0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806216F4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806216F8  90 01 01 2C */	stw r0, 0x12c(r1)
/* 806216FC  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621700  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621704  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621708  90 01 01 40 */	stw r0, 0x140(r1)
/* 8062170C  41 82 00 20 */	beq lbl_8062172C
/* 80621710  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621714  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621718  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8062171C  41 82 00 10 */	beq lbl_8062172C
/* 80621720  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621724  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621728  90 01 01 28 */	stw r0, 0x128(r1)
lbl_8062172C:
/* 8062172C  38 61 00 0C */	addi r3, r1, 0xc
/* 80621730  38 80 00 00 */	li r4, 0
/* 80621734  4B A6 29 B0 */	b __dt__12dCcD_GObjInfFv
/* 80621738  48 00 0C 50 */	b lbl_80622388
lbl_8062173C:
/* 8062173C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80621740  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80621744  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80621748  8B E3 05 68 */	lbz r31, 0x568(r3)
/* 8062174C  2C 00 00 08 */	cmpwi r0, 8
/* 80621750  40 80 01 E4 */	bge lbl_80621934
/* 80621754  38 79 36 18 */	addi r3, r25, 0x3618
/* 80621758  4B A6 2D 08 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8062175C  28 03 00 00 */	cmplwi r3, 0
/* 80621760  41 82 01 D4 */	beq lbl_80621934
/* 80621764  38 79 36 18 */	addi r3, r25, 0x3618
/* 80621768  4B A6 2D 90 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8062176C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80621770  70 00 00 12 */	andi. r0, r0, 0x12
/* 80621774  41 82 01 C0 */	beq lbl_80621934
/* 80621778  2C 1F 00 05 */	cmpwi r31, 5
/* 8062177C  41 82 01 B8 */	beq lbl_80621934
/* 80621780  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80621784  41 82 01 B0 */	beq lbl_80621934
/* 80621788  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 8062178C  41 82 01 A8 */	beq lbl_80621934
/* 80621790  38 79 36 18 */	addi r3, r25, 0x3618
/* 80621794  4B A6 2D 64 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621798  7C 64 1B 78 */	mr r4, r3
/* 8062179C  38 79 06 4C */	addi r3, r25, 0x64c
/* 806217A0  38 A0 00 2A */	li r5, 0x2a
/* 806217A4  7F 26 CB 78 */	mr r6, r25
/* 806217A8  4B A6 5D 6C */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806217AC  38 00 00 00 */	li r0, 0
/* 806217B0  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 806217B4  38 79 36 18 */	addi r3, r25, 0x3618
/* 806217B8  4B A6 2D 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806217BC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806217C0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806217C4  41 82 00 F8 */	beq lbl_806218BC
/* 806217C8  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 806217CC  2C 00 00 06 */	cmpwi r0, 6
/* 806217D0  41 82 00 6C */	beq lbl_8062183C
/* 806217D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806217D8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806217DC  90 01 00 48 */	stw r0, 0x48(r1)
/* 806217E0  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 806217E4  93 81 01 40 */	stw r28, 0x140(r1)
/* 806217E8  28 1B 00 00 */	cmplwi r27, 0
/* 806217EC  41 82 00 40 */	beq lbl_8062182C
/* 806217F0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806217F4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806217F8  90 01 01 2C */	stw r0, 0x12c(r1)
/* 806217FC  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621800  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621804  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621808  90 01 01 40 */	stw r0, 0x140(r1)
/* 8062180C  41 82 00 20 */	beq lbl_8062182C
/* 80621810  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621814  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621818  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8062181C  41 82 00 10 */	beq lbl_8062182C
/* 80621820  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621824  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621828  90 01 01 28 */	stw r0, 0x128(r1)
lbl_8062182C:
/* 8062182C  38 61 00 0C */	addi r3, r1, 0xc
/* 80621830  38 80 00 00 */	li r4, 0
/* 80621834  4B A6 28 B0 */	b __dt__12dCcD_GObjInfFv
/* 80621838  48 00 0B 50 */	b lbl_80622388
lbl_8062183C:
/* 8062183C  40 82 00 78 */	bne lbl_806218B4
/* 80621840  88 19 0A A8 */	lbz r0, 0xaa8(r25)
/* 80621844  28 00 00 00 */	cmplwi r0, 0
/* 80621848  41 82 00 6C */	beq lbl_806218B4
/* 8062184C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621850  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621854  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621858  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 8062185C  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621860  28 1B 00 00 */	cmplwi r27, 0
/* 80621864  41 82 00 40 */	beq lbl_806218A4
/* 80621868  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8062186C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621870  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621874  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621878  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 8062187C  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621880  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621884  41 82 00 20 */	beq lbl_806218A4
/* 80621888  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8062188C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621890  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621894  41 82 00 10 */	beq lbl_806218A4
/* 80621898  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 8062189C  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806218A0  90 01 01 28 */	stw r0, 0x128(r1)
lbl_806218A4:
/* 806218A4  38 61 00 0C */	addi r3, r1, 0xc
/* 806218A8  38 80 00 00 */	li r4, 0
/* 806218AC  4B A6 28 38 */	b __dt__12dCcD_GObjInfFv
/* 806218B0  48 00 0A D8 */	b lbl_80622388
lbl_806218B4:
/* 806218B4  38 00 00 01 */	li r0, 1
/* 806218B8  98 19 0A A8 */	stb r0, 0xaa8(r25)
lbl_806218BC:
/* 806218BC  7F 23 CB 78 */	mr r3, r25
/* 806218C0  38 80 00 06 */	li r4, 6
/* 806218C4  38 A0 00 00 */	li r5, 0
/* 806218C8  4B FF F1 01 */	bl setActionMode__8daB_TN_cFii
/* 806218CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806218D0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806218D4  90 01 00 48 */	stw r0, 0x48(r1)
/* 806218D8  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 806218DC  93 81 01 40 */	stw r28, 0x140(r1)
/* 806218E0  28 1B 00 00 */	cmplwi r27, 0
/* 806218E4  41 82 00 40 */	beq lbl_80621924
/* 806218E8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806218EC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806218F0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 806218F4  93 41 01 40 */	stw r26, 0x140(r1)
/* 806218F8  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 806218FC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621900  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621904  41 82 00 20 */	beq lbl_80621924
/* 80621908  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8062190C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621910  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621914  41 82 00 10 */	beq lbl_80621924
/* 80621918  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 8062191C  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621920  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621924:
/* 80621924  38 61 00 0C */	addi r3, r1, 0xc
/* 80621928  38 80 00 00 */	li r4, 0
/* 8062192C  4B A6 27 B8 */	b __dt__12dCcD_GObjInfFv
/* 80621930  48 00 0A 58 */	b lbl_80622388
lbl_80621934:
/* 80621934  38 00 00 00 */	li r0, 0
/* 80621938  90 19 3E B8 */	stw r0, 0x3eb8(r25)
/* 8062193C  3A C0 00 00 */	li r22, 0
/* 80621940  3B 00 00 00 */	li r24, 0
lbl_80621944:
/* 80621944  3A F8 2E C8 */	addi r23, r24, 0x2ec8
/* 80621948  7E F9 BA 14 */	add r23, r25, r23
/* 8062194C  7E E3 BB 78 */	mr r3, r23
/* 80621950  4B A6 2B 10 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80621954  28 03 00 00 */	cmplwi r3, 0
/* 80621958  41 82 00 20 */	beq lbl_80621978
/* 8062195C  7E E3 BB 78 */	mr r3, r23
/* 80621960  4B A6 2B 98 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621964  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 80621968  38 61 00 0C */	addi r3, r1, 0xc
/* 8062196C  7E E4 BB 78 */	mr r4, r23
/* 80621970  48 00 0A 31 */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 80621974  48 00 00 14 */	b lbl_80621988
lbl_80621978:
/* 80621978  3A D6 00 01 */	addi r22, r22, 1
/* 8062197C  2C 16 00 03 */	cmpwi r22, 3
/* 80621980  3B 18 01 38 */	addi r24, r24, 0x138
/* 80621984  41 80 FF C0 */	blt lbl_80621944
lbl_80621988:
/* 80621988  80 79 3E B8 */	lwz r3, 0x3eb8(r25)
/* 8062198C  28 03 00 00 */	cmplwi r3, 0
/* 80621990  41 82 05 B8 */	beq lbl_80621F48
/* 80621994  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80621998  40 82 00 6C */	bne lbl_80621A04
/* 8062199C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806219A0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806219A4  90 01 00 48 */	stw r0, 0x48(r1)
/* 806219A8  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 806219AC  93 81 01 40 */	stw r28, 0x140(r1)
/* 806219B0  28 1B 00 00 */	cmplwi r27, 0
/* 806219B4  41 82 00 40 */	beq lbl_806219F4
/* 806219B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806219BC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806219C0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 806219C4  93 41 01 40 */	stw r26, 0x140(r1)
/* 806219C8  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 806219CC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806219D0  90 01 01 40 */	stw r0, 0x140(r1)
/* 806219D4  41 82 00 20 */	beq lbl_806219F4
/* 806219D8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806219DC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806219E0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 806219E4  41 82 00 10 */	beq lbl_806219F4
/* 806219E8  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 806219EC  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806219F0  90 01 01 28 */	stw r0, 0x128(r1)
lbl_806219F4:
/* 806219F4  38 61 00 0C */	addi r3, r1, 0xc
/* 806219F8  38 80 00 00 */	li r4, 0
/* 806219FC  4B A6 26 E8 */	b __dt__12dCcD_GObjInfFv
/* 80621A00  48 00 09 88 */	b lbl_80622388
lbl_80621A04:
/* 80621A04  80 99 06 F0 */	lwz r4, 0x6f0(r25)
/* 80621A08  2C 04 00 08 */	cmpwi r4, 8
/* 80621A0C  40 80 02 84 */	bge lbl_80621C90
/* 80621A10  38 1F FF DB */	addi r0, r31, -37
/* 80621A14  28 00 00 01 */	cmplwi r0, 1
/* 80621A18  40 81 00 10 */	ble lbl_80621A28
/* 80621A1C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80621A20  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 80621A24  41 82 00 80 */	beq lbl_80621AA4
lbl_80621A28:
/* 80621A28  7F 23 CB 78 */	mr r3, r25
/* 80621A2C  38 81 00 0C */	addi r4, r1, 0xc
/* 80621A30  4B FF F9 5D */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80621A34  38 00 00 0F */	li r0, 0xf
/* 80621A38  90 19 0A 60 */	stw r0, 0xa60(r25)
/* 80621A3C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621A40  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621A44  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621A48  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621A4C  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621A50  28 1B 00 00 */	cmplwi r27, 0
/* 80621A54  41 82 00 40 */	beq lbl_80621A94
/* 80621A58  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621A5C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621A60  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621A64  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621A68  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621A6C  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621A70  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621A74  41 82 00 20 */	beq lbl_80621A94
/* 80621A78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621A7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621A80  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621A84  41 82 00 10 */	beq lbl_80621A94
/* 80621A88  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621A8C  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621A90  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621A94:
/* 80621A94  38 61 00 0C */	addi r3, r1, 0xc
/* 80621A98  38 80 00 00 */	li r4, 0
/* 80621A9C  4B A6 26 48 */	b __dt__12dCcD_GObjInfFv
/* 80621AA0  48 00 08 E8 */	b lbl_80622388
lbl_80621AA4:
/* 80621AA4  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80621AA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80621AAC  41 82 01 3C */	beq lbl_80621BE8
/* 80621AB0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80621AB4  41 82 00 A8 */	beq lbl_80621B5C
/* 80621AB8  2C 04 00 06 */	cmpwi r4, 6
/* 80621ABC  40 82 00 78 */	bne lbl_80621B34
/* 80621AC0  88 19 0A A8 */	lbz r0, 0xaa8(r25)
/* 80621AC4  28 00 00 00 */	cmplwi r0, 0
/* 80621AC8  41 82 00 6C */	beq lbl_80621B34
/* 80621ACC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621AD0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621AD4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621AD8  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621ADC  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621AE0  28 1B 00 00 */	cmplwi r27, 0
/* 80621AE4  41 82 00 40 */	beq lbl_80621B24
/* 80621AE8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621AEC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621AF0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621AF4  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621AF8  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621AFC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621B00  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621B04  41 82 00 20 */	beq lbl_80621B24
/* 80621B08  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621B0C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621B10  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621B14  41 82 00 10 */	beq lbl_80621B24
/* 80621B18  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621B1C  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621B20  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621B24:
/* 80621B24  38 61 00 0C */	addi r3, r1, 0xc
/* 80621B28  38 80 00 00 */	li r4, 0
/* 80621B2C  4B A6 25 B8 */	b __dt__12dCcD_GObjInfFv
/* 80621B30  48 00 08 58 */	b lbl_80622388
lbl_80621B34:
/* 80621B34  38 00 00 01 */	li r0, 1
/* 80621B38  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 80621B3C  38 61 00 0C */	addi r3, r1, 0xc
/* 80621B40  4B A6 29 B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621B44  7C 64 1B 78 */	mr r4, r3
/* 80621B48  38 79 06 4C */	addi r3, r25, 0x64c
/* 80621B4C  38 A0 00 2A */	li r5, 0x2a
/* 80621B50  7F 26 CB 78 */	mr r6, r25
/* 80621B54  4B A6 59 C0 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80621B58  48 00 00 18 */	b lbl_80621B70
lbl_80621B5C:
/* 80621B5C  38 00 00 00 */	li r0, 0
/* 80621B60  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 80621B64  7F 23 CB 78 */	mr r3, r25
/* 80621B68  38 81 00 0C */	addi r4, r1, 0xc
/* 80621B6C  4B FF F8 21 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
lbl_80621B70:
/* 80621B70  7F 23 CB 78 */	mr r3, r25
/* 80621B74  38 80 00 06 */	li r4, 6
/* 80621B78  38 A0 00 00 */	li r5, 0
/* 80621B7C  4B FF EE 4D */	bl setActionMode__8daB_TN_cFii
/* 80621B80  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621B84  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621B88  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621B8C  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621B90  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621B94  28 1B 00 00 */	cmplwi r27, 0
/* 80621B98  41 82 00 40 */	beq lbl_80621BD8
/* 80621B9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621BA0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621BA4  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621BA8  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621BAC  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621BB0  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621BB4  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621BB8  41 82 00 20 */	beq lbl_80621BD8
/* 80621BBC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621BC0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621BC4  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621BC8  41 82 00 10 */	beq lbl_80621BD8
/* 80621BCC  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621BD0  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621BD4  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621BD8:
/* 80621BD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80621BDC  38 80 00 00 */	li r4, 0
/* 80621BE0  4B A6 25 04 */	b __dt__12dCcD_GObjInfFv
/* 80621BE4  48 00 07 A4 */	b lbl_80622388
lbl_80621BE8:
/* 80621BE8  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80621BEC  41 82 00 80 */	beq lbl_80621C6C
/* 80621BF0  7F 23 CB 78 */	mr r3, r25
/* 80621BF4  38 81 00 0C */	addi r4, r1, 0xc
/* 80621BF8  4B FF F7 95 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80621BFC  38 00 00 14 */	li r0, 0x14
/* 80621C00  90 19 0A 60 */	stw r0, 0xa60(r25)
/* 80621C04  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621C08  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621C0C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621C10  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621C14  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621C18  28 1B 00 00 */	cmplwi r27, 0
/* 80621C1C  41 82 00 40 */	beq lbl_80621C5C
/* 80621C20  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621C24  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621C28  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621C2C  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621C30  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621C34  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621C38  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621C3C  41 82 00 20 */	beq lbl_80621C5C
/* 80621C40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621C44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621C48  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621C4C  41 82 00 10 */	beq lbl_80621C5C
/* 80621C50  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621C54  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621C58  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621C5C:
/* 80621C5C  38 61 00 0C */	addi r3, r1, 0xc
/* 80621C60  38 80 00 00 */	li r4, 0
/* 80621C64  4B A6 24 80 */	b __dt__12dCcD_GObjInfFv
/* 80621C68  48 00 07 20 */	b lbl_80622388
lbl_80621C6C:
/* 80621C6C  2C 1F 00 05 */	cmpwi r31, 5
/* 80621C70  41 82 00 14 */	beq lbl_80621C84
/* 80621C74  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80621C78  41 82 00 0C */	beq lbl_80621C84
/* 80621C7C  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 80621C80  40 82 02 50 */	bne lbl_80621ED0
lbl_80621C84:
/* 80621C84  38 00 00 3C */	li r0, 0x3c
/* 80621C88  98 19 0A A9 */	stb r0, 0xaa9(r25)
/* 80621C8C  48 00 02 44 */	b lbl_80621ED0
lbl_80621C90:
/* 80621C90  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80621C94  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80621C98  41 82 00 A0 */	beq lbl_80621D38
/* 80621C9C  38 00 00 01 */	li r0, 1
/* 80621CA0  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 80621CA4  38 61 00 0C */	addi r3, r1, 0xc
/* 80621CA8  4B A6 28 50 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621CAC  7C 64 1B 78 */	mr r4, r3
/* 80621CB0  38 79 06 4C */	addi r3, r25, 0x64c
/* 80621CB4  38 A0 00 2A */	li r5, 0x2a
/* 80621CB8  7F 26 CB 78 */	mr r6, r25
/* 80621CBC  4B A6 58 58 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80621CC0  7F 23 CB 78 */	mr r3, r25
/* 80621CC4  38 80 00 0C */	li r4, 0xc
/* 80621CC8  38 A0 00 00 */	li r5, 0
/* 80621CCC  4B FF EC FD */	bl setActionMode__8daB_TN_cFii
/* 80621CD0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621CD4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621CD8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621CDC  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621CE0  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621CE4  28 1B 00 00 */	cmplwi r27, 0
/* 80621CE8  41 82 00 40 */	beq lbl_80621D28
/* 80621CEC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621CF0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621CF4  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621CF8  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621CFC  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621D00  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621D04  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621D08  41 82 00 20 */	beq lbl_80621D28
/* 80621D0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621D10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621D14  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621D18  41 82 00 10 */	beq lbl_80621D28
/* 80621D1C  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621D20  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621D24  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621D28:
/* 80621D28  38 61 00 0C */	addi r3, r1, 0xc
/* 80621D2C  38 80 00 00 */	li r4, 0
/* 80621D30  4B A6 23 B4 */	b __dt__12dCcD_GObjInfFv
/* 80621D34  48 00 06 54 */	b lbl_80622388
lbl_80621D38:
/* 80621D38  88 19 0A 91 */	lbz r0, 0xa91(r25)
/* 80621D3C  28 00 00 00 */	cmplwi r0, 0
/* 80621D40  41 82 01 90 */	beq lbl_80621ED0
/* 80621D44  88 19 0A 9F */	lbz r0, 0xa9f(r25)
/* 80621D48  28 00 00 00 */	cmplwi r0, 0
/* 80621D4C  40 82 00 14 */	bne lbl_80621D60
/* 80621D50  7F 23 CB 78 */	mr r3, r25
/* 80621D54  4B FF F2 4D */	bl getCutType__8daB_TN_cFv
/* 80621D58  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80621D5C  41 82 00 A8 */	beq lbl_80621E04
lbl_80621D60:
/* 80621D60  7F 23 CB 78 */	mr r3, r25
/* 80621D64  38 81 00 0C */	addi r4, r1, 0xc
/* 80621D68  4B FF F6 25 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80621D6C  88 19 0A 9F */	lbz r0, 0xa9f(r25)
/* 80621D70  28 00 00 00 */	cmplwi r0, 0
/* 80621D74  41 82 00 18 */	beq lbl_80621D8C
/* 80621D78  7F 23 CB 78 */	mr r3, r25
/* 80621D7C  38 80 00 0C */	li r4, 0xc
/* 80621D80  38 A0 00 0B */	li r5, 0xb
/* 80621D84  4B FF EC 45 */	bl setActionMode__8daB_TN_cFii
/* 80621D88  48 00 00 14 */	b lbl_80621D9C
lbl_80621D8C:
/* 80621D8C  7F 23 CB 78 */	mr r3, r25
/* 80621D90  38 80 00 0F */	li r4, 0xf
/* 80621D94  38 A0 00 00 */	li r5, 0
/* 80621D98  4B FF EC 31 */	bl setActionMode__8daB_TN_cFii
lbl_80621D9C:
/* 80621D9C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621DA0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621DA4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621DA8  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621DAC  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621DB0  28 1B 00 00 */	cmplwi r27, 0
/* 80621DB4  41 82 00 40 */	beq lbl_80621DF4
/* 80621DB8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621DBC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621DC0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621DC4  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621DC8  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621DCC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621DD0  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621DD4  41 82 00 20 */	beq lbl_80621DF4
/* 80621DD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621DDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621DE0  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621DE4  41 82 00 10 */	beq lbl_80621DF4
/* 80621DE8  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621DEC  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621DF0  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621DF4:
/* 80621DF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80621DF8  38 80 00 00 */	li r4, 0
/* 80621DFC  4B A6 22 E8 */	b __dt__12dCcD_GObjInfFv
/* 80621E00  48 00 05 88 */	b lbl_80622388
lbl_80621E04:
/* 80621E04  88 19 0A A7 */	lbz r0, 0xaa7(r25)
/* 80621E08  28 00 00 00 */	cmplwi r0, 0
/* 80621E0C  40 82 00 38 */	bne lbl_80621E44
/* 80621E10  7F 23 CB 78 */	mr r3, r25
/* 80621E14  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80621E18  4B 9F 88 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80621E1C  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80621E20  7C 00 18 50 */	subf r0, r0, r3
/* 80621E24  7C 03 07 34 */	extsh r3, r0
/* 80621E28  4B D4 32 A8 */	b abs
/* 80621E2C  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80621E30  41 80 00 14 */	blt lbl_80621E44
/* 80621E34  2C 1F 00 25 */	cmpwi r31, 0x25
/* 80621E38  41 82 00 0C */	beq lbl_80621E44
/* 80621E3C  2C 1F 00 26 */	cmpwi r31, 0x26
/* 80621E40  40 82 00 90 */	bne lbl_80621ED0
lbl_80621E44:
/* 80621E44  38 00 00 00 */	li r0, 0
/* 80621E48  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 80621E4C  7F 23 CB 78 */	mr r3, r25
/* 80621E50  38 81 00 0C */	addi r4, r1, 0xc
/* 80621E54  4B FF F5 39 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80621E58  7F 23 CB 78 */	mr r3, r25
/* 80621E5C  38 80 00 0C */	li r4, 0xc
/* 80621E60  38 A0 00 00 */	li r5, 0
/* 80621E64  4B FF EB 65 */	bl setActionMode__8daB_TN_cFii
/* 80621E68  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621E6C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621E70  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621E74  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621E78  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621E7C  28 1B 00 00 */	cmplwi r27, 0
/* 80621E80  41 82 00 40 */	beq lbl_80621EC0
/* 80621E84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621E88  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621E8C  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621E90  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621E94  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621E98  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621E9C  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621EA0  41 82 00 20 */	beq lbl_80621EC0
/* 80621EA4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621EA8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621EAC  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621EB0  41 82 00 10 */	beq lbl_80621EC0
/* 80621EB4  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621EB8  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621EBC  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621EC0:
/* 80621EC0  38 61 00 0C */	addi r3, r1, 0xc
/* 80621EC4  38 80 00 00 */	li r4, 0
/* 80621EC8  4B A6 22 1C */	b __dt__12dCcD_GObjInfFv
/* 80621ECC  48 00 04 BC */	b lbl_80622388
lbl_80621ED0:
/* 80621ED0  7F 23 CB 78 */	mr r3, r25
/* 80621ED4  38 81 00 0C */	addi r4, r1, 0xc
/* 80621ED8  38 A0 00 01 */	li r5, 1
/* 80621EDC  4B FF F1 95 */	bl setDamage__8daB_TN_cFP8dCcD_Sphi
/* 80621EE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80621EE4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80621EE8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621EEC  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80621EF0  93 81 01 40 */	stw r28, 0x140(r1)
/* 80621EF4  28 1B 00 00 */	cmplwi r27, 0
/* 80621EF8  41 82 00 40 */	beq lbl_80621F38
/* 80621EFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80621F00  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80621F04  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621F08  93 41 01 40 */	stw r26, 0x140(r1)
/* 80621F0C  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80621F10  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80621F14  90 01 01 40 */	stw r0, 0x140(r1)
/* 80621F18  41 82 00 20 */	beq lbl_80621F38
/* 80621F1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80621F20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80621F24  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80621F28  41 82 00 10 */	beq lbl_80621F38
/* 80621F2C  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80621F30  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80621F34  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80621F38:
/* 80621F38  38 61 00 0C */	addi r3, r1, 0xc
/* 80621F3C  38 80 00 00 */	li r4, 0
/* 80621F40  4B A6 21 A4 */	b __dt__12dCcD_GObjInfFv
/* 80621F44  48 00 04 44 */	b lbl_80622388
lbl_80621F48:
/* 80621F48  38 00 00 00 */	li r0, 0
/* 80621F4C  90 19 3E B8 */	stw r0, 0x3eb8(r25)
/* 80621F50  3A C0 00 00 */	li r22, 0
/* 80621F54  3B E0 00 00 */	li r31, 0
lbl_80621F58:
/* 80621F58  3A FF 32 70 */	addi r23, r31, 0x3270
/* 80621F5C  7E F9 BA 14 */	add r23, r25, r23
/* 80621F60  7E E3 BB 78 */	mr r3, r23
/* 80621F64  4B A6 24 FC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80621F68  28 03 00 00 */	cmplwi r3, 0
/* 80621F6C  41 82 00 20 */	beq lbl_80621F8C
/* 80621F70  7E E3 BB 78 */	mr r3, r23
/* 80621F74  4B A6 25 84 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80621F78  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 80621F7C  38 61 00 0C */	addi r3, r1, 0xc
/* 80621F80  7E E4 BB 78 */	mr r4, r23
/* 80621F84  48 00 04 1D */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 80621F88  48 00 00 14 */	b lbl_80621F9C
lbl_80621F8C:
/* 80621F8C  3A D6 00 01 */	addi r22, r22, 1
/* 80621F90  2C 16 00 03 */	cmpwi r22, 3
/* 80621F94  3B FF 01 38 */	addi r31, r31, 0x138
/* 80621F98  41 80 FF C0 */	blt lbl_80621F58
lbl_80621F9C:
/* 80621F9C  3B E0 00 00 */	li r31, 0
/* 80621FA0  7F 23 CB 78 */	mr r3, r25
/* 80621FA4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80621FA8  4B 9F 87 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80621FAC  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80621FB0  7C 00 18 50 */	subf r0, r0, r3
/* 80621FB4  7C 03 07 34 */	extsh r3, r0
/* 80621FB8  4B D4 31 18 */	b abs
/* 80621FBC  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80621FC0  40 81 00 08 */	ble lbl_80621FC8
/* 80621FC4  3B E0 00 01 */	li r31, 1
lbl_80621FC8:
/* 80621FC8  80 79 06 F0 */	lwz r3, 0x6f0(r25)
/* 80621FCC  2C 03 00 08 */	cmpwi r3, 8
/* 80621FD0  40 80 00 24 */	bge lbl_80621FF4
/* 80621FD4  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80621FD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80621FDC  41 82 00 10 */	beq lbl_80621FEC
/* 80621FE0  80 19 0A 78 */	lwz r0, 0xa78(r25)
/* 80621FE4  2C 00 00 0B */	cmpwi r0, 0xb
/* 80621FE8  41 80 00 1C */	blt lbl_80622004
lbl_80621FEC:
/* 80621FEC  3B E0 00 01 */	li r31, 1
/* 80621FF0  48 00 00 14 */	b lbl_80622004
lbl_80621FF4:
/* 80621FF4  88 19 0A 91 */	lbz r0, 0xa91(r25)
/* 80621FF8  28 00 00 00 */	cmplwi r0, 0
/* 80621FFC  40 82 00 08 */	bne lbl_80622004
/* 80622000  3B E0 00 01 */	li r31, 1
lbl_80622004:
/* 80622004  2C 03 00 08 */	cmpwi r3, 8
/* 80622008  40 80 00 30 */	bge lbl_80622038
/* 8062200C  38 79 36 18 */	addi r3, r25, 0x3618
/* 80622010  4B A6 24 50 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80622014  28 03 00 00 */	cmplwi r3, 0
/* 80622018  41 82 00 20 */	beq lbl_80622038
/* 8062201C  38 79 36 18 */	addi r3, r25, 0x3618
/* 80622020  4B A6 24 D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80622024  90 79 3E B8 */	stw r3, 0x3eb8(r25)
/* 80622028  38 61 00 0C */	addi r3, r1, 0xc
/* 8062202C  38 99 36 18 */	addi r4, r25, 0x3618
/* 80622030  48 00 03 71 */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 80622034  3B E0 00 00 */	li r31, 0
lbl_80622038:
/* 80622038  80 19 3E B8 */	lwz r0, 0x3eb8(r25)
/* 8062203C  28 00 00 00 */	cmplwi r0, 0
/* 80622040  41 82 02 E4 */	beq lbl_80622324
/* 80622044  38 00 00 00 */	li r0, 0
/* 80622048  98 19 0A A8 */	stb r0, 0xaa8(r25)
/* 8062204C  80 79 3E B8 */	lwz r3, 0x3eb8(r25)
/* 80622050  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80622054  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80622058  40 82 00 0C */	bne lbl_80622064
/* 8062205C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80622060  41 82 00 30 */	beq lbl_80622090
lbl_80622064:
/* 80622064  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 80622068  2C 00 00 08 */	cmpwi r0, 8
/* 8062206C  40 80 00 10 */	bge lbl_8062207C
/* 80622070  38 00 00 0F */	li r0, 0xf
/* 80622074  90 19 0A 60 */	stw r0, 0xa60(r25)
/* 80622078  48 00 02 AC */	b lbl_80622324
lbl_8062207C:
/* 8062207C  7F 23 CB 78 */	mr r3, r25
/* 80622080  38 80 00 0C */	li r4, 0xc
/* 80622084  38 A0 00 0A */	li r5, 0xa
/* 80622088  4B FF E9 41 */	bl setActionMode__8daB_TN_cFii
/* 8062208C  48 00 02 98 */	b lbl_80622324
lbl_80622090:
/* 80622090  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80622094  41 82 00 B0 */	beq lbl_80622144
/* 80622098  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 8062209C  2C 00 00 08 */	cmpwi r0, 8
/* 806220A0  40 80 00 64 */	bge lbl_80622104
/* 806220A4  80 19 0A 78 */	lwz r0, 0xa78(r25)
/* 806220A8  2C 00 00 0B */	cmpwi r0, 0xb
/* 806220AC  40 80 00 30 */	bge lbl_806220DC
/* 806220B0  4B C4 19 98 */	b GetAc__8cCcD_ObjFv
/* 806220B4  7C 64 1B 78 */	mr r4, r3
/* 806220B8  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 806220BC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806220C0  4B C4 EB 44 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806220C4  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 806220C8  7C 00 18 50 */	subf r0, r0, r3
/* 806220CC  7C 03 07 34 */	extsh r3, r0
/* 806220D0  4B D4 30 00 */	b abs
/* 806220D4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 806220D8  40 81 00 18 */	ble lbl_806220F0
lbl_806220DC:
/* 806220DC  7F 23 CB 78 */	mr r3, r25
/* 806220E0  38 81 00 0C */	addi r4, r1, 0xc
/* 806220E4  38 A0 00 02 */	li r5, 2
/* 806220E8  4B FF EF 89 */	bl setDamage__8daB_TN_cFP8dCcD_Sphi
/* 806220EC  48 00 02 38 */	b lbl_80622324
lbl_806220F0:
/* 806220F0  7F 23 CB 78 */	mr r3, r25
/* 806220F4  38 80 00 06 */	li r4, 6
/* 806220F8  38 A0 00 00 */	li r5, 0
/* 806220FC  4B FF E8 CD */	bl setActionMode__8daB_TN_cFii
/* 80622100  48 00 02 24 */	b lbl_80622324
lbl_80622104:
/* 80622104  4B C4 19 44 */	b GetAc__8cCcD_ObjFv
/* 80622108  7C 64 1B 78 */	mr r4, r3
/* 8062210C  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80622110  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80622114  4B C4 EA F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80622118  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 8062211C  7C 00 18 50 */	subf r0, r0, r3
/* 80622120  7C 03 07 34 */	extsh r3, r0
/* 80622124  4B D4 2F AC */	b abs
/* 80622128  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8062212C  40 81 01 F8 */	ble lbl_80622324
/* 80622130  7F 23 CB 78 */	mr r3, r25
/* 80622134  38 81 00 0C */	addi r4, r1, 0xc
/* 80622138  38 A0 00 02 */	li r5, 2
/* 8062213C  4B FF EF 35 */	bl setDamage__8daB_TN_cFP8dCcD_Sphi
/* 80622140  48 00 01 E4 */	b lbl_80622324
lbl_80622144:
/* 80622144  54 80 03 19 */	rlwinm. r0, r4, 0, 0xc, 0xc
/* 80622148  41 82 00 44 */	beq lbl_8062218C
/* 8062214C  7F 23 CB 78 */	mr r3, r25
/* 80622150  38 81 00 0C */	addi r4, r1, 0xc
/* 80622154  4B FF F2 39 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80622158  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 8062215C  2C 00 00 08 */	cmpwi r0, 8
/* 80622160  40 80 00 18 */	bge lbl_80622178
/* 80622164  7F 23 CB 78 */	mr r3, r25
/* 80622168  38 80 00 06 */	li r4, 6
/* 8062216C  38 A0 00 00 */	li r5, 0
/* 80622170  4B FF E8 59 */	bl setActionMode__8daB_TN_cFii
/* 80622174  48 00 01 B0 */	b lbl_80622324
lbl_80622178:
/* 80622178  7F 23 CB 78 */	mr r3, r25
/* 8062217C  38 80 00 0C */	li r4, 0xc
/* 80622180  38 A0 00 0A */	li r5, 0xa
/* 80622184  4B FF E8 45 */	bl setActionMode__8daB_TN_cFii
/* 80622188  48 00 01 9C */	b lbl_80622324
lbl_8062218C:
/* 8062218C  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80622190  41 82 00 C8 */	beq lbl_80622258
/* 80622194  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 80622198  2C 00 00 08 */	cmpwi r0, 8
/* 8062219C  40 80 00 1C */	bge lbl_806221B8
/* 806221A0  38 00 00 0F */	li r0, 0xf
/* 806221A4  90 19 0A 60 */	stw r0, 0xa60(r25)
/* 806221A8  7F 23 CB 78 */	mr r3, r25
/* 806221AC  38 81 00 0C */	addi r4, r1, 0xc
/* 806221B0  4B FF F1 DD */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 806221B4  48 00 01 70 */	b lbl_80622324
lbl_806221B8:
/* 806221B8  2C 1F 00 00 */	cmpwi r31, 0
/* 806221BC  41 82 00 10 */	beq lbl_806221CC
/* 806221C0  88 19 0A A7 */	lbz r0, 0xaa7(r25)
/* 806221C4  28 00 00 00 */	cmplwi r0, 0
/* 806221C8  41 82 00 24 */	beq lbl_806221EC
lbl_806221CC:
/* 806221CC  7F 23 CB 78 */	mr r3, r25
/* 806221D0  38 81 00 0C */	addi r4, r1, 0xc
/* 806221D4  4B FF F1 B9 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 806221D8  7F 23 CB 78 */	mr r3, r25
/* 806221DC  38 80 00 0C */	li r4, 0xc
/* 806221E0  38 A0 00 00 */	li r5, 0
/* 806221E4  4B FF E7 E5 */	bl setActionMode__8daB_TN_cFii
/* 806221E8  48 00 01 3C */	b lbl_80622324
lbl_806221EC:
/* 806221EC  38 00 00 64 */	li r0, 0x64
/* 806221F0  B0 19 05 62 */	sth r0, 0x562(r25)
/* 806221F4  7F 23 CB 78 */	mr r3, r25
/* 806221F8  38 99 3E B8 */	addi r4, r25, 0x3eb8
/* 806221FC  4B A6 5A 08 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80622200  38 00 00 00 */	li r0, 0
/* 80622204  98 19 0A 92 */	stb r0, 0xa92(r25)
/* 80622208  4B C4 56 64 */	b cM_rnd__Fv
/* 8062220C  3C 60 80 63 */	lis r3, lit_4655@ha
/* 80622210  C0 03 E6 D0 */	lfs f0, lit_4655@l(r3)
/* 80622214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80622218  40 80 00 0C */	bge lbl_80622224
/* 8062221C  38 00 00 01 */	li r0, 1
/* 80622220  98 19 0A 92 */	stb r0, 0xa92(r25)
lbl_80622224:
/* 80622224  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 80622228  2C 00 00 0D */	cmpwi r0, 0xd
/* 8062222C  41 82 00 18 */	beq lbl_80622244
/* 80622230  80 19 0A 80 */	lwz r0, 0xa80(r25)
/* 80622234  2C 00 00 00 */	cmpwi r0, 0
/* 80622238  40 82 00 0C */	bne lbl_80622244
/* 8062223C  38 00 00 5A */	li r0, 0x5a
/* 80622240  90 19 0A 80 */	stw r0, 0xa80(r25)
lbl_80622244:
/* 80622244  7F 23 CB 78 */	mr r3, r25
/* 80622248  38 80 00 0D */	li r4, 0xd
/* 8062224C  88 B9 0A 92 */	lbz r5, 0xa92(r25)
/* 80622250  4B FF E7 79 */	bl setActionMode__8daB_TN_cFii
/* 80622254  48 00 00 D0 */	b lbl_80622324
lbl_80622258:
/* 80622258  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 8062225C  41 82 00 60 */	beq lbl_806222BC
/* 80622260  2C 1F 00 00 */	cmpwi r31, 0
/* 80622264  40 82 00 44 */	bne lbl_806222A8
/* 80622268  7F 23 CB 78 */	mr r3, r25
/* 8062226C  38 81 00 0C */	addi r4, r1, 0xc
/* 80622270  4B FF F1 1D */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80622274  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 80622278  2C 00 00 08 */	cmpwi r0, 8
/* 8062227C  40 80 00 18 */	bge lbl_80622294
/* 80622280  7F 23 CB 78 */	mr r3, r25
/* 80622284  38 80 00 06 */	li r4, 6
/* 80622288  38 A0 00 00 */	li r5, 0
/* 8062228C  4B FF E7 3D */	bl setActionMode__8daB_TN_cFii
/* 80622290  48 00 00 94 */	b lbl_80622324
lbl_80622294:
/* 80622294  7F 23 CB 78 */	mr r3, r25
/* 80622298  38 80 00 0C */	li r4, 0xc
/* 8062229C  38 A0 00 0A */	li r5, 0xa
/* 806222A0  4B FF E7 29 */	bl setActionMode__8daB_TN_cFii
/* 806222A4  48 00 00 80 */	b lbl_80622324
lbl_806222A8:
/* 806222A8  7F 23 CB 78 */	mr r3, r25
/* 806222AC  38 81 00 0C */	addi r4, r1, 0xc
/* 806222B0  38 A0 00 02 */	li r5, 2
/* 806222B4  4B FF ED BD */	bl setDamage__8daB_TN_cFP8dCcD_Sphi
/* 806222B8  48 00 00 6C */	b lbl_80622324
lbl_806222BC:
/* 806222BC  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 806222C0  41 82 00 64 */	beq lbl_80622324
/* 806222C4  80 19 06 F0 */	lwz r0, 0x6f0(r25)
/* 806222C8  2C 00 00 08 */	cmpwi r0, 8
/* 806222CC  40 80 00 14 */	bge lbl_806222E0
/* 806222D0  7F 23 CB 78 */	mr r3, r25
/* 806222D4  38 81 00 0C */	addi r4, r1, 0xc
/* 806222D8  4B FF F0 B5 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 806222DC  48 00 00 48 */	b lbl_80622324
lbl_806222E0:
/* 806222E0  2C 1F 00 00 */	cmpwi r31, 0
/* 806222E4  41 82 00 10 */	beq lbl_806222F4
/* 806222E8  88 19 0A A7 */	lbz r0, 0xaa7(r25)
/* 806222EC  28 00 00 00 */	cmplwi r0, 0
/* 806222F0  41 82 00 24 */	beq lbl_80622314
lbl_806222F4:
/* 806222F4  7F 23 CB 78 */	mr r3, r25
/* 806222F8  38 81 00 0C */	addi r4, r1, 0xc
/* 806222FC  4B FF F0 91 */	bl setShieldEffect__8daB_TN_cFP8dCcD_Sph
/* 80622300  7F 23 CB 78 */	mr r3, r25
/* 80622304  38 80 00 0C */	li r4, 0xc
/* 80622308  38 A0 00 00 */	li r5, 0
/* 8062230C  4B FF E6 BD */	bl setActionMode__8daB_TN_cFii
/* 80622310  48 00 00 14 */	b lbl_80622324
lbl_80622314:
/* 80622314  7F 23 CB 78 */	mr r3, r25
/* 80622318  38 81 00 0C */	addi r4, r1, 0xc
/* 8062231C  38 A0 00 01 */	li r5, 1
/* 80622320  4B FF ED 51 */	bl setDamage__8daB_TN_cFP8dCcD_Sphi
lbl_80622324:
/* 80622324  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80622328  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8062232C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80622330  93 A1 01 2C */	stw r29, 0x12c(r1)
/* 80622334  93 81 01 40 */	stw r28, 0x140(r1)
/* 80622338  28 1B 00 00 */	cmplwi r27, 0
/* 8062233C  41 82 00 40 */	beq lbl_8062237C
/* 80622340  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80622344  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80622348  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8062234C  93 41 01 40 */	stw r26, 0x140(r1)
/* 80622350  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 80622354  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80622358  90 01 01 40 */	stw r0, 0x140(r1)
/* 8062235C  41 82 00 20 */	beq lbl_8062237C
/* 80622360  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80622364  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80622368  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8062236C  41 82 00 10 */	beq lbl_8062237C
/* 80622370  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 80622374  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80622378  90 01 01 28 */	stw r0, 0x128(r1)
lbl_8062237C:
/* 8062237C  38 61 00 0C */	addi r3, r1, 0xc
/* 80622380  38 80 00 00 */	li r4, 0
/* 80622384  4B A6 1D 60 */	b __dt__12dCcD_GObjInfFv
lbl_80622388:
/* 80622388  39 61 01 70 */	addi r11, r1, 0x170
/* 8062238C  4B D3 FE 80 */	b _restgpr_22
/* 80622390  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80622394  7C 08 03 A6 */	mtlr r0
/* 80622398  38 21 01 70 */	addi r1, r1, 0x170
/* 8062239C  4E 80 00 20 */	blr 
