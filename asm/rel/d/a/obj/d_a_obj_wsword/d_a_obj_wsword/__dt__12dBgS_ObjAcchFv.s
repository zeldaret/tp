lbl_80D3BD30:
/* 80D3BD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BD34  7C 08 02 A6 */	mflr r0
/* 80D3BD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BD40  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3BD44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3BD48  7C 9F 23 78 */	mr r31, r4
/* 80D3BD4C  41 82 00 38 */	beq lbl_80D3BD84
/* 80D3BD50  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D3BFDC@ha */
/* 80D3BD54  38 84 BF DC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D3BFDC@l */
/* 80D3BD58  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D3BD5C  38 04 00 0C */	addi r0, r4, 0xc
/* 80D3BD60  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D3BD64  38 04 00 18 */	addi r0, r4, 0x18
/* 80D3BD68  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D3BD6C  38 80 00 00 */	li r4, 0
/* 80D3BD70  4B 33 A2 25 */	bl __dt__9dBgS_AcchFv
/* 80D3BD74  7F E0 07 35 */	extsh. r0, r31
/* 80D3BD78  40 81 00 0C */	ble lbl_80D3BD84
/* 80D3BD7C  7F C3 F3 78 */	mr r3, r30
/* 80D3BD80  4B 59 2F BD */	bl __dl__FPv
lbl_80D3BD84:
/* 80D3BD84  7F C3 F3 78 */	mr r3, r30
/* 80D3BD88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BD8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3BD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BD94  7C 08 03 A6 */	mtlr r0
/* 80D3BD98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BD9C  4E 80 00 20 */	blr 
