lbl_8051C0D4:
/* 8051C0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C0D8  7C 08 02 A6 */	mflr r0
/* 8051C0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C0E0  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 8051C0E4  80 03 0D B4 */	lwz r0, m_flower__9daGrass_c@l(r3)  /* 0x80450DB4@l */
/* 8051C0E8  28 00 00 00 */	cmplwi r0, 0
/* 8051C0EC  41 82 00 0C */	beq lbl_8051C0F8
/* 8051C0F0  38 60 00 01 */	li r3, 1
/* 8051C0F4  48 00 00 3C */	b lbl_8051C130
lbl_8051C0F8:
/* 8051C0F8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00012A54@ha */
/* 8051C0FC  38 63 2A 54 */	addi r3, r3, 0x2A54 /* 0x00012A54@l */
/* 8051C100  4B DB 2B 4D */	bl __nw__FUl
/* 8051C104  7C 60 1B 79 */	or. r0, r3, r3
/* 8051C108  41 82 00 0C */	beq lbl_8051C114
/* 8051C10C  48 00 5B 59 */	bl __ct__16dFlower_packet_cFv
/* 8051C110  7C 60 1B 78 */	mr r0, r3
lbl_8051C114:
/* 8051C114  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 8051C118  90 03 0D B4 */	stw r0, m_flower__9daGrass_c@l(r3)  /* 0x80450DB4@l */
/* 8051C11C  28 00 00 00 */	cmplwi r0, 0
/* 8051C120  40 82 00 0C */	bne lbl_8051C12C
/* 8051C124  38 60 00 00 */	li r3, 0
/* 8051C128  48 00 00 08 */	b lbl_8051C130
lbl_8051C12C:
/* 8051C12C  38 60 00 01 */	li r3, 1
lbl_8051C130:
/* 8051C130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C134  7C 08 03 A6 */	mtlr r0
/* 8051C138  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C13C  4E 80 00 20 */	blr 
