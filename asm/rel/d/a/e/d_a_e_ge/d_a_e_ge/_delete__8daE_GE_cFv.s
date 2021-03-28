lbl_806CC1E4:
/* 806CC1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC1E8  7C 08 02 A6 */	mflr r0
/* 806CC1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CC1F4  7C 7F 1B 78 */	mr r31, r3
/* 806CC1F8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806CC1FC  3C 80 80 6D */	lis r4, stringBase0@ha
/* 806CC200  38 84 D1 0C */	addi r4, r4, stringBase0@l
/* 806CC204  4B 96 0E 04 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806CC208  88 1F 0B 9F */	lbz r0, 0xb9f(r31)
/* 806CC20C  28 00 00 00 */	cmplwi r0, 0
/* 806CC210  41 82 00 10 */	beq lbl_806CC220
/* 806CC214  38 00 00 00 */	li r0, 0
/* 806CC218  3C 60 80 6D */	lis r3, data_806CD358@ha
/* 806CC21C  98 03 D3 58 */	stb r0, data_806CD358@l(r3)
lbl_806CC220:
/* 806CC220  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806CC224  28 00 00 00 */	cmplwi r0, 0
/* 806CC228  41 82 00 18 */	beq lbl_806CC240
/* 806CC22C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806CC230  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806CC234  81 8C 00 08 */	lwz r12, 8(r12)
/* 806CC238  7D 89 03 A6 */	mtctr r12
/* 806CC23C  4E 80 04 21 */	bctrl 
lbl_806CC240:
/* 806CC240  38 60 00 01 */	li r3, 1
/* 806CC244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CC248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC24C  7C 08 03 A6 */	mtlr r0
/* 806CC250  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC254  4E 80 00 20 */	blr 
