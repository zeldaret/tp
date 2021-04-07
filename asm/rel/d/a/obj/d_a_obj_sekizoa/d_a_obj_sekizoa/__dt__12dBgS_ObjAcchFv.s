lbl_80CD53C0:
/* 80CD53C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD53C4  7C 08 02 A6 */	mflr r0
/* 80CD53C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD53CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD53D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD53D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD53D8  7C 9F 23 78 */	mr r31, r4
/* 80CD53DC  41 82 00 38 */	beq lbl_80CD5414
/* 80CD53E0  3C 80 80 CD */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CD6778@ha */
/* 80CD53E4  38 84 67 78 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CD6778@l */
/* 80CD53E8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CD53EC  38 04 00 0C */	addi r0, r4, 0xc
/* 80CD53F0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CD53F4  38 04 00 18 */	addi r0, r4, 0x18
/* 80CD53F8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CD53FC  38 80 00 00 */	li r4, 0
/* 80CD5400  4B 3A 0B 95 */	bl __dt__9dBgS_AcchFv
/* 80CD5404  7F E0 07 35 */	extsh. r0, r31
/* 80CD5408  40 81 00 0C */	ble lbl_80CD5414
/* 80CD540C  7F C3 F3 78 */	mr r3, r30
/* 80CD5410  4B 5F 99 2D */	bl __dl__FPv
lbl_80CD5414:
/* 80CD5414  7F C3 F3 78 */	mr r3, r30
/* 80CD5418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD541C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD5420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD5424  7C 08 03 A6 */	mtlr r0
/* 80CD5428  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD542C  4E 80 00 20 */	blr 
