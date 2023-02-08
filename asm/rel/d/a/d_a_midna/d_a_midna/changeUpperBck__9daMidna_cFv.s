lbl_804BC5C4:
/* 804BC5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC5C8  7C 08 02 A6 */	mflr r0
/* 804BC5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BC5D4  93 C1 00 08 */	stw r30, 8(r1)
/* 804BC5D8  7C 7E 1B 78 */	mr r30, r3
/* 804BC5DC  83 E3 05 98 */	lwz r31, 0x598(r3)
/* 804BC5E0  80 63 05 78 */	lwz r3, 0x578(r3)
/* 804BC5E4  80 83 00 08 */	lwz r4, 8(r3)
/* 804BC5E8  38 7E 05 84 */	addi r3, r30, 0x584
/* 804BC5EC  4B B5 13 A5 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 804BC5F0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BC5F4  93 E3 00 08 */	stw r31, 8(r3)
/* 804BC5F8  38 60 00 01 */	li r3, 1
/* 804BC5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BC600  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BC604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC608  7C 08 03 A6 */	mtlr r0
/* 804BC60C  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC610  4E 80 00 20 */	blr 
