lbl_804EE270:
/* 804EE270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE274  7C 08 02 A6 */	mflr r0
/* 804EE278  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE280  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE284  7C 7E 1B 79 */	or. r30, r3, r3
/* 804EE288  7C 9F 23 78 */	mr r31, r4
/* 804EE28C  41 82 00 38 */	beq lbl_804EE2C4
/* 804EE290  3C 80 80 4F */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804EE294  38 84 EE 84 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804EE298  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804EE29C  38 04 00 0C */	addi r0, r4, 0xc
/* 804EE2A0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804EE2A4  38 04 00 18 */	addi r0, r4, 0x18
/* 804EE2A8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804EE2AC  38 80 00 00 */	li r4, 0
/* 804EE2B0  4B B8 7C E4 */	b __dt__9dBgS_AcchFv
/* 804EE2B4  7F E0 07 35 */	extsh. r0, r31
/* 804EE2B8  40 81 00 0C */	ble lbl_804EE2C4
/* 804EE2BC  7F C3 F3 78 */	mr r3, r30
/* 804EE2C0  4B DE 0A 7C */	b __dl__FPv
lbl_804EE2C4:
/* 804EE2C4  7F C3 F3 78 */	mr r3, r30
/* 804EE2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE2CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE2D4  7C 08 03 A6 */	mtlr r0
/* 804EE2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE2DC  4E 80 00 20 */	blr 
