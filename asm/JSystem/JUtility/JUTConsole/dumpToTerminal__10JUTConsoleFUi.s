lbl_802E7F7C:
/* 802E7F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E7F80  7C 08 02 A6 */	mflr r0
/* 802E7F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E7F88  39 61 00 20 */	addi r11, r1, 0x20
/* 802E7F8C  48 07 A2 51 */	bl _savegpr_29
/* 802E7F90  7C 7D 1B 78 */	mr r29, r3
/* 802E7F94  28 04 00 00 */	cmplwi r4, 0
/* 802E7F98  41 82 00 F8 */	beq lbl_802E8090
/* 802E7F9C  80 DD 00 34 */	lwz r6, 0x34(r29)
/* 802E7FA0  7C DF 33 78 */	mr r31, r6
/* 802E7FA4  3C 04 00 01 */	addis r0, r4, 1
/* 802E7FA8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E7FAC  41 82 00 50 */	beq lbl_802E7FFC
/* 802E7FB0  83 FD 00 38 */	lwz r31, 0x38(r29)
/* 802E7FB4  7C 89 03 A6 */	mtctr r4
/* 802E7FB8  28 04 00 00 */	cmplwi r4, 0
/* 802E7FBC  41 82 00 40 */	beq lbl_802E7FFC
lbl_802E7FC0:
/* 802E7FC0  34 BF FF FF */	addic. r5, r31, -1
/* 802E7FC4  40 80 00 0C */	bge lbl_802E7FD0
/* 802E7FC8  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802E7FCC  38 A3 FF FF */	addi r5, r3, -1
lbl_802E7FD0:
/* 802E7FD0  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802E7FD4  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802E7FD8  38 03 00 02 */	addi r0, r3, 2
/* 802E7FDC  7C 00 29 D6 */	mullw r0, r0, r5
/* 802E7FE0  7C 04 00 AE */	lbzx r0, r4, r0
/* 802E7FE4  28 00 00 00 */	cmplwi r0, 0
/* 802E7FE8  41 82 00 14 */	beq lbl_802E7FFC
/* 802E7FEC  7C BF 2B 78 */	mr r31, r5
/* 802E7FF0  7C 05 30 00 */	cmpw r5, r6
/* 802E7FF4  41 82 00 08 */	beq lbl_802E7FFC
/* 802E7FF8  42 00 FF C8 */	bdnz lbl_802E7FC0
lbl_802E7FFC:
/* 802E7FFC  3B C0 00 00 */	li r30, 0
lbl_802E8000:
/* 802E8000  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802E8004  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802E8008  38 03 00 02 */	addi r0, r3, 2
/* 802E800C  7C 60 F9 D6 */	mullw r3, r0, r31
/* 802E8010  38 A3 00 01 */	addi r5, r3, 1
/* 802E8014  7C A4 2A 14 */	add r5, r4, r5
/* 802E8018  88 05 FF FF */	lbz r0, -1(r5)
/* 802E801C  28 00 00 00 */	cmplwi r0, 0
/* 802E8020  41 82 00 70 */	beq lbl_802E8090
/* 802E8024  88 1D 00 69 */	lbz r0, 0x69(r29)
/* 802E8028  28 00 00 00 */	cmplwi r0, 0
/* 802E802C  41 82 00 1C */	beq lbl_802E8048
/* 802E8030  3C 60 80 3A */	lis r3, JUTConsole__stringBase0@ha /* 0x8039D9A8@ha */
/* 802E8034  38 63 D9 A8 */	addi r3, r3, JUTConsole__stringBase0@l /* 0x8039D9A8@l */
/* 802E8038  7F C4 F3 78 */	mr r4, r30
/* 802E803C  4C C6 31 82 */	crclr 6
/* 802E8040  4B D1 EA 7D */	bl OSReport
/* 802E8044  48 00 00 1C */	b lbl_802E8060
lbl_802E8048:
/* 802E8048  3C 60 80 3A */	lis r3, JUTConsole__stringBase0@ha /* 0x8039D9A8@ha */
/* 802E804C  38 63 D9 A8 */	addi r3, r3, JUTConsole__stringBase0@l /* 0x8039D9A8@l */
/* 802E8050  38 63 00 0B */	addi r3, r3, 0xb
/* 802E8054  7C A4 2B 78 */	mr r4, r5
/* 802E8058  4C C6 31 82 */	crclr 6
/* 802E805C  4B D1 EA 61 */	bl OSReport
lbl_802E8060:
/* 802E8060  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E8064  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E8068  38 9F 00 01 */	addi r4, r31, 1
/* 802E806C  7C 00 20 50 */	subf r0, r0, r4
/* 802E8070  7C 00 18 14 */	addc r0, r0, r3
/* 802E8074  7C 00 01 10 */	subfe r0, r0, r0
/* 802E8078  7C 83 00 78 */	andc r3, r4, r0
/* 802E807C  7C 7F 1B 78 */	mr r31, r3
/* 802E8080  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802E8084  7C 03 00 00 */	cmpw r3, r0
/* 802E8088  3B DE 00 01 */	addi r30, r30, 1
/* 802E808C  40 82 FF 74 */	bne lbl_802E8000
lbl_802E8090:
/* 802E8090  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8094  48 07 A1 95 */	bl _restgpr_29
/* 802E8098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E809C  7C 08 03 A6 */	mtlr r0
/* 802E80A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E80A4  4E 80 00 20 */	blr 
