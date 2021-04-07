lbl_80257910:
/* 80257910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80257914  7C 08 02 A6 */	mflr r0
/* 80257918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025791C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80257920  7C 7F 1B 78 */	mr r31, r3
/* 80257924  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 80257928  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025792C  90 01 00 08 */	stw r0, 8(r1)
/* 80257930  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 80257934  88 01 00 08 */	lbz r0, 8(r1)
/* 80257938  98 03 00 0C */	stb r0, 0xc(r3)
/* 8025793C  88 01 00 09 */	lbz r0, 9(r1)
/* 80257940  98 03 00 0D */	stb r0, 0xd(r3)
/* 80257944  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80257948  98 03 00 0E */	stb r0, 0xe(r3)
/* 8025794C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80257950  98 03 00 0F */	stb r0, 0xf(r3)
/* 80257954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80257958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025795C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80257960  4B DD 50 79 */	bl createParticle__14dComIfG_play_cFv
/* 80257964  4B DB 73 ED */	bl mDoExt_getGameHeap__Fv
/* 80257968  3C 80 00 34 */	lis r4, 0x34
/* 8025796C  38 A0 FF F0 */	li r5, -16
/* 80257970  48 07 6B 65 */	bl alloc__7JKRHeapFUli
/* 80257974  90 7F 02 1C */	stw r3, 0x21c(r31)
/* 80257978  80 7F 02 1C */	lwz r3, 0x21c(r31)
/* 8025797C  3C 80 00 34 */	lis r4, 0x34
/* 80257980  38 A0 00 00 */	li r5, 0
/* 80257984  38 C0 00 00 */	li r6, 0
/* 80257988  48 07 75 79 */	bl create__10JKRExpHeapFPvUlP7JKRHeapb
/* 8025798C  90 7F 01 D0 */	stw r3, 0x1d0(r31)
/* 80257990  3C 60 00 13 */	lis r3, 0x13
/* 80257994  80 9F 01 D0 */	lwz r4, 0x1d0(r31)
/* 80257998  38 A0 00 00 */	li r5, 0
/* 8025799C  48 07 74 91 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802579A0  90 7F 01 D4 */	stw r3, 0x1d4(r31)
/* 802579A4  38 60 00 02 */	li r3, 2
/* 802579A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802579AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802579B0  7C 08 03 A6 */	mtlr r0
/* 802579B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802579B8  4E 80 00 20 */	blr 
