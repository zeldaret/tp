lbl_801FCD24:
/* 801FCD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCD28  7C 08 02 A6 */	mflr r0
/* 801FCD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCD30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCD34  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FCD38  80 03 00 04 */	lwz r0, 4(r3)
/* 801FCD3C  2C 00 00 01 */	cmpwi r0, 1
/* 801FCD40  40 82 00 80 */	bne lbl_801FCDC0
/* 801FCD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FCD48  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FCD4C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 801FCD50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801FCD54  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 801FCD58  7D 89 03 A6 */	mtctr r12
/* 801FCD5C  4E 80 04 21 */	bctrl 
/* 801FCD60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCD64  40 82 00 5C */	bne lbl_801FCDC0
/* 801FCD68  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 801FCD6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801FCD70  81 8C 02 70 */	lwz r12, 0x270(r12)
/* 801FCD74  7D 89 03 A6 */	mtctr r12
/* 801FCD78  4E 80 04 21 */	bctrl 
/* 801FCD7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCD80  40 82 00 40 */	bne lbl_801FCDC0
/* 801FCD84  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 801FCD88  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801FCD8C  81 8C 02 74 */	lwz r12, 0x274(r12)
/* 801FCD90  7D 89 03 A6 */	mtctr r12
/* 801FCD94  4E 80 04 21 */	bctrl 
/* 801FCD98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCD9C  40 82 00 24 */	bne lbl_801FCDC0
/* 801FCDA0  4B FF D2 D9 */	bl dMw_START_TRIGGER__Fv
/* 801FCDA4  2C 03 00 00 */	cmpwi r3, 0
/* 801FCDA8  40 82 00 10 */	bne lbl_801FCDB8
/* 801FCDAC  4B FF D2 A5 */	bl dMw_B_TRIGGER__Fv
/* 801FCDB0  2C 03 00 00 */	cmpwi r3, 0
/* 801FCDB4  41 82 00 0C */	beq lbl_801FCDC0
lbl_801FCDB8:
/* 801FCDB8  38 60 00 01 */	li r3, 1
/* 801FCDBC  48 00 00 08 */	b lbl_801FCDC4
lbl_801FCDC0:
/* 801FCDC0  38 60 00 00 */	li r3, 0
lbl_801FCDC4:
/* 801FCDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCDCC  7C 08 03 A6 */	mtlr r0
/* 801FCDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCDD4  4E 80 00 20 */	blr 
