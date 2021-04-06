lbl_80AB8154:
/* 80AB8154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8158  7C 08 02 A6 */	mflr r0
/* 80AB815C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8164  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8168  41 82 00 1C */	beq lbl_80AB8184
/* 80AB816C  3C A0 80 AC */	lis r5, __vt__8cM3dGAab@ha /* 0x80AB9430@ha */
/* 80AB8170  38 05 94 30 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AB9430@l */
/* 80AB8174  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AB8178  7C 80 07 35 */	extsh. r0, r4
/* 80AB817C  40 81 00 08 */	ble lbl_80AB8184
/* 80AB8180  4B 81 6B BD */	bl __dl__FPv
lbl_80AB8184:
/* 80AB8184  7F E3 FB 78 */	mr r3, r31
/* 80AB8188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB818C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8190  7C 08 03 A6 */	mtlr r0
/* 80AB8194  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8198  4E 80 00 20 */	blr 
