lbl_809BDDAC:
/* 809BDDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDDB0  7C 08 02 A6 */	mflr r0
/* 809BDDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 809BDDC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BDDC4  7C 9F 23 78 */	mr r31, r4
/* 809BDDC8  41 82 00 38 */	beq lbl_809BDE00
/* 809BDDCC  3C 80 80 9C */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809BE6EC@ha */
/* 809BDDD0  38 84 E6 EC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809BE6EC@l */
/* 809BDDD4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809BDDD8  38 04 00 0C */	addi r0, r4, 0xc
/* 809BDDDC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809BDDE0  38 04 00 18 */	addi r0, r4, 0x18
/* 809BDDE4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809BDDE8  38 80 00 00 */	li r4, 0
/* 809BDDEC  4B 6B 81 A9 */	bl __dt__9dBgS_AcchFv
/* 809BDDF0  7F E0 07 35 */	extsh. r0, r31
/* 809BDDF4  40 81 00 0C */	ble lbl_809BDE00
/* 809BDDF8  7F C3 F3 78 */	mr r3, r30
/* 809BDDFC  4B 91 0F 41 */	bl __dl__FPv
lbl_809BDE00:
/* 809BDE00  7F C3 F3 78 */	mr r3, r30
/* 809BDE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BDE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDE10  7C 08 03 A6 */	mtlr r0
/* 809BDE14  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDE18  4E 80 00 20 */	blr 
