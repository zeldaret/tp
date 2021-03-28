lbl_806B85C8:
/* 806B85C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B85CC  7C 08 02 A6 */	mflr r0
/* 806B85D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B85D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B85D8  7C 7F 1B 78 */	mr r31, r3
/* 806B85DC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806B85E0  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806B85E4  38 84 90 28 */	addi r4, r4, stringBase0@l
/* 806B85E8  4B 97 4A 20 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806B85EC  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806B85F0  28 00 00 0A */	cmplwi r0, 0xa
/* 806B85F4  41 82 00 0C */	beq lbl_806B8600
/* 806B85F8  28 00 00 0B */	cmplwi r0, 0xb
/* 806B85FC  40 82 00 0C */	bne lbl_806B8608
lbl_806B8600:
/* 806B8600  38 60 00 01 */	li r3, 1
/* 806B8604  48 00 00 40 */	b lbl_806B8644
lbl_806B8608:
/* 806B8608  88 1F 0C E0 */	lbz r0, 0xce0(r31)
/* 806B860C  28 00 00 00 */	cmplwi r0, 0
/* 806B8610  41 82 00 10 */	beq lbl_806B8620
/* 806B8614  38 00 00 00 */	li r0, 0
/* 806B8618  3C 60 80 6C */	lis r3, struct_806B91EC+0x1@ha
/* 806B861C  98 03 91 ED */	stb r0, struct_806B91EC+0x1@l(r3)
lbl_806B8620:
/* 806B8620  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806B8624  28 00 00 00 */	cmplwi r0, 0
/* 806B8628  41 82 00 18 */	beq lbl_806B8640
/* 806B862C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806B8630  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806B8634  81 8C 00 08 */	lwz r12, 8(r12)
/* 806B8638  7D 89 03 A6 */	mtctr r12
/* 806B863C  4E 80 04 21 */	bctrl 
lbl_806B8640:
/* 806B8640  38 60 00 01 */	li r3, 1
lbl_806B8644:
/* 806B8644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B8648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B864C  7C 08 03 A6 */	mtlr r0
/* 806B8650  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8654  4E 80 00 20 */	blr 
