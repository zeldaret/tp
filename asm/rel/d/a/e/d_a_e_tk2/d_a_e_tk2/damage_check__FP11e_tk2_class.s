lbl_807BA824:
/* 807BA824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA828  7C 08 02 A6 */	mflr r0
/* 807BA82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA834  7C 7F 1B 78 */	mr r31, r3
/* 807BA838  A8 03 06 92 */	lha r0, 0x692(r3)
/* 807BA83C  2C 00 00 00 */	cmpwi r0, 0
/* 807BA840  40 82 00 EC */	bne lbl_807BA92C
/* 807BA844  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 807BA848  4B 8C 8F E8 */	b Move__10dCcD_GSttsFv
/* 807BA84C  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 807BA850  4B 8C 9C 10 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807BA854  28 03 00 00 */	cmplwi r3, 0
/* 807BA858  41 82 00 9C */	beq lbl_807BA8F4
/* 807BA85C  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 807BA860  4B 8C 9C 98 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807BA864  90 7F 0A 28 */	stw r3, 0xa28(r31)
/* 807BA868  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 807BA86C  4B 8C D1 EC */	b at_power_check__FP11dCcU_AtInfo
/* 807BA870  80 7F 0A 28 */	lwz r3, 0xa28(r31)
/* 807BA874  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807BA878  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807BA87C  41 82 00 10 */	beq lbl_807BA88C
/* 807BA880  38 00 00 14 */	li r0, 0x14
/* 807BA884  B0 1F 06 92 */	sth r0, 0x692(r31)
/* 807BA888  48 00 00 0C */	b lbl_807BA894
lbl_807BA88C:
/* 807BA88C  38 00 00 0A */	li r0, 0xa
/* 807BA890  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_807BA894:
/* 807BA894  80 7F 0A 28 */	lwz r3, 0xa28(r31)
/* 807BA898  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807BA89C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 807BA8A0  41 82 00 20 */	beq lbl_807BA8C0
/* 807BA8A4  38 00 00 01 */	li r0, 1
/* 807BA8A8  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 807BA8AC  38 00 00 0A */	li r0, 0xa
/* 807BA8B0  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BA8B4  38 00 00 32 */	li r0, 0x32
/* 807BA8B8  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 807BA8BC  48 00 00 38 */	b lbl_807BA8F4
lbl_807BA8C0:
/* 807BA8C0  7F E3 FB 78 */	mr r3, r31
/* 807BA8C4  38 9F 0A 28 */	addi r4, r31, 0xa28
/* 807BA8C8  4B 8C D3 3C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807BA8CC  88 1F 0A 48 */	lbz r0, 0xa48(r31)
/* 807BA8D0  28 00 00 10 */	cmplwi r0, 0x10
/* 807BA8D4  40 82 00 10 */	bne lbl_807BA8E4
/* 807BA8D8  38 00 00 09 */	li r0, 9
/* 807BA8DC  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 807BA8E0  48 00 00 0C */	b lbl_807BA8EC
lbl_807BA8E4:
/* 807BA8E4  38 00 00 0A */	li r0, 0xa
/* 807BA8E8  B0 1F 06 6A */	sth r0, 0x66a(r31)
lbl_807BA8EC:
/* 807BA8EC  38 00 00 00 */	li r0, 0
/* 807BA8F0  B0 1F 06 6C */	sth r0, 0x66c(r31)
lbl_807BA8F4:
/* 807BA8F4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807BA8F8  2C 00 00 01 */	cmpwi r0, 1
/* 807BA8FC  41 81 00 14 */	bgt lbl_807BA910
/* 807BA900  38 00 00 00 */	li r0, 0
/* 807BA904  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807BA908  38 00 00 03 */	li r0, 3
/* 807BA90C  98 1F 09 AA */	stb r0, 0x9aa(r31)
lbl_807BA910:
/* 807BA910  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807BA914  2C 00 00 01 */	cmpwi r0, 1
/* 807BA918  41 81 00 14 */	bgt lbl_807BA92C
/* 807BA91C  38 00 00 00 */	li r0, 0
/* 807BA920  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807BA924  38 00 00 03 */	li r0, 3
/* 807BA928  98 1F 09 AA */	stb r0, 0x9aa(r31)
lbl_807BA92C:
/* 807BA92C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA934  7C 08 03 A6 */	mtlr r0
/* 807BA938  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA93C  4E 80 00 20 */	blr 
