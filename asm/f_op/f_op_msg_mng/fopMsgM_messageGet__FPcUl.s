lbl_800200C0:
/* 800200C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800200C4  7C 08 02 A6 */	mflr r0
/* 800200C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800200CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800200D0  7C 7F 1B 78 */	mr r31, r3
/* 800200D4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 800200D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 800200DC  7F E5 FB 78 */	mr r5, r31
/* 800200E0  38 C0 00 00 */	li r6, 0
/* 800200E4  48 1F C1 6D */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 800200E8  7F E3 FB 78 */	mr r3, r31
/* 800200EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800200F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800200F4  7C 08 03 A6 */	mtlr r0
/* 800200F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800200FC  4E 80 00 20 */	blr 
