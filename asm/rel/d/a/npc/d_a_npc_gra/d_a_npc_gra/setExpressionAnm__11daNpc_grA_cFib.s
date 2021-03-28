lbl_809C0948:
/* 809C0948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C094C  7C 08 02 A6 */	mflr r0
/* 809C0950  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C0954  39 61 00 20 */	addi r11, r1, 0x20
/* 809C0958  4B 9A 18 7C */	b _savegpr_27
/* 809C095C  7C 7F 1B 78 */	mr r31, r3
/* 809C0960  7C 9B 23 78 */	mr r27, r4
/* 809C0964  7C BC 2B 78 */	mr r28, r5
/* 809C0968  3B A0 00 00 */	li r29, 0
/* 809C096C  3B C0 00 00 */	li r30, 0
/* 809C0970  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809C0974  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809C0978  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809C097C  54 80 18 38 */	slwi r0, r4, 3
/* 809C0980  3C 80 80 9D */	lis r4, l_bckGetParamList@ha
/* 809C0984  38 84 A6 5C */	addi r4, r4, l_bckGetParamList@l
/* 809C0988  7C A4 00 2E */	lwzx r5, r4, r0
/* 809C098C  2C 05 00 00 */	cmpwi r5, 0
/* 809C0990  41 80 00 24 */	blt lbl_809C09B4
/* 809C0994  7C 84 02 14 */	add r4, r4, r0
/* 809C0998  80 04 00 04 */	lwz r0, 4(r4)
/* 809C099C  54 00 10 3A */	slwi r0, r0, 2
/* 809C09A0  3C 80 80 9D */	lis r4, l_resNames@ha
/* 809C09A4  38 84 AA D4 */	addi r4, r4, l_resNames@l
/* 809C09A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C09AC  4B 79 21 80 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809C09B0  7C 7D 1B 78 */	mr r29, r3
lbl_809C09B4:
/* 809C09B4  38 60 00 00 */	li r3, 0
/* 809C09B8  28 1B 00 15 */	cmplwi r27, 0x15
/* 809C09BC  41 81 02 A0 */	bgt lbl_809C0C5C
/* 809C09C0  3C 80 80 9D */	lis r4, lit_5367@ha
/* 809C09C4  38 84 AC 94 */	addi r4, r4, lit_5367@l
/* 809C09C8  57 60 10 3A */	slwi r0, r27, 2
/* 809C09CC  7C 04 00 2E */	lwzx r0, r4, r0
/* 809C09D0  7C 09 03 A6 */	mtctr r0
/* 809C09D4  4E 80 04 20 */	bctr 
lbl_809C09D8:
/* 809C09D8  7F E3 FB 78 */	mr r3, r31
/* 809C09DC  38 80 00 00 */	li r4, 0
/* 809C09E0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C09E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C09E8  7D 89 03 A6 */	mtctr r12
/* 809C09EC  4E 80 04 21 */	bctrl 
/* 809C09F0  48 00 02 70 */	b lbl_809C0C60
lbl_809C09F4:
/* 809C09F4  7F E3 FB 78 */	mr r3, r31
/* 809C09F8  38 80 00 00 */	li r4, 0
/* 809C09FC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A00  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A04  7D 89 03 A6 */	mtctr r12
/* 809C0A08  4E 80 04 21 */	bctrl 
/* 809C0A0C  48 00 02 54 */	b lbl_809C0C60
lbl_809C0A10:
/* 809C0A10  7F E3 FB 78 */	mr r3, r31
/* 809C0A14  38 80 00 00 */	li r4, 0
/* 809C0A18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A1C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A20  7D 89 03 A6 */	mtctr r12
/* 809C0A24  4E 80 04 21 */	bctrl 
/* 809C0A28  48 00 02 38 */	b lbl_809C0C60
lbl_809C0A2C:
/* 809C0A2C  7F E3 FB 78 */	mr r3, r31
/* 809C0A30  38 80 00 00 */	li r4, 0
/* 809C0A34  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A38  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A3C  7D 89 03 A6 */	mtctr r12
/* 809C0A40  4E 80 04 21 */	bctrl 
/* 809C0A44  48 00 02 1C */	b lbl_809C0C60
lbl_809C0A48:
/* 809C0A48  3B C0 00 02 */	li r30, 2
/* 809C0A4C  7F E3 FB 78 */	mr r3, r31
/* 809C0A50  38 80 00 00 */	li r4, 0
/* 809C0A54  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A58  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A5C  7D 89 03 A6 */	mtctr r12
/* 809C0A60  4E 80 04 21 */	bctrl 
/* 809C0A64  48 00 01 FC */	b lbl_809C0C60
lbl_809C0A68:
/* 809C0A68  7F E3 FB 78 */	mr r3, r31
/* 809C0A6C  38 80 00 01 */	li r4, 1
/* 809C0A70  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A74  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A78  7D 89 03 A6 */	mtctr r12
/* 809C0A7C  4E 80 04 21 */	bctrl 
/* 809C0A80  48 00 01 E0 */	b lbl_809C0C60
lbl_809C0A84:
/* 809C0A84  3B C0 00 02 */	li r30, 2
/* 809C0A88  7F E3 FB 78 */	mr r3, r31
/* 809C0A8C  38 80 00 00 */	li r4, 0
/* 809C0A90  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0A94  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0A98  7D 89 03 A6 */	mtctr r12
/* 809C0A9C  4E 80 04 21 */	bctrl 
/* 809C0AA0  48 00 01 C0 */	b lbl_809C0C60
lbl_809C0AA4:
/* 809C0AA4  7F E3 FB 78 */	mr r3, r31
/* 809C0AA8  38 80 00 02 */	li r4, 2
/* 809C0AAC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0AB0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0AB4  7D 89 03 A6 */	mtctr r12
/* 809C0AB8  4E 80 04 21 */	bctrl 
/* 809C0ABC  48 00 01 A4 */	b lbl_809C0C60
lbl_809C0AC0:
/* 809C0AC0  3B C0 00 02 */	li r30, 2
/* 809C0AC4  7F E3 FB 78 */	mr r3, r31
/* 809C0AC8  38 80 00 03 */	li r4, 3
/* 809C0ACC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0AD0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0AD4  7D 89 03 A6 */	mtctr r12
/* 809C0AD8  4E 80 04 21 */	bctrl 
/* 809C0ADC  48 00 01 84 */	b lbl_809C0C60
lbl_809C0AE0:
/* 809C0AE0  7F E3 FB 78 */	mr r3, r31
/* 809C0AE4  38 80 00 04 */	li r4, 4
/* 809C0AE8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0AEC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0AF0  7D 89 03 A6 */	mtctr r12
/* 809C0AF4  4E 80 04 21 */	bctrl 
/* 809C0AF8  48 00 01 68 */	b lbl_809C0C60
lbl_809C0AFC:
/* 809C0AFC  3B C0 00 02 */	li r30, 2
/* 809C0B00  7F E3 FB 78 */	mr r3, r31
/* 809C0B04  38 80 00 00 */	li r4, 0
/* 809C0B08  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0B0C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0B10  7D 89 03 A6 */	mtctr r12
/* 809C0B14  4E 80 04 21 */	bctrl 
/* 809C0B18  48 00 01 48 */	b lbl_809C0C60
lbl_809C0B1C:
/* 809C0B1C  7F E3 FB 78 */	mr r3, r31
/* 809C0B20  38 80 00 05 */	li r4, 5
/* 809C0B24  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0B28  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0B2C  7D 89 03 A6 */	mtctr r12
/* 809C0B30  4E 80 04 21 */	bctrl 
/* 809C0B34  48 00 01 2C */	b lbl_809C0C60
lbl_809C0B38:
/* 809C0B38  3B C0 00 02 */	li r30, 2
/* 809C0B3C  7F E3 FB 78 */	mr r3, r31
/* 809C0B40  38 80 00 06 */	li r4, 6
/* 809C0B44  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0B48  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0B4C  7D 89 03 A6 */	mtctr r12
/* 809C0B50  4E 80 04 21 */	bctrl 
/* 809C0B54  48 00 01 0C */	b lbl_809C0C60
lbl_809C0B58:
/* 809C0B58  7F E3 FB 78 */	mr r3, r31
/* 809C0B5C  38 80 00 07 */	li r4, 7
/* 809C0B60  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0B64  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0B68  7D 89 03 A6 */	mtctr r12
/* 809C0B6C  4E 80 04 21 */	bctrl 
/* 809C0B70  48 00 00 F0 */	b lbl_809C0C60
lbl_809C0B74:
/* 809C0B74  3B C0 00 02 */	li r30, 2
/* 809C0B78  7F E3 FB 78 */	mr r3, r31
/* 809C0B7C  38 80 00 08 */	li r4, 8
/* 809C0B80  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0B84  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0B88  7D 89 03 A6 */	mtctr r12
/* 809C0B8C  4E 80 04 21 */	bctrl 
/* 809C0B90  48 00 00 D0 */	b lbl_809C0C60
lbl_809C0B94:
/* 809C0B94  7F E3 FB 78 */	mr r3, r31
/* 809C0B98  38 80 00 09 */	li r4, 9
/* 809C0B9C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0BA0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0BA4  7D 89 03 A6 */	mtctr r12
/* 809C0BA8  4E 80 04 21 */	bctrl 
/* 809C0BAC  48 00 00 B4 */	b lbl_809C0C60
lbl_809C0BB0:
/* 809C0BB0  7F E3 FB 78 */	mr r3, r31
/* 809C0BB4  38 80 00 0A */	li r4, 0xa
/* 809C0BB8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0BBC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0BC0  7D 89 03 A6 */	mtctr r12
/* 809C0BC4  4E 80 04 21 */	bctrl 
/* 809C0BC8  48 00 00 98 */	b lbl_809C0C60
lbl_809C0BCC:
/* 809C0BCC  3B C0 00 02 */	li r30, 2
/* 809C0BD0  7F E3 FB 78 */	mr r3, r31
/* 809C0BD4  38 80 00 0B */	li r4, 0xb
/* 809C0BD8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0BDC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0BE0  7D 89 03 A6 */	mtctr r12
/* 809C0BE4  4E 80 04 21 */	bctrl 
/* 809C0BE8  48 00 00 78 */	b lbl_809C0C60
lbl_809C0BEC:
/* 809C0BEC  7F E3 FB 78 */	mr r3, r31
/* 809C0BF0  38 80 00 0C */	li r4, 0xc
/* 809C0BF4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0BF8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0BFC  7D 89 03 A6 */	mtctr r12
/* 809C0C00  4E 80 04 21 */	bctrl 
/* 809C0C04  48 00 00 5C */	b lbl_809C0C60
lbl_809C0C08:
/* 809C0C08  7F E3 FB 78 */	mr r3, r31
/* 809C0C0C  38 80 00 0D */	li r4, 0xd
/* 809C0C10  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0C14  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0C18  7D 89 03 A6 */	mtctr r12
/* 809C0C1C  4E 80 04 21 */	bctrl 
/* 809C0C20  48 00 00 40 */	b lbl_809C0C60
lbl_809C0C24:
/* 809C0C24  7F E3 FB 78 */	mr r3, r31
/* 809C0C28  38 80 00 0F */	li r4, 0xf
/* 809C0C2C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0C30  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0C34  7D 89 03 A6 */	mtctr r12
/* 809C0C38  4E 80 04 21 */	bctrl 
/* 809C0C3C  48 00 00 24 */	b lbl_809C0C60
lbl_809C0C40:
/* 809C0C40  7F E3 FB 78 */	mr r3, r31
/* 809C0C44  38 80 00 0E */	li r4, 0xe
/* 809C0C48  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C0C4C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809C0C50  7D 89 03 A6 */	mtctr r12
/* 809C0C54  4E 80 04 21 */	bctrl 
/* 809C0C58  48 00 00 08 */	b lbl_809C0C60
lbl_809C0C5C:
/* 809C0C5C  3B A0 00 00 */	li r29, 0
lbl_809C0C60:
/* 809C0C60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C0C64  40 82 00 0C */	bne lbl_809C0C70
/* 809C0C68  38 60 00 00 */	li r3, 0
/* 809C0C6C  48 00 00 60 */	b lbl_809C0CCC
lbl_809C0C70:
/* 809C0C70  28 1D 00 00 */	cmplwi r29, 0
/* 809C0C74  40 82 00 0C */	bne lbl_809C0C80
/* 809C0C78  38 60 00 01 */	li r3, 1
/* 809C0C7C  48 00 00 50 */	b lbl_809C0CCC
lbl_809C0C80:
/* 809C0C80  7F E3 FB 78 */	mr r3, r31
/* 809C0C84  7F A4 EB 78 */	mr r4, r29
/* 809C0C88  3C A0 80 9D */	lis r5, lit_4610@ha
/* 809C0C8C  C0 25 9E 30 */	lfs f1, lit_4610@l(r5)
/* 809C0C90  7F C5 F3 78 */	mr r5, r30
/* 809C0C94  38 C0 00 00 */	li r6, 0
/* 809C0C98  38 E0 FF FF */	li r7, -1
/* 809C0C9C  7F 88 E3 78 */	mr r8, r28
/* 809C0CA0  4B 79 1F E0 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809C0CA4  2C 03 00 00 */	cmpwi r3, 0
/* 809C0CA8  41 82 00 20 */	beq lbl_809C0CC8
/* 809C0CAC  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809C0CB0  60 00 01 40 */	ori r0, r0, 0x140
/* 809C0CB4  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809C0CB8  38 00 00 00 */	li r0, 0
/* 809C0CBC  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 809C0CC0  38 60 00 01 */	li r3, 1
/* 809C0CC4  48 00 00 08 */	b lbl_809C0CCC
lbl_809C0CC8:
/* 809C0CC8  38 60 00 00 */	li r3, 0
lbl_809C0CCC:
/* 809C0CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 809C0CD0  4B 9A 15 50 */	b _restgpr_27
/* 809C0CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C0CD8  7C 08 03 A6 */	mtlr r0
/* 809C0CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 809C0CE0  4E 80 00 20 */	blr 
