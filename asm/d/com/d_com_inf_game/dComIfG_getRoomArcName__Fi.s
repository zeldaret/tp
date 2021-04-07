lbl_8002F4BC:
/* 8002F4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F4C0  7C 08 02 A6 */	mflr r0
/* 8002F4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F4C8  7C 65 1B 78 */	mr r5, r3
/* 8002F4CC  3C 60 80 42 */	lis r3, buf@ha /* 0x80423FD0@ha */
/* 8002F4D0  38 63 3F D0 */	addi r3, r3, buf@l /* 0x80423FD0@l */
/* 8002F4D4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002F4D8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002F4DC  38 84 01 6E */	addi r4, r4, 0x16e
/* 8002F4E0  4C C6 31 82 */	crclr 6
/* 8002F4E4  48 33 6F F9 */	bl sprintf
/* 8002F4E8  3C 60 80 42 */	lis r3, buf@ha /* 0x80423FD0@ha */
/* 8002F4EC  38 63 3F D0 */	addi r3, r3, buf@l /* 0x80423FD0@l */
/* 8002F4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F4F4  7C 08 03 A6 */	mtlr r0
/* 8002F4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F4FC  4E 80 00 20 */	blr 
