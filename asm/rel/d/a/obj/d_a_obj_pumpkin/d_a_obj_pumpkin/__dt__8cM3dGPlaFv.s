lbl_80CB77DC:
/* 80CB77DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB77E0  7C 08 02 A6 */	mflr r0
/* 80CB77E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB77E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB77EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB77F0  41 82 00 1C */	beq lbl_80CB780C
/* 80CB77F4  3C A0 80 CC */	lis r5, __vt__8cM3dGPla@ha /* 0x80CB8538@ha */
/* 80CB77F8  38 05 85 38 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80CB8538@l */
/* 80CB77FC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CB7800  7C 80 07 35 */	extsh. r0, r4
/* 80CB7804  40 81 00 08 */	ble lbl_80CB780C
/* 80CB7808  4B 61 75 35 */	bl __dl__FPv
lbl_80CB780C:
/* 80CB780C  7F E3 FB 78 */	mr r3, r31
/* 80CB7810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB7814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB7818  7C 08 03 A6 */	mtlr r0
/* 80CB781C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB7820  4E 80 00 20 */	blr 
