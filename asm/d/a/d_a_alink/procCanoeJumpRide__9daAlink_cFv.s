lbl_800F4D84:
/* 800F4D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F4D88  7C 08 02 A6 */	mflr r0
/* 800F4D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F4D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F4D94  7C 7F 1B 78 */	mr r31, r3
/* 800F4D98  80 83 28 18 */	lwz r4, 0x2818(r3)
/* 800F4D9C  28 04 00 00 */	cmplwi r4, 0
/* 800F4DA0  40 82 00 10 */	bne lbl_800F4DB0
/* 800F4DA4  38 80 00 00 */	li r4, 0
/* 800F4DA8  4B FC 53 29 */	bl checkNextAction__9daAlink_cFi
/* 800F4DAC  48 00 00 38 */	b lbl_800F4DE4
lbl_800F4DB0:
/* 800F4DB0  80 64 05 70 */	lwz r3, 0x570(r4)
/* 800F4DB4  38 63 00 24 */	addi r3, r3, 0x24
/* 800F4DB8  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800F4DBC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800F4DC0  48 25 1F AD */	bl PSMTXMultVec
/* 800F4DC4  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800F4DC8  48 06 97 05 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F4DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F4DD0  41 82 00 10 */	beq lbl_800F4DE0
/* 800F4DD4  7F E3 FB 78 */	mr r3, r31
/* 800F4DD8  38 80 00 01 */	li r4, 1
/* 800F4DDC  48 00 04 09 */	bl procCanoeWaitInit__9daAlink_cFi
lbl_800F4DE0:
/* 800F4DE0  38 60 00 01 */	li r3, 1
lbl_800F4DE4:
/* 800F4DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F4DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F4DEC  7C 08 03 A6 */	mtlr r0
/* 800F4DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F4DF4  4E 80 00 20 */	blr 
