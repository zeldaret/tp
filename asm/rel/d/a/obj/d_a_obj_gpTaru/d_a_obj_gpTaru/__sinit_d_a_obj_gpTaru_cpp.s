lbl_8057F4C4:
/* 8057F4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F4C8  7C 08 02 A6 */	mflr r0
/* 8057F4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F4D0  3C 60 80 58 */	lis r3, l_HIO@ha /* 0x8057F8E4@ha */
/* 8057F4D4  38 63 F8 E4 */	addi r3, r3, l_HIO@l /* 0x8057F8E4@l */
/* 8057F4D8  4B FF DB F5 */	bl __ct__14daGpTaru_HIO_cFv
/* 8057F4DC  3C 80 80 58 */	lis r4, __dt__14daGpTaru_HIO_cFv@ha /* 0x8057F458@ha */
/* 8057F4E0  38 84 F4 58 */	addi r4, r4, __dt__14daGpTaru_HIO_cFv@l /* 0x8057F458@l */
/* 8057F4E4  3C A0 80 58 */	lis r5, lit_3645@ha /* 0x8057F8D8@ha */
/* 8057F4E8  38 A5 F8 D8 */	addi r5, r5, lit_3645@l /* 0x8057F8D8@l */
/* 8057F4EC  4B FF DB 6D */	bl __register_global_object
/* 8057F4F0  3C 60 80 58 */	lis r3, mCcDCyl__10daGpTaru_c@ha /* 0x8057F6A8@ha */
/* 8057F4F4  38 63 F6 A8 */	addi r3, r3, mCcDCyl__10daGpTaru_c@l /* 0x8057F6A8@l */
/* 8057F4F8  38 A3 FF FC */	addi r5, r3, -4
/* 8057F4FC  3C 60 80 58 */	lis r3, mCcDObjInfo__10daGpTaru_c@ha /* 0x8057F584@ha */
/* 8057F500  38 63 F5 84 */	addi r3, r3, mCcDObjInfo__10daGpTaru_c@l /* 0x8057F584@l */
/* 8057F504  38 83 FF FC */	addi r4, r3, -4
/* 8057F508  38 00 00 06 */	li r0, 6
/* 8057F50C  7C 09 03 A6 */	mtctr r0
lbl_8057F510:
/* 8057F510  80 64 00 04 */	lwz r3, 4(r4)
/* 8057F514  84 04 00 08 */	lwzu r0, 8(r4)
/* 8057F518  90 65 00 04 */	stw r3, 4(r5)
/* 8057F51C  94 05 00 08 */	stwu r0, 8(r5)
/* 8057F520  42 00 FF F0 */	bdnz lbl_8057F510
/* 8057F524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F528  7C 08 03 A6 */	mtlr r0
/* 8057F52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F530  4E 80 00 20 */	blr 
