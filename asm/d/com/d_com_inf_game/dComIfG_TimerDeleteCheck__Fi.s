lbl_8002F72C:
/* 8002F72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F730  7C 08 02 A6 */	mflr r0
/* 8002F734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F73C  93 C1 00 08 */	stw r30, 8(r1)
/* 8002F740  7C 7E 1B 78 */	mr r30, r3
/* 8002F744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F74C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8002F750  7F E3 FB 78 */	mr r3, r31
/* 8002F754  4B FF D4 69 */	bl getTimerMode__14dComIfG_play_cFv
/* 8002F758  7C 1E 18 00 */	cmpw r30, r3
/* 8002F75C  40 82 00 24 */	bne lbl_8002F780
/* 8002F760  7F E3 FB 78 */	mr r3, r31
/* 8002F764  4B FF D4 79 */	bl getTimerPtr__14dComIfG_play_cFv
/* 8002F768  28 03 00 00 */	cmplwi r3, 0
/* 8002F76C  41 82 00 0C */	beq lbl_8002F778
/* 8002F770  48 22 DD B5 */	bl deleteCheck__8dTimer_cFv
/* 8002F774  48 00 00 10 */	b lbl_8002F784
lbl_8002F778:
/* 8002F778  38 60 00 00 */	li r3, 0
/* 8002F77C  48 00 00 08 */	b lbl_8002F784
lbl_8002F780:
/* 8002F780  38 60 00 00 */	li r3, 0
lbl_8002F784:
/* 8002F784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F788  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002F78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F790  7C 08 03 A6 */	mtlr r0
/* 8002F794  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F798  4E 80 00 20 */	blr 
