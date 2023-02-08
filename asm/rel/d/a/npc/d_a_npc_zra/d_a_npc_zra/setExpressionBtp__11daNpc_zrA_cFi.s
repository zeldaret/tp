lbl_80B7BD60:
/* 80B7BD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7BD64  7C 08 02 A6 */	mflr r0
/* 80B7BD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7BD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7BD70  4B 7E 64 6D */	bl _savegpr_29
/* 80B7BD74  7C 7D 1B 78 */	mr r29, r3
/* 80B7BD78  7C 9E 23 78 */	mr r30, r4
/* 80B7BD7C  38 80 00 00 */	li r4, 0
/* 80B7BD80  3B E0 00 00 */	li r31, 0
/* 80B7BD84  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80B7BD88  38 00 F5 7F */	li r0, -2689
/* 80B7BD8C  7C A0 00 38 */	and r0, r5, r0
/* 80B7BD90  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B7BD94  57 C0 18 38 */	slwi r0, r30, 3
/* 80B7BD98  3C A0 80 B9 */	lis r5, l_btpGetParamList@ha /* 0x80B8D0DC@ha */
/* 80B7BD9C  38 C5 D0 DC */	addi r6, r5, l_btpGetParamList@l /* 0x80B8D0DC@l */
/* 80B7BDA0  7C A6 00 2E */	lwzx r5, r6, r0
/* 80B7BDA4  2C 05 00 00 */	cmpwi r5, 0
/* 80B7BDA8  41 80 00 24 */	blt lbl_80B7BDCC
/* 80B7BDAC  7C 86 02 14 */	add r4, r6, r0
/* 80B7BDB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7BDB4  54 00 10 3A */	slwi r0, r0, 2
/* 80B7BDB8  3C 80 80 B9 */	lis r4, l_resNames@ha /* 0x80B8D300@ha */
/* 80B7BDBC  38 84 D3 00 */	addi r4, r4, l_resNames@l /* 0x80B8D300@l */
/* 80B7BDC0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7BDC4  4B 5D 6D A5 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80B7BDC8  7C 64 1B 78 */	mr r4, r3
lbl_80B7BDCC:
/* 80B7BDCC  2C 1E 00 06 */	cmpwi r30, 6
/* 80B7BDD0  41 82 00 28 */	beq lbl_80B7BDF8
/* 80B7BDD4  40 80 00 10 */	bge lbl_80B7BDE4
/* 80B7BDD8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B7BDDC  40 80 00 10 */	bge lbl_80B7BDEC
/* 80B7BDE0  48 00 00 14 */	b lbl_80B7BDF4
lbl_80B7BDE4:
/* 80B7BDE4  2C 1E 00 08 */	cmpwi r30, 8
/* 80B7BDE8  40 80 00 0C */	bge lbl_80B7BDF4
lbl_80B7BDEC:
/* 80B7BDEC  3B E0 00 02 */	li r31, 2
/* 80B7BDF0  48 00 00 08 */	b lbl_80B7BDF8
lbl_80B7BDF4:
/* 80B7BDF4  38 80 00 00 */	li r4, 0
lbl_80B7BDF8:
/* 80B7BDF8  28 04 00 00 */	cmplwi r4, 0
/* 80B7BDFC  40 82 00 0C */	bne lbl_80B7BE08
/* 80B7BE00  38 60 00 01 */	li r3, 1
/* 80B7BE04  48 00 00 58 */	b lbl_80B7BE5C
lbl_80B7BE08:
/* 80B7BE08  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B7BE0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7BE10  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B7BE14  7F A3 EB 78 */	mr r3, r29
/* 80B7BE18  3C C0 80 B9 */	lis r6, lit_5070@ha /* 0x80B8C548@ha */
/* 80B7BE1C  C0 26 C5 48 */	lfs f1, lit_5070@l(r6)  /* 0x80B8C548@l */
/* 80B7BE20  7F E6 FB 78 */	mr r6, r31
/* 80B7BE24  4B 5D 6E A1 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B7BE28  2C 03 00 00 */	cmpwi r3, 0
/* 80B7BE2C  41 82 00 2C */	beq lbl_80B7BE58
/* 80B7BE30  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B7BE34  60 00 02 80 */	ori r0, r0, 0x280
/* 80B7BE38  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B7BE3C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B7BE40  40 82 00 10 */	bne lbl_80B7BE50
/* 80B7BE44  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B7BE48  60 00 08 00 */	ori r0, r0, 0x800
/* 80B7BE4C  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80B7BE50:
/* 80B7BE50  38 60 00 01 */	li r3, 1
/* 80B7BE54  48 00 00 08 */	b lbl_80B7BE5C
lbl_80B7BE58:
/* 80B7BE58  38 60 00 00 */	li r3, 0
lbl_80B7BE5C:
/* 80B7BE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7BE60  4B 7E 63 C9 */	bl _restgpr_29
/* 80B7BE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7BE68  7C 08 03 A6 */	mtlr r0
/* 80B7BE6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7BE70  4E 80 00 20 */	blr 
