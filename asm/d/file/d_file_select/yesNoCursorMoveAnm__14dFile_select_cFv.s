lbl_80189BA8:
/* 80189BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189BAC  7C 08 02 A6 */	mflr r0
/* 80189BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80189BB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80189BBC  7C 7E 1B 78 */	mr r30, r3
/* 80189BC0  4B FF F3 11 */	bl yesnoSelectMoveAnm__14dFile_select_cFv
/* 80189BC4  7C 7F 1B 78 */	mr r31, r3
/* 80189BC8  7F C3 F3 78 */	mr r3, r30
/* 80189BCC  88 9E 02 69 */	lbz r4, 0x269(r30)
/* 80189BD0  48 00 3F FD */	bl yesnoWakuAlpahAnm__14dFile_select_cFUc
/* 80189BD4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80189BD8  28 00 00 01 */	cmplwi r0, 1
/* 80189BDC  40 82 00 20 */	bne lbl_80189BFC
/* 80189BE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80189BE4  28 00 00 01 */	cmplwi r0, 1
/* 80189BE8  40 82 00 14 */	bne lbl_80189BFC
/* 80189BEC  7F C3 F3 78 */	mr r3, r30
/* 80189BF0  4B FF F5 3D */	bl yesnoCursorShow__14dFile_select_cFv
/* 80189BF4  38 00 00 1A */	li r0, 0x1a
/* 80189BF8  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_80189BFC:
/* 80189BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80189C00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80189C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189C08  7C 08 03 A6 */	mtlr r0
/* 80189C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80189C10  4E 80 00 20 */	blr 
