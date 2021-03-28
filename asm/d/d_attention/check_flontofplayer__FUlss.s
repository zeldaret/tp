lbl_80070B2C:
/* 80070B2C  7C 80 07 35 */	extsh. r0, r4
/* 80070B30  40 80 00 0C */	bge lbl_80070B3C
/* 80070B34  7C 04 00 D0 */	neg r0, r4
/* 80070B38  7C 04 07 34 */	extsh r4, r0
lbl_80070B3C:
/* 80070B3C  7C A0 07 35 */	extsh. r0, r5
/* 80070B40  40 80 00 0C */	bge lbl_80070B4C
/* 80070B44  7C 05 00 D0 */	neg r0, r5
/* 80070B48  7C 05 07 34 */	extsh r5, r0
lbl_80070B4C:
/* 80070B4C  38 C0 00 00 */	li r6, 0
/* 80070B50  38 E0 00 00 */	li r7, 0
/* 80070B54  3D 00 80 3B */	lis r8, ftp_table@ha
/* 80070B58  39 28 9C 18 */	addi r9, r8, ftp_table@l
/* 80070B5C  7C 88 07 34 */	extsh r8, r4
/* 80070B60  38 8D 80 F4 */	la r4, ang_table(r13) /* 80450674-_SDA_BASE_ */
/* 80070B64  38 00 00 03 */	li r0, 3
/* 80070B68  7C 09 03 A6 */	mtctr r0
lbl_80070B6C:
/* 80070B6C  7C 09 38 2E */	lwzx r0, r9, r7
/* 80070B70  7C 60 00 39 */	and. r0, r3, r0
/* 80070B74  41 82 00 18 */	beq lbl_80070B8C
/* 80070B78  7C 04 32 AE */	lhax r0, r4, r6
/* 80070B7C  7C 08 00 00 */	cmpw r8, r0
/* 80070B80  40 81 00 0C */	ble lbl_80070B8C
/* 80070B84  38 60 00 01 */	li r3, 1
/* 80070B88  4E 80 00 20 */	blr 
lbl_80070B8C:
/* 80070B8C  38 C6 00 02 */	addi r6, r6, 2
/* 80070B90  38 E7 00 04 */	addi r7, r7, 4
/* 80070B94  42 00 FF D8 */	bdnz lbl_80070B6C
/* 80070B98  38 80 00 10 */	li r4, 0x10
/* 80070B9C  38 C0 00 20 */	li r6, 0x20
/* 80070BA0  3C E0 80 3B */	lis r7, ftp_table@ha
/* 80070BA4  39 27 9C 18 */	addi r9, r7, ftp_table@l
/* 80070BA8  7C A8 07 34 */	extsh r8, r5
/* 80070BAC  3C A0 80 3B */	lis r5, ang_table2@ha
/* 80070BB0  38 E5 9C 3C */	addi r7, r5, ang_table2@l
/* 80070BB4  38 00 00 06 */	li r0, 6
/* 80070BB8  7C 09 03 A6 */	mtctr r0
lbl_80070BBC:
/* 80070BBC  7C 09 30 2E */	lwzx r0, r9, r6
/* 80070BC0  7C 60 00 39 */	and. r0, r3, r0
/* 80070BC4  41 82 00 1C */	beq lbl_80070BE0
/* 80070BC8  7C A7 22 14 */	add r5, r7, r4
/* 80070BCC  A8 05 FF FA */	lha r0, -6(r5)
/* 80070BD0  7C 08 00 00 */	cmpw r8, r0
/* 80070BD4  40 81 00 0C */	ble lbl_80070BE0
/* 80070BD8  38 60 00 01 */	li r3, 1
/* 80070BDC  4E 80 00 20 */	blr 
lbl_80070BE0:
/* 80070BE0  38 84 FF FE */	addi r4, r4, -2
/* 80070BE4  38 C6 FF FC */	addi r6, r6, -4
/* 80070BE8  42 00 FF D4 */	bdnz lbl_80070BBC
/* 80070BEC  38 60 00 00 */	li r3, 0
/* 80070BF0  4E 80 00 20 */	blr 
