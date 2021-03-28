lbl_806E9198:
/* 806E9198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E919C  7C 08 02 A6 */	mflr r0
/* 806E91A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E91A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E91A8  7C 7F 1B 78 */	mr r31, r3
/* 806E91AC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806E91B0  3C 80 80 6F */	lis r4, stringBase0@ha
/* 806E91B4  38 84 A2 CC */	addi r4, r4, stringBase0@l
/* 806E91B8  4B 94 3E 50 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806E91BC  88 1F 0D F9 */	lbz r0, 0xdf9(r31)
/* 806E91C0  28 00 00 00 */	cmplwi r0, 0
/* 806E91C4  41 82 00 10 */	beq lbl_806E91D4
/* 806E91C8  38 00 00 00 */	li r0, 0
/* 806E91CC  3C 60 80 6F */	lis r3, data_806EA4E8@ha
/* 806E91D0  98 03 A4 E8 */	stb r0, data_806EA4E8@l(r3)
lbl_806E91D4:
/* 806E91D4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806E91D8  28 00 00 00 */	cmplwi r0, 0
/* 806E91DC  41 82 00 2C */	beq lbl_806E9208
/* 806E91E0  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E91E4  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806E91E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 806E91EC  7D 89 03 A6 */	mtctr r12
/* 806E91F0  4E 80 04 21 */	bctrl 
/* 806E91F4  38 7F 06 6C */	addi r3, r31, 0x66c
/* 806E91F8  81 9F 06 6C */	lwz r12, 0x66c(r31)
/* 806E91FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 806E9200  7D 89 03 A6 */	mtctr r12
/* 806E9204  4E 80 04 21 */	bctrl 
lbl_806E9208:
/* 806E9208  38 60 00 01 */	li r3, 1
/* 806E920C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9214  7C 08 03 A6 */	mtlr r0
/* 806E9218  38 21 00 10 */	addi r1, r1, 0x10
/* 806E921C  4E 80 00 20 */	blr 
