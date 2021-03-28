lbl_806F5F3C:
/* 806F5F3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806F5F40  7C 08 02 A6 */	mflr r0
/* 806F5F44  90 01 00 54 */	stw r0, 0x54(r1)
/* 806F5F48  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806F5F4C  7C 7F 1B 78 */	mr r31, r3
/* 806F5F50  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 806F5F54  4B 98 D8 DC */	b Move__10dCcD_GSttsFv
/* 806F5F58  A8 1F 06 BA */	lha r0, 0x6ba(r31)
/* 806F5F5C  2C 00 00 00 */	cmpwi r0, 0
/* 806F5F60  40 82 01 80 */	bne lbl_806F60E0
/* 806F5F64  38 7F 0A 50 */	addi r3, r31, 0xa50
/* 806F5F68  4B 98 E4 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806F5F6C  28 03 00 00 */	cmplwi r3, 0
/* 806F5F70  41 82 01 70 */	beq lbl_806F60E0
/* 806F5F74  38 00 00 06 */	li r0, 6
/* 806F5F78  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 806F5F7C  38 7F 0A 50 */	addi r3, r31, 0xa50
/* 806F5F80  4B 98 E5 78 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806F5F84  90 7F 0C C4 */	stw r3, 0xcc4(r31)
/* 806F5F88  7F E3 FB 78 */	mr r3, r31
/* 806F5F8C  38 9F 0C C4 */	addi r4, r31, 0xcc4
/* 806F5F90  4B 99 1C 74 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806F5F94  80 7F 0C C4 */	lwz r3, 0xcc4(r31)
/* 806F5F98  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806F5F9C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806F5FA0  41 82 00 68 */	beq lbl_806F6008
/* 806F5FA4  88 7F 0C E8 */	lbz r3, 0xce8(r31)
/* 806F5FA8  38 03 00 01 */	addi r0, r3, 1
/* 806F5FAC  98 1F 0C E8 */	stb r0, 0xce8(r31)
/* 806F5FB0  88 1F 0C E8 */	lbz r0, 0xce8(r31)
/* 806F5FB4  7C 00 07 74 */	extsb r0, r0
/* 806F5FB8  2C 00 00 03 */	cmpwi r0, 3
/* 806F5FBC  41 80 00 10 */	blt lbl_806F5FCC
/* 806F5FC0  38 00 00 05 */	li r0, 5
/* 806F5FC4  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 806F5FC8  48 00 00 34 */	b lbl_806F5FFC
lbl_806F5FCC:
/* 806F5FCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070028@ha */
/* 806F5FD0  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00070028@l */
/* 806F5FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F5FD8  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F5FDC  38 81 00 24 */	addi r4, r1, 0x24
/* 806F5FE0  38 A0 FF FF */	li r5, -1
/* 806F5FE4  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806F5FE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F5FEC  7D 89 03 A6 */	mtctr r12
/* 806F5FF0  4E 80 04 21 */	bctrl 
/* 806F5FF4  38 00 00 0A */	li r0, 0xa
/* 806F5FF8  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_806F5FFC:
/* 806F5FFC  38 00 00 00 */	li r0, 0
/* 806F6000  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806F6004  48 00 01 1C */	b lbl_806F6120
lbl_806F6008:
/* 806F6008  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806F600C  2C 00 00 00 */	cmpwi r0, 0
/* 806F6010  41 81 00 10 */	bgt lbl_806F6020
/* 806F6014  38 00 00 05 */	li r0, 5
/* 806F6018  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 806F601C  48 00 00 34 */	b lbl_806F6050
lbl_806F6020:
/* 806F6020  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070028@ha */
/* 806F6024  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00070028@l */
/* 806F6028  90 01 00 20 */	stw r0, 0x20(r1)
/* 806F602C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F6030  38 81 00 20 */	addi r4, r1, 0x20
/* 806F6034  38 A0 FF FF */	li r5, -1
/* 806F6038  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806F603C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F6040  7D 89 03 A6 */	mtctr r12
/* 806F6044  4E 80 04 21 */	bctrl 
/* 806F6048  38 00 00 0A */	li r0, 0xa
/* 806F604C  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_806F6050:
/* 806F6050  38 80 00 00 */	li r4, 0
/* 806F6054  B0 9F 06 94 */	sth r4, 0x694(r31)
/* 806F6058  C0 1F 0B 74 */	lfs f0, 0xb74(r31)
/* 806F605C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806F6060  C0 1F 0B 78 */	lfs f0, 0xb78(r31)
/* 806F6064  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F6068  C0 1F 0B 7C */	lfs f0, 0xb7c(r31)
/* 806F606C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F6070  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 806F6074  90 01 00 28 */	stw r0, 0x28(r1)
/* 806F6078  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 806F607C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806F6080  A8 61 00 2A */	lha r3, 0x2a(r1)
/* 806F6084  38 03 80 00 */	addi r0, r3, -32768
/* 806F6088  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 806F608C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F6090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F6094  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806F6098  90 81 00 08 */	stw r4, 8(r1)
/* 806F609C  38 00 FF FF */	li r0, -1
/* 806F60A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F60A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806F60A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F60AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F60B0  38 80 00 00 */	li r4, 0
/* 806F60B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081D7@ha */
/* 806F60B8  38 A5 81 D7 */	addi r5, r5, 0x81D7 /* 0x000081D7@l */
/* 806F60BC  38 C1 00 30 */	addi r6, r1, 0x30
/* 806F60C0  38 E0 00 00 */	li r7, 0
/* 806F60C4  39 01 00 28 */	addi r8, r1, 0x28
/* 806F60C8  39 20 00 00 */	li r9, 0
/* 806F60CC  39 40 00 FF */	li r10, 0xff
/* 806F60D0  3D 60 80 6F */	lis r11, lit_3648@ha
/* 806F60D4  C0 2B 7B 6C */	lfs f1, lit_3648@l(r11)
/* 806F60D8  4B 95 69 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F60DC  48 00 00 44 */	b lbl_806F6120
lbl_806F60E0:
/* 806F60E0  A8 1F 06 B8 */	lha r0, 0x6b8(r31)
/* 806F60E4  2C 00 00 00 */	cmpwi r0, 0
/* 806F60E8  40 82 00 38 */	bne lbl_806F6120
/* 806F60EC  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 806F60F0  4B 98 E3 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806F60F4  28 03 00 00 */	cmplwi r3, 0
/* 806F60F8  41 82 00 28 */	beq lbl_806F6120
/* 806F60FC  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 806F6100  4B 98 E3 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806F6104  7C 64 1B 78 */	mr r4, r3
/* 806F6108  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F610C  38 A0 00 2A */	li r5, 0x2a
/* 806F6110  38 C0 00 00 */	li r6, 0
/* 806F6114  4B 99 14 00 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806F6118  38 00 00 06 */	li r0, 6
/* 806F611C  B0 1F 06 B8 */	sth r0, 0x6b8(r31)
lbl_806F6120:
/* 806F6120  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806F6124  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806F6128  7C 08 03 A6 */	mtlr r0
/* 806F612C  38 21 00 50 */	addi r1, r1, 0x50
/* 806F6130  4E 80 00 20 */	blr 
