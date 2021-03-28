lbl_80BFC664:
/* 80BFC664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFC668  7C 08 02 A6 */	mflr r0
/* 80BFC66C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFC670  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFC674  4B 76 5B 68 */	b _savegpr_29
/* 80BFC678  7C 7F 1B 78 */	mr r31, r3
/* 80BFC67C  3C 80 80 C0 */	lis r4, lit_3686@ha
/* 80BFC680  3B C4 D3 2C */	addi r30, r4, lit_3686@l
/* 80BFC684  3B A0 00 01 */	li r29, 1
/* 80BFC688  A8 03 06 0A */	lha r0, 0x60a(r3)
/* 80BFC68C  2C 00 00 01 */	cmpwi r0, 1
/* 80BFC690  41 82 00 28 */	beq lbl_80BFC6B8
/* 80BFC694  40 80 00 10 */	bge lbl_80BFC6A4
/* 80BFC698  2C 00 00 00 */	cmpwi r0, 0
/* 80BFC69C  40 80 00 14 */	bge lbl_80BFC6B0
/* 80BFC6A0  48 00 00 28 */	b lbl_80BFC6C8
lbl_80BFC6A4:
/* 80BFC6A4  2C 00 00 03 */	cmpwi r0, 3
/* 80BFC6A8  40 80 00 20 */	bge lbl_80BFC6C8
/* 80BFC6AC  48 00 00 14 */	b lbl_80BFC6C0
lbl_80BFC6B0:
/* 80BFC6B0  4B FF EE 59 */	bl bg_fix__FP12obj_gm_class
/* 80BFC6B4  48 00 00 14 */	b lbl_80BFC6C8
lbl_80BFC6B8:
/* 80BFC6B8  4B FF F3 5D */	bl swing__FP12obj_gm_class
/* 80BFC6BC  48 00 00 0C */	b lbl_80BFC6C8
lbl_80BFC6C0:
/* 80BFC6C0  4B FF FA A9 */	bl drop__FP12obj_gm_class
/* 80BFC6C4  3B A0 00 00 */	li r29, 0
lbl_80BFC6C8:
/* 80BFC6C8  7F A0 07 75 */	extsb. r0, r29
/* 80BFC6CC  41 82 00 6C */	beq lbl_80BFC738
/* 80BFC6D0  A8 9F 06 08 */	lha r4, 0x608(r31)
/* 80BFC6D4  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFC6D8  54 00 08 3C */	slwi r0, r0, 1
/* 80BFC6DC  3C 60 80 C0 */	lis r3, neg@ha
/* 80BFC6E0  38 63 D4 4C */	addi r3, r3, neg@l
/* 80BFC6E4  7C 03 02 AE */	lhax r0, r3, r0
/* 80BFC6E8  7C 04 01 D6 */	mullw r0, r4, r0
/* 80BFC6EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BFC6F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BFC6F4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BFC6F8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BFC6FC  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 80BFC700  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BFC704  FC 00 00 1E */	fctiwz f0, f0
/* 80BFC708  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BFC70C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80BFC710  38 7F 06 48 */	addi r3, r31, 0x648
/* 80BFC714  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80BFC718  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80BFC71C  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80BFC720  4B 67 33 1C */	b cLib_addCalc2__FPffff
/* 80BFC724  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80BFC728  7F A4 EB 78 */	mr r4, r29
/* 80BFC72C  38 A0 00 10 */	li r5, 0x10
/* 80BFC730  38 C0 00 C8 */	li r6, 0xc8
/* 80BFC734  4B 67 3E D4 */	b cLib_addCalcAngleS2__FPssss
lbl_80BFC738:
/* 80BFC738  38 7F 09 88 */	addi r3, r31, 0x988
/* 80BFC73C  4B 48 7D 24 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BFC740  28 03 00 00 */	cmplwi r3, 0
/* 80BFC744  41 82 00 60 */	beq lbl_80BFC7A4
/* 80BFC748  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFC74C  28 00 00 02 */	cmplwi r0, 2
/* 80BFC750  41 80 00 28 */	blt lbl_80BFC778
/* 80BFC754  38 00 00 0F */	li r0, 0xf
/* 80BFC758  B0 1F 09 48 */	sth r0, 0x948(r31)
/* 80BFC75C  38 7F 09 88 */	addi r3, r31, 0x988
/* 80BFC760  4B 48 7D 98 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BFC764  7C 64 1B 78 */	mr r4, r3
/* 80BFC768  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFC76C  38 A0 00 23 */	li r5, 0x23
/* 80BFC770  38 C0 00 00 */	li r6, 0
/* 80BFC774  4B 48 AD A0 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_80BFC778:
/* 80BFC778  38 7F 09 88 */	addi r3, r31, 0x988
/* 80BFC77C  4B 48 7D 7C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BFC780  4B 66 72 C8 */	b GetAc__8cCcD_ObjFv
/* 80BFC784  28 03 00 00 */	cmplwi r3, 0
/* 80BFC788  41 82 00 1C */	beq lbl_80BFC7A4
/* 80BFC78C  A8 03 00 08 */	lha r0, 8(r3)
/* 80BFC790  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80BFC794  40 82 00 10 */	bne lbl_80BFC7A4
/* 80BFC798  88 1F 0A E4 */	lbz r0, 0xae4(r31)
/* 80BFC79C  60 00 00 02 */	ori r0, r0, 2
/* 80BFC7A0  98 1F 0A E4 */	stb r0, 0xae4(r31)
lbl_80BFC7A4:
/* 80BFC7A4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BFC7A8  54 00 00 3E */	slwi r0, r0, 0
/* 80BFC7AC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80BFC7B0  38 00 00 00 */	li r0, 0
/* 80BFC7B4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80BFC7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFC7BC  4B 76 5A 6C */	b _restgpr_29
/* 80BFC7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFC7C4  7C 08 03 A6 */	mtlr r0
/* 80BFC7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFC7CC  4E 80 00 20 */	blr 
