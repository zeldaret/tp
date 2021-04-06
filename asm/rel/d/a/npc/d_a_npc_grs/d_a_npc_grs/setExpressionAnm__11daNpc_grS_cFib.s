lbl_809E5874:
/* 809E5874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E5878  7C 08 02 A6 */	mflr r0
/* 809E587C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E5880  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5884  4B 97 C9 51 */	bl _savegpr_27
/* 809E5888  7C 7D 1B 78 */	mr r29, r3
/* 809E588C  7C 9B 23 78 */	mr r27, r4
/* 809E5890  7C BE 2B 78 */	mr r30, r5
/* 809E5894  3B 80 00 00 */	li r28, 0
/* 809E5898  3B E0 00 00 */	li r31, 0
/* 809E589C  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809E58A0  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809E58A4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E58A8  54 80 18 38 */	slwi r0, r4, 3
/* 809E58AC  3C 80 80 9E */	lis r4, l_bckGetParamList@ha /* 0x809E7FF4@ha */
/* 809E58B0  38 84 7F F4 */	addi r4, r4, l_bckGetParamList@l /* 0x809E7FF4@l */
/* 809E58B4  7C A4 00 2E */	lwzx r5, r4, r0
/* 809E58B8  2C 05 00 00 */	cmpwi r5, 0
/* 809E58BC  41 80 00 24 */	blt lbl_809E58E0
/* 809E58C0  7C 84 02 14 */	add r4, r4, r0
/* 809E58C4  80 04 00 04 */	lwz r0, 4(r4)
/* 809E58C8  54 00 10 3A */	slwi r0, r0, 2
/* 809E58CC  3C 80 80 9F */	lis r4, l_resNames@ha /* 0x809E8084@ha */
/* 809E58D0  38 84 80 84 */	addi r4, r4, l_resNames@l /* 0x809E8084@l */
/* 809E58D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E58D8  4B 76 D2 55 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809E58DC  7C 7C 1B 78 */	mr r28, r3
lbl_809E58E0:
/* 809E58E0  38 60 00 00 */	li r3, 0
/* 809E58E4  2C 1B 00 02 */	cmpwi r27, 2
/* 809E58E8  41 82 00 5C */	beq lbl_809E5944
/* 809E58EC  40 80 00 14 */	bge lbl_809E5900
/* 809E58F0  2C 1B 00 00 */	cmpwi r27, 0
/* 809E58F4  41 82 00 18 */	beq lbl_809E590C
/* 809E58F8  40 80 00 30 */	bge lbl_809E5928
/* 809E58FC  48 00 00 84 */	b lbl_809E5980
lbl_809E5900:
/* 809E5900  2C 1B 00 04 */	cmpwi r27, 4
/* 809E5904  40 80 00 7C */	bge lbl_809E5980
/* 809E5908  48 00 00 58 */	b lbl_809E5960
lbl_809E590C:
/* 809E590C  7F A3 EB 78 */	mr r3, r29
/* 809E5910  38 80 00 00 */	li r4, 0
/* 809E5914  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E5918  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E591C  7D 89 03 A6 */	mtctr r12
/* 809E5920  4E 80 04 21 */	bctrl 
/* 809E5924  48 00 00 60 */	b lbl_809E5984
lbl_809E5928:
/* 809E5928  7F A3 EB 78 */	mr r3, r29
/* 809E592C  38 80 00 00 */	li r4, 0
/* 809E5930  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E5934  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E5938  7D 89 03 A6 */	mtctr r12
/* 809E593C  4E 80 04 21 */	bctrl 
/* 809E5940  48 00 00 44 */	b lbl_809E5984
lbl_809E5944:
/* 809E5944  7F A3 EB 78 */	mr r3, r29
/* 809E5948  38 80 00 01 */	li r4, 1
/* 809E594C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E5950  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E5954  7D 89 03 A6 */	mtctr r12
/* 809E5958  4E 80 04 21 */	bctrl 
/* 809E595C  48 00 00 28 */	b lbl_809E5984
lbl_809E5960:
/* 809E5960  7F A3 EB 78 */	mr r3, r29
/* 809E5964  38 80 00 02 */	li r4, 2
/* 809E5968  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E596C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809E5970  7D 89 03 A6 */	mtctr r12
/* 809E5974  4E 80 04 21 */	bctrl 
/* 809E5978  3B E0 00 02 */	li r31, 2
/* 809E597C  48 00 00 08 */	b lbl_809E5984
lbl_809E5980:
/* 809E5980  3B 80 00 00 */	li r28, 0
lbl_809E5984:
/* 809E5984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E5988  40 82 00 0C */	bne lbl_809E5994
/* 809E598C  38 60 00 00 */	li r3, 0
/* 809E5990  48 00 00 60 */	b lbl_809E59F0
lbl_809E5994:
/* 809E5994  28 1C 00 00 */	cmplwi r28, 0
/* 809E5998  40 82 00 0C */	bne lbl_809E59A4
/* 809E599C  38 60 00 01 */	li r3, 1
/* 809E59A0  48 00 00 50 */	b lbl_809E59F0
lbl_809E59A4:
/* 809E59A4  7F A3 EB 78 */	mr r3, r29
/* 809E59A8  7F 84 E3 78 */	mr r4, r28
/* 809E59AC  3C A0 80 9E */	lis r5, lit_4490@ha /* 0x809E7E48@ha */
/* 809E59B0  C0 25 7E 48 */	lfs f1, lit_4490@l(r5)  /* 0x809E7E48@l */
/* 809E59B4  7F E5 FB 78 */	mr r5, r31
/* 809E59B8  38 C0 00 00 */	li r6, 0
/* 809E59BC  38 E0 FF FF */	li r7, -1
/* 809E59C0  7F C8 F3 78 */	mr r8, r30
/* 809E59C4  4B 76 D2 BD */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809E59C8  2C 03 00 00 */	cmpwi r3, 0
/* 809E59CC  41 82 00 20 */	beq lbl_809E59EC
/* 809E59D0  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809E59D4  60 00 01 40 */	ori r0, r0, 0x140
/* 809E59D8  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809E59DC  38 00 00 00 */	li r0, 0
/* 809E59E0  B0 1D 09 E4 */	sth r0, 0x9e4(r29)
/* 809E59E4  38 60 00 01 */	li r3, 1
/* 809E59E8  48 00 00 08 */	b lbl_809E59F0
lbl_809E59EC:
/* 809E59EC  38 60 00 00 */	li r3, 0
lbl_809E59F0:
/* 809E59F0  39 61 00 20 */	addi r11, r1, 0x20
/* 809E59F4  4B 97 C8 2D */	bl _restgpr_27
/* 809E59F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E59FC  7C 08 03 A6 */	mtlr r0
/* 809E5A00  38 21 00 20 */	addi r1, r1, 0x20
/* 809E5A04  4E 80 00 20 */	blr 
