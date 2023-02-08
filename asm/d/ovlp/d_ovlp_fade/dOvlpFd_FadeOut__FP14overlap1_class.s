lbl_802521F4:
/* 802521F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802521F8  7C 08 02 A6 */	mflr r0
/* 802521FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252204  93 C1 00 08 */	stw r30, 8(r1)
/* 80252208  7C 7E 1B 78 */	mr r30, r3
/* 8025220C  83 E3 00 D4 */	lwz r31, 0xd4(r3)
/* 80252210  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 80252214  2C 00 00 00 */	cmpwi r0, 0
/* 80252218  40 82 00 4C */	bne lbl_80252264
/* 8025221C  38 60 00 00 */	li r3, 0
/* 80252220  4B DB 50 35 */	bl mDoAud_setFadeInStart__FUc
/* 80252224  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80252228  2C 00 00 08 */	cmpwi r0, 8
/* 8025222C  40 82 00 10 */	bne lbl_8025223C
/* 80252230  38 00 00 0A */	li r0, 0xa
/* 80252234  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80252238  48 00 00 2C */	b lbl_80252264
lbl_8025223C:
/* 8025223C  2C 00 00 03 */	cmpwi r0, 3
/* 80252240  41 82 00 14 */	beq lbl_80252254
/* 80252244  7F E3 FB 78 */	mr r3, r31
/* 80252248  4B FF FF 3D */	bl dOvlpFd_startFadeIn__Fi
/* 8025224C  93 FE 00 CC */	stw r31, 0xcc(r30)
/* 80252250  48 00 00 14 */	b lbl_80252264
lbl_80252254:
/* 80252254  38 60 00 00 */	li r3, 0
/* 80252258  4B FF FF 2D */	bl dOvlpFd_startFadeIn__Fi
/* 8025225C  38 00 00 01 */	li r0, 1
/* 80252260  90 1E 00 CC */	stw r0, 0xcc(r30)
lbl_80252264:
/* 80252264  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80252268  2C 00 00 08 */	cmpwi r0, 8
/* 8025226C  40 82 00 18 */	bne lbl_80252284
/* 80252270  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80252274  2C 00 00 07 */	cmpwi r0, 7
/* 80252278  40 82 00 0C */	bne lbl_80252284
/* 8025227C  38 60 00 07 */	li r3, 7
/* 80252280  4B FF FF 05 */	bl dOvlpFd_startFadeIn__Fi
lbl_80252284:
/* 80252284  4B DC C2 41 */	bl fopOvlpM_SceneIsStart__Fv
/* 80252288  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 8025228C  34 03 FF FF */	addic. r0, r3, -1
/* 80252290  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80252294  40 82 00 18 */	bne lbl_802522AC
/* 80252298  7F C3 F3 78 */	mr r3, r30
/* 8025229C  4B DC C2 81 */	bl fopOvlpM_Done__FP18overlap_task_class
/* 802522A0  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 802522A4  38 03 00 01 */	addi r0, r3, 1
/* 802522A8  90 1E 00 CC */	stw r0, 0xcc(r30)
lbl_802522AC:
/* 802522AC  38 60 00 01 */	li r3, 1
/* 802522B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802522B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802522B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802522BC  7C 08 03 A6 */	mtlr r0
/* 802522C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802522C4  4E 80 00 20 */	blr 
