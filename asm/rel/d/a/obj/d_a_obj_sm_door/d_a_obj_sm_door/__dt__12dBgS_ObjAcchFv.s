lbl_80CD902C:
/* 80CD902C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9030  7C 08 02 A6 */	mflr r0
/* 80CD9034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD903C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD9040  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD9044  7C 9F 23 78 */	mr r31, r4
/* 80CD9048  41 82 00 38 */	beq lbl_80CD9080
/* 80CD904C  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CD96E0@ha */
/* 80CD9050  38 84 96 E0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CD96E0@l */
/* 80CD9054  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CD9058  38 04 00 0C */	addi r0, r4, 0xc
/* 80CD905C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CD9060  38 04 00 18 */	addi r0, r4, 0x18
/* 80CD9064  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CD9068  38 80 00 00 */	li r4, 0
/* 80CD906C  4B 39 CF 29 */	bl __dt__9dBgS_AcchFv
/* 80CD9070  7F E0 07 35 */	extsh. r0, r31
/* 80CD9074  40 81 00 0C */	ble lbl_80CD9080
/* 80CD9078  7F C3 F3 78 */	mr r3, r30
/* 80CD907C  4B 5F 5C C1 */	bl __dl__FPv
lbl_80CD9080:
/* 80CD9080  7F C3 F3 78 */	mr r3, r30
/* 80CD9084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD9088  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD908C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9090  7C 08 03 A6 */	mtlr r0
/* 80CD9094  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9098  4E 80 00 20 */	blr 
