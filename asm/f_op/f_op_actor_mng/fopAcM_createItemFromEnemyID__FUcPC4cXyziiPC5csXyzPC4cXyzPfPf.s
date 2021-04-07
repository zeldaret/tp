lbl_8001BE14:
/* 8001BE14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8001BE18  7C 08 02 A6 */	mflr r0
/* 8001BE1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001BE20  39 61 00 50 */	addi r11, r1, 0x50
/* 8001BE24  48 34 63 91 */	bl _savegpr_19
/* 8001BE28  7C 95 23 78 */	mr r21, r4
/* 8001BE2C  7C B6 2B 78 */	mr r22, r5
/* 8001BE30  7C D7 33 78 */	mr r23, r6
/* 8001BE34  7C F8 3B 78 */	mr r24, r7
/* 8001BE38  7D 19 43 78 */	mr r25, r8
/* 8001BE3C  7D 3A 4B 78 */	mr r26, r9
/* 8001BE40  7D 5B 53 78 */	mr r27, r10
/* 8001BE44  3B E0 00 FF */	li r31, 0xff
/* 8001BE48  80 8D 8A 10 */	lwz r4, mData__12dEnemyItem_c(r13)
/* 8001BE4C  83 C4 00 04 */	lwz r30, 4(r4)
/* 8001BE50  3B A4 00 08 */	addi r29, r4, 8
/* 8001BE54  3B 80 00 00 */	li r28, 0
/* 8001BE58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BE5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BE60  3A 64 4E 00 */	addi r19, r4, 0x4e00
/* 8001BE64  54 74 06 3E */	clrlwi r20, r3, 0x18
/* 8001BE68  48 00 00 48 */	b lbl_8001BEB0
lbl_8001BE6C:
/* 8001BE6C  88 1D 00 00 */	lbz r0, 0(r29)
/* 8001BE70  7C 14 00 40 */	cmplw r20, r0
/* 8001BE74  40 82 00 34 */	bne lbl_8001BEA8
/* 8001BE78  88 1D 00 02 */	lbz r0, 2(r29)
/* 8001BE7C  2C 00 00 23 */	cmpwi r0, 0x23
/* 8001BE80  40 82 00 0C */	bne lbl_8001BE8C
/* 8001BE84  8B FD 00 01 */	lbz r31, 1(r29)
/* 8001BE88  48 00 00 20 */	b lbl_8001BEA8
lbl_8001BE8C:
/* 8001BE8C  7E 63 9B 78 */	mr r3, r19
/* 8001BE90  38 9D 00 02 */	addi r4, r29, 2
/* 8001BE94  48 34 CB 01 */	bl strcmp
/* 8001BE98  2C 03 00 00 */	cmpwi r3, 0
/* 8001BE9C  40 82 00 0C */	bne lbl_8001BEA8
/* 8001BEA0  8B FD 00 01 */	lbz r31, 1(r29)
/* 8001BEA4  48 00 00 14 */	b lbl_8001BEB8
lbl_8001BEA8:
/* 8001BEA8  3B BD 00 0A */	addi r29, r29, 0xa
/* 8001BEAC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8001BEB0:
/* 8001BEB0  7C 1C F0 40 */	cmplw r28, r30
/* 8001BEB4  41 80 FF B8 */	blt lbl_8001BE6C
lbl_8001BEB8:
/* 8001BEB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BEBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BEC0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8001BEC4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8001BEC8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8001BECC  7D 89 03 A6 */	mtctr r12
/* 8001BED0  4E 80 04 21 */	bctrl 
/* 8001BED4  28 03 00 00 */	cmplwi r3, 0
/* 8001BED8  41 82 00 44 */	beq lbl_8001BF1C
/* 8001BEDC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8001BEE0  4B FF FE 1D */	bl fopAcM_getItemNoFromTableNo__FUc
/* 8001BEE4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8001BEE8  7E A3 AB 78 */	mr r3, r21
/* 8001BEEC  7E E5 BB 78 */	mr r5, r23
/* 8001BEF0  38 C0 00 00 */	li r6, 0
/* 8001BEF4  38 E0 00 00 */	li r7, 0
/* 8001BEF8  C0 22 82 04 */	lfs f1, lit_4645(r2)
/* 8001BEFC  FC 40 08 90 */	fmr f2, f1
/* 8001BF00  48 00 02 B9 */	bl fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff
/* 8001BF04  28 03 00 00 */	cmplwi r3, 0
/* 8001BF08  41 82 00 0C */	beq lbl_8001BF14
/* 8001BF0C  80 63 00 04 */	lwz r3, 4(r3)
/* 8001BF10  48 00 00 3C */	b lbl_8001BF4C
lbl_8001BF14:
/* 8001BF14  38 60 FF FF */	li r3, -1
/* 8001BF18  48 00 00 34 */	b lbl_8001BF4C
lbl_8001BF1C:
/* 8001BF1C  93 61 00 08 */	stw r27, 8(r1)
/* 8001BF20  38 00 00 00 */	li r0, 0
/* 8001BF24  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001BF28  7E A3 AB 78 */	mr r3, r21
/* 8001BF2C  7F E4 FB 78 */	mr r4, r31
/* 8001BF30  7E C5 B3 78 */	mr r5, r22
/* 8001BF34  7E E6 BB 78 */	mr r6, r23
/* 8001BF38  7F 07 C3 78 */	mr r7, r24
/* 8001BF3C  39 00 00 00 */	li r8, 0
/* 8001BF40  7F 29 CB 78 */	mr r9, r25
/* 8001BF44  7F 4A D3 78 */	mr r10, r26
/* 8001BF48  48 00 00 1D */	bl fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
lbl_8001BF4C:
/* 8001BF4C  39 61 00 50 */	addi r11, r1, 0x50
/* 8001BF50  48 34 62 B1 */	bl _restgpr_19
/* 8001BF54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8001BF58  7C 08 03 A6 */	mtlr r0
/* 8001BF5C  38 21 00 50 */	addi r1, r1, 0x50
/* 8001BF60  4E 80 00 20 */	blr 
