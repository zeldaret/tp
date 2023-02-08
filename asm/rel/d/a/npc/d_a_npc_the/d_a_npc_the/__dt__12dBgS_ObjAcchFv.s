lbl_80AFBC34:
/* 80AFBC34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFBC38  7C 08 02 A6 */	mflr r0
/* 80AFBC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFBC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFBC44  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFBC48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFBC4C  7C 9F 23 78 */	mr r31, r4
/* 80AFBC50  41 82 00 38 */	beq lbl_80AFBC88
/* 80AFBC54  3C 80 80 B0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AFC5E4@ha */
/* 80AFBC58  38 84 C5 E4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AFC5E4@l */
/* 80AFBC5C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AFBC60  38 04 00 0C */	addi r0, r4, 0xc
/* 80AFBC64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AFBC68  38 04 00 18 */	addi r0, r4, 0x18
/* 80AFBC6C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AFBC70  38 80 00 00 */	li r4, 0
/* 80AFBC74  4B 57 A3 21 */	bl __dt__9dBgS_AcchFv
/* 80AFBC78  7F E0 07 35 */	extsh. r0, r31
/* 80AFBC7C  40 81 00 0C */	ble lbl_80AFBC88
/* 80AFBC80  7F C3 F3 78 */	mr r3, r30
/* 80AFBC84  4B 7D 30 B9 */	bl __dl__FPv
lbl_80AFBC88:
/* 80AFBC88  7F C3 F3 78 */	mr r3, r30
/* 80AFBC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFBC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFBC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFBC98  7C 08 03 A6 */	mtlr r0
/* 80AFBC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFBCA0  4E 80 00 20 */	blr 
