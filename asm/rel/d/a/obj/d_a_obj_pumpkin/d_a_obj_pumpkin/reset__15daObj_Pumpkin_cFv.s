lbl_80CB7968:
/* 80CB7968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB796C  7C 08 02 A6 */	mflr r0
/* 80CB7970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB7974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB7978  7C 7F 1B 78 */	mr r31, r3
/* 80CB797C  38 7F 0B 20 */	addi r3, r31, 0xb20
/* 80CB7980  38 80 00 00 */	li r4, 0
/* 80CB7984  38 1F 0B B4 */	addi r0, r31, 0xbb4
/* 80CB7988  7C A3 00 50 */	subf r5, r3, r0
/* 80CB798C  4B 34 BA CD */	bl memset
/* 80CB7990  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB7994  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80CB7998  38 03 FF F1 */	addi r0, r3, -15
/* 80CB799C  30 00 FF FF */	addic r0, r0, -1
/* 80CB79A0  7C 00 01 10 */	subfe r0, r0, r0
/* 80CB79A4  7C 60 00 78 */	andc r0, r3, r0
/* 80CB79A8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CB79AC  41 82 00 0C */	beq lbl_80CB79B8
/* 80CB79B0  41 80 00 10 */	blt lbl_80CB79C0
/* 80CB79B4  48 00 00 0C */	b lbl_80CB79C0
lbl_80CB79B8:
/* 80CB79B8  38 00 00 01 */	li r0, 1
/* 80CB79BC  98 1F 0B A8 */	stb r0, 0xba8(r31)
lbl_80CB79C0:
/* 80CB79C0  38 00 FF FF */	li r0, -1
/* 80CB79C4  90 1F 0B 40 */	stw r0, 0xb40(r31)
/* 80CB79C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB79CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB79D0  7C 08 03 A6 */	mtlr r0
/* 80CB79D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB79D8  4E 80 00 20 */	blr 
