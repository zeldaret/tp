lbl_8096BDD8:
/* 8096BDD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096BDDC  7C 08 02 A6 */	mflr r0
/* 8096BDE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096BDE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096BDE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8096BDEC  7C 7E 1B 78 */	mr r30, r3
/* 8096BDF0  3B E0 00 00 */	li r31, 0
/* 8096BDF4  80 04 00 00 */	lwz r0, 0(r4)
/* 8096BDF8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096BDFC  41 82 00 5C */	beq lbl_8096BE58
/* 8096BE00  40 80 00 10 */	bge lbl_8096BE10
/* 8096BE04  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096BE08  41 82 00 14 */	beq lbl_8096BE1C
/* 8096BE0C  48 00 00 E0 */	b lbl_8096BEEC
lbl_8096BE10:
/* 8096BE10  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096BE14  41 82 00 88 */	beq lbl_8096BE9C
/* 8096BE18  48 00 00 D4 */	b lbl_8096BEEC
lbl_8096BE1C:
/* 8096BE1C  80 9E 0E 00 */	lwz r4, 0xe00(r30)
/* 8096BE20  3C 04 00 01 */	addis r0, r4, 1
/* 8096BE24  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096BE28  40 82 00 28 */	bne lbl_8096BE50
/* 8096BE2C  38 80 00 00 */	li r4, 0
/* 8096BE30  4B FF D6 D5 */	bl create_Yamijin__13daNpcBlueNS_cFi
/* 8096BE34  90 7E 0E 00 */	stw r3, 0xe00(r30)
/* 8096BE38  80 7E 0E 00 */	lwz r3, 0xe00(r30)
/* 8096BE3C  3C 03 00 01 */	addis r0, r3, 1
/* 8096BE40  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096BE44  41 82 00 A8 */	beq lbl_8096BEEC
/* 8096BE48  3B E0 00 01 */	li r31, 1
/* 8096BE4C  48 00 00 A0 */	b lbl_8096BEEC
lbl_8096BE50:
/* 8096BE50  3B E0 00 01 */	li r31, 1
/* 8096BE54  48 00 00 98 */	b lbl_8096BEEC
lbl_8096BE58:
/* 8096BE58  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8096BE5C  38 A0 00 01 */	li r5, 1
/* 8096BE60  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8096BE64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8096BE68  40 82 00 1C */	bne lbl_8096BE84
/* 8096BE6C  3C 60 80 97 */	lis r3, lit_4393@ha /* 0x8096C9F4@ha */
/* 8096BE70  C0 23 C9 F4 */	lfs f1, lit_4393@l(r3)  /* 0x8096C9F4@l */
/* 8096BE74  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8096BE78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096BE7C  41 82 00 08 */	beq lbl_8096BE84
/* 8096BE80  38 A0 00 00 */	li r5, 0
lbl_8096BE84:
/* 8096BE84  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8096BE88  41 82 00 64 */	beq lbl_8096BEEC
/* 8096BE8C  7F C3 F3 78 */	mr r3, r30
/* 8096BE90  4B FF F3 75 */	bl ChgPtclDisp__13daNpcBlueNS_cFv
/* 8096BE94  3B E0 00 01 */	li r31, 1
/* 8096BE98  48 00 00 54 */	b lbl_8096BEEC
lbl_8096BE9C:
/* 8096BE9C  80 1E 0E 00 */	lwz r0, 0xe00(r30)
/* 8096BEA0  90 01 00 08 */	stw r0, 8(r1)
/* 8096BEA4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8096BEA8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8096BEAC  38 81 00 08 */	addi r4, r1, 8
/* 8096BEB0  4B 6A D9 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8096BEB4  90 7E 0D FC */	stw r3, 0xdfc(r30)
/* 8096BEB8  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096BEBC  28 03 00 00 */	cmplwi r3, 0
/* 8096BEC0  41 82 00 2C */	beq lbl_8096BEEC
/* 8096BEC4  38 00 00 00 */	li r0, 0
/* 8096BEC8  98 03 0F 81 */	stb r0, 0xf81(r3)
/* 8096BECC  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096BED0  80 03 0E 70 */	lwz r0, 0xe70(r3)
/* 8096BED4  60 00 00 01 */	ori r0, r0, 1
/* 8096BED8  90 03 0E 70 */	stw r0, 0xe70(r3)
/* 8096BEDC  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 8096BEE0  60 00 00 01 */	ori r0, r0, 1
/* 8096BEE4  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 8096BEE8  3B E0 00 01 */	li r31, 1
lbl_8096BEEC:
/* 8096BEEC  7F E3 FB 78 */	mr r3, r31
/* 8096BEF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096BEF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8096BEF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096BEFC  7C 08 03 A6 */	mtlr r0
/* 8096BF00  38 21 00 20 */	addi r1, r1, 0x20
/* 8096BF04  4E 80 00 20 */	blr 
