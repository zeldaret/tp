lbl_8080BB34:
/* 8080BB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8080BB38  7C 08 02 A6 */	mflr r0
/* 8080BB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080BB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8080BB44  7C 7F 1B 79 */	or. r31, r3, r3
/* 8080BB48  41 82 00 1C */	beq lbl_8080BB64
/* 8080BB4C  3C A0 80 81 */	lis r5, __vt__8cM3dGPla@ha /* 0x80815D04@ha */
/* 8080BB50  38 05 5D 04 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80815D04@l */
/* 8080BB54  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8080BB58  7C 80 07 35 */	extsh. r0, r4
/* 8080BB5C  40 81 00 08 */	ble lbl_8080BB64
/* 8080BB60  4B AC 31 DD */	bl __dl__FPv
lbl_8080BB64:
/* 8080BB64  7F E3 FB 78 */	mr r3, r31
/* 8080BB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8080BB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8080BB70  7C 08 03 A6 */	mtlr r0
/* 8080BB74  38 21 00 10 */	addi r1, r1, 0x10
/* 8080BB78  4E 80 00 20 */	blr 
