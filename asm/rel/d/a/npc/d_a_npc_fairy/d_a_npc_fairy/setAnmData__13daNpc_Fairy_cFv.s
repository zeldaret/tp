lbl_809B2B44:
/* 809B2B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B2B48  7C 08 02 A6 */	mflr r0
/* 809B2B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B2B50  39 61 00 20 */	addi r11, r1, 0x20
/* 809B2B54  4B 9A F6 88 */	b _savegpr_29
/* 809B2B58  7C 7F 1B 78 */	mr r31, r3
/* 809B2B5C  80 83 05 78 */	lwz r4, 0x578(r3)
/* 809B2B60  80 84 00 04 */	lwz r4, 4(r4)
/* 809B2B64  83 A4 00 04 */	lwz r29, 4(r4)
/* 809B2B68  3C 80 80 9C */	lis r4, l_resNameList@ha
/* 809B2B6C  3B C4 95 F8 */	addi r30, r4, l_resNameList@l
/* 809B2B70  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B2B74  38 A0 00 25 */	li r5, 0x25
/* 809B2B78  4B 79 56 0C */	b getColorAnmP__8daNpcT_cFPCci
/* 809B2B7C  7C 64 1B 79 */	or. r4, r3, r3
/* 809B2B80  41 82 00 1C */	beq lbl_809B2B9C
/* 809B2B84  7F E3 FB 78 */	mr r3, r31
/* 809B2B88  7F A5 EB 78 */	mr r5, r29
/* 809B2B8C  3C C0 80 9C */	lis r6, lit_3916@ha
/* 809B2B90  C0 26 93 78 */	lfs f1, lit_3916@l(r6)
/* 809B2B94  38 C0 00 02 */	li r6, 2
/* 809B2B98  4B 79 58 20 */	b setBpkAnm__8daNpcT_cFP11J3DAnmColorP12J3DModelDatafi
lbl_809B2B9C:
/* 809B2B9C  7F E3 FB 78 */	mr r3, r31
/* 809B2BA0  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B2BA4  38 A0 00 28 */	li r5, 0x28
/* 809B2BA8  4B 79 55 A0 */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 809B2BAC  7C 64 1B 79 */	or. r4, r3, r3
/* 809B2BB0  41 82 00 1C */	beq lbl_809B2BCC
/* 809B2BB4  7F E3 FB 78 */	mr r3, r31
/* 809B2BB8  7F A5 EB 78 */	mr r5, r29
/* 809B2BBC  3C C0 80 9C */	lis r6, lit_3916@ha
/* 809B2BC0  C0 26 93 78 */	lfs f1, lit_3916@l(r6)
/* 809B2BC4  38 C0 00 02 */	li r6, 2
/* 809B2BC8  4B 79 57 B0 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
lbl_809B2BCC:
/* 809B2BCC  7F E3 FB 78 */	mr r3, r31
/* 809B2BD0  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B2BD4  38 A0 00 2C */	li r5, 0x2c
/* 809B2BD8  4B 79 55 34 */	b getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 809B2BDC  7C 64 1B 79 */	or. r4, r3, r3
/* 809B2BE0  41 82 00 1C */	beq lbl_809B2BFC
/* 809B2BE4  7F E3 FB 78 */	mr r3, r31
/* 809B2BE8  7F A5 EB 78 */	mr r5, r29
/* 809B2BEC  3C C0 80 9C */	lis r6, lit_3916@ha
/* 809B2BF0  C0 26 93 78 */	lfs f1, lit_3916@l(r6)
/* 809B2BF4  38 C0 00 02 */	li r6, 2
/* 809B2BF8  4B 79 57 40 */	b setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
lbl_809B2BFC:
/* 809B2BFC  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 809B2C00  60 00 03 80 */	ori r0, r0, 0x380
/* 809B2C04  90 1F 0D 98 */	stw r0, 0xd98(r31)
/* 809B2C08  39 61 00 20 */	addi r11, r1, 0x20
/* 809B2C0C  4B 9A F6 1C */	b _restgpr_29
/* 809B2C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B2C14  7C 08 03 A6 */	mtlr r0
/* 809B2C18  38 21 00 20 */	addi r1, r1, 0x20
/* 809B2C1C  4E 80 00 20 */	blr 
