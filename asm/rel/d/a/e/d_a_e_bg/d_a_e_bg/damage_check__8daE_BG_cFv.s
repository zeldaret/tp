lbl_80685C2C:
/* 80685C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80685C30  7C 08 02 A6 */	mflr r0
/* 80685C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80685C38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80685C3C  7C 7F 1B 78 */	mr r31, r3
/* 80685C40  88 03 06 8E */	lbz r0, 0x68e(r3)
/* 80685C44  28 00 00 00 */	cmplwi r0, 0
/* 80685C48  40 82 01 60 */	bne lbl_80685DA8
/* 80685C4C  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 80685C50  4B 9F DB E1 */	bl Move__10dCcD_GSttsFv
/* 80685C54  38 7F 09 08 */	addi r3, r31, 0x908
/* 80685C58  4B 9F E8 09 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80685C5C  28 03 00 00 */	cmplwi r3, 0
/* 80685C60  41 82 01 48 */	beq lbl_80685DA8
/* 80685C64  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 80685C68  2C 00 00 00 */	cmpwi r0, 0
/* 80685C6C  41 82 00 68 */	beq lbl_80685CD4
/* 80685C70  88 1F 06 8D */	lbz r0, 0x68d(r31)
/* 80685C74  28 00 00 00 */	cmplwi r0, 0
/* 80685C78  40 82 00 24 */	bne lbl_80685C9C
/* 80685C7C  88 9F 06 8C */	lbz r4, 0x68c(r31)
/* 80685C80  28 04 00 FF */	cmplwi r4, 0xff
/* 80685C84  41 82 00 18 */	beq lbl_80685C9C
/* 80685C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80685C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80685C90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80685C94  7C 05 07 74 */	extsb r5, r0
/* 80685C98  4B 9A F5 69 */	bl onSwitch__10dSv_info_cFii
lbl_80685C9C:
/* 80685C9C  38 00 00 00 */	li r0, 0
/* 80685CA0  90 01 00 08 */	stw r0, 8(r1)
/* 80685CA4  38 60 02 21 */	li r3, 0x221
/* 80685CA8  38 80 00 12 */	li r4, 0x12
/* 80685CAC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80685CB0  38 C0 FF FF */	li r6, -1
/* 80685CB4  38 E0 00 00 */	li r7, 0
/* 80685CB8  39 00 00 00 */	li r8, 0
/* 80685CBC  39 20 FF FF */	li r9, -1
/* 80685CC0  39 40 00 00 */	li r10, 0
/* 80685CC4  4B 99 41 41 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80685CC8  7F E3 FB 78 */	mr r3, r31
/* 80685CCC  4B 99 3F B1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80685CD0  48 00 00 D8 */	b lbl_80685DA8
lbl_80685CD4:
/* 80685CD4  38 7F 09 08 */	addi r3, r31, 0x908
/* 80685CD8  4B 9F E8 21 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80685CDC  90 7F 0B 78 */	stw r3, 0xb78(r31)
/* 80685CE0  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 80685CE4  4B BD DD 65 */	bl GetAc__8cCcD_ObjFv
/* 80685CE8  7F E3 FB 78 */	mr r3, r31
/* 80685CEC  38 9F 0B 78 */	addi r4, r31, 0xb78
/* 80685CF0  4B A0 1F 15 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80685CF4  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 80685CF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80685CFC  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80685D00  41 82 00 10 */	beq lbl_80685D10
/* 80685D04  38 00 00 14 */	li r0, 0x14
/* 80685D08  98 1F 06 8E */	stb r0, 0x68e(r31)
/* 80685D0C  48 00 00 0C */	b lbl_80685D18
lbl_80685D10:
/* 80685D10  38 00 00 0A */	li r0, 0xa
/* 80685D14  98 1F 06 8E */	stb r0, 0x68e(r31)
lbl_80685D18:
/* 80685D18  A0 1F 0B 94 */	lhz r0, 0xb94(r31)
/* 80685D1C  28 00 00 01 */	cmplwi r0, 1
/* 80685D20  41 81 00 0C */	bgt lbl_80685D2C
/* 80685D24  38 00 00 0A */	li r0, 0xa
/* 80685D28  98 1F 06 8E */	stb r0, 0x68e(r31)
lbl_80685D2C:
/* 80685D2C  38 00 00 00 */	li r0, 0
/* 80685D30  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 80685D34  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 80685D38  38 7F 09 08 */	addi r3, r31, 0x908
/* 80685D3C  81 9F 09 44 */	lwz r12, 0x944(r31)
/* 80685D40  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80685D44  7D 89 03 A6 */	mtctr r12
/* 80685D48  4E 80 04 21 */	bctrl 
/* 80685D4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A8@ha */
/* 80685D50  38 03 02 A8 */	addi r0, r3, 0x02A8 /* 0x000702A8@l */
/* 80685D54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80685D58  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80685D5C  38 81 00 10 */	addi r4, r1, 0x10
/* 80685D60  38 A0 FF FF */	li r5, -1
/* 80685D64  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80685D68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80685D6C  7D 89 03 A6 */	mtctr r12
/* 80685D70  4E 80 04 21 */	bctrl 
/* 80685D74  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 80685D78  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80685D7C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80685D80  41 82 00 18 */	beq lbl_80685D98
/* 80685D84  7F E3 FB 78 */	mr r3, r31
/* 80685D88  38 80 00 06 */	li r4, 6
/* 80685D8C  38 A0 00 00 */	li r5, 0
/* 80685D90  4B FF FE 85 */	bl setActionMode__8daE_BG_cFii
/* 80685D94  48 00 00 14 */	b lbl_80685DA8
lbl_80685D98:
/* 80685D98  7F E3 FB 78 */	mr r3, r31
/* 80685D9C  38 80 00 03 */	li r4, 3
/* 80685DA0  38 A0 00 00 */	li r5, 0
/* 80685DA4  4B FF FE 71 */	bl setActionMode__8daE_BG_cFii
lbl_80685DA8:
/* 80685DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80685DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80685DB0  7C 08 03 A6 */	mtlr r0
/* 80685DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80685DB8  4E 80 00 20 */	blr 
