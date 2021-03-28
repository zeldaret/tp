lbl_800BB4B8:
/* 800BB4B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB4BC  7C 08 02 A6 */	mflr r0
/* 800BB4C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB4C4  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB4C8  48 2A 6D 15 */	bl _savegpr_29
/* 800BB4CC  7C 7D 1B 78 */	mr r29, r3
/* 800BB4D0  7C 9E 23 78 */	mr r30, r4
/* 800BB4D4  7C BF 2B 78 */	mr r31, r5
/* 800BB4D8  48 05 A7 49 */	bl checkEventRun__9daAlink_cCFv
/* 800BB4DC  2C 03 00 00 */	cmpwi r3, 0
/* 800BB4E0  40 82 00 64 */	bne lbl_800BB544
/* 800BB4E4  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB4E8  41 82 00 14 */	beq lbl_800BB4FC
/* 800BB4EC  C0 3D 2B A8 */	lfs f1, 0x2ba8(r29)
/* 800BB4F0  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800BB4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BB4F8  41 80 00 44 */	blt lbl_800BB53C
lbl_800BB4FC:
/* 800BB4FC  2C 1E 00 00 */	cmpwi r30, 0
/* 800BB500  41 82 00 10 */	beq lbl_800BB510
/* 800BB504  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800BB508  28 00 01 9C */	cmplwi r0, 0x19c
/* 800BB50C  41 82 00 30 */	beq lbl_800BB53C
lbl_800BB510:
/* 800BB510  7F A3 EB 78 */	mr r3, r29
/* 800BB514  48 05 9B D1 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800BB518  2C 03 00 00 */	cmpwi r3, 0
/* 800BB51C  40 82 00 20 */	bne lbl_800BB53C
/* 800BB520  7F A3 EB 78 */	mr r3, r29
/* 800BB524  4B FF FE E5 */	bl checkMagicArmorHeavy__9daAlink_cCFv
/* 800BB528  2C 03 00 00 */	cmpwi r3, 0
/* 800BB52C  40 82 00 10 */	bne lbl_800BB53C
/* 800BB530  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BB534  74 00 42 02 */	andis. r0, r0, 0x4202
/* 800BB538  41 82 00 0C */	beq lbl_800BB544
lbl_800BB53C:
/* 800BB53C  38 60 00 01 */	li r3, 1
/* 800BB540  48 00 00 08 */	b lbl_800BB548
lbl_800BB544:
/* 800BB544  38 60 00 00 */	li r3, 0
lbl_800BB548:
/* 800BB548  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB54C  48 2A 6C DD */	bl _restgpr_29
/* 800BB550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB554  7C 08 03 A6 */	mtlr r0
/* 800BB558  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB55C  4E 80 00 20 */	blr 
