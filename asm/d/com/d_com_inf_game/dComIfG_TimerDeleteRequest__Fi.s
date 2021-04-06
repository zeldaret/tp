lbl_8002F79C:
/* 8002F79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F7A0  7C 08 02 A6 */	mflr r0
/* 8002F7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F7B0  7C 7E 1B 78 */	mr r30, r3
/* 8002F7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F7BC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F7C0  7F E3 FB 78 */	mr r3, r31
/* 8002F7C4  4B FF D3 F9 */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F7C8  7C 1E 18 00 */	cmpw r30, r3
/* 8002F7CC  40 82 00 28 */	bne lbl_8002F7F4
/* 8002F7D0  7F E3 FB 78 */	mr r3, r31
/* 8002F7D4  4B FF D4 09 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F7D8  28 03 00 00 */	cmplwi r3, 0
/* 8002F7DC  41 82 00 10 */	beq lbl_8002F7EC
/* 8002F7E0  48 22 E2 01 */	bl deleteRequest__8dTimer_cFv
/* 8002F7E4  38 60 00 01 */	li r3, 1
/* 8002F7E8  48 00 00 10 */	b lbl_8002F7F8
lbl_8002F7EC:
/* 8002F7EC  38 60 00 00 */	li r3, 0
/* 8002F7F0  48 00 00 08 */	b lbl_8002F7F8
lbl_8002F7F4:
/* 8002F7F4  38 60 00 00 */	li r3, 0
lbl_8002F7F8:
/* 8002F7F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F7FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F804  7C 08 03 A6 */	mtlr r0
/* 8002F808  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F80C  4E 80 00 20 */	blr 
