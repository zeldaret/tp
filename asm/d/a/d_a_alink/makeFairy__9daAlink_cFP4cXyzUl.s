lbl_8010F45C:
/* 8010F45C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010F460  7C 08 02 A6 */	mflr r0
/* 8010F464  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010F468  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010F46C  7C 7F 1B 78 */	mr r31, r3
/* 8010F470  7C 86 23 78 */	mr r6, r4
/* 8010F474  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 8010F478  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8010F47C  41 82 00 48 */	beq lbl_8010F4C4
/* 8010F480  C0 06 00 00 */	lfs f0, 0(r6)
/* 8010F484  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010F488  C0 26 00 04 */	lfs f1, 4(r6)
/* 8010F48C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8010F490  C0 06 00 08 */	lfs f0, 8(r6)
/* 8010F494  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8010F498  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8010F49C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8010F4A0  41 82 00 14 */	beq lbl_8010F4B4
/* 8010F4A4  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8010F4A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010F4AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8010F4B0  48 00 00 10 */	b lbl_8010F4C0
lbl_8010F4B4:
/* 8010F4B4  C0 02 93 04 */	lfs f0, lit_6896(r2)
/* 8010F4B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010F4BC  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8010F4C0:
/* 8010F4C0  38 C1 00 10 */	addi r6, r1, 0x10
lbl_8010F4C4:
/* 8010F4C4  38 00 00 00 */	li r0, 0
/* 8010F4C8  90 01 00 08 */	stw r0, 8(r1)
/* 8010F4CC  38 60 01 3F */	li r3, 0x13f
/* 8010F4D0  7C A4 2B 78 */	mr r4, r5
/* 8010F4D4  7C C5 33 78 */	mr r5, r6
/* 8010F4D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8010F4DC  7C 06 07 74 */	extsb r6, r0
/* 8010F4E0  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 8010F4E4  39 00 00 00 */	li r8, 0
/* 8010F4E8  39 20 FF FF */	li r9, -1
/* 8010F4EC  39 40 00 00 */	li r10, 0
/* 8010F4F0  4B F0 A9 15 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8010F4F4  7C 64 1B 78 */	mr r4, r3
/* 8010F4F8  38 7F 28 5C */	addi r3, r31, 0x285c
/* 8010F4FC  48 04 F7 BD */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010F500  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8010F504  60 00 04 00 */	ori r0, r0, 0x400
/* 8010F508  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8010F50C  7F E3 FB 78 */	mr r3, r31
/* 8010F510  48 00 67 11 */	bl checkEventRun__9daAlink_cCFv
/* 8010F514  2C 03 00 00 */	cmpwi r3, 0
/* 8010F518  41 82 00 1C */	beq lbl_8010F534
/* 8010F51C  80 7F 28 60 */	lwz r3, 0x2860(r31)
/* 8010F520  28 03 00 00 */	cmplwi r3, 0
/* 8010F524  41 82 00 10 */	beq lbl_8010F534
/* 8010F528  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8010F52C  60 00 08 00 */	ori r0, r0, 0x800
/* 8010F530  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8010F534:
/* 8010F534  80 7F 28 60 */	lwz r3, 0x2860(r31)
/* 8010F538  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010F53C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010F540  7C 08 03 A6 */	mtlr r0
/* 8010F544  38 21 00 30 */	addi r1, r1, 0x30
/* 8010F548  4E 80 00 20 */	blr 
