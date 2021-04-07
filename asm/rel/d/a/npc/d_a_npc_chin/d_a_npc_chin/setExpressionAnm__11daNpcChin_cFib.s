lbl_8098D58C:
/* 8098D58C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098D590  7C 08 02 A6 */	mflr r0
/* 8098D594  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098D598  39 61 00 20 */	addi r11, r1, 0x20
/* 8098D59C  4B 9D 4C 39 */	bl _savegpr_27
/* 8098D5A0  7C 7F 1B 78 */	mr r31, r3
/* 8098D5A4  7C 9B 23 78 */	mr r27, r4
/* 8098D5A8  7C BC 2B 78 */	mr r28, r5
/* 8098D5AC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 8098D5B0  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 8098D5B4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8098D5B8  3B C0 00 00 */	li r30, 0
/* 8098D5BC  1F BB 00 0C */	mulli r29, r27, 0xc
/* 8098D5C0  3C 80 80 99 */	lis r4, l_bckGetParamList@ha /* 0x80991DFC@ha */
/* 8098D5C4  38 84 1D FC */	addi r4, r4, l_bckGetParamList@l /* 0x80991DFC@l */
/* 8098D5C8  7C A4 E8 2E */	lwzx r5, r4, r29
/* 8098D5CC  2C 05 00 00 */	cmpwi r5, 0
/* 8098D5D0  41 80 00 24 */	blt lbl_8098D5F4
/* 8098D5D4  7C 84 EA 14 */	add r4, r4, r29
/* 8098D5D8  80 04 00 08 */	lwz r0, 8(r4)
/* 8098D5DC  54 00 10 3A */	slwi r0, r0, 2
/* 8098D5E0  3C 80 80 99 */	lis r4, l_arcNames@ha /* 0x809920A8@ha */
/* 8098D5E4  38 84 20 A8 */	addi r4, r4, l_arcNames@l /* 0x809920A8@l */
/* 8098D5E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8098D5EC  4B 7C 55 41 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 8098D5F0  7C 7E 1B 78 */	mr r30, r3
lbl_8098D5F4:
/* 8098D5F4  3C 60 80 99 */	lis r3, l_bckGetParamList@ha /* 0x80991DFC@ha */
/* 8098D5F8  38 03 1D FC */	addi r0, r3, l_bckGetParamList@l /* 0x80991DFC@l */
/* 8098D5FC  7C 60 EA 14 */	add r3, r0, r29
/* 8098D600  83 A3 00 04 */	lwz r29, 4(r3)
/* 8098D604  28 1B 00 0E */	cmplwi r27, 0xe
/* 8098D608  41 81 01 A4 */	bgt lbl_8098D7AC
/* 8098D60C  3C 60 80 99 */	lis r3, lit_4745@ha /* 0x809921A0@ha */
/* 8098D610  38 63 21 A0 */	addi r3, r3, lit_4745@l /* 0x809921A0@l */
/* 8098D614  57 60 10 3A */	slwi r0, r27, 2
/* 8098D618  7C 03 00 2E */	lwzx r0, r3, r0
/* 8098D61C  7C 09 03 A6 */	mtctr r0
/* 8098D620  4E 80 04 20 */	bctr 
lbl_8098D624:
/* 8098D624  7F E3 FB 78 */	mr r3, r31
/* 8098D628  38 80 00 01 */	li r4, 1
/* 8098D62C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D630  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D634  7D 89 03 A6 */	mtctr r12
/* 8098D638  4E 80 04 21 */	bctrl 
/* 8098D63C  48 00 01 88 */	b lbl_8098D7C4
lbl_8098D640:
/* 8098D640  7F E3 FB 78 */	mr r3, r31
/* 8098D644  38 80 00 02 */	li r4, 2
/* 8098D648  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D64C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D650  7D 89 03 A6 */	mtctr r12
/* 8098D654  4E 80 04 21 */	bctrl 
/* 8098D658  48 00 01 6C */	b lbl_8098D7C4
lbl_8098D65C:
/* 8098D65C  7F E3 FB 78 */	mr r3, r31
/* 8098D660  38 80 00 03 */	li r4, 3
/* 8098D664  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D668  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D66C  7D 89 03 A6 */	mtctr r12
/* 8098D670  4E 80 04 21 */	bctrl 
/* 8098D674  48 00 01 50 */	b lbl_8098D7C4
lbl_8098D678:
/* 8098D678  7F E3 FB 78 */	mr r3, r31
/* 8098D67C  38 80 00 04 */	li r4, 4
/* 8098D680  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D684  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D688  7D 89 03 A6 */	mtctr r12
/* 8098D68C  4E 80 04 21 */	bctrl 
/* 8098D690  48 00 01 34 */	b lbl_8098D7C4
lbl_8098D694:
/* 8098D694  7F E3 FB 78 */	mr r3, r31
/* 8098D698  38 80 00 05 */	li r4, 5
/* 8098D69C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D6A0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D6A4  7D 89 03 A6 */	mtctr r12
/* 8098D6A8  4E 80 04 21 */	bctrl 
/* 8098D6AC  48 00 01 18 */	b lbl_8098D7C4
lbl_8098D6B0:
/* 8098D6B0  7F E3 FB 78 */	mr r3, r31
/* 8098D6B4  38 80 00 06 */	li r4, 6
/* 8098D6B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D6BC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D6C0  7D 89 03 A6 */	mtctr r12
/* 8098D6C4  4E 80 04 21 */	bctrl 
/* 8098D6C8  48 00 00 FC */	b lbl_8098D7C4
lbl_8098D6CC:
/* 8098D6CC  7F E3 FB 78 */	mr r3, r31
/* 8098D6D0  38 80 00 07 */	li r4, 7
/* 8098D6D4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D6D8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D6DC  7D 89 03 A6 */	mtctr r12
/* 8098D6E0  4E 80 04 21 */	bctrl 
/* 8098D6E4  48 00 00 E0 */	b lbl_8098D7C4
lbl_8098D6E8:
/* 8098D6E8  7F E3 FB 78 */	mr r3, r31
/* 8098D6EC  38 80 00 08 */	li r4, 8
/* 8098D6F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D6F4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D6F8  7D 89 03 A6 */	mtctr r12
/* 8098D6FC  4E 80 04 21 */	bctrl 
/* 8098D700  48 00 00 C4 */	b lbl_8098D7C4
lbl_8098D704:
/* 8098D704  7F E3 FB 78 */	mr r3, r31
/* 8098D708  38 80 00 09 */	li r4, 9
/* 8098D70C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D710  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D714  7D 89 03 A6 */	mtctr r12
/* 8098D718  4E 80 04 21 */	bctrl 
/* 8098D71C  48 00 00 A8 */	b lbl_8098D7C4
lbl_8098D720:
/* 8098D720  7F E3 FB 78 */	mr r3, r31
/* 8098D724  38 80 00 0A */	li r4, 0xa
/* 8098D728  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D72C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D730  7D 89 03 A6 */	mtctr r12
/* 8098D734  4E 80 04 21 */	bctrl 
/* 8098D738  48 00 00 8C */	b lbl_8098D7C4
lbl_8098D73C:
/* 8098D73C  7F E3 FB 78 */	mr r3, r31
/* 8098D740  38 80 00 0B */	li r4, 0xb
/* 8098D744  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D748  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D74C  7D 89 03 A6 */	mtctr r12
/* 8098D750  4E 80 04 21 */	bctrl 
/* 8098D754  48 00 00 70 */	b lbl_8098D7C4
lbl_8098D758:
/* 8098D758  7F E3 FB 78 */	mr r3, r31
/* 8098D75C  38 80 00 0C */	li r4, 0xc
/* 8098D760  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D764  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D768  7D 89 03 A6 */	mtctr r12
/* 8098D76C  4E 80 04 21 */	bctrl 
/* 8098D770  48 00 00 54 */	b lbl_8098D7C4
lbl_8098D774:
/* 8098D774  7F E3 FB 78 */	mr r3, r31
/* 8098D778  38 80 00 0D */	li r4, 0xd
/* 8098D77C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D780  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D784  7D 89 03 A6 */	mtctr r12
/* 8098D788  4E 80 04 21 */	bctrl 
/* 8098D78C  48 00 00 38 */	b lbl_8098D7C4
lbl_8098D790:
/* 8098D790  7F E3 FB 78 */	mr r3, r31
/* 8098D794  38 80 00 0E */	li r4, 0xe
/* 8098D798  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D79C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D7A0  7D 89 03 A6 */	mtctr r12
/* 8098D7A4  4E 80 04 21 */	bctrl 
/* 8098D7A8  48 00 00 1C */	b lbl_8098D7C4
lbl_8098D7AC:
/* 8098D7AC  7F E3 FB 78 */	mr r3, r31
/* 8098D7B0  38 80 00 00 */	li r4, 0
/* 8098D7B4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098D7B8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8098D7BC  7D 89 03 A6 */	mtctr r12
/* 8098D7C0  4E 80 04 21 */	bctrl 
lbl_8098D7C4:
/* 8098D7C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098D7C8  40 82 00 0C */	bne lbl_8098D7D4
/* 8098D7CC  38 60 00 00 */	li r3, 0
/* 8098D7D0  48 00 00 60 */	b lbl_8098D830
lbl_8098D7D4:
/* 8098D7D4  28 1E 00 00 */	cmplwi r30, 0
/* 8098D7D8  40 82 00 0C */	bne lbl_8098D7E4
/* 8098D7DC  38 60 00 01 */	li r3, 1
/* 8098D7E0  48 00 00 50 */	b lbl_8098D830
lbl_8098D7E4:
/* 8098D7E4  7F E3 FB 78 */	mr r3, r31
/* 8098D7E8  7F C4 F3 78 */	mr r4, r30
/* 8098D7EC  3C A0 80 99 */	lis r5, lit_3884@ha /* 0x80991978@ha */
/* 8098D7F0  C0 25 19 78 */	lfs f1, lit_3884@l(r5)  /* 0x80991978@l */
/* 8098D7F4  7F A5 EB 78 */	mr r5, r29
/* 8098D7F8  38 C0 00 00 */	li r6, 0
/* 8098D7FC  38 E0 FF FF */	li r7, -1
/* 8098D800  7F 88 E3 78 */	mr r8, r28
/* 8098D804  4B 7C 54 7D */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 8098D808  2C 03 00 00 */	cmpwi r3, 0
/* 8098D80C  41 82 00 20 */	beq lbl_8098D82C
/* 8098D810  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 8098D814  60 00 01 40 */	ori r0, r0, 0x140
/* 8098D818  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 8098D81C  38 00 00 00 */	li r0, 0
/* 8098D820  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 8098D824  38 60 00 01 */	li r3, 1
/* 8098D828  48 00 00 08 */	b lbl_8098D830
lbl_8098D82C:
/* 8098D82C  38 60 00 00 */	li r3, 0
lbl_8098D830:
/* 8098D830  39 61 00 20 */	addi r11, r1, 0x20
/* 8098D834  4B 9D 49 ED */	bl _restgpr_27
/* 8098D838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098D83C  7C 08 03 A6 */	mtlr r0
/* 8098D840  38 21 00 20 */	addi r1, r1, 0x20
/* 8098D844  4E 80 00 20 */	blr 
