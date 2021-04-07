lbl_80CDCEF0:
/* 80CDCEF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDCEF4  7C 08 02 A6 */	mflr r0
/* 80CDCEF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDCEFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CDCF00  7C 7F 1B 78 */	mr r31, r3
/* 80CDCF04  4B FF FF 75 */	bl initBaseMtx__12daObjSmoke_cFv
/* 80CDCF08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDCF0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDCF10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDCF14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CDCF18  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDCF1C  7C 05 07 74 */	extsb r5, r0
/* 80CDCF20  4B 35 84 41 */	bl isSwitch__10dSv_info_cCFii
/* 80CDCF24  2C 03 00 00 */	cmpwi r3, 0
/* 80CDCF28  41 82 00 5C */	beq lbl_80CDCF84
/* 80CDCF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDCF30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDCF34  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CDCF38  38 80 00 00 */	li r4, 0
/* 80CDCF3C  90 81 00 08 */	stw r4, 8(r1)
/* 80CDCF40  38 00 FF FF */	li r0, -1
/* 80CDCF44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDCF48  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CDCF4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDCF50  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDCF54  38 80 00 00 */	li r4, 0
/* 80CDCF58  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085A6@ha */
/* 80CDCF5C  38 A5 85 A6 */	addi r5, r5, 0x85A6 /* 0x000085A6@l */
/* 80CDCF60  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CDCF64  38 E0 00 00 */	li r7, 0
/* 80CDCF68  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80CDCF6C  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80CDCF70  39 40 00 FF */	li r10, 0xff
/* 80CDCF74  3D 60 80 CE */	lis r11, lit_3655@ha /* 0x80CDD160@ha */
/* 80CDCF78  C0 2B D1 60 */	lfs f1, lit_3655@l(r11)  /* 0x80CDD160@l */
/* 80CDCF7C  4B 36 FB 15 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDCF80  90 7F 05 68 */	stw r3, 0x568(r31)
lbl_80CDCF84:
/* 80CDCF84  38 60 00 01 */	li r3, 1
/* 80CDCF88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CDCF8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDCF90  7C 08 03 A6 */	mtlr r0
/* 80CDCF94  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDCF98  4E 80 00 20 */	blr 
