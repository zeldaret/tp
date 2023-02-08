lbl_80C91B58:
/* 80C91B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C91B5C  7C 08 02 A6 */	mflr r0
/* 80C91B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C91B64  39 61 00 20 */	addi r11, r1, 0x20
/* 80C91B68  4B 6D 06 6D */	bl _savegpr_27
/* 80C91B6C  7C 7B 1B 78 */	mr r27, r3
/* 80C91B70  7C 9C 23 78 */	mr r28, r4
/* 80C91B74  7C BD 2B 78 */	mr r29, r5
/* 80C91B78  1F FD 01 C0 */	mulli r31, r29, 0x1c0
/* 80C91B7C  3B DF 07 10 */	addi r30, r31, 0x710
/* 80C91B80  7F DB F2 14 */	add r30, r27, r30
/* 80C91B84  7F C3 F3 78 */	mr r3, r30
/* 80C91B88  4B 6D 04 91 */	bl __ptmf_test
/* 80C91B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80C91B90  41 82 00 24 */	beq lbl_80C91BB4
/* 80C91B94  38 00 FF FF */	li r0, -1
/* 80C91B98  7C 7B FA 14 */	add r3, r27, r31
/* 80C91B9C  90 03 07 28 */	stw r0, 0x728(r3)
/* 80C91BA0  7F 63 DB 78 */	mr r3, r27
/* 80C91BA4  7F A4 EB 78 */	mr r4, r29
/* 80C91BA8  7F CC F3 78 */	mr r12, r30
/* 80C91BAC  4B 6D 04 D9 */	bl __ptmf_scall
/* 80C91BB0  60 00 00 00 */	nop 
lbl_80C91BB4:
/* 80C91BB4  7C 9B FA 14 */	add r4, r27, r31
/* 80C91BB8  80 64 07 10 */	lwz r3, 0x710(r4)
/* 80C91BBC  80 04 07 14 */	lwz r0, 0x714(r4)
/* 80C91BC0  90 64 07 1C */	stw r3, 0x71c(r4)
/* 80C91BC4  90 04 07 20 */	stw r0, 0x720(r4)
/* 80C91BC8  80 04 07 18 */	lwz r0, 0x718(r4)
/* 80C91BCC  90 04 07 24 */	stw r0, 0x724(r4)
/* 80C91BD0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80C91BD4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80C91BD8  90 64 07 10 */	stw r3, 0x710(r4)
/* 80C91BDC  90 04 07 14 */	stw r0, 0x714(r4)
/* 80C91BE0  80 1C 00 08 */	lwz r0, 8(r28)
/* 80C91BE4  90 04 07 18 */	stw r0, 0x718(r4)
/* 80C91BE8  38 00 00 00 */	li r0, 0
/* 80C91BEC  90 04 07 28 */	stw r0, 0x728(r4)
/* 80C91BF0  7F 63 DB 78 */	mr r3, r27
/* 80C91BF4  7F A4 EB 78 */	mr r4, r29
/* 80C91BF8  7F CC F3 78 */	mr r12, r30
/* 80C91BFC  4B 6D 04 89 */	bl __ptmf_scall
/* 80C91C00  60 00 00 00 */	nop 
/* 80C91C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80C91C08  4B 6D 06 19 */	bl _restgpr_27
/* 80C91C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C91C10  7C 08 03 A6 */	mtlr r0
/* 80C91C14  38 21 00 20 */	addi r1, r1, 0x20
/* 80C91C18  4E 80 00 20 */	blr 
