lbl_80A9A18C:
/* 80A9A18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A190  7C 08 02 A6 */	mflr r0
/* 80A9A194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9A19C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9A1A0  7C 7E 1B 78 */	mr r30, r3
/* 80A9A1A4  3B E0 00 00 */	li r31, 0
/* 80A9A1A8  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9A1AC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A9A1B0  41 82 00 B8 */	beq lbl_80A9A268
/* 80A9A1B4  40 80 00 10 */	bge lbl_80A9A1C4
/* 80A9A1B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9A1BC  40 80 00 14 */	bge lbl_80A9A1D0
/* 80A9A1C0  48 00 00 AC */	b lbl_80A9A26C
lbl_80A9A1C4:
/* 80A9A1C4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9A1C8  41 82 00 A4 */	beq lbl_80A9A26C
/* 80A9A1CC  48 00 00 A0 */	b lbl_80A9A26C
lbl_80A9A1D0:
/* 80A9A1D0  38 9E 0F 88 */	addi r4, r30, 0xf88
/* 80A9A1D4  4B FF F7 D1 */	bl _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyz
/* 80A9A1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A1DC  41 82 00 90 */	beq lbl_80A9A26C
/* 80A9A1E0  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80A9A1E4  38 1E 0F 94 */	addi r0, r30, 0xf94
/* 80A9A1E8  7C 63 00 50 */	subf r3, r3, r0
/* 80A9A1EC  30 03 FF FF */	addic r0, r3, -1
/* 80A9A1F0  7C 00 19 10 */	subfe r0, r0, r3
/* 80A9A1F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A9A1F8  40 82 00 10 */	bne lbl_80A9A208
/* 80A9A1FC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A9A200  2C 00 00 03 */	cmpwi r0, 3
/* 80A9A204  41 82 00 34 */	beq lbl_80A9A238
lbl_80A9A208:
/* 80A9A208  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9A20C  4B 6A B4 F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A9A210  38 00 00 00 */	li r0, 0
/* 80A9A214  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A9A218  3C 60 80 AA */	lis r3, lit_4346@ha /* 0x80A9B930@ha */
/* 80A9A21C  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)  /* 0x80A9B930@l */
/* 80A9A220  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A9A224  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A9A228  38 00 00 03 */	li r0, 3
/* 80A9A22C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80A9A230  38 00 00 01 */	li r0, 1
/* 80A9A234  48 00 00 08 */	b lbl_80A9A23C
lbl_80A9A238:
/* 80A9A238  38 00 00 00 */	li r0, 0
lbl_80A9A23C:
/* 80A9A23C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9A240  41 82 00 0C */	beq lbl_80A9A24C
/* 80A9A244  38 1E 0F 94 */	addi r0, r30, 0xf94
/* 80A9A248  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80A9A24C:
/* 80A9A24C  38 00 00 00 */	li r0, 0
/* 80A9A250  B0 1E 0C D4 */	sth r0, 0xcd4(r30)
/* 80A9A254  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
/* 80A9A258  38 00 00 01 */	li r0, 1
/* 80A9A25C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A9A260  3B E0 00 01 */	li r31, 1
/* 80A9A264  48 00 00 08 */	b lbl_80A9A26C
lbl_80A9A268:
/* 80A9A268  3B E0 00 01 */	li r31, 1
lbl_80A9A26C:
/* 80A9A26C  7F E3 FB 78 */	mr r3, r31
/* 80A9A270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9A274  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9A278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A27C  7C 08 03 A6 */	mtlr r0
/* 80A9A280  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A284  4E 80 00 20 */	blr 
