lbl_809DBD58:
/* 809DBD58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DBD5C  7C 08 02 A6 */	mflr r0
/* 809DBD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DBD64  39 61 00 20 */	addi r11, r1, 0x20
/* 809DBD68  4B 98 64 6D */	bl _savegpr_27
/* 809DBD6C  7C 7E 1B 78 */	mr r30, r3
/* 809DBD70  7C 9B 23 78 */	mr r27, r4
/* 809DBD74  7C BF 2B 78 */	mr r31, r5
/* 809DBD78  3B A0 00 00 */	li r29, 0
/* 809DBD7C  3B 80 00 00 */	li r28, 0
/* 809DBD80  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809DBD84  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809DBD88  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809DBD8C  54 80 18 38 */	slwi r0, r4, 3
/* 809DBD90  3C 80 80 9E */	lis r4, l_bckGetParamList@ha /* 0x809DF33C@ha */
/* 809DBD94  38 84 F3 3C */	addi r4, r4, l_bckGetParamList@l /* 0x809DF33C@l */
/* 809DBD98  7C A4 00 2E */	lwzx r5, r4, r0
/* 809DBD9C  2C 05 00 00 */	cmpwi r5, 0
/* 809DBDA0  41 80 00 24 */	blt lbl_809DBDC4
/* 809DBDA4  7C 84 02 14 */	add r4, r4, r0
/* 809DBDA8  80 04 00 04 */	lwz r0, 4(r4)
/* 809DBDAC  54 00 10 3A */	slwi r0, r0, 2
/* 809DBDB0  3C 80 80 9E */	lis r4, l_resNames@ha /* 0x809DF4A4@ha */
/* 809DBDB4  38 84 F4 A4 */	addi r4, r4, l_resNames@l /* 0x809DF4A4@l */
/* 809DBDB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DBDBC  4B 77 6D 71 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809DBDC0  7C 7D 1B 78 */	mr r29, r3
lbl_809DBDC4:
/* 809DBDC4  38 60 00 00 */	li r3, 0
/* 809DBDC8  28 1B 00 0C */	cmplwi r27, 0xc
/* 809DBDCC  41 81 01 A0 */	bgt lbl_809DBF6C
/* 809DBDD0  3C 80 80 9E */	lis r4, lit_4985@ha /* 0x809DF514@ha */
/* 809DBDD4  38 84 F5 14 */	addi r4, r4, lit_4985@l /* 0x809DF514@l */
/* 809DBDD8  57 60 10 3A */	slwi r0, r27, 2
/* 809DBDDC  7C 04 00 2E */	lwzx r0, r4, r0
/* 809DBDE0  7C 09 03 A6 */	mtctr r0
/* 809DBDE4  4E 80 04 20 */	bctr 
lbl_809DBDE8:
/* 809DBDE8  7F C3 F3 78 */	mr r3, r30
/* 809DBDEC  38 80 00 00 */	li r4, 0
/* 809DBDF0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBDF4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBDF8  7D 89 03 A6 */	mtctr r12
/* 809DBDFC  4E 80 04 21 */	bctrl 
/* 809DBE00  48 00 01 70 */	b lbl_809DBF70
lbl_809DBE04:
/* 809DBE04  7F C3 F3 78 */	mr r3, r30
/* 809DBE08  38 80 00 00 */	li r4, 0
/* 809DBE0C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBE10  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBE14  7D 89 03 A6 */	mtctr r12
/* 809DBE18  4E 80 04 21 */	bctrl 
/* 809DBE1C  3B 80 00 02 */	li r28, 2
/* 809DBE20  48 00 01 50 */	b lbl_809DBF70
lbl_809DBE24:
/* 809DBE24  7F C3 F3 78 */	mr r3, r30
/* 809DBE28  38 80 00 00 */	li r4, 0
/* 809DBE2C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBE30  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBE34  7D 89 03 A6 */	mtctr r12
/* 809DBE38  4E 80 04 21 */	bctrl 
/* 809DBE3C  3B 80 00 02 */	li r28, 2
/* 809DBE40  48 00 01 30 */	b lbl_809DBF70
lbl_809DBE44:
/* 809DBE44  7F C3 F3 78 */	mr r3, r30
/* 809DBE48  38 80 00 00 */	li r4, 0
/* 809DBE4C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBE50  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBE54  7D 89 03 A6 */	mtctr r12
/* 809DBE58  4E 80 04 21 */	bctrl 
/* 809DBE5C  48 00 01 14 */	b lbl_809DBF70
lbl_809DBE60:
/* 809DBE60  7F C3 F3 78 */	mr r3, r30
/* 809DBE64  38 80 00 01 */	li r4, 1
/* 809DBE68  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBE6C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBE70  7D 89 03 A6 */	mtctr r12
/* 809DBE74  4E 80 04 21 */	bctrl 
/* 809DBE78  48 00 00 F8 */	b lbl_809DBF70
lbl_809DBE7C:
/* 809DBE7C  7F C3 F3 78 */	mr r3, r30
/* 809DBE80  38 80 00 02 */	li r4, 2
/* 809DBE84  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBE88  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBE8C  7D 89 03 A6 */	mtctr r12
/* 809DBE90  4E 80 04 21 */	bctrl 
/* 809DBE94  48 00 00 DC */	b lbl_809DBF70
lbl_809DBE98:
/* 809DBE98  7F C3 F3 78 */	mr r3, r30
/* 809DBE9C  38 80 00 03 */	li r4, 3
/* 809DBEA0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBEA4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBEA8  7D 89 03 A6 */	mtctr r12
/* 809DBEAC  4E 80 04 21 */	bctrl 
/* 809DBEB0  3B 80 00 02 */	li r28, 2
/* 809DBEB4  48 00 00 BC */	b lbl_809DBF70
lbl_809DBEB8:
/* 809DBEB8  7F C3 F3 78 */	mr r3, r30
/* 809DBEBC  38 80 00 04 */	li r4, 4
/* 809DBEC0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBEC4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBEC8  7D 89 03 A6 */	mtctr r12
/* 809DBECC  4E 80 04 21 */	bctrl 
/* 809DBED0  48 00 00 A0 */	b lbl_809DBF70
lbl_809DBED4:
/* 809DBED4  7F C3 F3 78 */	mr r3, r30
/* 809DBED8  38 80 00 05 */	li r4, 5
/* 809DBEDC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBEE0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBEE4  7D 89 03 A6 */	mtctr r12
/* 809DBEE8  4E 80 04 21 */	bctrl 
/* 809DBEEC  48 00 00 84 */	b lbl_809DBF70
lbl_809DBEF0:
/* 809DBEF0  7F C3 F3 78 */	mr r3, r30
/* 809DBEF4  38 80 00 00 */	li r4, 0
/* 809DBEF8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBEFC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBF00  7D 89 03 A6 */	mtctr r12
/* 809DBF04  4E 80 04 21 */	bctrl 
/* 809DBF08  3B 80 00 02 */	li r28, 2
/* 809DBF0C  48 00 00 64 */	b lbl_809DBF70
lbl_809DBF10:
/* 809DBF10  7F C3 F3 78 */	mr r3, r30
/* 809DBF14  38 80 00 00 */	li r4, 0
/* 809DBF18  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBF1C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBF20  7D 89 03 A6 */	mtctr r12
/* 809DBF24  4E 80 04 21 */	bctrl 
/* 809DBF28  48 00 00 48 */	b lbl_809DBF70
lbl_809DBF2C:
/* 809DBF2C  7F C3 F3 78 */	mr r3, r30
/* 809DBF30  38 80 00 00 */	li r4, 0
/* 809DBF34  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBF38  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBF3C  7D 89 03 A6 */	mtctr r12
/* 809DBF40  4E 80 04 21 */	bctrl 
/* 809DBF44  3B 80 00 02 */	li r28, 2
/* 809DBF48  48 00 00 28 */	b lbl_809DBF70
lbl_809DBF4C:
/* 809DBF4C  7F C3 F3 78 */	mr r3, r30
/* 809DBF50  38 80 00 00 */	li r4, 0
/* 809DBF54  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809DBF58  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809DBF5C  7D 89 03 A6 */	mtctr r12
/* 809DBF60  4E 80 04 21 */	bctrl 
/* 809DBF64  3B 80 00 02 */	li r28, 2
/* 809DBF68  48 00 00 08 */	b lbl_809DBF70
lbl_809DBF6C:
/* 809DBF6C  3B A0 00 00 */	li r29, 0
lbl_809DBF70:
/* 809DBF70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809DBF74  40 82 00 0C */	bne lbl_809DBF80
/* 809DBF78  38 60 00 00 */	li r3, 0
/* 809DBF7C  48 00 00 60 */	b lbl_809DBFDC
lbl_809DBF80:
/* 809DBF80  28 1D 00 00 */	cmplwi r29, 0
/* 809DBF84  40 82 00 0C */	bne lbl_809DBF90
/* 809DBF88  38 60 00 01 */	li r3, 1
/* 809DBF8C  48 00 00 50 */	b lbl_809DBFDC
lbl_809DBF90:
/* 809DBF90  7F C3 F3 78 */	mr r3, r30
/* 809DBF94  7F A4 EB 78 */	mr r4, r29
/* 809DBF98  3C A0 80 9E */	lis r5, lit_4552@ha /* 0x809DF008@ha */
/* 809DBF9C  C0 25 F0 08 */	lfs f1, lit_4552@l(r5)  /* 0x809DF008@l */
/* 809DBFA0  7F 85 E3 78 */	mr r5, r28
/* 809DBFA4  38 C0 00 00 */	li r6, 0
/* 809DBFA8  38 E0 FF FF */	li r7, -1
/* 809DBFAC  7F E8 FB 78 */	mr r8, r31
/* 809DBFB0  4B 77 6C D1 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809DBFB4  2C 03 00 00 */	cmpwi r3, 0
/* 809DBFB8  41 82 00 20 */	beq lbl_809DBFD8
/* 809DBFBC  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809DBFC0  60 00 01 40 */	ori r0, r0, 0x140
/* 809DBFC4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 809DBFC8  38 00 00 00 */	li r0, 0
/* 809DBFCC  B0 1E 09 E4 */	sth r0, 0x9e4(r30)
/* 809DBFD0  38 60 00 01 */	li r3, 1
/* 809DBFD4  48 00 00 08 */	b lbl_809DBFDC
lbl_809DBFD8:
/* 809DBFD8  38 60 00 00 */	li r3, 0
lbl_809DBFDC:
/* 809DBFDC  39 61 00 20 */	addi r11, r1, 0x20
/* 809DBFE0  4B 98 62 41 */	bl _restgpr_27
/* 809DBFE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DBFE8  7C 08 03 A6 */	mtlr r0
/* 809DBFEC  38 21 00 20 */	addi r1, r1, 0x20
/* 809DBFF0  4E 80 00 20 */	blr 
