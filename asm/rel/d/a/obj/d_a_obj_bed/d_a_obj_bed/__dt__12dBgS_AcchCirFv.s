lbl_80BADA90:
/* 80BADA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADA94  7C 08 02 A6 */	mflr r0
/* 80BADA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADA9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADAA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BADAA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BADAA8  7C 9F 23 78 */	mr r31, r4
/* 80BADAAC  41 82 00 38 */	beq lbl_80BADAE4
/* 80BADAB0  3C 60 80 BB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BAE210@ha */
/* 80BADAB4  38 03 E2 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BAE210@l */
/* 80BADAB8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BADABC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BADAC0  38 80 FF FF */	li r4, -1
/* 80BADAC4  4B 6C 14 55 */	bl __dt__8cM3dGCirFv
/* 80BADAC8  7F C3 F3 78 */	mr r3, r30
/* 80BADACC  38 80 00 00 */	li r4, 0
/* 80BADAD0  4B 6B A5 E1 */	bl __dt__13cBgS_PolyInfoFv
/* 80BADAD4  7F E0 07 35 */	extsh. r0, r31
/* 80BADAD8  40 81 00 0C */	ble lbl_80BADAE4
/* 80BADADC  7F C3 F3 78 */	mr r3, r30
/* 80BADAE0  4B 72 12 5D */	bl __dl__FPv
lbl_80BADAE4:
/* 80BADAE4  7F C3 F3 78 */	mr r3, r30
/* 80BADAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADAEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BADAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADAF4  7C 08 03 A6 */	mtlr r0
/* 80BADAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADAFC  4E 80 00 20 */	blr 
