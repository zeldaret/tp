lbl_800B7B7C:
/* 800B7B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7B80  7C 08 02 A6 */	mflr r0
/* 800B7B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7B8C  7C 7F 1B 78 */	mr r31, r3
/* 800B7B90  80 83 27 F4 */	lwz r4, 0x27f4(r3)
/* 800B7B94  88 04 05 6D */	lbz r0, 0x56d(r4)
/* 800B7B98  98 03 2F AD */	stb r0, 0x2fad(r3)
/* 800B7B9C  38 00 00 14 */	li r0, 0x14
/* 800B7BA0  B0 03 2F F2 */	sth r0, 0x2ff2(r3)
/* 800B7BA4  80 83 27 F4 */	lwz r4, 0x27f4(r3)
/* 800B7BA8  3C A0 80 3B */	lis r5, l_peepEventName@ha
/* 800B7BAC  38 A5 F9 9C */	addi r5, r5, l_peepEventName@l
/* 800B7BB0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B7BB4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B7BB8  38 E0 00 01 */	li r7, 1
/* 800B7BBC  39 00 00 00 */	li r8, 0
/* 800B7BC0  4B F6 39 21 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs
/* 800B7BC4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B7BC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B7BCC  41 82 00 10 */	beq lbl_800B7BDC
/* 800B7BD0  7F E3 FB 78 */	mr r3, r31
/* 800B7BD4  48 07 55 D5 */	bl procWolfWaitInit__9daAlink_cFv
/* 800B7BD8  48 00 00 0C */	b lbl_800B7BE4
lbl_800B7BDC:
/* 800B7BDC  7F E3 FB 78 */	mr r3, r31
/* 800B7BE0  48 00 B7 D9 */	bl procWaitInit__9daAlink_cFv
lbl_800B7BE4:
/* 800B7BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7BEC  7C 08 03 A6 */	mtlr r0
/* 800B7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7BF4  4E 80 00 20 */	blr 
