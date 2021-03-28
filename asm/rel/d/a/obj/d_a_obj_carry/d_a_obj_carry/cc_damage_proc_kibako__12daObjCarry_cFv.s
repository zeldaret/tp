lbl_80476B88:
/* 80476B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80476B8C  7C 08 02 A6 */	mflr r0
/* 80476B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80476B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80476B98  4B EE B6 40 */	b _savegpr_28
/* 80476B9C  7C 7F 1B 78 */	mr r31, r3
/* 80476BA0  3B C0 00 00 */	li r30, 0
/* 80476BA4  3B A0 00 00 */	li r29, 0
/* 80476BA8  3B 80 00 00 */	li r28, 0
/* 80476BAC  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476BB0  4B C0 D7 10 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80476BB4  28 03 00 00 */	cmplwi r3, 0
/* 80476BB8  41 82 00 14 */	beq lbl_80476BCC
/* 80476BBC  3B C0 00 01 */	li r30, 1
/* 80476BC0  3B A0 00 01 */	li r29, 1
/* 80476BC4  3B 80 00 01 */	li r28, 1
/* 80476BC8  48 00 00 D4 */	b lbl_80476C9C
lbl_80476BCC:
/* 80476BCC  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476BD0  4B C0 D8 90 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80476BD4  28 03 00 00 */	cmplwi r3, 0
/* 80476BD8  41 82 00 C4 */	beq lbl_80476C9C
/* 80476BDC  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80476BE0  4B C0 D9 68 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80476BE4  28 03 00 00 */	cmplwi r3, 0
/* 80476BE8  41 82 00 B4 */	beq lbl_80476C9C
/* 80476BEC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80476BF0  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80476BF4  40 82 00 84 */	bne lbl_80476C78
/* 80476BF8  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80476BFC  28 00 00 01 */	cmplwi r0, 1
/* 80476C00  40 82 00 78 */	bne lbl_80476C78
/* 80476C04  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80476C08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80476C0C  41 82 00 5C */	beq lbl_80476C68
/* 80476C10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80476C14  7C 07 07 74 */	extsb r7, r0
/* 80476C18  38 00 00 00 */	li r0, 0
/* 80476C1C  90 01 00 08 */	stw r0, 8(r1)
/* 80476C20  38 60 00 DC */	li r3, 0xdc
/* 80476C24  28 1F 00 00 */	cmplwi r31, 0
/* 80476C28  41 82 00 0C */	beq lbl_80476C34
/* 80476C2C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80476C30  48 00 00 08 */	b lbl_80476C38
lbl_80476C34:
/* 80476C34  38 80 FF FF */	li r4, -1
lbl_80476C38:
/* 80476C38  38 A0 00 00 */	li r5, 0
/* 80476C3C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80476C40  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80476C44  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80476C48  39 40 FF FF */	li r10, -1
/* 80476C4C  4B BA 32 A4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80476C50  3B C0 00 01 */	li r30, 1
/* 80476C54  3B A0 00 00 */	li r29, 0
/* 80476C58  3B 80 00 00 */	li r28, 0
/* 80476C5C  38 00 00 05 */	li r0, 5
/* 80476C60  98 1F 0D B6 */	stb r0, 0xdb6(r31)
/* 80476C64  48 00 00 38 */	b lbl_80476C9C
lbl_80476C68:
/* 80476C68  3B C0 00 01 */	li r30, 1
/* 80476C6C  3B A0 00 01 */	li r29, 1
/* 80476C70  3B 80 00 01 */	li r28, 1
/* 80476C74  48 00 00 28 */	b lbl_80476C9C
lbl_80476C78:
/* 80476C78  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 80476C7C  40 82 00 20 */	bne lbl_80476C9C
/* 80476C80  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80476C84  40 82 00 18 */	bne lbl_80476C9C
/* 80476C88  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80476C8C  40 82 00 10 */	bne lbl_80476C9C
/* 80476C90  3B C0 00 01 */	li r30, 1
/* 80476C94  3B A0 00 01 */	li r29, 1
/* 80476C98  3B 80 00 01 */	li r28, 1
lbl_80476C9C:
/* 80476C9C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80476CA0  41 82 00 18 */	beq lbl_80476CB8
/* 80476CA4  7F E3 FB 78 */	mr r3, r31
/* 80476CA8  38 80 00 01 */	li r4, 1
/* 80476CAC  38 A0 00 01 */	li r5, 1
/* 80476CB0  7F A6 EB 78 */	mr r6, r29
/* 80476CB4  4B FF FC 8D */	bl obj_break__12daObjCarry_cFbbb
lbl_80476CB8:
/* 80476CB8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80476CBC  41 82 00 0C */	beq lbl_80476CC8
/* 80476CC0  7F E3 FB 78 */	mr r3, r31
/* 80476CC4  4B BA 2F B8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80476CC8:
/* 80476CC8  7F C3 F3 78 */	mr r3, r30
/* 80476CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80476CD0  4B EE B5 54 */	b _restgpr_28
/* 80476CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80476CD8  7C 08 03 A6 */	mtlr r0
/* 80476CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80476CE0  4E 80 00 20 */	blr 
