lbl_801F31B4:
/* 801F31B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F31B8  7C 08 02 A6 */	mflr r0
/* 801F31BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F31C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F31C4  7C 7F 1B 78 */	mr r31, r3
/* 801F31C8  80 63 21 8C */	lwz r3, 0x218c(r3)
/* 801F31CC  28 03 00 00 */	cmplwi r3, 0
/* 801F31D0  41 82 00 A8 */	beq lbl_801F3278
/* 801F31D4  88 03 00 60 */	lbz r0, 0x60(r3)
/* 801F31D8  98 1F 21 9D */	stb r0, 0x219d(r31)
/* 801F31DC  80 7F 21 8C */	lwz r3, 0x218c(r31)
/* 801F31E0  88 03 00 60 */	lbz r0, 0x60(r3)
/* 801F31E4  28 00 00 00 */	cmplwi r0, 0
/* 801F31E8  41 82 00 28 */	beq lbl_801F3210
/* 801F31EC  28 00 00 03 */	cmplwi r0, 3
/* 801F31F0  41 82 00 0C */	beq lbl_801F31FC
/* 801F31F4  28 00 00 04 */	cmplwi r0, 4
/* 801F31F8  40 82 00 0C */	bne lbl_801F3204
lbl_801F31FC:
/* 801F31FC  38 00 00 01 */	li r0, 1
/* 801F3200  98 03 00 65 */	stb r0, 0x65(r3)
lbl_801F3204:
/* 801F3204  80 7F 21 8C */	lwz r3, 0x218c(r31)
/* 801F3208  48 04 A5 D1 */	bl move__17dMsgScrnExplain_cFv
/* 801F320C  48 00 00 6C */	b lbl_801F3278
lbl_801F3210:
/* 801F3210  88 1F 21 90 */	lbz r0, 0x2190(r31)
/* 801F3214  28 00 00 01 */	cmplwi r0, 1
/* 801F3218  40 82 00 34 */	bne lbl_801F324C
/* 801F321C  A0 9F 21 92 */	lhz r4, 0x2192(r31)
/* 801F3220  38 A0 00 01 */	li r5, 1
/* 801F3224  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F3228  7C 00 00 34 */	cntlzw r0, r0
/* 801F322C  54 06 DE 3E */	rlwinm r6, r0, 0x1b, 0x18, 0x1f
/* 801F3230  38 E0 00 FF */	li r7, 0xff
/* 801F3234  89 1F 21 9C */	lbz r8, 0x219c(r31)
/* 801F3238  48 04 B3 21 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801F323C  38 00 00 1E */	li r0, 0x1e
/* 801F3240  80 9F 21 8C */	lwz r4, 0x218c(r31)
/* 801F3244  B0 04 00 5E */	sth r0, 0x5e(r4)
/* 801F3248  48 00 00 1C */	b lbl_801F3264
lbl_801F324C:
/* 801F324C  A0 9F 21 92 */	lhz r4, 0x2192(r31)
/* 801F3250  38 A0 00 00 */	li r5, 0
/* 801F3254  38 C0 00 00 */	li r6, 0
/* 801F3258  38 E0 00 FF */	li r7, 0xff
/* 801F325C  39 00 00 01 */	li r8, 1
/* 801F3260  48 04 B2 F9 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801F3264:
/* 801F3264  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F3268  28 00 00 01 */	cmplwi r0, 1
/* 801F326C  40 82 00 0C */	bne lbl_801F3278
/* 801F3270  88 1F 21 94 */	lbz r0, 0x2194(r31)
/* 801F3274  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F3278:
/* 801F3278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F327C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3280  7C 08 03 A6 */	mtlr r0
/* 801F3284  38 21 00 10 */	addi r1, r1, 0x10
/* 801F3288  4E 80 00 20 */	blr 
