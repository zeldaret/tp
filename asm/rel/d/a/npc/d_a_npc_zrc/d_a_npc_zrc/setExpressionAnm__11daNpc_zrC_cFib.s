lbl_80B8F56C:
/* 80B8F56C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8F570  7C 08 02 A6 */	mflr r0
/* 80B8F574  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8F578  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8F57C  4B 7D 2C 59 */	bl _savegpr_27
/* 80B8F580  7C 7F 1B 78 */	mr r31, r3
/* 80B8F584  7C 9B 23 78 */	mr r27, r4
/* 80B8F588  7C BD 2B 78 */	mr r29, r5
/* 80B8F58C  3B C0 00 00 */	li r30, 0
/* 80B8F590  3B 80 00 00 */	li r28, 0
/* 80B8F594  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B8F598  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80B8F59C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B8F5A0  54 80 18 38 */	slwi r0, r4, 3
/* 80B8F5A4  3C 80 80 B9 */	lis r4, l_bckGetParamList@ha /* 0x80B93718@ha */
/* 80B8F5A8  38 84 37 18 */	addi r4, r4, l_bckGetParamList@l /* 0x80B93718@l */
/* 80B8F5AC  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B8F5B0  2C 05 00 00 */	cmpwi r5, 0
/* 80B8F5B4  41 80 00 24 */	blt lbl_80B8F5D8
/* 80B8F5B8  7C 84 02 14 */	add r4, r4, r0
/* 80B8F5BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8F5C0  54 00 10 3A */	slwi r0, r0, 2
/* 80B8F5C4  3C 80 80 B9 */	lis r4, l_resNames@ha /* 0x80B93948@ha */
/* 80B8F5C8  38 84 39 48 */	addi r4, r4, l_resNames@l /* 0x80B93948@l */
/* 80B8F5CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B8F5D0  4B 5C 35 5D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B8F5D4  7C 7E 1B 78 */	mr r30, r3
lbl_80B8F5D8:
/* 80B8F5D8  38 60 00 00 */	li r3, 0
/* 80B8F5DC  28 1B 00 11 */	cmplwi r27, 0x11
/* 80B8F5E0  41 81 02 30 */	bgt lbl_80B8F810
/* 80B8F5E4  3C 80 80 B9 */	lis r4, lit_4963@ha /* 0x80B939A0@ha */
/* 80B8F5E8  38 84 39 A0 */	addi r4, r4, lit_4963@l /* 0x80B939A0@l */
/* 80B8F5EC  57 60 10 3A */	slwi r0, r27, 2
/* 80B8F5F0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80B8F5F4  7C 09 03 A6 */	mtctr r0
/* 80B8F5F8  4E 80 04 20 */	bctr 
lbl_80B8F5FC:
/* 80B8F5FC  7F E3 FB 78 */	mr r3, r31
/* 80B8F600  38 80 00 00 */	li r4, 0
/* 80B8F604  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F608  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F60C  7D 89 03 A6 */	mtctr r12
/* 80B8F610  4E 80 04 21 */	bctrl 
/* 80B8F614  3B 80 00 02 */	li r28, 2
/* 80B8F618  48 00 01 FC */	b lbl_80B8F814
lbl_80B8F61C:
/* 80B8F61C  7F E3 FB 78 */	mr r3, r31
/* 80B8F620  38 80 00 01 */	li r4, 1
/* 80B8F624  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F628  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F62C  7D 89 03 A6 */	mtctr r12
/* 80B8F630  4E 80 04 21 */	bctrl 
/* 80B8F634  48 00 01 E0 */	b lbl_80B8F814
lbl_80B8F638:
/* 80B8F638  7F E3 FB 78 */	mr r3, r31
/* 80B8F63C  38 80 00 02 */	li r4, 2
/* 80B8F640  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F644  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F648  7D 89 03 A6 */	mtctr r12
/* 80B8F64C  4E 80 04 21 */	bctrl 
/* 80B8F650  48 00 01 C4 */	b lbl_80B8F814
lbl_80B8F654:
/* 80B8F654  7F E3 FB 78 */	mr r3, r31
/* 80B8F658  38 80 00 08 */	li r4, 8
/* 80B8F65C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F660  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F664  7D 89 03 A6 */	mtctr r12
/* 80B8F668  4E 80 04 21 */	bctrl 
/* 80B8F66C  48 00 01 A8 */	b lbl_80B8F814
lbl_80B8F670:
/* 80B8F670  7F E3 FB 78 */	mr r3, r31
/* 80B8F674  38 80 00 03 */	li r4, 3
/* 80B8F678  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F67C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F680  7D 89 03 A6 */	mtctr r12
/* 80B8F684  4E 80 04 21 */	bctrl 
/* 80B8F688  48 00 01 8C */	b lbl_80B8F814
lbl_80B8F68C:
/* 80B8F68C  7F E3 FB 78 */	mr r3, r31
/* 80B8F690  38 80 00 04 */	li r4, 4
/* 80B8F694  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F698  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F69C  7D 89 03 A6 */	mtctr r12
/* 80B8F6A0  4E 80 04 21 */	bctrl 
/* 80B8F6A4  48 00 01 70 */	b lbl_80B8F814
lbl_80B8F6A8:
/* 80B8F6A8  7F E3 FB 78 */	mr r3, r31
/* 80B8F6AC  38 80 00 05 */	li r4, 5
/* 80B8F6B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F6B4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F6B8  7D 89 03 A6 */	mtctr r12
/* 80B8F6BC  4E 80 04 21 */	bctrl 
/* 80B8F6C0  48 00 01 54 */	b lbl_80B8F814
lbl_80B8F6C4:
/* 80B8F6C4  7F E3 FB 78 */	mr r3, r31
/* 80B8F6C8  38 80 00 06 */	li r4, 6
/* 80B8F6CC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F6D0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F6D4  7D 89 03 A6 */	mtctr r12
/* 80B8F6D8  4E 80 04 21 */	bctrl 
/* 80B8F6DC  48 00 01 38 */	b lbl_80B8F814
lbl_80B8F6E0:
/* 80B8F6E0  7F E3 FB 78 */	mr r3, r31
/* 80B8F6E4  38 80 00 07 */	li r4, 7
/* 80B8F6E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F6EC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F6F0  7D 89 03 A6 */	mtctr r12
/* 80B8F6F4  4E 80 04 21 */	bctrl 
/* 80B8F6F8  48 00 01 1C */	b lbl_80B8F814
lbl_80B8F6FC:
/* 80B8F6FC  7F E3 FB 78 */	mr r3, r31
/* 80B8F700  38 80 00 00 */	li r4, 0
/* 80B8F704  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F708  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F70C  7D 89 03 A6 */	mtctr r12
/* 80B8F710  4E 80 04 21 */	bctrl 
/* 80B8F714  48 00 01 00 */	b lbl_80B8F814
lbl_80B8F718:
/* 80B8F718  7F E3 FB 78 */	mr r3, r31
/* 80B8F71C  38 80 00 09 */	li r4, 9
/* 80B8F720  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F724  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F728  7D 89 03 A6 */	mtctr r12
/* 80B8F72C  4E 80 04 21 */	bctrl 
/* 80B8F730  3B 80 00 02 */	li r28, 2
/* 80B8F734  48 00 00 E0 */	b lbl_80B8F814
lbl_80B8F738:
/* 80B8F738  7F E3 FB 78 */	mr r3, r31
/* 80B8F73C  38 80 00 0A */	li r4, 0xa
/* 80B8F740  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F744  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F748  7D 89 03 A6 */	mtctr r12
/* 80B8F74C  4E 80 04 21 */	bctrl 
/* 80B8F750  48 00 00 C4 */	b lbl_80B8F814
lbl_80B8F754:
/* 80B8F754  7F E3 FB 78 */	mr r3, r31
/* 80B8F758  38 80 00 00 */	li r4, 0
/* 80B8F75C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F760  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F764  7D 89 03 A6 */	mtctr r12
/* 80B8F768  4E 80 04 21 */	bctrl 
/* 80B8F76C  3B 80 00 02 */	li r28, 2
/* 80B8F770  48 00 00 A4 */	b lbl_80B8F814
lbl_80B8F774:
/* 80B8F774  7F E3 FB 78 */	mr r3, r31
/* 80B8F778  38 80 00 0B */	li r4, 0xb
/* 80B8F77C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F780  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F784  7D 89 03 A6 */	mtctr r12
/* 80B8F788  4E 80 04 21 */	bctrl 
/* 80B8F78C  48 00 00 88 */	b lbl_80B8F814
lbl_80B8F790:
/* 80B8F790  7F E3 FB 78 */	mr r3, r31
/* 80B8F794  38 80 00 0C */	li r4, 0xc
/* 80B8F798  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F79C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F7A0  7D 89 03 A6 */	mtctr r12
/* 80B8F7A4  4E 80 04 21 */	bctrl 
/* 80B8F7A8  3B 80 00 02 */	li r28, 2
/* 80B8F7AC  48 00 00 68 */	b lbl_80B8F814
lbl_80B8F7B0:
/* 80B8F7B0  7F E3 FB 78 */	mr r3, r31
/* 80B8F7B4  38 80 00 0D */	li r4, 0xd
/* 80B8F7B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F7BC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F7C0  7D 89 03 A6 */	mtctr r12
/* 80B8F7C4  4E 80 04 21 */	bctrl 
/* 80B8F7C8  3B 80 00 02 */	li r28, 2
/* 80B8F7CC  48 00 00 48 */	b lbl_80B8F814
lbl_80B8F7D0:
/* 80B8F7D0  7F E3 FB 78 */	mr r3, r31
/* 80B8F7D4  38 80 00 00 */	li r4, 0
/* 80B8F7D8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F7DC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F7E0  7D 89 03 A6 */	mtctr r12
/* 80B8F7E4  4E 80 04 21 */	bctrl 
/* 80B8F7E8  3B 80 00 02 */	li r28, 2
/* 80B8F7EC  48 00 00 28 */	b lbl_80B8F814
lbl_80B8F7F0:
/* 80B8F7F0  7F E3 FB 78 */	mr r3, r31
/* 80B8F7F4  38 80 00 0E */	li r4, 0xe
/* 80B8F7F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8F7FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B8F800  7D 89 03 A6 */	mtctr r12
/* 80B8F804  4E 80 04 21 */	bctrl 
/* 80B8F808  3B 80 00 02 */	li r28, 2
/* 80B8F80C  48 00 00 08 */	b lbl_80B8F814
lbl_80B8F810:
/* 80B8F810  3B C0 00 00 */	li r30, 0
lbl_80B8F814:
/* 80B8F814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B8F818  40 82 00 0C */	bne lbl_80B8F824
/* 80B8F81C  38 60 00 00 */	li r3, 0
/* 80B8F820  48 00 00 60 */	b lbl_80B8F880
lbl_80B8F824:
/* 80B8F824  28 1E 00 00 */	cmplwi r30, 0
/* 80B8F828  40 82 00 0C */	bne lbl_80B8F834
/* 80B8F82C  38 60 00 01 */	li r3, 1
/* 80B8F830  48 00 00 50 */	b lbl_80B8F880
lbl_80B8F834:
/* 80B8F834  7F E3 FB 78 */	mr r3, r31
/* 80B8F838  7F C4 F3 78 */	mr r4, r30
/* 80B8F83C  3C A0 80 B9 */	lis r5, lit_4483@ha /* 0x80B93294@ha */
/* 80B8F840  C0 25 32 94 */	lfs f1, lit_4483@l(r5)  /* 0x80B93294@l */
/* 80B8F844  7F 85 E3 78 */	mr r5, r28
/* 80B8F848  38 C0 00 00 */	li r6, 0
/* 80B8F84C  38 E0 FF FF */	li r7, -1
/* 80B8F850  7F A8 EB 78 */	mr r8, r29
/* 80B8F854  4B 5C 34 2D */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80B8F858  2C 03 00 00 */	cmpwi r3, 0
/* 80B8F85C  41 82 00 20 */	beq lbl_80B8F87C
/* 80B8F860  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B8F864  60 00 01 40 */	ori r0, r0, 0x140
/* 80B8F868  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80B8F86C  38 00 00 00 */	li r0, 0
/* 80B8F870  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80B8F874  38 60 00 01 */	li r3, 1
/* 80B8F878  48 00 00 08 */	b lbl_80B8F880
lbl_80B8F87C:
/* 80B8F87C  38 60 00 00 */	li r3, 0
lbl_80B8F880:
/* 80B8F880  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8F884  4B 7D 29 9D */	bl _restgpr_27
/* 80B8F888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8F88C  7C 08 03 A6 */	mtlr r0
/* 80B8F890  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8F894  4E 80 00 20 */	blr 
