lbl_80B7B9D4:
/* 80B7B9D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7B9D8  7C 08 02 A6 */	mflr r0
/* 80B7B9DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7B9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7B9E4  4B 7E 67 F0 */	b _savegpr_27
/* 80B7B9E8  7C 7F 1B 78 */	mr r31, r3
/* 80B7B9EC  7C 9B 23 78 */	mr r27, r4
/* 80B7B9F0  7C BD 2B 78 */	mr r29, r5
/* 80B7B9F4  3B C0 00 00 */	li r30, 0
/* 80B7B9F8  3B 80 00 00 */	li r28, 0
/* 80B7B9FC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B7BA00  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80B7BA04  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B7BA08  54 80 18 38 */	slwi r0, r4, 3
/* 80B7BA0C  3C 80 80 B9 */	lis r4, l_bckGetParamList@ha
/* 80B7BA10  38 84 CE E4 */	addi r4, r4, l_bckGetParamList@l
/* 80B7BA14  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B7BA18  2C 05 00 00 */	cmpwi r5, 0
/* 80B7BA1C  41 80 00 24 */	blt lbl_80B7BA40
/* 80B7BA20  7C 84 02 14 */	add r4, r4, r0
/* 80B7BA24  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7BA28  54 00 10 3A */	slwi r0, r0, 2
/* 80B7BA2C  3C 80 80 B9 */	lis r4, l_resNames@ha
/* 80B7BA30  38 84 D3 00 */	addi r4, r4, l_resNames@l
/* 80B7BA34  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7BA38  4B 5D 70 F4 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B7BA3C  7C 7E 1B 78 */	mr r30, r3
lbl_80B7BA40:
/* 80B7BA40  38 60 00 00 */	li r3, 0
/* 80B7BA44  28 1B 00 14 */	cmplwi r27, 0x14
/* 80B7BA48  41 81 02 90 */	bgt lbl_80B7BCD8
/* 80B7BA4C  3C 80 80 B9 */	lis r4, lit_5840@ha
/* 80B7BA50  38 84 D4 64 */	addi r4, r4, lit_5840@l
/* 80B7BA54  57 60 10 3A */	slwi r0, r27, 2
/* 80B7BA58  7C 04 00 2E */	lwzx r0, r4, r0
/* 80B7BA5C  7C 09 03 A6 */	mtctr r0
/* 80B7BA60  4E 80 04 20 */	bctr 
lbl_80B7BA64:
/* 80B7BA64  7F E3 FB 78 */	mr r3, r31
/* 80B7BA68  38 80 00 00 */	li r4, 0
/* 80B7BA6C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BA70  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BA74  7D 89 03 A6 */	mtctr r12
/* 80B7BA78  4E 80 04 21 */	bctrl 
/* 80B7BA7C  48 00 02 60 */	b lbl_80B7BCDC
lbl_80B7BA80:
/* 80B7BA80  7F E3 FB 78 */	mr r3, r31
/* 80B7BA84  38 80 00 00 */	li r4, 0
/* 80B7BA88  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BA8C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BA90  7D 89 03 A6 */	mtctr r12
/* 80B7BA94  4E 80 04 21 */	bctrl 
/* 80B7BA98  48 00 02 44 */	b lbl_80B7BCDC
lbl_80B7BA9C:
/* 80B7BA9C  7F E3 FB 78 */	mr r3, r31
/* 80B7BAA0  38 80 00 00 */	li r4, 0
/* 80B7BAA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BAA8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BAAC  7D 89 03 A6 */	mtctr r12
/* 80B7BAB0  4E 80 04 21 */	bctrl 
/* 80B7BAB4  48 00 02 28 */	b lbl_80B7BCDC
lbl_80B7BAB8:
/* 80B7BAB8  7F E3 FB 78 */	mr r3, r31
/* 80B7BABC  38 80 00 00 */	li r4, 0
/* 80B7BAC0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BAC4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BAC8  7D 89 03 A6 */	mtctr r12
/* 80B7BACC  4E 80 04 21 */	bctrl 
/* 80B7BAD0  48 00 02 0C */	b lbl_80B7BCDC
lbl_80B7BAD4:
/* 80B7BAD4  7F E3 FB 78 */	mr r3, r31
/* 80B7BAD8  38 80 00 00 */	li r4, 0
/* 80B7BADC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BAE0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BAE4  7D 89 03 A6 */	mtctr r12
/* 80B7BAE8  4E 80 04 21 */	bctrl 
/* 80B7BAEC  48 00 01 F0 */	b lbl_80B7BCDC
lbl_80B7BAF0:
/* 80B7BAF0  7F E3 FB 78 */	mr r3, r31
/* 80B7BAF4  38 80 00 00 */	li r4, 0
/* 80B7BAF8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BAFC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BB00  7D 89 03 A6 */	mtctr r12
/* 80B7BB04  4E 80 04 21 */	bctrl 
/* 80B7BB08  3B 80 00 02 */	li r28, 2
/* 80B7BB0C  48 00 01 D0 */	b lbl_80B7BCDC
lbl_80B7BB10:
/* 80B7BB10  7F E3 FB 78 */	mr r3, r31
/* 80B7BB14  38 80 00 01 */	li r4, 1
/* 80B7BB18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BB1C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BB20  7D 89 03 A6 */	mtctr r12
/* 80B7BB24  4E 80 04 21 */	bctrl 
/* 80B7BB28  3B 80 00 02 */	li r28, 2
/* 80B7BB2C  48 00 01 B0 */	b lbl_80B7BCDC
lbl_80B7BB30:
/* 80B7BB30  7F E3 FB 78 */	mr r3, r31
/* 80B7BB34  38 80 00 02 */	li r4, 2
/* 80B7BB38  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BB3C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BB40  7D 89 03 A6 */	mtctr r12
/* 80B7BB44  4E 80 04 21 */	bctrl 
/* 80B7BB48  3B 80 00 02 */	li r28, 2
/* 80B7BB4C  48 00 01 90 */	b lbl_80B7BCDC
lbl_80B7BB50:
/* 80B7BB50  7F E3 FB 78 */	mr r3, r31
/* 80B7BB54  38 80 00 03 */	li r4, 3
/* 80B7BB58  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BB5C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BB60  7D 89 03 A6 */	mtctr r12
/* 80B7BB64  4E 80 04 21 */	bctrl 
/* 80B7BB68  3B 80 00 02 */	li r28, 2
/* 80B7BB6C  48 00 01 70 */	b lbl_80B7BCDC
lbl_80B7BB70:
/* 80B7BB70  7F E3 FB 78 */	mr r3, r31
/* 80B7BB74  38 80 00 04 */	li r4, 4
/* 80B7BB78  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BB7C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BB80  7D 89 03 A6 */	mtctr r12
/* 80B7BB84  4E 80 04 21 */	bctrl 
/* 80B7BB88  3B 80 00 02 */	li r28, 2
/* 80B7BB8C  48 00 01 50 */	b lbl_80B7BCDC
lbl_80B7BB90:
/* 80B7BB90  7F E3 FB 78 */	mr r3, r31
/* 80B7BB94  38 80 00 05 */	li r4, 5
/* 80B7BB98  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BB9C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BBA0  7D 89 03 A6 */	mtctr r12
/* 80B7BBA4  4E 80 04 21 */	bctrl 
/* 80B7BBA8  3B 80 00 02 */	li r28, 2
/* 80B7BBAC  48 00 01 30 */	b lbl_80B7BCDC
lbl_80B7BBB0:
/* 80B7BBB0  7F E3 FB 78 */	mr r3, r31
/* 80B7BBB4  38 80 00 00 */	li r4, 0
/* 80B7BBB8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BBBC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BBC0  7D 89 03 A6 */	mtctr r12
/* 80B7BBC4  4E 80 04 21 */	bctrl 
/* 80B7BBC8  48 00 01 14 */	b lbl_80B7BCDC
lbl_80B7BBCC:
/* 80B7BBCC  7F E3 FB 78 */	mr r3, r31
/* 80B7BBD0  38 80 00 00 */	li r4, 0
/* 80B7BBD4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BBD8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BBDC  7D 89 03 A6 */	mtctr r12
/* 80B7BBE0  4E 80 04 21 */	bctrl 
/* 80B7BBE4  3B 80 00 02 */	li r28, 2
/* 80B7BBE8  48 00 00 F4 */	b lbl_80B7BCDC
lbl_80B7BBEC:
/* 80B7BBEC  7F E3 FB 78 */	mr r3, r31
/* 80B7BBF0  38 80 00 00 */	li r4, 0
/* 80B7BBF4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BBF8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BBFC  7D 89 03 A6 */	mtctr r12
/* 80B7BC00  4E 80 04 21 */	bctrl 
/* 80B7BC04  48 00 00 D8 */	b lbl_80B7BCDC
lbl_80B7BC08:
/* 80B7BC08  7F E3 FB 78 */	mr r3, r31
/* 80B7BC0C  38 80 00 00 */	li r4, 0
/* 80B7BC10  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BC14  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BC18  7D 89 03 A6 */	mtctr r12
/* 80B7BC1C  4E 80 04 21 */	bctrl 
/* 80B7BC20  3B 80 00 02 */	li r28, 2
/* 80B7BC24  48 00 00 B8 */	b lbl_80B7BCDC
lbl_80B7BC28:
/* 80B7BC28  7F E3 FB 78 */	mr r3, r31
/* 80B7BC2C  38 80 00 00 */	li r4, 0
/* 80B7BC30  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BC34  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BC38  7D 89 03 A6 */	mtctr r12
/* 80B7BC3C  4E 80 04 21 */	bctrl 
/* 80B7BC40  48 00 00 9C */	b lbl_80B7BCDC
lbl_80B7BC44:
/* 80B7BC44  7F E3 FB 78 */	mr r3, r31
/* 80B7BC48  38 80 00 00 */	li r4, 0
/* 80B7BC4C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BC50  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BC54  7D 89 03 A6 */	mtctr r12
/* 80B7BC58  4E 80 04 21 */	bctrl 
/* 80B7BC5C  48 00 00 80 */	b lbl_80B7BCDC
lbl_80B7BC60:
/* 80B7BC60  7F E3 FB 78 */	mr r3, r31
/* 80B7BC64  38 80 00 00 */	li r4, 0
/* 80B7BC68  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BC6C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BC70  7D 89 03 A6 */	mtctr r12
/* 80B7BC74  4E 80 04 21 */	bctrl 
/* 80B7BC78  48 00 00 64 */	b lbl_80B7BCDC
lbl_80B7BC7C:
/* 80B7BC7C  7F E3 FB 78 */	mr r3, r31
/* 80B7BC80  38 80 00 00 */	li r4, 0
/* 80B7BC84  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BC88  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BC8C  7D 89 03 A6 */	mtctr r12
/* 80B7BC90  4E 80 04 21 */	bctrl 
/* 80B7BC94  3B 80 00 02 */	li r28, 2
/* 80B7BC98  48 00 00 44 */	b lbl_80B7BCDC
lbl_80B7BC9C:
/* 80B7BC9C  7F E3 FB 78 */	mr r3, r31
/* 80B7BCA0  38 80 00 06 */	li r4, 6
/* 80B7BCA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BCA8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BCAC  7D 89 03 A6 */	mtctr r12
/* 80B7BCB0  4E 80 04 21 */	bctrl 
/* 80B7BCB4  48 00 00 28 */	b lbl_80B7BCDC
lbl_80B7BCB8:
/* 80B7BCB8  7F E3 FB 78 */	mr r3, r31
/* 80B7BCBC  38 80 00 07 */	li r4, 7
/* 80B7BCC0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7BCC4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B7BCC8  7D 89 03 A6 */	mtctr r12
/* 80B7BCCC  4E 80 04 21 */	bctrl 
/* 80B7BCD0  3B 80 00 02 */	li r28, 2
/* 80B7BCD4  48 00 00 08 */	b lbl_80B7BCDC
lbl_80B7BCD8:
/* 80B7BCD8  3B C0 00 00 */	li r30, 0
lbl_80B7BCDC:
/* 80B7BCDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B7BCE0  40 82 00 0C */	bne lbl_80B7BCEC
/* 80B7BCE4  38 60 00 00 */	li r3, 0
/* 80B7BCE8  48 00 00 60 */	b lbl_80B7BD48
lbl_80B7BCEC:
/* 80B7BCEC  28 1E 00 00 */	cmplwi r30, 0
/* 80B7BCF0  40 82 00 0C */	bne lbl_80B7BCFC
/* 80B7BCF4  38 60 00 01 */	li r3, 1
/* 80B7BCF8  48 00 00 50 */	b lbl_80B7BD48
lbl_80B7BCFC:
/* 80B7BCFC  7F E3 FB 78 */	mr r3, r31
/* 80B7BD00  7F C4 F3 78 */	mr r4, r30
/* 80B7BD04  3C A0 80 B9 */	lis r5, lit_5070@ha
/* 80B7BD08  C0 25 C5 48 */	lfs f1, lit_5070@l(r5)
/* 80B7BD0C  7F 85 E3 78 */	mr r5, r28
/* 80B7BD10  38 C0 00 00 */	li r6, 0
/* 80B7BD14  38 E0 FF FF */	li r7, -1
/* 80B7BD18  7F A8 EB 78 */	mr r8, r29
/* 80B7BD1C  4B 5D 6F 64 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80B7BD20  2C 03 00 00 */	cmpwi r3, 0
/* 80B7BD24  41 82 00 20 */	beq lbl_80B7BD44
/* 80B7BD28  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B7BD2C  60 00 01 40 */	ori r0, r0, 0x140
/* 80B7BD30  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80B7BD34  38 00 00 00 */	li r0, 0
/* 80B7BD38  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80B7BD3C  38 60 00 01 */	li r3, 1
/* 80B7BD40  48 00 00 08 */	b lbl_80B7BD48
lbl_80B7BD44:
/* 80B7BD44  38 60 00 00 */	li r3, 0
lbl_80B7BD48:
/* 80B7BD48  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7BD4C  4B 7E 64 D4 */	b _restgpr_27
/* 80B7BD50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7BD54  7C 08 03 A6 */	mtlr r0
/* 80B7BD58  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7BD5C  4E 80 00 20 */	blr 
