lbl_808342C8:
/* 808342C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808342CC  7C 08 02 A6 */	mflr r0
/* 808342D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808342D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808342D8  7C 7F 1B 78 */	mr r31, r3
/* 808342DC  4B FF EF C1 */	bl damage_check__8daE_ZS_cFv
/* 808342E0  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 808342E4  2C 00 00 02 */	cmpwi r0, 2
/* 808342E8  41 82 00 3C */	beq lbl_80834324
/* 808342EC  40 80 00 14 */	bge lbl_80834300
/* 808342F0  2C 00 00 00 */	cmpwi r0, 0
/* 808342F4  41 82 00 18 */	beq lbl_8083430C
/* 808342F8  40 80 00 20 */	bge lbl_80834318
/* 808342FC  48 00 00 3C */	b lbl_80834338
lbl_80834300:
/* 80834300  2C 00 00 04 */	cmpwi r0, 4
/* 80834304  40 80 00 34 */	bge lbl_80834338
/* 80834308  48 00 00 28 */	b lbl_80834330
lbl_8083430C:
/* 8083430C  7F E3 FB 78 */	mr r3, r31
/* 80834310  4B FF F6 55 */	bl executeAppear__8daE_ZS_cFv
/* 80834314  48 00 00 24 */	b lbl_80834338
lbl_80834318:
/* 80834318  7F E3 FB 78 */	mr r3, r31
/* 8083431C  4B FF FA 15 */	bl executeWait__8daE_ZS_cFv
/* 80834320  48 00 00 18 */	b lbl_80834338
lbl_80834324:
/* 80834324  7F E3 FB 78 */	mr r3, r31
/* 80834328  4B FF FB F5 */	bl executeDamage__8daE_ZS_cFv
/* 8083432C  48 00 00 0C */	b lbl_80834338
lbl_80834330:
/* 80834330  7F E3 FB 78 */	mr r3, r31
/* 80834334  4B FF FD D5 */	bl executeDrive__8daE_ZS_cFv
lbl_80834338:
/* 80834338  88 1F 06 71 */	lbz r0, 0x671(r31)
/* 8083433C  28 00 00 00 */	cmplwi r0, 0
/* 80834340  40 82 00 DC */	bne lbl_8083441C
/* 80834344  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80834348  2C 00 00 03 */	cmpwi r0, 3
/* 8083434C  41 82 00 D0 */	beq lbl_8083441C
/* 80834350  3C 60 80 83 */	lis r3, s_BossSearch__FPvPv@ha /* 0x8083364C@ha */
/* 80834354  38 63 36 4C */	addi r3, r3, s_BossSearch__FPvPv@l /* 0x8083364C@l */
/* 80834358  7F E4 FB 78 */	mr r4, r31
/* 8083435C  4B 7E CF DD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80834360  28 03 00 00 */	cmplwi r3, 0
/* 80834364  41 82 00 44 */	beq lbl_808343A8
/* 80834368  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 8083436C  28 00 00 00 */	cmplwi r0, 0
/* 80834370  41 82 00 10 */	beq lbl_80834380
/* 80834374  88 03 08 51 */	lbz r0, 0x851(r3)
/* 80834378  28 00 00 00 */	cmplwi r0, 0
/* 8083437C  40 82 00 2C */	bne lbl_808343A8
lbl_80834380:
/* 80834380  88 03 08 50 */	lbz r0, 0x850(r3)
/* 80834384  28 00 00 00 */	cmplwi r0, 0
/* 80834388  40 82 00 20 */	bne lbl_808343A8
/* 8083438C  88 03 08 56 */	lbz r0, 0x856(r3)
/* 80834390  28 00 00 00 */	cmplwi r0, 0
/* 80834394  40 82 00 14 */	bne lbl_808343A8
/* 80834398  3C 60 80 83 */	lis r3, struct_808354C0+0x1@ha /* 0x808354C1@ha */
/* 8083439C  88 03 54 C1 */	lbz r0, struct_808354C0+0x1@l(r3)  /* 0x808354C1@l */
/* 808343A0  28 00 00 00 */	cmplwi r0, 0
/* 808343A4  41 82 00 78 */	beq lbl_8083441C
lbl_808343A8:
/* 808343A8  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 808343AC  28 00 00 00 */	cmplwi r0, 0
/* 808343B0  40 82 00 10 */	bne lbl_808343C0
/* 808343B4  38 00 00 01 */	li r0, 1
/* 808343B8  3C 60 80 83 */	lis r3, struct_808354C0+0x1@ha /* 0x808354C1@ha */
/* 808343BC  98 03 54 C1 */	stb r0, struct_808354C0+0x1@l(r3)  /* 0x808354C1@l */
lbl_808343C0:
/* 808343C0  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 808343C4  2C 00 00 03 */	cmpwi r0, 3
/* 808343C8  41 82 00 18 */	beq lbl_808343E0
/* 808343CC  2C 00 00 00 */	cmpwi r0, 0
/* 808343D0  40 82 00 1C */	bne lbl_808343EC
/* 808343D4  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 808343D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 808343DC  40 82 00 10 */	bne lbl_808343EC
lbl_808343E0:
/* 808343E0  7F E3 FB 78 */	mr r3, r31
/* 808343E4  4B 7E 58 99 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 808343E8  48 00 00 34 */	b lbl_8083441C
lbl_808343EC:
/* 808343EC  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 808343F0  28 00 00 00 */	cmplwi r0, 0
/* 808343F4  41 82 00 18 */	beq lbl_8083440C
/* 808343F8  7F E3 FB 78 */	mr r3, r31
/* 808343FC  38 80 00 03 */	li r4, 3
/* 80834400  38 A0 00 0A */	li r5, 0xa
/* 80834404  4B FF EE 8D */	bl setActionMode__8daE_ZS_cFii
/* 80834408  48 00 00 14 */	b lbl_8083441C
lbl_8083440C:
/* 8083440C  7F E3 FB 78 */	mr r3, r31
/* 80834410  38 80 00 03 */	li r4, 3
/* 80834414  38 A0 00 00 */	li r5, 0
/* 80834418  4B FF EE 79 */	bl setActionMode__8daE_ZS_cFii
lbl_8083441C:
/* 8083441C  7F E3 FB 78 */	mr r3, r31
/* 80834420  38 9F 08 8C */	addi r4, r31, 0x88c
/* 80834424  4B 7E 62 A9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80834428  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 8083442C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80834430  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80834434  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80834438  4B 84 26 75 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8083443C  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 80834440  28 00 00 00 */	cmplwi r0, 0
/* 80834444  41 82 00 20 */	beq lbl_80834464
/* 80834448  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8083444C  7C 03 07 74 */	extsb r3, r0
/* 80834450  4B 7F 8C 1D */	bl dComIfGp_getReverb__Fi
/* 80834454  7C 65 1B 78 */	mr r5, r3
/* 80834458  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8083445C  38 80 00 00 */	li r4, 0
/* 80834460  4B 7D CC 51 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80834464:
/* 80834464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083446C  7C 08 03 A6 */	mtlr r0
/* 80834470  38 21 00 10 */	addi r1, r1, 0x10
/* 80834474  4E 80 00 20 */	blr 
