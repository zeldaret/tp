lbl_80AB6DDC:
/* 80AB6DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB6DE0  7C 08 02 A6 */	mflr r0
/* 80AB6DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6DE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB6DEC  7C 7F 1B 78 */	mr r31, r3
/* 80AB6DF0  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80AB6DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB6DF8  41 82 00 5C */	beq lbl_80AB6E54
/* 80AB6DFC  38 C0 00 00 */	li r6, 0
/* 80AB6E00  38 60 00 00 */	li r3, 0
/* 80AB6E04  7C C4 33 78 */	mr r4, r6
/* 80AB6E08  3C A0 80 AC */	lis r5, lit_4040@ha /* 0x80AB8F64@ha */
/* 80AB6E0C  C0 05 8F 64 */	lfs f0, lit_4040@l(r5)  /* 0x80AB8F64@l */
/* 80AB6E10  38 00 00 02 */	li r0, 2
/* 80AB6E14  7C 09 03 A6 */	mtctr r0
lbl_80AB6E18:
/* 80AB6E18  7C BF 22 14 */	add r5, r31, r4
/* 80AB6E1C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AB6E20  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AB6E24  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AB6E28  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AB6E2C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AB6E30  38 63 00 04 */	addi r3, r3, 4
/* 80AB6E34  38 84 00 06 */	addi r4, r4, 6
/* 80AB6E38  42 00 FF E0 */	bdnz lbl_80AB6E18
/* 80AB6E3C  38 00 00 00 */	li r0, 0
/* 80AB6E40  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AB6E44  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AB6E48  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AB6E4C  38 00 00 01 */	li r0, 1
/* 80AB6E50  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB6E54:
/* 80AB6E54  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AB6E58  4B 8A B1 C1 */	bl __ptmf_test
/* 80AB6E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6E60  41 82 00 54 */	beq lbl_80AB6EB4
/* 80AB6E64  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80AB6E68  38 9F 0F 8C */	addi r4, r31, 0xf8c
/* 80AB6E6C  4B 8A B1 DD */	bl __ptmf_cmpr
/* 80AB6E70  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6E74  40 82 00 1C */	bne lbl_80AB6E90
/* 80AB6E78  7F E3 FB 78 */	mr r3, r31
/* 80AB6E7C  38 80 00 00 */	li r4, 0
/* 80AB6E80  39 9F 0F 98 */	addi r12, r31, 0xf98
/* 80AB6E84  4B 8A B2 01 */	bl __ptmf_scall
/* 80AB6E88  60 00 00 00 */	nop 
/* 80AB6E8C  48 00 00 28 */	b lbl_80AB6EB4
lbl_80AB6E90:
/* 80AB6E90  80 7F 0F 8C */	lwz r3, 0xf8c(r31)
/* 80AB6E94  80 1F 0F 90 */	lwz r0, 0xf90(r31)
/* 80AB6E98  90 61 00 08 */	stw r3, 8(r1)
/* 80AB6E9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB6EA0  80 1F 0F 94 */	lwz r0, 0xf94(r31)
/* 80AB6EA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB6EA8  7F E3 FB 78 */	mr r3, r31
/* 80AB6EAC  38 81 00 08 */	addi r4, r1, 8
/* 80AB6EB0  48 00 05 2D */	bl setAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i
lbl_80AB6EB4:
/* 80AB6EB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB6EB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB6EBC  7C 08 03 A6 */	mtlr r0
/* 80AB6EC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB6EC4  4E 80 00 20 */	blr 
