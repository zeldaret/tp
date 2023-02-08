lbl_8059434C:
/* 8059434C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80594350  7C 08 02 A6 */	mflr r0
/* 80594354  90 01 00 24 */	stw r0, 0x24(r1)
/* 80594358  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059435C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80594360  7C 7E 1B 78 */	mr r30, r3
/* 80594364  3C 60 80 59 */	lis r3, M_attr__16daObjNameplate_c@ha /* 0x80594E74@ha */
/* 80594368  3B E3 4E 74 */	addi r31, r3, M_attr__16daObjNameplate_c@l /* 0x80594E74@l */
/* 8059436C  A8 7E 07 7E */	lha r3, 0x77e(r30)
/* 80594370  2C 03 00 00 */	cmpwi r3, 0
/* 80594374  40 81 00 0C */	ble lbl_80594380
/* 80594378  38 03 FF FF */	addi r0, r3, -1
/* 8059437C  B0 1E 07 7E */	sth r0, 0x77e(r30)
lbl_80594380:
/* 80594380  A8 1E 07 7E */	lha r0, 0x77e(r30)
/* 80594384  2C 00 00 00 */	cmpwi r0, 0
/* 80594388  41 81 00 AC */	bgt lbl_80594434
/* 8059438C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80594390  4B AF 00 D1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80594394  28 03 00 00 */	cmplwi r3, 0
/* 80594398  41 82 00 9C */	beq lbl_80594434
/* 8059439C  7F C3 F3 78 */	mr r3, r30
/* 805943A0  48 00 03 B5 */	bl checkHitAngle__16daObjNameplate_cFv
/* 805943A4  2C 03 00 00 */	cmpwi r3, 0
/* 805943A8  41 82 00 0C */	beq lbl_805943B4
/* 805943AC  2C 03 00 02 */	cmpwi r3, 2
/* 805943B0  40 82 00 20 */	bne lbl_805943D0
lbl_805943B4:
/* 805943B4  38 7F 00 00 */	addi r3, r31, 0
/* 805943B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805943BC  FC 00 00 1E */	fctiwz f0, f0
/* 805943C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805943C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805943C8  B0 1E 07 7A */	sth r0, 0x77a(r30)
/* 805943CC  48 00 00 30 */	b lbl_805943FC
lbl_805943D0:
/* 805943D0  2C 03 00 01 */	cmpwi r3, 1
/* 805943D4  41 82 00 0C */	beq lbl_805943E0
/* 805943D8  2C 03 00 03 */	cmpwi r3, 3
/* 805943DC  40 82 00 20 */	bne lbl_805943FC
lbl_805943E0:
/* 805943E0  38 7F 00 00 */	addi r3, r31, 0
/* 805943E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 805943E8  FC 00 00 50 */	fneg f0, f0
/* 805943EC  FC 00 00 1E */	fctiwz f0, f0
/* 805943F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805943F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805943F8  B0 1E 07 7A */	sth r0, 0x77a(r30)
lbl_805943FC:
/* 805943FC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80594400  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80594404  38 7F 00 00 */	addi r3, r31, 0
/* 80594408  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059440C  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 80594410  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80594414  B0 1E 07 7E */	sth r0, 0x77e(r30)
/* 80594418  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8059441C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80594420  7C 04 07 74 */	extsb r4, r0
/* 80594424  38 BE 05 E0 */	addi r5, r30, 0x5e0
/* 80594428  38 C0 00 0E */	li r6, 0xe
/* 8059442C  4B AA 34 D5 */	bl HitSeStart__5daObjFPC4cXyziPC12dCcD_GObjInfUl
/* 80594430  48 00 01 0C */	b lbl_8059453C
lbl_80594434:
/* 80594434  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80594438  4B AF 02 21 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8059443C  28 03 00 00 */	cmplwi r3, 0
/* 80594440  41 82 00 64 */	beq lbl_805944A4
/* 80594444  7F C3 F3 78 */	mr r3, r30
/* 80594448  48 00 03 0D */	bl checkHitAngle__16daObjNameplate_cFv
/* 8059444C  2C 03 00 00 */	cmpwi r3, 0
/* 80594450  41 82 00 0C */	beq lbl_8059445C
/* 80594454  2C 03 00 02 */	cmpwi r3, 2
/* 80594458  40 82 00 14 */	bne lbl_8059446C
lbl_8059445C:
/* 8059445C  38 7F 00 00 */	addi r3, r31, 0
/* 80594460  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80594464  B0 1E 07 7A */	sth r0, 0x77a(r30)
/* 80594468  48 00 00 24 */	b lbl_8059448C
lbl_8059446C:
/* 8059446C  2C 03 00 01 */	cmpwi r3, 1
/* 80594470  41 82 00 0C */	beq lbl_8059447C
/* 80594474  2C 03 00 03 */	cmpwi r3, 3
/* 80594478  40 82 00 14 */	bne lbl_8059448C
lbl_8059447C:
/* 8059447C  38 7F 00 00 */	addi r3, r31, 0
/* 80594480  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80594484  7C 00 00 D0 */	neg r0, r0
/* 80594488  B0 1E 07 7A */	sth r0, 0x77a(r30)
lbl_8059448C:
/* 8059448C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80594490  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80594494  38 7F 00 00 */	addi r3, r31, 0
/* 80594498  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 8059449C  B0 1E 07 7E */	sth r0, 0x77e(r30)
/* 805944A0  48 00 00 9C */	b lbl_8059453C
lbl_805944A4:
/* 805944A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805944A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805944AC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805944B0  80 04 05 80 */	lwz r0, 0x580(r4)
/* 805944B4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 805944B8  41 82 00 84 */	beq lbl_8059453C
/* 805944BC  7F C3 F3 78 */	mr r3, r30
/* 805944C0  4B A8 64 A5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805944C4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805944C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805944CC  40 80 00 70 */	bge lbl_8059453C
/* 805944D0  7F C3 F3 78 */	mr r3, r30
/* 805944D4  48 00 02 81 */	bl checkHitAngle__16daObjNameplate_cFv
/* 805944D8  2C 03 00 00 */	cmpwi r3, 0
/* 805944DC  41 82 00 0C */	beq lbl_805944E8
/* 805944E0  2C 03 00 02 */	cmpwi r3, 2
/* 805944E4  40 82 00 20 */	bne lbl_80594504
lbl_805944E8:
/* 805944E8  38 7F 00 00 */	addi r3, r31, 0
/* 805944EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 805944F0  FC 00 00 1E */	fctiwz f0, f0
/* 805944F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805944F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805944FC  B0 1E 07 7A */	sth r0, 0x77a(r30)
/* 80594500  48 00 00 30 */	b lbl_80594530
lbl_80594504:
/* 80594504  2C 03 00 01 */	cmpwi r3, 1
/* 80594508  41 82 00 0C */	beq lbl_80594514
/* 8059450C  2C 03 00 03 */	cmpwi r3, 3
/* 80594510  40 82 00 20 */	bne lbl_80594530
lbl_80594514:
/* 80594514  38 7F 00 00 */	addi r3, r31, 0
/* 80594518  C0 03 00 04 */	lfs f0, 4(r3)
/* 8059451C  FC 00 00 50 */	fneg f0, f0
/* 80594520  FC 00 00 1E */	fctiwz f0, f0
/* 80594524  D8 01 00 08 */	stfd f0, 8(r1)
/* 80594528  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059452C  B0 1E 07 7A */	sth r0, 0x77a(r30)
lbl_80594530:
/* 80594530  38 7F 00 00 */	addi r3, r31, 0
/* 80594534  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80594538  B0 1E 07 7E */	sth r0, 0x77e(r30)
lbl_8059453C:
/* 8059453C  38 00 00 00 */	li r0, 0
/* 80594540  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 80594544  7F C3 F3 78 */	mr r3, r30
/* 80594548  48 00 00 85 */	bl calcSpring__16daObjNameplate_cFv
/* 8059454C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80594550  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80594554  A8 1E 07 7C */	lha r0, 0x77c(r30)
/* 80594558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059455C  7C 63 02 14 */	add r3, r3, r0
/* 80594560  C0 23 00 04 */	lfs f1, 4(r3)
/* 80594564  C0 1E 07 18 */	lfs f0, 0x718(r30)
/* 80594568  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059456C  FC 00 00 1E */	fctiwz f0, f0
/* 80594570  D8 01 00 08 */	stfd f0, 8(r1)
/* 80594574  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80594578  B0 1E 07 24 */	sth r0, 0x724(r30)
/* 8059457C  38 7E 07 18 */	addi r3, r30, 0x718
/* 80594580  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80594584  38 9F 00 00 */	addi r4, r31, 0
/* 80594588  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8059458C  4B CD C1 B5 */	bl cLib_chaseF__FPfff
/* 80594590  2C 03 00 00 */	cmpwi r3, 0
/* 80594594  41 82 00 0C */	beq lbl_805945A0
/* 80594598  38 00 00 00 */	li r0, 0
/* 8059459C  B0 1E 07 7C */	sth r0, 0x77c(r30)
lbl_805945A0:
/* 805945A0  A8 9E 07 7C */	lha r4, 0x77c(r30)
/* 805945A4  38 7F 00 00 */	addi r3, r31, 0
/* 805945A8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 805945AC  7C 04 02 14 */	add r0, r4, r0
/* 805945B0  B0 1E 07 7C */	sth r0, 0x77c(r30)
/* 805945B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805945B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805945BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805945C0  7C 08 03 A6 */	mtlr r0
/* 805945C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805945C8  4E 80 00 20 */	blr 
