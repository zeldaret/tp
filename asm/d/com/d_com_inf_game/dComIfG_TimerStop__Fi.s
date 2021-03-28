lbl_8002F5C0:
/* 8002F5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F5C4  7C 08 02 A6 */	mflr r0
/* 8002F5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F5CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F5D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F5D4  7C 7E 1B 78 */	mr r30, r3
/* 8002F5D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002F5DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F5E0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F5E4  7F E3 FB 78 */	mr r3, r31
/* 8002F5E8  4B FF D5 D5 */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F5EC  7C 1E 18 00 */	cmpw r30, r3
/* 8002F5F0  40 82 00 2C */	bne lbl_8002F61C
/* 8002F5F4  7F E3 FB 78 */	mr r3, r31
/* 8002F5F8  4B FF D5 E5 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F5FC  28 03 00 00 */	cmplwi r3, 0
/* 8002F600  41 82 00 14 */	beq lbl_8002F614
/* 8002F604  38 80 00 04 */	li r4, 4
/* 8002F608  48 22 E1 E1 */	bl stop__8dTimer_cFUc
/* 8002F60C  38 60 00 01 */	li r3, 1
/* 8002F610  48 00 00 10 */	b lbl_8002F620
lbl_8002F614:
/* 8002F614  38 60 00 00 */	li r3, 0
/* 8002F618  48 00 00 08 */	b lbl_8002F620
lbl_8002F61C:
/* 8002F61C  38 60 00 00 */	li r3, 0
lbl_8002F620:
/* 8002F620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F624  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F62C  7C 08 03 A6 */	mtlr r0
/* 8002F630  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F634  4E 80 00 20 */	blr 
