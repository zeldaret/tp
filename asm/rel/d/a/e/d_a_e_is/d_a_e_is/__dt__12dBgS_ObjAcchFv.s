lbl_806F799C:
/* 806F799C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F79A0  7C 08 02 A6 */	mflr r0
/* 806F79A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F79A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F79AC  93 C1 00 08 */	stw r30, 8(r1)
/* 806F79B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F79B4  7C 9F 23 78 */	mr r31, r4
/* 806F79B8  41 82 00 38 */	beq lbl_806F79F0
/* 806F79BC  3C 80 80 6F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x806F7D98@ha */
/* 806F79C0  38 84 7D 98 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x806F7D98@l */
/* 806F79C4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806F79C8  38 04 00 0C */	addi r0, r4, 0xc
/* 806F79CC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806F79D0  38 04 00 18 */	addi r0, r4, 0x18
/* 806F79D4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806F79D8  38 80 00 00 */	li r4, 0
/* 806F79DC  4B 97 E5 B9 */	bl __dt__9dBgS_AcchFv
/* 806F79E0  7F E0 07 35 */	extsh. r0, r31
/* 806F79E4  40 81 00 0C */	ble lbl_806F79F0
/* 806F79E8  7F C3 F3 78 */	mr r3, r30
/* 806F79EC  4B BD 73 51 */	bl __dl__FPv
lbl_806F79F0:
/* 806F79F0  7F C3 F3 78 */	mr r3, r30
/* 806F79F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F79F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F79FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7A00  7C 08 03 A6 */	mtlr r0
/* 806F7A04  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7A08  4E 80 00 20 */	blr 
