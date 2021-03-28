lbl_803580B4:
/* 803580B4  7C 08 02 A6 */	mflr r0
/* 803580B8  90 01 00 04 */	stw r0, 4(r1)
/* 803580BC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803580C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803580C4  7C 7F 1B 78 */	mr r31, r3
/* 803580C8  38 81 00 0C */	addi r4, r1, 0xc
/* 803580CC  80 63 00 00 */	lwz r3, 0(r3)
/* 803580D0  4B FF BA E5 */	bl __CARDGetControlBlock
/* 803580D4  2C 03 00 00 */	cmpwi r3, 0
/* 803580D8  40 80 00 08 */	bge lbl_803580E0
/* 803580DC  48 00 00 18 */	b lbl_803580F4
lbl_803580E0:
/* 803580E0  38 00 FF FF */	li r0, -1
/* 803580E4  90 1F 00 00 */	stw r0, 0(r31)
/* 803580E8  38 80 00 00 */	li r4, 0
/* 803580EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803580F0  4B FF BB 7D */	bl __CARDPutControlBlock
lbl_803580F4:
/* 803580F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803580F8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803580FC  38 21 00 18 */	addi r1, r1, 0x18
/* 80358100  7C 08 03 A6 */	mtlr r0
/* 80358104  4E 80 00 20 */	blr 
