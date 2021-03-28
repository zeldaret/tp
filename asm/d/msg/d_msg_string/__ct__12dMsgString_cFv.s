lbl_80249C20:
/* 80249C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249C24  7C 08 02 A6 */	mflr r0
/* 80249C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249C30  7C 7F 1B 78 */	mr r31, r3
/* 80249C34  4B FF F7 81 */	bl __ct__16dMsgStringBase_cFv
/* 80249C38  3C 60 80 3C */	lis r3, __vt__12dMsgString_c@ha
/* 80249C3C  38 03 14 98 */	addi r0, r3, __vt__12dMsgString_c@l
/* 80249C40  90 1F 00 00 */	stw r0, 0(r31)
/* 80249C44  38 00 00 00 */	li r0, 0
/* 80249C48  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80249C4C  38 60 02 44 */	li r3, 0x244
/* 80249C50  48 08 4F FD */	bl __nw__FUl
/* 80249C54  7C 60 1B 79 */	or. r0, r3, r3
/* 80249C58  41 82 00 10 */	beq lbl_80249C68
/* 80249C5C  88 9F 00 28 */	lbz r4, 0x28(r31)
/* 80249C60  4B FD C0 35 */	bl __ct__10COutFont_cFUc
/* 80249C64  7C 60 1B 78 */	mr r0, r3
lbl_80249C68:
/* 80249C68  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80249C6C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80249C70  81 83 00 00 */	lwz r12, 0(r3)
/* 80249C74  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80249C78  7D 89 03 A6 */	mtctr r12
/* 80249C7C  4E 80 04 21 */	bctrl 
/* 80249C80  7F E3 FB 78 */	mr r3, r31
/* 80249C84  4B FF FA 7D */	bl getResource__16dMsgStringBase_cFv
/* 80249C88  7F E3 FB 78 */	mr r3, r31
/* 80249C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249C94  7C 08 03 A6 */	mtlr r0
/* 80249C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80249C9C  4E 80 00 20 */	blr 
