lbl_800AC450:
/* 800AC450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AC454  7C 08 02 A6 */	mflr r0
/* 800AC458  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AC45C  39 61 00 20 */	addi r11, r1, 0x20
/* 800AC460  48 2B 5D 7D */	bl _savegpr_29
/* 800AC464  7C 7D 1B 78 */	mr r29, r3
/* 800AC468  7C 9E 23 78 */	mr r30, r4
/* 800AC46C  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800AC470  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 800AC474  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800AC478  28 00 00 48 */	cmplwi r0, 0x48
/* 800AC47C  40 82 00 28 */	bne lbl_800AC4A4
/* 800AC480  2C 1E 00 19 */	cmpwi r30, 0x19
/* 800AC484  40 82 00 0C */	bne lbl_800AC490
/* 800AC488  38 62 98 78 */	la r3, kandelaarAnm(r2) /* 80453278-_SDA2_BASE_ */
/* 800AC48C  48 00 00 B4 */	b lbl_800AC540
lbl_800AC490:
/* 800AC490  2C 1E 00 48 */	cmpwi r30, 0x48
/* 800AC494  40 82 00 10 */	bne lbl_800AC4A4
/* 800AC498  38 62 98 78 */	la r3, kandelaarAnm(r2) /* 80453278-_SDA2_BASE_ */
/* 800AC49C  38 63 00 04 */	addi r3, r3, 4
/* 800AC4A0  48 00 00 A0 */	b lbl_800AC540
lbl_800AC4A4:
/* 800AC4A4  7F A3 EB 78 */	mr r3, r29
/* 800AC4A8  48 03 09 49 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800AC4AC  2C 03 00 00 */	cmpwi r3, 0
/* 800AC4B0  41 82 00 1C */	beq lbl_800AC4CC
/* 800AC4B4  2C 1E 00 14 */	cmpwi r30, 0x14
/* 800AC4B8  40 80 00 14 */	bge lbl_800AC4CC
/* 800AC4BC  57 C0 10 3A */	slwi r0, r30, 2
/* 800AC4C0  38 7F 25 7C */	addi r3, r31, 0x257c
/* 800AC4C4  7C 63 02 14 */	add r3, r3, r0
/* 800AC4C8  48 00 00 78 */	b lbl_800AC540
lbl_800AC4CC:
/* 800AC4CC  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800AC4D0  28 00 01 03 */	cmplwi r0, 0x103
/* 800AC4D4  40 82 00 14 */	bne lbl_800AC4E8
/* 800AC4D8  2C 1E 00 15 */	cmpwi r30, 0x15
/* 800AC4DC  40 80 00 0C */	bge lbl_800AC4E8
/* 800AC4E0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 800AC4E4  40 80 00 14 */	bge lbl_800AC4F8
lbl_800AC4E8:
/* 800AC4E8  2C 1E 00 14 */	cmpwi r30, 0x14
/* 800AC4EC  40 82 00 20 */	bne lbl_800AC50C
/* 800AC4F0  28 00 00 FF */	cmplwi r0, 0xff
/* 800AC4F4  41 82 00 18 */	beq lbl_800AC50C
lbl_800AC4F8:
/* 800AC4F8  38 1E FF F0 */	addi r0, r30, -16
/* 800AC4FC  54 00 10 3A */	slwi r0, r0, 2
/* 800AC500  38 7F 25 CC */	addi r3, r31, 0x25cc
/* 800AC504  7C 63 02 14 */	add r3, r3, r0
/* 800AC508  48 00 00 38 */	b lbl_800AC540
lbl_800AC50C:
/* 800AC50C  7F A3 EB 78 */	mr r3, r29
/* 800AC510  48 04 78 49 */	bl checkFishingRodAndLureItem__9daAlink_cCFv
/* 800AC514  2C 03 00 00 */	cmpwi r3, 0
/* 800AC518  41 82 00 1C */	beq lbl_800AC534
/* 800AC51C  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 800AC520  40 80 00 14 */	bge lbl_800AC534
/* 800AC524  57 C0 10 3A */	slwi r0, r30, 2
/* 800AC528  38 7F 25 E0 */	addi r3, r31, 0x25e0
/* 800AC52C  7C 63 02 14 */	add r3, r3, r0
/* 800AC530  48 00 00 10 */	b lbl_800AC540
lbl_800AC534:
/* 800AC534  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 800AC538  38 7F 26 50 */	addi r3, r31, 0x2650
/* 800AC53C  7C 63 02 14 */	add r3, r3, r0
lbl_800AC540:
/* 800AC540  39 61 00 20 */	addi r11, r1, 0x20
/* 800AC544  48 2B 5C E5 */	bl _restgpr_29
/* 800AC548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AC54C  7C 08 03 A6 */	mtlr r0
/* 800AC550  38 21 00 20 */	addi r1, r1, 0x20
/* 800AC554  4E 80 00 20 */	blr 
