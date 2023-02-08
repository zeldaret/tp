lbl_802327BC:
/* 802327BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802327C0  7C 08 02 A6 */	mflr r0
/* 802327C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802327C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802327CC  7C 7F 1B 78 */	mr r31, r3
/* 802327D0  38 7F 04 86 */	addi r3, r31, 0x486
/* 802327D4  48 13 63 59 */	bl strcpy
/* 802327D8  7F E3 FB 78 */	mr r3, r31
/* 802327DC  38 9F 04 86 */	addi r4, r31, 0x486
/* 802327E0  48 07 54 19 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802327E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802327E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802327EC  7C 08 03 A6 */	mtlr r0
/* 802327F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802327F4  4E 80 00 20 */	blr 
