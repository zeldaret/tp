lbl_8018FC64:
/* 8018FC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FC68  7C 08 02 A6 */	mflr r0
/* 8018FC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018FC74  7C 7F 1B 78 */	mr r31, r3
/* 8018FC78  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8018FC7C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8018FC80  40 82 00 2C */	bne lbl_8018FCAC
/* 8018FC84  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018FC88  68 00 00 01 */	xori r0, r0, 1
/* 8018FC8C  54 00 10 3A */	slwi r0, r0, 2
/* 8018FC90  7C 7F 02 14 */	add r3, r31, r0
/* 8018FC94  80 63 01 40 */	lwz r3, 0x140(r3)
/* 8018FC98  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018FC9C  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018FCA0  38 84 00 6B */	addi r4, r4, 0x6b
/* 8018FCA4  48 1D 8E 89 */	bl strcpy
/* 8018FCA8  48 00 00 40 */	b lbl_8018FCE8
lbl_8018FCAC:
/* 8018FCAC  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018FCB0  68 00 00 01 */	xori r0, r0, 1
/* 8018FCB4  54 00 10 3A */	slwi r0, r0, 2
/* 8018FCB8  7C 7F 02 14 */	add r3, r31, r0
/* 8018FCBC  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018FCC0  80 A3 00 04 */	lwz r5, 4(r3)
/* 8018FCC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8018FCC8  38 C0 00 00 */	li r6, 0
/* 8018FCCC  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 8018FCD0  39 00 00 00 */	li r8, 0
/* 8018FCD4  39 20 00 00 */	li r9, 0
/* 8018FCD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018FCDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8018FCE0  7D 89 03 A6 */	mtctr r12
/* 8018FCE4  4E 80 04 21 */	bctrl 
lbl_8018FCE8:
/* 8018FCE8  38 80 00 00 */	li r4, 0
/* 8018FCEC  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018FCF0  54 00 10 3A */	slwi r0, r0, 2
/* 8018FCF4  7C 7F 02 14 */	add r3, r31, r0
/* 8018FCF8  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018FCFC  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018FD00  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018FD04  68 00 00 01 */	xori r0, r0, 1
/* 8018FD08  54 00 10 3A */	slwi r0, r0, 2
/* 8018FD0C  7C 7F 02 14 */	add r3, r31, r0
/* 8018FD10  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018FD14  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018FD18  98 9F 01 49 */	stb r4, 0x149(r31)
/* 8018FD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018FD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FD24  7C 08 03 A6 */	mtlr r0
/* 8018FD28  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FD2C  4E 80 00 20 */	blr 
