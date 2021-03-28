lbl_800F6C30:
/* 800F6C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F6C34  7C 08 02 A6 */	mflr r0
/* 800F6C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F6C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F6C40  48 26 B5 99 */	bl _savegpr_28
/* 800F6C44  7C 7C 1B 78 */	mr r28, r3
/* 800F6C48  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800F6C4C  64 00 04 00 */	oris r0, r0, 0x400
/* 800F6C50  90 03 05 80 */	stw r0, 0x580(r3)
/* 800F6C54  AB E3 04 E6 */	lha r31, 0x4e6(r3)
/* 800F6C58  AB C3 04 DE */	lha r30, 0x4de(r3)
/* 800F6C5C  83 A3 31 90 */	lwz r29, 0x3190(r3)
/* 800F6C60  4B FF DB 79 */	bl canoeCommon__9daAlink_cFv
/* 800F6C64  2C 03 00 00 */	cmpwi r3, 0
/* 800F6C68  41 82 00 0C */	beq lbl_800F6C74
/* 800F6C6C  38 60 00 01 */	li r3, 1
/* 800F6C70  48 00 00 88 */	b lbl_800F6CF8
lbl_800F6C74:
/* 800F6C74  B3 FC 04 E6 */	sth r31, 0x4e6(r28)
/* 800F6C78  7F 83 E3 78 */	mr r3, r28
/* 800F6C7C  38 80 00 01 */	li r4, 1
/* 800F6C80  4B FD 7F 59 */	bl checkSubjectEnd__9daAlink_cFi
/* 800F6C84  2C 03 00 00 */	cmpwi r3, 0
/* 800F6C88  41 82 00 14 */	beq lbl_800F6C9C
/* 800F6C8C  7F 83 E3 78 */	mr r3, r28
/* 800F6C90  38 80 00 00 */	li r4, 0
/* 800F6C94  4B FF E5 51 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F6C98  48 00 00 5C */	b lbl_800F6CF4
lbl_800F6C9C:
/* 800F6C9C  7F 83 E3 78 */	mr r3, r28
/* 800F6CA0  4B FC 30 8D */	bl checkNextActionFromButton__9daAlink_cFv
/* 800F6CA4  2C 03 00 00 */	cmpwi r3, 0
/* 800F6CA8  41 82 00 40 */	beq lbl_800F6CE8
/* 800F6CAC  7F 83 E3 78 */	mr r3, r28
/* 800F6CB0  4B FC 42 D1 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800F6CB4  2C 03 00 00 */	cmpwi r3, 0
/* 800F6CB8  41 82 00 28 */	beq lbl_800F6CE0
/* 800F6CBC  93 BC 31 90 */	stw r29, 0x3190(r28)
/* 800F6CC0  80 1C 31 90 */	lwz r0, 0x3190(r28)
/* 800F6CC4  B0 1C 05 9E */	sth r0, 0x59e(r28)
/* 800F6CC8  A8 1C 05 9C */	lha r0, 0x59c(r28)
/* 800F6CCC  B0 1C 31 0A */	sth r0, 0x310a(r28)
/* 800F6CD0  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800F6CD4  80 1C 31 90 */	lwz r0, 0x3190(r28)
/* 800F6CD8  7C 03 02 14 */	add r0, r3, r0
/* 800F6CDC  B0 1C 31 0C */	sth r0, 0x310c(r28)
lbl_800F6CE0:
/* 800F6CE0  38 60 00 01 */	li r3, 1
/* 800F6CE4  48 00 00 14 */	b lbl_800F6CF8
lbl_800F6CE8:
/* 800F6CE8  7F 83 E3 78 */	mr r3, r28
/* 800F6CEC  7F C4 F3 78 */	mr r4, r30
/* 800F6CF0  4B FF 82 41 */	bl setRideSubjectAngle__9daAlink_cFs
lbl_800F6CF4:
/* 800F6CF4  38 60 00 01 */	li r3, 1
lbl_800F6CF8:
/* 800F6CF8  39 61 00 20 */	addi r11, r1, 0x20
/* 800F6CFC  48 26 B5 29 */	bl _restgpr_28
/* 800F6D00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F6D04  7C 08 03 A6 */	mtlr r0
/* 800F6D08  38 21 00 20 */	addi r1, r1, 0x20
/* 800F6D0C  4E 80 00 20 */	blr 
