lbl_8084A694:
/* 8084A694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084A698  7C 08 02 A6 */	mflr r0
/* 8084A69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084A6A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084A6A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8084A6A8  41 82 00 1C */	beq lbl_8084A6C4
/* 8084A6AC  3C A0 80 85 */	lis r5, __vt__8cM3dGPla@ha
/* 8084A6B0  38 05 4F 48 */	addi r0, r5, __vt__8cM3dGPla@l
/* 8084A6B4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8084A6B8  7C 80 07 35 */	extsh. r0, r4
/* 8084A6BC  40 81 00 08 */	ble lbl_8084A6C4
/* 8084A6C0  4B A8 46 7C */	b __dl__FPv
lbl_8084A6C4:
/* 8084A6C4  7F E3 FB 78 */	mr r3, r31
/* 8084A6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084A6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084A6D0  7C 08 03 A6 */	mtlr r0
/* 8084A6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8084A6D8  4E 80 00 20 */	blr 
