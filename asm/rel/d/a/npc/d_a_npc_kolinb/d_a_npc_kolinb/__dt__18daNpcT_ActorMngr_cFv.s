lbl_80A4813C:
/* 80A4813C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A48140  7C 08 02 A6 */	mflr r0
/* 80A48144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A48148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4814C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A48150  41 82 00 1C */	beq lbl_80A4816C
/* 80A48154  3C A0 80 A5 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A48D74@ha */
/* 80A48158  38 05 8D 74 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A48D74@l */
/* 80A4815C  90 1F 00 04 */	stw r0, 4(r31)
/* 80A48160  7C 80 07 35 */	extsh. r0, r4
/* 80A48164  40 81 00 08 */	ble lbl_80A4816C
/* 80A48168  4B 88 6B D5 */	bl __dl__FPv
lbl_80A4816C:
/* 80A4816C  7F E3 FB 78 */	mr r3, r31
/* 80A48170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A48174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A48178  7C 08 03 A6 */	mtlr r0
/* 80A4817C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48180  4E 80 00 20 */	blr 
