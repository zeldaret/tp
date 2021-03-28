lbl_80476E04:
/* 80476E04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80476E08  7C 08 02 A6 */	mflr r0
/* 80476E0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80476E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80476E14  4B EE B3 C4 */	b _savegpr_28
/* 80476E18  7C 7F 1B 78 */	mr r31, r3
/* 80476E1C  3B C0 00 00 */	li r30, 0
/* 80476E20  3B A0 00 00 */	li r29, 0
/* 80476E24  3B 80 00 00 */	li r28, 0
/* 80476E28  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476E2C  4B C0 D4 94 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80476E30  28 03 00 00 */	cmplwi r3, 0
/* 80476E34  41 82 00 28 */	beq lbl_80476E5C
/* 80476E38  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476E3C  81 9F 08 04 */	lwz r12, 0x804(r31)
/* 80476E40  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80476E44  7D 89 03 A6 */	mtctr r12
/* 80476E48  4E 80 04 21 */	bctrl 
/* 80476E4C  3B C0 00 01 */	li r30, 1
/* 80476E50  3B A0 00 01 */	li r29, 1
/* 80476E54  3B 80 00 01 */	li r28, 1
/* 80476E58  48 00 00 E8 */	b lbl_80476F40
lbl_80476E5C:
/* 80476E5C  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476E60  4B C0 D6 00 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80476E64  28 03 00 00 */	cmplwi r3, 0
/* 80476E68  41 82 00 D8 */	beq lbl_80476F40
/* 80476E6C  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476E70  4B C0 D6 D8 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80476E74  28 03 00 00 */	cmplwi r3, 0
/* 80476E78  41 82 00 C8 */	beq lbl_80476F40
/* 80476E7C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80476E80  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80476E84  40 82 00 84 */	bne lbl_80476F08
/* 80476E88  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80476E8C  28 00 00 01 */	cmplwi r0, 1
/* 80476E90  40 82 00 78 */	bne lbl_80476F08
/* 80476E94  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80476E98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80476E9C  41 82 00 5C */	beq lbl_80476EF8
/* 80476EA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80476EA4  7C 07 07 74 */	extsb r7, r0
/* 80476EA8  38 00 00 00 */	li r0, 0
/* 80476EAC  90 01 00 08 */	stw r0, 8(r1)
/* 80476EB0  38 60 00 DC */	li r3, 0xdc
/* 80476EB4  28 1F 00 00 */	cmplwi r31, 0
/* 80476EB8  41 82 00 0C */	beq lbl_80476EC4
/* 80476EBC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80476EC0  48 00 00 08 */	b lbl_80476EC8
lbl_80476EC4:
/* 80476EC4  38 80 FF FF */	li r4, -1
lbl_80476EC8:
/* 80476EC8  38 A0 00 02 */	li r5, 2
/* 80476ECC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80476ED0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80476ED4  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80476ED8  39 40 FF FF */	li r10, -1
/* 80476EDC  4B BA 30 14 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80476EE0  3B C0 00 01 */	li r30, 1
/* 80476EE4  3B A0 00 00 */	li r29, 0
/* 80476EE8  3B 80 00 00 */	li r28, 0
/* 80476EEC  38 00 00 05 */	li r0, 5
/* 80476EF0  98 1F 0D B6 */	stb r0, 0xdb6(r31)
/* 80476EF4  48 00 00 4C */	b lbl_80476F40
lbl_80476EF8:
/* 80476EF8  3B C0 00 01 */	li r30, 1
/* 80476EFC  3B A0 00 01 */	li r29, 1
/* 80476F00  3B 80 00 01 */	li r28, 1
/* 80476F04  48 00 00 3C */	b lbl_80476F40
lbl_80476F08:
/* 80476F08  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 80476F0C  40 82 00 34 */	bne lbl_80476F40
/* 80476F10  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80476F14  40 82 00 2C */	bne lbl_80476F40
/* 80476F18  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80476F1C  40 82 00 24 */	bne lbl_80476F40
/* 80476F20  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476F24  81 9F 08 04 */	lwz r12, 0x804(r31)
/* 80476F28  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80476F2C  7D 89 03 A6 */	mtctr r12
/* 80476F30  4E 80 04 21 */	bctrl 
/* 80476F34  3B C0 00 01 */	li r30, 1
/* 80476F38  3B A0 00 01 */	li r29, 1
/* 80476F3C  3B 80 00 01 */	li r28, 1
lbl_80476F40:
/* 80476F40  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80476F44  41 82 00 18 */	beq lbl_80476F5C
/* 80476F48  7F E3 FB 78 */	mr r3, r31
/* 80476F4C  38 80 00 01 */	li r4, 1
/* 80476F50  38 A0 00 01 */	li r5, 1
/* 80476F54  7F A6 EB 78 */	mr r6, r29
/* 80476F58  4B FF F9 E9 */	bl obj_break__12daObjCarry_cFbbb
lbl_80476F5C:
/* 80476F5C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80476F60  41 82 00 0C */	beq lbl_80476F6C
/* 80476F64  7F E3 FB 78 */	mr r3, r31
/* 80476F68  4B BA 2D 14 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80476F6C:
/* 80476F6C  7F C3 F3 78 */	mr r3, r30
/* 80476F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80476F74  4B EE B2 B0 */	b _restgpr_28
/* 80476F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80476F7C  7C 08 03 A6 */	mtlr r0
/* 80476F80  38 21 00 20 */	addi r1, r1, 0x20
/* 80476F84  4E 80 00 20 */	blr 
