lbl_80CE67E8:
/* 80CE67E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE67EC  7C 08 02 A6 */	mflr r0
/* 80CE67F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE67F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE67F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE67FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE6800  7C 9F 23 78 */	mr r31, r4
/* 80CE6804  41 82 00 38 */	beq lbl_80CE683C
/* 80CE6808  3C 60 80 CE */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CE6B4C@ha */
/* 80CE680C  38 03 6B 4C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CE6B4C@l */
/* 80CE6810  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CE6814  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CE6818  38 80 FF FF */	li r4, -1
/* 80CE681C  4B 58 86 FD */	bl __dt__8cM3dGCirFv
/* 80CE6820  7F C3 F3 78 */	mr r3, r30
/* 80CE6824  38 80 00 00 */	li r4, 0
/* 80CE6828  4B 58 18 89 */	bl __dt__13cBgS_PolyInfoFv
/* 80CE682C  7F E0 07 35 */	extsh. r0, r31
/* 80CE6830  40 81 00 0C */	ble lbl_80CE683C
/* 80CE6834  7F C3 F3 78 */	mr r3, r30
/* 80CE6838  4B 5E 85 05 */	bl __dl__FPv
lbl_80CE683C:
/* 80CE683C  7F C3 F3 78 */	mr r3, r30
/* 80CE6840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE6844  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE6848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE684C  7C 08 03 A6 */	mtlr r0
/* 80CE6850  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6854  4E 80 00 20 */	blr 
