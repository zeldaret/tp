lbl_8072CF00:
/* 8072CF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072CF04  7C 08 02 A6 */	mflr r0
/* 8072CF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072CF0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072CF10  93 C1 00 08 */	stw r30, 8(r1)
/* 8072CF14  7C 7E 1B 78 */	mr r30, r3
/* 8072CF18  7C 9F 23 78 */	mr r31, r4
/* 8072CF1C  4B 8E BD C4 */	b fopAc_IsActor__FPv
/* 8072CF20  2C 03 00 00 */	cmpwi r3, 0
/* 8072CF24  41 82 00 50 */	beq lbl_8072CF74
/* 8072CF28  28 1E 00 00 */	cmplwi r30, 0
/* 8072CF2C  41 82 00 0C */	beq lbl_8072CF38
/* 8072CF30  80 7E 00 04 */	lwz r3, 4(r30)
/* 8072CF34  48 00 00 08 */	b lbl_8072CF3C
lbl_8072CF38:
/* 8072CF38  38 60 FF FF */	li r3, -1
lbl_8072CF3C:
/* 8072CF3C  4B 8F 51 FC */	b fpcM_IsCreating__FUi
/* 8072CF40  2C 03 00 00 */	cmpwi r3, 0
/* 8072CF44  40 82 00 30 */	bne lbl_8072CF74
/* 8072CF48  A8 1E 00 08 */	lha r0, 8(r30)
/* 8072CF4C  2C 00 00 36 */	cmpwi r0, 0x36
/* 8072CF50  40 82 00 24 */	bne lbl_8072CF74
/* 8072CF54  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8072CF58  7C 03 07 74 */	extsb r3, r0
/* 8072CF5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8072CF60  7C 00 07 74 */	extsb r0, r0
/* 8072CF64  7C 03 00 00 */	cmpw r3, r0
/* 8072CF68  40 82 00 0C */	bne lbl_8072CF74
/* 8072CF6C  7F C3 F3 78 */	mr r3, r30
/* 8072CF70  48 00 00 08 */	b lbl_8072CF78
lbl_8072CF74:
/* 8072CF74  38 60 00 00 */	li r3, 0
lbl_8072CF78:
/* 8072CF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072CF7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8072CF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072CF84  7C 08 03 A6 */	mtlr r0
/* 8072CF88  38 21 00 10 */	addi r1, r1, 0x10
/* 8072CF8C  4E 80 00 20 */	blr 
