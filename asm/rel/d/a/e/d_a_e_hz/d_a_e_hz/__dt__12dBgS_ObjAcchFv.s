lbl_806F01E8:
/* 806F01E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F01EC  7C 08 02 A6 */	mflr r0
/* 806F01F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F01F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F01F8  93 C1 00 08 */	stw r30, 8(r1)
/* 806F01FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F0200  7C 9F 23 78 */	mr r31, r4
/* 806F0204  41 82 00 38 */	beq lbl_806F023C
/* 806F0208  3C 80 80 6F */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806F020C  38 84 0A F4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806F0210  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806F0214  38 04 00 0C */	addi r0, r4, 0xc
/* 806F0218  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806F021C  38 04 00 18 */	addi r0, r4, 0x18
/* 806F0220  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806F0224  38 80 00 00 */	li r4, 0
/* 806F0228  4B 98 5D 6C */	b __dt__9dBgS_AcchFv
/* 806F022C  7F E0 07 35 */	extsh. r0, r31
/* 806F0230  40 81 00 0C */	ble lbl_806F023C
/* 806F0234  7F C3 F3 78 */	mr r3, r30
/* 806F0238  4B BD EB 04 */	b __dl__FPv
lbl_806F023C:
/* 806F023C  7F C3 F3 78 */	mr r3, r30
/* 806F0240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F0244  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F0248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F024C  7C 08 03 A6 */	mtlr r0
/* 806F0250  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0254  4E 80 00 20 */	blr 
