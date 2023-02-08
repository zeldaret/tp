lbl_80878A6C:
/* 80878A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878A70  7C 08 02 A6 */	mflr r0
/* 80878A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878A7C  3C 60 80 94 */	lis r3, daMP_Fail_alloc@ha /* 0x80945B08@ha */
/* 80878A80  80 03 5B 08 */	lwz r0, daMP_Fail_alloc@l(r3)  /* 0x80945B08@l */
/* 80878A84  2C 00 00 00 */	cmpwi r0, 0
/* 80878A88  40 82 00 10 */	bne lbl_80878A98
/* 80878A8C  4B FF FB 91 */	bl daMP_THPPlayerGetState__Fv
/* 80878A90  2C 03 00 05 */	cmpwi r3, 5
/* 80878A94  40 82 00 0C */	bne lbl_80878AA0
lbl_80878A98:
/* 80878A98  38 60 00 00 */	li r3, 0
/* 80878A9C  48 00 00 88 */	b lbl_80878B24
lbl_80878AA0:
/* 80878AA0  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80878AA4  38 A3 9B D0 */	addi r5, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80878AA8  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 80878AAC  2C 00 00 00 */	cmpwi r0, 0
/* 80878AB0  41 82 00 30 */	beq lbl_80878AE0
/* 80878AB4  80 65 00 F8 */	lwz r3, 0xf8(r5)
/* 80878AB8  28 03 00 00 */	cmplwi r3, 0
/* 80878ABC  41 82 00 24 */	beq lbl_80878AE0
/* 80878AC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80878AC4  80 05 00 C0 */	lwz r0, 0xc0(r5)
/* 80878AC8  7C 83 02 14 */	add r4, r3, r0
/* 80878ACC  80 65 00 50 */	lwz r3, 0x50(r5)
/* 80878AD0  7C 04 1B 96 */	divwu r0, r4, r3
/* 80878AD4  7C 00 19 D6 */	mullw r0, r0, r3
/* 80878AD8  7F E0 20 50 */	subf r31, r0, r4
/* 80878ADC  48 00 00 0C */	b lbl_80878AE8
lbl_80878AE0:
/* 80878AE0  38 60 FF FF */	li r3, -1
/* 80878AE4  48 00 00 40 */	b lbl_80878B24
lbl_80878AE8:
/* 80878AE8  4B FF FB 11 */	bl daMP_THPPlayerGetTotalFrame__Fv
/* 80878AEC  28 03 00 00 */	cmplwi r3, 0
/* 80878AF0  40 82 00 0C */	bne lbl_80878AFC
/* 80878AF4  38 60 00 00 */	li r3, 0
/* 80878AF8  48 00 00 2C */	b lbl_80878B24
lbl_80878AFC:
/* 80878AFC  28 03 00 01 */	cmplwi r3, 1
/* 80878B00  41 81 00 0C */	bgt lbl_80878B0C
/* 80878B04  38 60 00 00 */	li r3, 0
/* 80878B08  48 00 00 1C */	b lbl_80878B24
lbl_80878B0C:
/* 80878B0C  38 83 FF FF */	addi r4, r3, -1
/* 80878B10  7C 04 F8 10 */	subfc r0, r4, r31
/* 80878B14  7C 04 01 94 */	addze r0, r4
/* 80878B18  7C 60 20 50 */	subf r3, r0, r4
/* 80878B1C  7C 1F 20 50 */	subf r0, r31, r4
/* 80878B20  7C 03 18 78 */	andc r3, r0, r3
lbl_80878B24:
/* 80878B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80878B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878B2C  7C 08 03 A6 */	mtlr r0
/* 80878B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80878B34  4E 80 00 20 */	blr 
