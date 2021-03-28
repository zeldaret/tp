lbl_80BE5A78:
/* 80BE5A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5A7C  7C 08 02 A6 */	mflr r0
/* 80BE5A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5A88  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE5A8C  7C 7F 1B 78 */	mr r31, r3
/* 80BE5A90  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE5A94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE5A98  40 82 00 74 */	bne lbl_80BE5B0C
/* 80BE5A9C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BE5AA0  41 82 00 60 */	beq lbl_80BE5B00
/* 80BE5AA4  7C 1E 03 78 */	mr r30, r0
/* 80BE5AA8  4B 49 2B 7C */	b __ct__16dBgS_MoveBgActorFv
/* 80BE5AAC  3C 60 80 BE */	lis r3, __vt__10daObjFan_c@ha
/* 80BE5AB0  38 03 5F 4C */	addi r0, r3, __vt__10daObjFan_c@l
/* 80BE5AB4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BE5AB8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BE5ABC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BE5AC0  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BE5AC4  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80BE5AC8  4B 49 DC 98 */	b __ct__10dCcD_GSttsFv
/* 80BE5ACC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BE5AD0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BE5AD4  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80BE5AD8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BE5ADC  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80BE5AE0  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BE5AE4  3C 80 80 BE */	lis r4, __ct__8dCcD_SphFv@ha
/* 80BE5AE8  38 84 5B F8 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80BE5AEC  3C A0 80 BE */	lis r5, __dt__8dCcD_SphFv@ha
/* 80BE5AF0  38 A5 5B 2C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80BE5AF4  38 C0 01 38 */	li r6, 0x138
/* 80BE5AF8  38 E0 00 04 */	li r7, 4
/* 80BE5AFC  4B 77 C2 64 */	b __construct_array
lbl_80BE5B00:
/* 80BE5B00  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE5B04  60 00 00 08 */	ori r0, r0, 8
/* 80BE5B08  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE5B0C:
/* 80BE5B0C  7F E3 FB 78 */	mr r3, r31
/* 80BE5B10  4B FF F5 DD */	bl create1st__10daObjFan_cFv
/* 80BE5B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5B18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE5B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5B20  7C 08 03 A6 */	mtlr r0
/* 80BE5B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5B28  4E 80 00 20 */	blr 
