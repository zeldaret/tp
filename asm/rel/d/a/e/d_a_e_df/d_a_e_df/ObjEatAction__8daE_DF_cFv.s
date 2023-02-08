lbl_806A8D98:
/* 806A8D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A8D9C  7C 08 02 A6 */	mflr r0
/* 806A8DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A8DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A8DA8  7C 7F 1B 78 */	mr r31, r3
/* 806A8DAC  3C 80 80 6B */	lis r4, lit_3916@ha /* 0x806A9F30@ha */
/* 806A8DB0  38 C4 9F 30 */	addi r6, r4, lit_3916@l /* 0x806A9F30@l */
/* 806A8DB4  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 806A8DB8  2C 00 00 01 */	cmpwi r0, 1
/* 806A8DBC  41 82 00 70 */	beq lbl_806A8E2C
/* 806A8DC0  40 80 00 10 */	bge lbl_806A8DD0
/* 806A8DC4  2C 00 00 00 */	cmpwi r0, 0
/* 806A8DC8  40 80 00 14 */	bge lbl_806A8DDC
/* 806A8DCC  48 00 00 D4 */	b lbl_806A8EA0
lbl_806A8DD0:
/* 806A8DD0  2C 00 00 03 */	cmpwi r0, 3
/* 806A8DD4  40 80 00 CC */	bge lbl_806A8EA0
/* 806A8DD8  48 00 00 AC */	b lbl_806A8E84
lbl_806A8DDC:
/* 806A8DDC  38 80 00 07 */	li r4, 7
/* 806A8DE0  38 A0 00 00 */	li r5, 0
/* 806A8DE4  C0 26 00 98 */	lfs f1, 0x98(r6)
/* 806A8DE8  C0 46 00 08 */	lfs f2, 8(r6)
/* 806A8DEC  4B FF EA E9 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8DF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019E@ha */
/* 806A8DF4  38 03 01 9E */	addi r0, r3, 0x019E /* 0x0007019E@l */
/* 806A8DF8  90 01 00 08 */	stw r0, 8(r1)
/* 806A8DFC  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806A8E00  38 81 00 08 */	addi r4, r1, 8
/* 806A8E04  38 A0 00 00 */	li r5, 0
/* 806A8E08  38 C0 FF FF */	li r6, -1
/* 806A8E0C  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806A8E10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A8E14  7D 89 03 A6 */	mtctr r12
/* 806A8E18  4E 80 04 21 */	bctrl 
/* 806A8E1C  88 7F 05 AE */	lbz r3, 0x5ae(r31)
/* 806A8E20  38 03 00 01 */	addi r0, r3, 1
/* 806A8E24  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 806A8E28  48 00 00 78 */	b lbl_806A8EA0
lbl_806A8E2C:
/* 806A8E2C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A8E30  38 80 00 01 */	li r4, 1
/* 806A8E34  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A8E38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A8E3C  40 82 00 18 */	bne lbl_806A8E54
/* 806A8E40  C0 26 00 04 */	lfs f1, 4(r6)
/* 806A8E44  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A8E48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A8E4C  41 82 00 08 */	beq lbl_806A8E54
/* 806A8E50  38 80 00 00 */	li r4, 0
lbl_806A8E54:
/* 806A8E54  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A8E58  41 82 00 48 */	beq lbl_806A8EA0
/* 806A8E5C  88 7F 05 AE */	lbz r3, 0x5ae(r31)
/* 806A8E60  38 03 00 01 */	addi r0, r3, 1
/* 806A8E64  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 806A8E68  7F E3 FB 78 */	mr r3, r31
/* 806A8E6C  38 80 00 08 */	li r4, 8
/* 806A8E70  38 A0 00 02 */	li r5, 2
/* 806A8E74  C0 26 00 98 */	lfs f1, 0x98(r6)
/* 806A8E78  C0 46 00 08 */	lfs f2, 8(r6)
/* 806A8E7C  4B FF EA 59 */	bl SetAnm__8daE_DF_cFiiff
/* 806A8E80  48 00 00 20 */	b lbl_806A8EA0
lbl_806A8E84:
/* 806A8E84  4B FF FD FD */	bl Mogu_Mogu__8daE_DF_cFv
/* 806A8E88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A8E8C  41 82 00 14 */	beq lbl_806A8EA0
/* 806A8E90  38 00 00 00 */	li r0, 0
/* 806A8E94  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806A8E98  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A8E9C  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_806A8EA0:
/* 806A8EA0  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 806A8EA4  38 80 00 00 */	li r4, 0
/* 806A8EA8  38 A0 01 00 */	li r5, 0x100
/* 806A8EAC  4B BC 7C E5 */	bl cLib_chaseAngleS__FPsss
/* 806A8EB0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 806A8EB4  38 80 00 00 */	li r4, 0
/* 806A8EB8  38 A0 01 00 */	li r5, 0x100
/* 806A8EBC  4B BC 7C D5 */	bl cLib_chaseAngleS__FPsss
/* 806A8EC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A8EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A8EC8  7C 08 03 A6 */	mtlr r0
/* 806A8ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 806A8ED0  4E 80 00 20 */	blr 
