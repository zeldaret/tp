lbl_80D4F008:
/* 80D4F008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F00C  7C 08 02 A6 */	mflr r0
/* 80D4F010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4F018  7C 7F 1B 78 */	mr r31, r3
/* 80D4F01C  4B FF FD 65 */	bl search_lb__11daSwLBall_cFv
/* 80D4F020  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80D4F024  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80D4F028  28 00 00 01 */	cmplwi r0, 1
/* 80D4F02C  40 82 00 30 */	bne lbl_80D4F05C
/* 80D4F030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F038  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80D4F03C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F040  7C 05 07 74 */	extsb r5, r0
/* 80D4F044  4B 2E 63 1D */	bl isSwitch__10dSv_info_cCFii
/* 80D4F048  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F04C  41 82 00 10 */	beq lbl_80D4F05C
/* 80D4F050  38 00 00 03 */	li r0, 3
/* 80D4F054  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D4F058  48 00 00 0C */	b lbl_80D4F064
lbl_80D4F05C:
/* 80D4F05C  38 00 00 00 */	li r0, 0
/* 80D4F060  98 1F 05 72 */	stb r0, 0x572(r31)
lbl_80D4F064:
/* 80D4F064  38 00 00 01 */	li r0, 1
/* 80D4F068  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80D4F06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4F070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F074  7C 08 03 A6 */	mtlr r0
/* 80D4F078  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F07C  4E 80 00 20 */	blr 
