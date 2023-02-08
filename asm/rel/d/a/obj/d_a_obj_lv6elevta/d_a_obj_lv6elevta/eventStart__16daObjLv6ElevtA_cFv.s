lbl_80C83028:
/* 80C83028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8302C  7C 08 02 A6 */	mflr r0
/* 80C83030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83038  7C 7F 1B 78 */	mr r31, r3
/* 80C8303C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C83040  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C83044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8304C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C83050  7C 05 07 74 */	extsb r5, r0
/* 80C83054  4B 3B 23 0D */	bl isSwitch__10dSv_info_cCFii
/* 80C83058  2C 03 00 00 */	cmpwi r3, 0
/* 80C8305C  41 82 00 10 */	beq lbl_80C8306C
/* 80C83060  38 00 00 02 */	li r0, 2
/* 80C83064  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C83068  48 00 00 3C */	b lbl_80C830A4
lbl_80C8306C:
/* 80C8306C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C83070  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C83074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83078  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8307C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C83080  7C 05 07 74 */	extsb r5, r0
/* 80C83084  4B 3B 22 DD */	bl isSwitch__10dSv_info_cCFii
/* 80C83088  2C 03 00 00 */	cmpwi r3, 0
/* 80C8308C  41 82 00 10 */	beq lbl_80C8309C
/* 80C83090  38 00 00 03 */	li r0, 3
/* 80C83094  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C83098  48 00 00 0C */	b lbl_80C830A4
lbl_80C8309C:
/* 80C8309C  38 00 00 01 */	li r0, 1
/* 80C830A0  90 1F 06 20 */	stw r0, 0x620(r31)
lbl_80C830A4:
/* 80C830A4  38 60 00 01 */	li r3, 1
/* 80C830A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C830AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C830B0  7C 08 03 A6 */	mtlr r0
/* 80C830B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C830B8  4E 80 00 20 */	blr 
