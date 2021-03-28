lbl_80024E30:
/* 80024E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024E34  7C 08 02 A6 */	mflr r0
/* 80024E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024E3C  7C 68 1B 78 */	mr r8, r3
/* 80024E40  7C 87 23 78 */	mr r7, r4
/* 80024E44  3C 60 80 3A */	lis r3, l_objectName@ha
/* 80024E48  38 03 3B 18 */	addi r0, r3, l_objectName@l
/* 80024E4C  7C 03 03 78 */	mr r3, r0
/* 80024E50  38 C0 00 00 */	li r6, 0
/* 80024E54  7C E4 07 74 */	extsb r4, r7
/* 80024E58  7D 05 07 34 */	extsh r5, r8
/* 80024E5C  38 00 03 8F */	li r0, 0x38f
/* 80024E60  7C 09 03 A6 */	mtctr r0
lbl_80024E64:
/* 80024E64  A8 03 00 08 */	lha r0, 8(r3)
/* 80024E68  7C 00 28 00 */	cmpw r0, r5
/* 80024E6C  40 82 00 24 */	bne lbl_80024E90
/* 80024E70  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80024E74  7C 00 07 74 */	extsb r0, r0
/* 80024E78  7C 00 20 00 */	cmpw r0, r4
/* 80024E7C  40 82 00 08 */	bne lbl_80024E84
/* 80024E80  48 00 00 4C */	b lbl_80024ECC
lbl_80024E84:
/* 80024E84  28 06 00 00 */	cmplwi r6, 0
/* 80024E88  40 82 00 08 */	bne lbl_80024E90
/* 80024E8C  7C 66 1B 78 */	mr r6, r3
lbl_80024E90:
/* 80024E90  38 63 00 0C */	addi r3, r3, 0xc
/* 80024E94  42 00 FF D0 */	bdnz lbl_80024E64
/* 80024E98  28 06 00 00 */	cmplwi r6, 0
/* 80024E9C  40 82 00 2C */	bne lbl_80024EC8
/* 80024EA0  38 6D 87 D8 */	la r3, tmp_name(r13) /* 80450D58-_SDA_BASE_ */
/* 80024EA4  38 80 00 08 */	li r4, 8
/* 80024EA8  3C A0 80 38 */	lis r5, d_d_stage__stringBase0@ha
/* 80024EAC  38 A5 8A 50 */	addi r5, r5, d_d_stage__stringBase0@l
/* 80024EB0  38 A5 00 D4 */	addi r5, r5, 0xd4
/* 80024EB4  7D 06 07 34 */	extsh r6, r8
/* 80024EB8  7C E7 07 74 */	extsb r7, r7
/* 80024EBC  4C C6 31 82 */	crclr 6
/* 80024EC0  48 34 16 FD */	bl snprintf
/* 80024EC4  38 CD 87 D8 */	la r6, tmp_name(r13) /* 80450D58-_SDA_BASE_ */
lbl_80024EC8:
/* 80024EC8  7C C3 33 78 */	mr r3, r6
lbl_80024ECC:
/* 80024ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024ED0  7C 08 03 A6 */	mtlr r0
/* 80024ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80024ED8  4E 80 00 20 */	blr 
