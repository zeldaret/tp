lbl_806ACA10:
/* 806ACA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ACA14  7C 08 02 A6 */	mflr r0
/* 806ACA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ACA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806ACA20  7C 7F 1B 78 */	mr r31, r3
/* 806ACA24  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806ACA28  3C 80 80 6B */	lis r4, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACA2C  38 84 D6 28 */	addi r4, r4, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACA30  4B 98 05 D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806ACA34  88 1F 0D 50 */	lbz r0, 0xd50(r31)
/* 806ACA38  28 00 00 00 */	cmplwi r0, 0
/* 806ACA3C  41 82 00 10 */	beq lbl_806ACA4C
/* 806ACA40  38 00 00 00 */	li r0, 0
/* 806ACA44  3C 60 80 6B */	lis r3, data_806AD7F8@ha /* 0x806AD7F8@ha */
/* 806ACA48  98 03 D7 F8 */	stb r0, data_806AD7F8@l(r3)  /* 0x806AD7F8@l */
lbl_806ACA4C:
/* 806ACA4C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806ACA50  28 00 00 00 */	cmplwi r0, 0
/* 806ACA54  41 82 00 18 */	beq lbl_806ACA6C
/* 806ACA58  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806ACA5C  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806ACA60  81 8C 00 08 */	lwz r12, 8(r12)
/* 806ACA64  7D 89 03 A6 */	mtctr r12
/* 806ACA68  4E 80 04 21 */	bctrl 
lbl_806ACA6C:
/* 806ACA6C  38 60 00 01 */	li r3, 1
/* 806ACA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806ACA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ACA78  7C 08 03 A6 */	mtlr r0
/* 806ACA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 806ACA80  4E 80 00 20 */	blr 
