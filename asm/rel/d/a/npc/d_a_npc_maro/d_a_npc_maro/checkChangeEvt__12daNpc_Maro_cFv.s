lbl_8055CB14:
/* 8055CB14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CB18  7C 08 02 A6 */	mflr r0
/* 8055CB1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CB20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055CB24  7C 7F 1B 78 */	mr r31, r3
/* 8055CB28  3C 80 80 56 */	lis r4, lit_5060@ha /* 0x80565698@ha */
/* 8055CB2C  38 A4 56 98 */	addi r5, r4, lit_5060@l /* 0x80565698@l */
/* 8055CB30  80 85 00 00 */	lwz r4, 0(r5)
/* 8055CB34  80 05 00 04 */	lwz r0, 4(r5)
/* 8055CB38  90 81 00 08 */	stw r4, 8(r1)
/* 8055CB3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8055CB40  80 05 00 08 */	lwz r0, 8(r5)
/* 8055CB44  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055CB48  38 81 00 08 */	addi r4, r1, 8
/* 8055CB4C  48 00 11 BD */	bl chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i
/* 8055CB50  2C 03 00 00 */	cmpwi r3, 0
/* 8055CB54  40 82 01 30 */	bne lbl_8055CC84
/* 8055CB58  38 00 00 00 */	li r0, 0
/* 8055CB5C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 8055CB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055CB64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055CB68  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 8055CB6C  28 04 00 01 */	cmplwi r4, 1
/* 8055CB70  41 82 00 0C */	beq lbl_8055CB7C
/* 8055CB74  28 04 00 02 */	cmplwi r4, 2
/* 8055CB78  40 82 00 08 */	bne lbl_8055CB80
lbl_8055CB7C:
/* 8055CB7C  38 00 00 01 */	li r0, 1
lbl_8055CB80:
/* 8055CB80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055CB84  41 82 00 2C */	beq lbl_8055CBB0
/* 8055CB88  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8055CB8C  4B AE BC 65 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 8055CB90  2C 03 00 00 */	cmpwi r3, 0
/* 8055CB94  41 82 00 14 */	beq lbl_8055CBA8
/* 8055CB98  38 00 00 02 */	li r0, 2
/* 8055CB9C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8055CBA0  7F E3 FB 78 */	mr r3, r31
/* 8055CBA4  4B BE D6 81 */	bl evtChange__8daNpcT_cFv
lbl_8055CBA8:
/* 8055CBA8  38 60 00 01 */	li r3, 1
/* 8055CBAC  48 00 00 DC */	b lbl_8055CC88
lbl_8055CBB0:
/* 8055CBB0  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 8055CBB4  2C 00 00 02 */	cmpwi r0, 2
/* 8055CBB8  41 82 00 5C */	beq lbl_8055CC14
/* 8055CBBC  40 80 00 14 */	bge lbl_8055CBD0
/* 8055CBC0  2C 00 00 00 */	cmpwi r0, 0
/* 8055CBC4  41 82 00 C0 */	beq lbl_8055CC84
/* 8055CBC8  40 80 00 18 */	bge lbl_8055CBE0
/* 8055CBCC  48 00 00 B8 */	b lbl_8055CC84
lbl_8055CBD0:
/* 8055CBD0  2C 00 00 0B */	cmpwi r0, 0xb
/* 8055CBD4  41 82 00 58 */	beq lbl_8055CC2C
/* 8055CBD8  41 80 00 AC */	blt lbl_8055CC84
/* 8055CBDC  48 00 00 A8 */	b lbl_8055CC84
lbl_8055CBE0:
/* 8055CBE0  38 60 02 69 */	li r3, 0x269
/* 8055CBE4  4B BE FE C9 */	bl daNpcT_chkEvtBit__FUl
/* 8055CBE8  2C 03 00 00 */	cmpwi r3, 0
/* 8055CBEC  41 82 00 10 */	beq lbl_8055CBFC
/* 8055CBF0  38 00 00 06 */	li r0, 6
/* 8055CBF4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8055CBF8  48 00 00 0C */	b lbl_8055CC04
lbl_8055CBFC:
/* 8055CBFC  38 00 00 05 */	li r0, 5
/* 8055CC00  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_8055CC04:
/* 8055CC04  7F E3 FB 78 */	mr r3, r31
/* 8055CC08  4B BE D6 1D */	bl evtChange__8daNpcT_cFv
/* 8055CC0C  38 60 00 01 */	li r3, 1
/* 8055CC10  48 00 00 78 */	b lbl_8055CC88
lbl_8055CC14:
/* 8055CC14  38 00 00 0E */	li r0, 0xe
/* 8055CC18  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8055CC1C  7F E3 FB 78 */	mr r3, r31
/* 8055CC20  4B BE D6 05 */	bl evtChange__8daNpcT_cFv
/* 8055CC24  38 60 00 01 */	li r3, 1
/* 8055CC28  48 00 00 60 */	b lbl_8055CC88
lbl_8055CC2C:
/* 8055CC2C  38 60 02 66 */	li r3, 0x266
/* 8055CC30  4B BE FE 7D */	bl daNpcT_chkEvtBit__FUl
/* 8055CC34  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC38  41 82 00 34 */	beq lbl_8055CC6C
/* 8055CC3C  38 60 00 3F */	li r3, 0x3f
/* 8055CC40  38 80 00 01 */	li r4, 1
/* 8055CC44  4B B3 B2 9D */	bl checkItemGet__FUci
/* 8055CC48  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC4C  41 82 00 20 */	beq lbl_8055CC6C
/* 8055CC50  38 60 00 22 */	li r3, 0x22
/* 8055CC54  4B BE FE 59 */	bl daNpcT_chkEvtBit__FUl
/* 8055CC58  2C 03 00 00 */	cmpwi r3, 0
/* 8055CC5C  40 82 00 10 */	bne lbl_8055CC6C
/* 8055CC60  38 00 00 04 */	li r0, 4
/* 8055CC64  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8055CC68  48 00 00 0C */	b lbl_8055CC74
lbl_8055CC6C:
/* 8055CC6C  38 00 00 03 */	li r0, 3
/* 8055CC70  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_8055CC74:
/* 8055CC74  7F E3 FB 78 */	mr r3, r31
/* 8055CC78  4B BE D5 AD */	bl evtChange__8daNpcT_cFv
/* 8055CC7C  38 60 00 01 */	li r3, 1
/* 8055CC80  48 00 00 08 */	b lbl_8055CC88
lbl_8055CC84:
/* 8055CC84  38 60 00 00 */	li r3, 0
lbl_8055CC88:
/* 8055CC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055CC8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CC90  7C 08 03 A6 */	mtlr r0
/* 8055CC94  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CC98  4E 80 00 20 */	blr 
