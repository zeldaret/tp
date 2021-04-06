lbl_8065EAF4:
/* 8065EAF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065EAF8  7C 08 02 A6 */	mflr r0
/* 8065EAFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065EB00  39 61 00 20 */	addi r11, r1, 0x20
/* 8065EB04  4B D0 36 D5 */	bl _savegpr_28
/* 8065EB08  7C 7C 1B 78 */	mr r28, r3
/* 8065EB0C  7C 9D 23 79 */	or. r29, r4, r4
/* 8065EB10  3C 80 80 66 */	lis r4, lit_3987@ha /* 0x80662DB0@ha */
/* 8065EB14  3B C4 2D B0 */	addi r30, r4, lit_3987@l /* 0x80662DB0@l */
/* 8065EB18  41 82 00 1C */	beq lbl_8065EB34
/* 8065EB1C  38 80 00 0B */	li r4, 0xb
/* 8065EB20  38 A0 00 00 */	li r5, 0
/* 8065EB24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8065EB28  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8065EB2C  4B FF 9C 05 */	bl setBck__7daCow_cFiUcff
/* 8065EB30  48 00 00 18 */	b lbl_8065EB48
lbl_8065EB34:
/* 8065EB34  38 80 00 0A */	li r4, 0xa
/* 8065EB38  38 A0 00 00 */	li r5, 0
/* 8065EB3C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8065EB40  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8065EB44  4B FF 9B ED */	bl setBck__7daCow_cFiUcff
lbl_8065EB48:
/* 8065EB48  9B BC 0C 61 */	stb r29, 0xc61(r28)
/* 8065EB4C  3B E0 00 00 */	li r31, 0
/* 8065EB50  9B FC 0C 60 */	stb r31, 0xc60(r28)
/* 8065EB54  38 00 00 01 */	li r0, 1
/* 8065EB58  98 1C 0C 62 */	stb r0, 0xc62(r28)
/* 8065EB5C  38 00 00 04 */	li r0, 4
/* 8065EB60  98 1C 0C 9F */	stb r0, 0xc9f(r28)
/* 8065EB64  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065EB68  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 8065EB6C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8065EB70  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8065EB74  3B A0 00 00 */	li r29, 0
lbl_8065EB78:
/* 8065EB78  38 7F 08 8C */	addi r3, r31, 0x88c
/* 8065EB7C  7C 1C 18 2E */	lwzx r0, r28, r3
/* 8065EB80  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065EB84  7C 1C 19 2E */	stwx r0, r28, r3
/* 8065EB88  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 8065EB8C  4B C0 4D D1 */	bl ClrCcMove__9cCcD_SttsFv
/* 8065EB90  3B BD 00 01 */	addi r29, r29, 1
/* 8065EB94  2C 1D 00 03 */	cmpwi r29, 3
/* 8065EB98  3B FF 01 38 */	addi r31, r31, 0x138
/* 8065EB9C  41 80 FF DC */	blt lbl_8065EB78
/* 8065EBA0  7F 83 E3 78 */	mr r3, r28
/* 8065EBA4  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 8065EBA8  38 80 00 00 */	li r4, 0
/* 8065EBAC  4B FF F0 5D */	bl calcCatchPos__7daCow_cFfi
/* 8065EBB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8065EBB4  D0 1C 0C 20 */	stfs f0, 0xc20(r28)
/* 8065EBB8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8065EBBC  D0 1C 0C 24 */	stfs f0, 0xc24(r28)
/* 8065EBC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8065EBC4  D0 1C 0C 28 */	stfs f0, 0xc28(r28)
/* 8065EBC8  38 00 00 01 */	li r0, 1
/* 8065EBCC  98 1C 0C 63 */	stb r0, 0xc63(r28)
/* 8065EBD0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065EBD4  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 8065EBD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8065EBDC  4B D0 36 49 */	bl _restgpr_28
/* 8065EBE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065EBE4  7C 08 03 A6 */	mtlr r0
/* 8065EBE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8065EBEC  4E 80 00 20 */	blr 
