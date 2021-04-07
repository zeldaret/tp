lbl_80C82A80:
/* 80C82A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82A84  7C 08 02 A6 */	mflr r0
/* 80C82A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82A90  93 C1 00 08 */	stw r30, 8(r1)
/* 80C82A94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C82A98  7C 9F 23 78 */	mr r31, r4
/* 80C82A9C  41 82 00 B0 */	beq lbl_80C82B4C
/* 80C82AA0  3C 60 80 C8 */	lis r3, __vt__15daObjLv6EGate_c@ha /* 0x80C82C78@ha */
/* 80C82AA4  38 03 2C 78 */	addi r0, r3, __vt__15daObjLv6EGate_c@l /* 0x80C82C78@l */
/* 80C82AA8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C82AAC  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C82AB0  3C 80 80 C8 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80C82790@ha */
/* 80C82AB4  38 84 27 90 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80C82790@l */
/* 80C82AB8  38 A0 01 3C */	li r5, 0x13c
/* 80C82ABC  38 C0 00 08 */	li r6, 8
/* 80C82AC0  4B 6D F2 29 */	bl __destroy_arr
/* 80C82AC4  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80C82AC8  41 82 00 54 */	beq lbl_80C82B1C
/* 80C82ACC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C82AD0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C82AD4  90 7E 06 20 */	stw r3, 0x620(r30)
/* 80C82AD8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C82ADC  90 1E 06 24 */	stw r0, 0x624(r30)
/* 80C82AE0  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C82AE4  41 82 00 24 */	beq lbl_80C82B08
/* 80C82AE8  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C82C54@ha */
/* 80C82AEC  38 03 2C 54 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C82C54@l */
/* 80C82AF0  90 1E 06 24 */	stw r0, 0x624(r30)
/* 80C82AF4  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C82AF8  41 82 00 10 */	beq lbl_80C82B08
/* 80C82AFC  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C82C48@ha */
/* 80C82B00  38 03 2C 48 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C82C48@l */
/* 80C82B04  90 1E 06 24 */	stw r0, 0x624(r30)
lbl_80C82B08:
/* 80C82B08  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80C82B0C  41 82 00 10 */	beq lbl_80C82B1C
/* 80C82B10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C82B14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C82B18  90 1E 06 20 */	stw r0, 0x620(r30)
lbl_80C82B1C:
/* 80C82B1C  28 1E 00 00 */	cmplwi r30, 0
/* 80C82B20  41 82 00 1C */	beq lbl_80C82B3C
/* 80C82B24  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C82B28  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C82B2C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C82B30  7F C3 F3 78 */	mr r3, r30
/* 80C82B34  38 80 00 00 */	li r4, 0
/* 80C82B38  4B 39 61 55 */	bl __dt__10fopAc_ac_cFv
lbl_80C82B3C:
/* 80C82B3C  7F E0 07 35 */	extsh. r0, r31
/* 80C82B40  40 81 00 0C */	ble lbl_80C82B4C
/* 80C82B44  7F C3 F3 78 */	mr r3, r30
/* 80C82B48  4B 64 C1 F5 */	bl __dl__FPv
lbl_80C82B4C:
/* 80C82B4C  7F C3 F3 78 */	mr r3, r30
/* 80C82B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C82B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82B5C  7C 08 03 A6 */	mtlr r0
/* 80C82B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82B64  4E 80 00 20 */	blr 
