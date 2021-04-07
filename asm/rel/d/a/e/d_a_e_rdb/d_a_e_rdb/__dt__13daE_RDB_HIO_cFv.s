lbl_8076AF64:
/* 8076AF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AF68  7C 08 02 A6 */	mflr r0
/* 8076AF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AF74  7C 7F 1B 79 */	or. r31, r3, r3
/* 8076AF78  41 82 00 1C */	beq lbl_8076AF94
/* 8076AF7C  3C A0 80 77 */	lis r5, __vt__13daE_RDB_HIO_c@ha /* 0x8076B9B0@ha */
/* 8076AF80  38 05 B9 B0 */	addi r0, r5, __vt__13daE_RDB_HIO_c@l /* 0x8076B9B0@l */
/* 8076AF84  90 1F 00 00 */	stw r0, 0(r31)
/* 8076AF88  7C 80 07 35 */	extsh. r0, r4
/* 8076AF8C  40 81 00 08 */	ble lbl_8076AF94
/* 8076AF90  4B B6 3D AD */	bl __dl__FPv
lbl_8076AF94:
/* 8076AF94  7F E3 FB 78 */	mr r3, r31
/* 8076AF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AFA0  7C 08 03 A6 */	mtlr r0
/* 8076AFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AFA8  4E 80 00 20 */	blr 
