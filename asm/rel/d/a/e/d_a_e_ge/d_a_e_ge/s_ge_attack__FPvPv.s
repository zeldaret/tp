lbl_806C7FE4:
/* 806C7FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C7FE8  7C 08 02 A6 */	mflr r0
/* 806C7FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C7FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C7FF4  7C 7F 1B 78 */	mr r31, r3
/* 806C7FF8  4B 95 0C E8 */	b fopAc_IsActor__FPv
/* 806C7FFC  2C 03 00 00 */	cmpwi r3, 0
/* 806C8000  41 82 00 50 */	beq lbl_806C8050
/* 806C8004  28 1F 00 00 */	cmplwi r31, 0
/* 806C8008  41 82 00 0C */	beq lbl_806C8014
/* 806C800C  80 7F 00 04 */	lwz r3, 4(r31)
/* 806C8010  48 00 00 08 */	b lbl_806C8018
lbl_806C8014:
/* 806C8014  38 60 FF FF */	li r3, -1
lbl_806C8018:
/* 806C8018  4B 95 A1 20 */	b fpcM_IsCreating__FUi
/* 806C801C  2C 03 00 00 */	cmpwi r3, 0
/* 806C8020  40 82 00 30 */	bne lbl_806C8050
/* 806C8024  A8 1F 00 08 */	lha r0, 8(r31)
/* 806C8028  2C 00 01 F2 */	cmpwi r0, 0x1f2
/* 806C802C  40 82 00 24 */	bne lbl_806C8050
/* 806C8030  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 806C8034  2C 00 00 02 */	cmpwi r0, 2
/* 806C8038  40 82 00 18 */	bne lbl_806C8050
/* 806C803C  3C 60 80 6D */	lis r3, target_count@ha
/* 806C8040  38 83 D3 9C */	addi r4, r3, target_count@l
/* 806C8044  80 64 00 00 */	lwz r3, 0(r4)
/* 806C8048  38 03 00 01 */	addi r0, r3, 1
/* 806C804C  90 04 00 00 */	stw r0, 0(r4)
lbl_806C8050:
/* 806C8050  38 60 00 00 */	li r3, 0
/* 806C8054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C8058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C805C  7C 08 03 A6 */	mtlr r0
/* 806C8060  38 21 00 10 */	addi r1, r1, 0x10
/* 806C8064  4E 80 00 20 */	blr 
