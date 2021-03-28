lbl_80689978:
/* 80689978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068997C  7C 08 02 A6 */	mflr r0
/* 80689980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80689984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80689988  7C 7F 1B 78 */	mr r31, r3
/* 8068998C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80689990  3C 80 80 69 */	lis r4, stringBase0@ha
/* 80689994  38 84 A3 08 */	addi r4, r4, stringBase0@l
/* 80689998  4B 9A 36 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8068999C  88 1F 0B B8 */	lbz r0, 0xbb8(r31)
/* 806899A0  28 00 00 00 */	cmplwi r0, 0
/* 806899A4  41 82 00 10 */	beq lbl_806899B4
/* 806899A8  38 00 00 00 */	li r0, 0
/* 806899AC  3C 60 80 69 */	lis r3, data_8068A4B8@ha
/* 806899B0  98 03 A4 B8 */	stb r0, data_8068A4B8@l(r3)
lbl_806899B4:
/* 806899B4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806899B8  28 00 00 00 */	cmplwi r0, 0
/* 806899BC  41 82 00 18 */	beq lbl_806899D4
/* 806899C0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806899C4  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806899C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 806899CC  7D 89 03 A6 */	mtctr r12
/* 806899D0  4E 80 04 21 */	bctrl 
lbl_806899D4:
/* 806899D4  38 60 00 01 */	li r3, 1
/* 806899D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806899DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806899E0  7C 08 03 A6 */	mtlr r0
/* 806899E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806899E8  4E 80 00 20 */	blr 
