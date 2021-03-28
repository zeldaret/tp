lbl_8072A7C4:
/* 8072A7C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072A7C8  7C 08 02 A6 */	mflr r0
/* 8072A7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072A7D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072A7D4  7C 7F 1B 78 */	mr r31, r3
/* 8072A7D8  A8 03 06 AA */	lha r0, 0x6aa(r3)
/* 8072A7DC  2C 00 00 00 */	cmpwi r0, 0
/* 8072A7E0  40 82 00 D8 */	bne lbl_8072A8B8
/* 8072A7E4  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 8072A7E8  4B 95 90 48 */	b Move__10dCcD_GSttsFv
/* 8072A7EC  38 7F 09 08 */	addi r3, r31, 0x908
/* 8072A7F0  4B 95 9C 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8072A7F4  28 03 00 00 */	cmplwi r3, 0
/* 8072A7F8  41 82 00 A4 */	beq lbl_8072A89C
/* 8072A7FC  38 7F 09 08 */	addi r3, r31, 0x908
/* 8072A800  4B 95 9C F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8072A804  90 7F 0A 40 */	stw r3, 0xa40(r31)
/* 8072A808  7F E3 FB 78 */	mr r3, r31
/* 8072A80C  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 8072A810  4B 95 D3 F4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8072A814  80 7F 0A 40 */	lwz r3, 0xa40(r31)
/* 8072A818  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8072A81C  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8072A820  41 82 00 10 */	beq lbl_8072A830
/* 8072A824  38 00 00 14 */	li r0, 0x14
/* 8072A828  B0 1F 06 AA */	sth r0, 0x6aa(r31)
/* 8072A82C  48 00 00 0C */	b lbl_8072A838
lbl_8072A830:
/* 8072A830  38 00 00 0A */	li r0, 0xa
/* 8072A834  B0 1F 06 AA */	sth r0, 0x6aa(r31)
lbl_8072A838:
/* 8072A838  A8 1F 06 9A */	lha r0, 0x69a(r31)
/* 8072A83C  2C 00 00 03 */	cmpwi r0, 3
/* 8072A840  40 82 00 1C */	bne lbl_8072A85C
/* 8072A844  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 8072A848  7C 03 07 74 */	extsb r3, r0
/* 8072A84C  38 03 FF FF */	addi r0, r3, -1
/* 8072A850  54 00 68 24 */	slwi r0, r0, 0xd
/* 8072A854  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8072A858  48 00 00 0C */	b lbl_8072A864
lbl_8072A85C:
/* 8072A85C  A8 1F 0A 4E */	lha r0, 0xa4e(r31)
/* 8072A860  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8072A864:
/* 8072A864  38 00 00 04 */	li r0, 4
/* 8072A868  B0 1F 06 9A */	sth r0, 0x69a(r31)
/* 8072A86C  38 00 00 00 */	li r0, 0
/* 8072A870  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8072A874  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C5@ha */
/* 8072A878  38 03 00 C5 */	addi r0, r3, 0x00C5 /* 0x000700C5@l */
/* 8072A87C  90 01 00 08 */	stw r0, 8(r1)
/* 8072A880  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 8072A884  38 81 00 08 */	addi r4, r1, 8
/* 8072A888  38 A0 FF FF */	li r5, -1
/* 8072A88C  81 9F 05 F4 */	lwz r12, 0x5f4(r31)
/* 8072A890  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072A894  7D 89 03 A6 */	mtctr r12
/* 8072A898  4E 80 04 21 */	bctrl 
lbl_8072A89C:
/* 8072A89C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8072A8A0  2C 00 00 01 */	cmpwi r0, 1
/* 8072A8A4  41 81 00 14 */	bgt lbl_8072A8B8
/* 8072A8A8  38 00 00 00 */	li r0, 0
/* 8072A8AC  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8072A8B0  38 00 00 03 */	li r0, 3
/* 8072A8B4  98 1F 09 C2 */	stb r0, 0x9c2(r31)
lbl_8072A8B8:
/* 8072A8B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072A8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072A8C0  7C 08 03 A6 */	mtlr r0
/* 8072A8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8072A8C8  4E 80 00 20 */	blr 
