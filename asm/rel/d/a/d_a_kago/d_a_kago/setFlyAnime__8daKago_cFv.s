lbl_8084C204:
/* 8084C204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084C208  7C 08 02 A6 */	mflr r0
/* 8084C20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084C210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084C214  93 C1 00 08 */	stw r30, 8(r1)
/* 8084C218  7C 7E 1B 78 */	mr r30, r3
/* 8084C21C  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084C220  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084C224  4B A1 B6 48 */	b cM_rnd__Fv
/* 8084C228  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 8084C22C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084C230  40 80 00 50 */	bge lbl_8084C280
/* 8084C234  7F C3 F3 78 */	mr r3, r30
/* 8084C238  38 80 00 0F */	li r4, 0xf
/* 8084C23C  4B FF D5 5D */	bl checkBck__8daKago_cFi
/* 8084C240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C244  40 82 00 20 */	bne lbl_8084C264
/* 8084C248  7F C3 F3 78 */	mr r3, r30
/* 8084C24C  38 80 00 0F */	li r4, 0xf
/* 8084C250  38 A0 00 02 */	li r5, 2
/* 8084C254  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084C258  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C25C  4B FF D4 95 */	bl setBck__8daKago_cFiUcff
/* 8084C260  48 00 00 4C */	b lbl_8084C2AC
lbl_8084C264:
/* 8084C264  7F C3 F3 78 */	mr r3, r30
/* 8084C268  38 80 00 0D */	li r4, 0xd
/* 8084C26C  38 A0 00 02 */	li r5, 2
/* 8084C270  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084C274  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C278  4B FF D4 79 */	bl setBck__8daKago_cFiUcff
/* 8084C27C  48 00 00 30 */	b lbl_8084C2AC
lbl_8084C280:
/* 8084C280  7F C3 F3 78 */	mr r3, r30
/* 8084C284  38 80 00 0D */	li r4, 0xd
/* 8084C288  4B FF D5 11 */	bl checkBck__8daKago_cFi
/* 8084C28C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C290  40 82 00 1C */	bne lbl_8084C2AC
/* 8084C294  7F C3 F3 78 */	mr r3, r30
/* 8084C298  38 80 00 0D */	li r4, 0xd
/* 8084C29C  38 A0 00 02 */	li r5, 2
/* 8084C2A0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084C2A4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084C2A8  4B FF D4 49 */	bl setBck__8daKago_cFiUcff
lbl_8084C2AC:
/* 8084C2AC  38 00 00 96 */	li r0, 0x96
/* 8084C2B0  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084C2B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084C2B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8084C2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084C2C0  7C 08 03 A6 */	mtlr r0
/* 8084C2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8084C2C8  4E 80 00 20 */	blr 
