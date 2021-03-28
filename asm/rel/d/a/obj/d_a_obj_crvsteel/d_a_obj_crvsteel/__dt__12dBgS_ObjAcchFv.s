lbl_80BD6030:
/* 80BD6030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6034  7C 08 02 A6 */	mflr r0
/* 80BD6038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD603C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6040  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD6044  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BD6048  7C 9F 23 78 */	mr r31, r4
/* 80BD604C  41 82 00 38 */	beq lbl_80BD6084
/* 80BD6050  3C 80 80 BD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BD6054  38 84 62 C0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BD6058  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BD605C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BD6060  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BD6064  38 04 00 18 */	addi r0, r4, 0x18
/* 80BD6068  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BD606C  38 80 00 00 */	li r4, 0
/* 80BD6070  4B 49 FF 24 */	b __dt__9dBgS_AcchFv
/* 80BD6074  7F E0 07 35 */	extsh. r0, r31
/* 80BD6078  40 81 00 0C */	ble lbl_80BD6084
/* 80BD607C  7F C3 F3 78 */	mr r3, r30
/* 80BD6080  4B 6F 8C BC */	b __dl__FPv
lbl_80BD6084:
/* 80BD6084  7F C3 F3 78 */	mr r3, r30
/* 80BD6088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD608C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD6090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6094  7C 08 03 A6 */	mtlr r0
/* 80BD6098  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD609C  4E 80 00 20 */	blr 
