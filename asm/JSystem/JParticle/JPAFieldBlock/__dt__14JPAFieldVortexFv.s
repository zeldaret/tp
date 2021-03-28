lbl_8027D564:
/* 8027D564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D568  7C 08 02 A6 */	mflr r0
/* 8027D56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D574  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D578  41 82 00 30 */	beq lbl_8027D5A8
/* 8027D57C  3C 60 80 3C */	lis r3, __vt__14JPAFieldVortex@ha
/* 8027D580  38 03 45 30 */	addi r0, r3, __vt__14JPAFieldVortex@l
/* 8027D584  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D588  41 82 00 10 */	beq lbl_8027D598
/* 8027D58C  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha
/* 8027D590  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l
/* 8027D594  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D598:
/* 8027D598  7C 80 07 35 */	extsh. r0, r4
/* 8027D59C  40 81 00 0C */	ble lbl_8027D5A8
/* 8027D5A0  7F E3 FB 78 */	mr r3, r31
/* 8027D5A4  48 05 17 99 */	bl __dl__FPv
lbl_8027D5A8:
/* 8027D5A8  7F E3 FB 78 */	mr r3, r31
/* 8027D5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D5B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D5B4  7C 08 03 A6 */	mtlr r0
/* 8027D5B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D5BC  4E 80 00 20 */	blr 
