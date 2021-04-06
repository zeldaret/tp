lbl_80CDE538:
/* 80CDE538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE53C  7C 08 02 A6 */	mflr r0
/* 80CDE540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE548  7C 7F 1B 78 */	mr r31, r3
/* 80CDE54C  4B 33 A6 19 */	bl __ct__10fopAc_ac_cFv
/* 80CDE550  3C 60 80 CE */	lis r3, __vt__12daSmWStone_c@ha /* 0x80CDEFA0@ha */
/* 80CDE554  38 03 EF A0 */	addi r0, r3, __vt__12daSmWStone_c@l /* 0x80CDEFA0@l */
/* 80CDE558  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CDE55C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80CDE560  4B 58 9B 15 */	bl __ct__13cBgS_PolyInfoFv
/* 80CDE564  38 00 00 00 */	li r0, 0
/* 80CDE568  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80CDE56C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CDE570  7F E3 FB 78 */	mr r3, r31
/* 80CDE574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE57C  7C 08 03 A6 */	mtlr r0
/* 80CDE580  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE584  4E 80 00 20 */	blr 
