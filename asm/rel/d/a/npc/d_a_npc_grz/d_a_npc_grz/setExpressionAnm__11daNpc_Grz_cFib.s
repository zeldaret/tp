lbl_809EA734:
/* 809EA734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EA738  7C 08 02 A6 */	mflr r0
/* 809EA73C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EA740  39 61 00 20 */	addi r11, r1, 0x20
/* 809EA744  4B 97 7A 90 */	b _savegpr_27
/* 809EA748  7C 7F 1B 78 */	mr r31, r3
/* 809EA74C  7C 9B 23 78 */	mr r27, r4
/* 809EA750  7C BD 2B 78 */	mr r29, r5
/* 809EA754  3B C0 00 00 */	li r30, 0
/* 809EA758  3B 80 00 00 */	li r28, 0
/* 809EA75C  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809EA760  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809EA764  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809EA768  54 80 18 38 */	slwi r0, r4, 3
/* 809EA76C  3C 80 80 9F */	lis r4, l_bckGetParamList@ha
/* 809EA770  38 84 F6 C8 */	addi r4, r4, l_bckGetParamList@l
/* 809EA774  7C A4 00 2E */	lwzx r5, r4, r0
/* 809EA778  2C 05 00 00 */	cmpwi r5, 0
/* 809EA77C  41 80 00 24 */	blt lbl_809EA7A0
/* 809EA780  7C 84 02 14 */	add r4, r4, r0
/* 809EA784  80 04 00 04 */	lwz r0, 4(r4)
/* 809EA788  54 00 10 3A */	slwi r0, r0, 2
/* 809EA78C  3C 80 80 9F */	lis r4, l_resNames@ha
/* 809EA790  38 84 F8 E8 */	addi r4, r4, l_resNames@l
/* 809EA794  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EA798  4B 76 83 94 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809EA79C  7C 7E 1B 78 */	mr r30, r3
lbl_809EA7A0:
/* 809EA7A0  38 60 00 00 */	li r3, 0
/* 809EA7A4  28 1B 00 0E */	cmplwi r27, 0xe
/* 809EA7A8  41 81 01 D8 */	bgt lbl_809EA980
/* 809EA7AC  3C 80 80 9F */	lis r4, lit_5064@ha
/* 809EA7B0  38 84 F9 CC */	addi r4, r4, lit_5064@l
/* 809EA7B4  57 60 10 3A */	slwi r0, r27, 2
/* 809EA7B8  7C 04 00 2E */	lwzx r0, r4, r0
/* 809EA7BC  7C 09 03 A6 */	mtctr r0
/* 809EA7C0  4E 80 04 20 */	bctr 
lbl_809EA7C4:
/* 809EA7C4  7F E3 FB 78 */	mr r3, r31
/* 809EA7C8  38 80 00 00 */	li r4, 0
/* 809EA7CC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA7D0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA7D4  7D 89 03 A6 */	mtctr r12
/* 809EA7D8  4E 80 04 21 */	bctrl 
/* 809EA7DC  48 00 01 A8 */	b lbl_809EA984
lbl_809EA7E0:
/* 809EA7E0  7F E3 FB 78 */	mr r3, r31
/* 809EA7E4  38 80 00 00 */	li r4, 0
/* 809EA7E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA7EC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA7F0  7D 89 03 A6 */	mtctr r12
/* 809EA7F4  4E 80 04 21 */	bctrl 
/* 809EA7F8  3B 80 00 02 */	li r28, 2
/* 809EA7FC  48 00 01 88 */	b lbl_809EA984
lbl_809EA800:
/* 809EA800  7F E3 FB 78 */	mr r3, r31
/* 809EA804  38 80 00 09 */	li r4, 9
/* 809EA808  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA80C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA810  7D 89 03 A6 */	mtctr r12
/* 809EA814  4E 80 04 21 */	bctrl 
/* 809EA818  48 00 01 6C */	b lbl_809EA984
lbl_809EA81C:
/* 809EA81C  7F E3 FB 78 */	mr r3, r31
/* 809EA820  38 80 00 00 */	li r4, 0
/* 809EA824  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA828  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA82C  7D 89 03 A6 */	mtctr r12
/* 809EA830  4E 80 04 21 */	bctrl 
/* 809EA834  3B 80 00 02 */	li r28, 2
/* 809EA838  48 00 01 4C */	b lbl_809EA984
lbl_809EA83C:
/* 809EA83C  7F E3 FB 78 */	mr r3, r31
/* 809EA840  38 80 00 00 */	li r4, 0
/* 809EA844  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA848  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA84C  7D 89 03 A6 */	mtctr r12
/* 809EA850  4E 80 04 21 */	bctrl 
/* 809EA854  48 00 01 30 */	b lbl_809EA984
lbl_809EA858:
/* 809EA858  7F E3 FB 78 */	mr r3, r31
/* 809EA85C  38 80 00 01 */	li r4, 1
/* 809EA860  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA864  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA868  7D 89 03 A6 */	mtctr r12
/* 809EA86C  4E 80 04 21 */	bctrl 
/* 809EA870  3B 80 00 02 */	li r28, 2
/* 809EA874  48 00 01 10 */	b lbl_809EA984
lbl_809EA878:
/* 809EA878  7F E3 FB 78 */	mr r3, r31
/* 809EA87C  38 80 00 02 */	li r4, 2
/* 809EA880  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA884  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA888  7D 89 03 A6 */	mtctr r12
/* 809EA88C  4E 80 04 21 */	bctrl 
/* 809EA890  48 00 00 F4 */	b lbl_809EA984
lbl_809EA894:
/* 809EA894  7F E3 FB 78 */	mr r3, r31
/* 809EA898  38 80 00 03 */	li r4, 3
/* 809EA89C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA8A0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA8A4  7D 89 03 A6 */	mtctr r12
/* 809EA8A8  4E 80 04 21 */	bctrl 
/* 809EA8AC  3B 80 00 02 */	li r28, 2
/* 809EA8B0  48 00 00 D4 */	b lbl_809EA984
lbl_809EA8B4:
/* 809EA8B4  7F E3 FB 78 */	mr r3, r31
/* 809EA8B8  38 80 00 04 */	li r4, 4
/* 809EA8BC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA8C0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA8C4  7D 89 03 A6 */	mtctr r12
/* 809EA8C8  4E 80 04 21 */	bctrl 
/* 809EA8CC  48 00 00 B8 */	b lbl_809EA984
lbl_809EA8D0:
/* 809EA8D0  7F E3 FB 78 */	mr r3, r31
/* 809EA8D4  38 80 00 05 */	li r4, 5
/* 809EA8D8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA8DC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA8E0  7D 89 03 A6 */	mtctr r12
/* 809EA8E4  4E 80 04 21 */	bctrl 
/* 809EA8E8  48 00 00 9C */	b lbl_809EA984
lbl_809EA8EC:
/* 809EA8EC  7F E3 FB 78 */	mr r3, r31
/* 809EA8F0  38 80 00 06 */	li r4, 6
/* 809EA8F4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA8F8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA8FC  7D 89 03 A6 */	mtctr r12
/* 809EA900  4E 80 04 21 */	bctrl 
/* 809EA904  48 00 00 80 */	b lbl_809EA984
lbl_809EA908:
/* 809EA908  7F E3 FB 78 */	mr r3, r31
/* 809EA90C  38 80 00 07 */	li r4, 7
/* 809EA910  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA914  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA918  7D 89 03 A6 */	mtctr r12
/* 809EA91C  4E 80 04 21 */	bctrl 
/* 809EA920  48 00 00 64 */	b lbl_809EA984
lbl_809EA924:
/* 809EA924  7F E3 FB 78 */	mr r3, r31
/* 809EA928  38 80 00 08 */	li r4, 8
/* 809EA92C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA930  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA934  7D 89 03 A6 */	mtctr r12
/* 809EA938  4E 80 04 21 */	bctrl 
/* 809EA93C  3B 80 00 02 */	li r28, 2
/* 809EA940  48 00 00 44 */	b lbl_809EA984
lbl_809EA944:
/* 809EA944  7F E3 FB 78 */	mr r3, r31
/* 809EA948  38 80 00 00 */	li r4, 0
/* 809EA94C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA950  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA954  7D 89 03 A6 */	mtctr r12
/* 809EA958  4E 80 04 21 */	bctrl 
/* 809EA95C  3B 80 00 02 */	li r28, 2
/* 809EA960  48 00 00 24 */	b lbl_809EA984
lbl_809EA964:
/* 809EA964  7F E3 FB 78 */	mr r3, r31
/* 809EA968  38 80 00 00 */	li r4, 0
/* 809EA96C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EA970  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809EA974  7D 89 03 A6 */	mtctr r12
/* 809EA978  4E 80 04 21 */	bctrl 
/* 809EA97C  48 00 00 08 */	b lbl_809EA984
lbl_809EA980:
/* 809EA980  3B C0 00 00 */	li r30, 0
lbl_809EA984:
/* 809EA984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809EA988  40 82 00 0C */	bne lbl_809EA994
/* 809EA98C  38 60 00 00 */	li r3, 0
/* 809EA990  48 00 00 60 */	b lbl_809EA9F0
lbl_809EA994:
/* 809EA994  28 1E 00 00 */	cmplwi r30, 0
/* 809EA998  40 82 00 0C */	bne lbl_809EA9A4
/* 809EA99C  38 60 00 01 */	li r3, 1
/* 809EA9A0  48 00 00 50 */	b lbl_809EA9F0
lbl_809EA9A4:
/* 809EA9A4  7F E3 FB 78 */	mr r3, r31
/* 809EA9A8  7F C4 F3 78 */	mr r4, r30
/* 809EA9AC  3C A0 80 9F */	lis r5, lit_4359@ha
/* 809EA9B0  C0 25 F2 98 */	lfs f1, lit_4359@l(r5)
/* 809EA9B4  7F 85 E3 78 */	mr r5, r28
/* 809EA9B8  38 C0 00 00 */	li r6, 0
/* 809EA9BC  38 E0 FF FF */	li r7, -1
/* 809EA9C0  7F A8 EB 78 */	mr r8, r29
/* 809EA9C4  4B 76 82 BC */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809EA9C8  2C 03 00 00 */	cmpwi r3, 0
/* 809EA9CC  41 82 00 20 */	beq lbl_809EA9EC
/* 809EA9D0  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809EA9D4  60 00 01 40 */	ori r0, r0, 0x140
/* 809EA9D8  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 809EA9DC  38 00 00 00 */	li r0, 0
/* 809EA9E0  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 809EA9E4  38 60 00 01 */	li r3, 1
/* 809EA9E8  48 00 00 08 */	b lbl_809EA9F0
lbl_809EA9EC:
/* 809EA9EC  38 60 00 00 */	li r3, 0
lbl_809EA9F0:
/* 809EA9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 809EA9F4  4B 97 78 2C */	b _restgpr_27
/* 809EA9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EA9FC  7C 08 03 A6 */	mtlr r0
/* 809EAA00  38 21 00 20 */	addi r1, r1, 0x20
/* 809EAA04  4E 80 00 20 */	blr 
