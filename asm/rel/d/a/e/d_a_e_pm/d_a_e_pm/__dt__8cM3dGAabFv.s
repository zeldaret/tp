lbl_8074B87C:
/* 8074B87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074B880  7C 08 02 A6 */	mflr r0
/* 8074B884  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074B888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074B88C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8074B890  41 82 00 1C */	beq lbl_8074B8AC
/* 8074B894  3C A0 80 75 */	lis r5, __vt__8cM3dGAab@ha /* 0x8074C2BC@ha */
/* 8074B898  38 05 C2 BC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8074C2BC@l */
/* 8074B89C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8074B8A0  7C 80 07 35 */	extsh. r0, r4
/* 8074B8A4  40 81 00 08 */	ble lbl_8074B8AC
/* 8074B8A8  4B B8 34 95 */	bl __dl__FPv
lbl_8074B8AC:
/* 8074B8AC  7F E3 FB 78 */	mr r3, r31
/* 8074B8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074B8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074B8B8  7C 08 03 A6 */	mtlr r0
/* 8074B8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8074B8C0  4E 80 00 20 */	blr 
