lbl_80CDD004:
/* 80CDD004  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDD008  7C 08 02 A6 */	mflr r0
/* 80CDD00C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDD010  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CDD014  7C 7F 1B 78 */	mr r31, r3
/* 80CDD018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDD01C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDD020  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDD024  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CDD028  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDD02C  7C 05 07 74 */	extsb r5, r0
/* 80CDD030  4B 35 83 31 */	bl isSwitch__10dSv_info_cCFii
/* 80CDD034  2C 03 00 00 */	cmpwi r3, 0
/* 80CDD038  41 82 00 68 */	beq lbl_80CDD0A0
/* 80CDD03C  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80CDD040  28 00 00 00 */	cmplwi r0, 0
/* 80CDD044  40 82 00 5C */	bne lbl_80CDD0A0
/* 80CDD048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDD04C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDD050  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CDD054  38 80 00 00 */	li r4, 0
/* 80CDD058  90 81 00 08 */	stw r4, 8(r1)
/* 80CDD05C  38 00 FF FF */	li r0, -1
/* 80CDD060  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDD064  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CDD068  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDD06C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDD070  38 80 00 00 */	li r4, 0
/* 80CDD074  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085A6@ha */
/* 80CDD078  38 A5 85 A6 */	addi r5, r5, 0x85A6 /* 0x000085A6@l */
/* 80CDD07C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CDD080  38 E0 00 00 */	li r7, 0
/* 80CDD084  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80CDD088  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80CDD08C  39 40 00 FF */	li r10, 0xff
/* 80CDD090  3D 60 80 CE */	lis r11, lit_3655@ha /* 0x80CDD160@ha */
/* 80CDD094  C0 2B D1 60 */	lfs f1, lit_3655@l(r11)  /* 0x80CDD160@l */
/* 80CDD098  4B 36 F9 F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDD09C  90 7F 05 68 */	stw r3, 0x568(r31)
lbl_80CDD0A0:
/* 80CDD0A0  38 60 00 01 */	li r3, 1
/* 80CDD0A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CDD0A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDD0AC  7C 08 03 A6 */	mtlr r0
/* 80CDD0B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDD0B4  4E 80 00 20 */	blr 
