lbl_80B1FC9C:
/* 80B1FC9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1FCA0  7C 08 02 A6 */	mflr r0
/* 80B1FCA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1FCA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B1FCAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B1FCB0  7C 7F 1B 78 */	mr r31, r3
/* 80B1FCB4  3B C0 00 00 */	li r30, 0
/* 80B1FCB8  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B1FCBC  28 00 00 00 */	cmplwi r0, 0
/* 80B1FCC0  40 82 00 14 */	bne lbl_80B1FCD4
/* 80B1FCC4  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80B1FCC8  38 A0 FF FF */	li r5, -1
/* 80B1FCCC  4B 62 AD 75 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B1FCD0  7C 7E 1B 78 */	mr r30, r3
lbl_80B1FCD4:
/* 80B1FCD4  28 1E 00 00 */	cmplwi r30, 0
/* 80B1FCD8  41 82 00 8C */	beq lbl_80B1FD64
/* 80B1FCDC  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80B1FCE0  4B 56 48 19 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80B1FCE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80B1FCE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B1FCEC  41 82 00 78 */	beq lbl_80B1FD64
/* 80B1FCF0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B1FCF4  7F E4 FB 78 */	mr r4, r31
/* 80B1FCF8  7F C5 F3 78 */	mr r5, r30
/* 80B1FCFC  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80B1FD00  4B 62 80 CD */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80B1FD04  7F E3 FB 78 */	mr r3, r31
/* 80B1FD08  38 80 00 00 */	li r4, 0
/* 80B1FD0C  38 A0 00 10 */	li r5, 0x10
/* 80B1FD10  38 C0 00 00 */	li r6, 0
/* 80B1FD14  4B 62 AD BD */	bl setDamage__8daNpcT_cFiii
/* 80B1FD18  38 00 00 00 */	li r0, 0
/* 80B1FD1C  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80B1FD20  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B1FD24  2C 00 00 00 */	cmpwi r0, 0
/* 80B1FD28  41 82 00 28 */	beq lbl_80B1FD50
/* 80B1FD2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B1FD30  4B 62 59 CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B1FD34  38 00 00 00 */	li r0, 0
/* 80B1FD38  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B1FD3C  3C 60 80 B2 */	lis r3, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B1FD40  C0 03 4A AC */	lfs f0, lit_4159@l(r3)  /* 0x80B24AAC@l */
/* 80B1FD44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B1FD48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B1FD4C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B1FD50:
/* 80B1FD50  38 00 00 00 */	li r0, 0
/* 80B1FD54  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80B1FD58  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80B1FD5C  38 00 00 01 */	li r0, 1
/* 80B1FD60  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B1FD64:
/* 80B1FD64  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B1FD68  2C 00 00 00 */	cmpwi r0, 0
/* 80B1FD6C  41 82 00 5C */	beq lbl_80B1FDC8
/* 80B1FD70  38 C0 00 00 */	li r6, 0
/* 80B1FD74  38 60 00 00 */	li r3, 0
/* 80B1FD78  7C C4 33 78 */	mr r4, r6
/* 80B1FD7C  3C A0 80 B2 */	lis r5, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B1FD80  C0 05 4A AC */	lfs f0, lit_4159@l(r5)  /* 0x80B24AAC@l */
/* 80B1FD84  38 00 00 02 */	li r0, 2
/* 80B1FD88  7C 09 03 A6 */	mtctr r0
lbl_80B1FD8C:
/* 80B1FD8C  7C BF 22 14 */	add r5, r31, r4
/* 80B1FD90  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B1FD94  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B1FD98  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B1FD9C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B1FDA0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B1FDA4  38 63 00 04 */	addi r3, r3, 4
/* 80B1FDA8  38 84 00 06 */	addi r4, r4, 6
/* 80B1FDAC  42 00 FF E0 */	bdnz lbl_80B1FD8C
/* 80B1FDB0  38 00 00 00 */	li r0, 0
/* 80B1FDB4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B1FDB8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B1FDBC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B1FDC0  38 00 00 01 */	li r0, 1
/* 80B1FDC4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B1FDC8:
/* 80B1FDC8  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80B1FDCC  4B 84 22 4D */	bl __ptmf_test
/* 80B1FDD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1FDD4  41 82 00 54 */	beq lbl_80B1FE28
/* 80B1FDD8  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 80B1FDDC  38 9F 0F A8 */	addi r4, r31, 0xfa8
/* 80B1FDE0  4B 84 22 69 */	bl __ptmf_cmpr
/* 80B1FDE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1FDE8  40 82 00 1C */	bne lbl_80B1FE04
/* 80B1FDEC  7F E3 FB 78 */	mr r3, r31
/* 80B1FDF0  38 80 00 00 */	li r4, 0
/* 80B1FDF4  39 9F 0F B4 */	addi r12, r31, 0xfb4
/* 80B1FDF8  4B 84 22 8D */	bl __ptmf_scall
/* 80B1FDFC  60 00 00 00 */	nop 
/* 80B1FE00  48 00 00 28 */	b lbl_80B1FE28
lbl_80B1FE04:
/* 80B1FE04  80 7F 0F A8 */	lwz r3, 0xfa8(r31)
/* 80B1FE08  80 1F 0F AC */	lwz r0, 0xfac(r31)
/* 80B1FE0C  90 61 00 08 */	stw r3, 8(r1)
/* 80B1FE10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1FE14  80 1F 0F B0 */	lwz r0, 0xfb0(r31)
/* 80B1FE18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1FE1C  7F E3 FB 78 */	mr r3, r31
/* 80B1FE20  38 81 00 08 */	addi r4, r1, 8
/* 80B1FE24  48 00 09 19 */	bl setAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i
lbl_80B1FE28:
/* 80B1FE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1FE2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1FE30  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B1FE34  28 00 00 00 */	cmplwi r0, 0
/* 80B1FE38  40 82 00 18 */	bne lbl_80B1FE50
/* 80B1FE3C  88 1F 10 01 */	lbz r0, 0x1001(r31)
/* 80B1FE40  28 00 00 00 */	cmplwi r0, 0
/* 80B1FE44  41 82 00 0C */	beq lbl_80B1FE50
/* 80B1FE48  7F E3 FB 78 */	mr r3, r31
/* 80B1FE4C  4B 4F 9E 31 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B1FE50:
/* 80B1FE50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B1FE54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B1FE58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1FE5C  7C 08 03 A6 */	mtlr r0
/* 80B1FE60  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1FE64  4E 80 00 20 */	blr 
