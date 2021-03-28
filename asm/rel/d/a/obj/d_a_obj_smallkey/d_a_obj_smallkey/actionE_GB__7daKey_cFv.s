lbl_80CDB3D8:
/* 80CDB3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB3DC  7C 08 02 A6 */	mflr r0
/* 80CDB3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB3E4  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800D6@ha */
/* 80CDB3E8  38 84 00 D6 */	addi r4, r4, 0x00D6 /* 0x000800D6@l */
/* 80CDB3EC  4B FF FE F5 */	bl seStartTwinkle_private__7daKey_cFUl
/* 80CDB3F0  38 60 00 01 */	li r3, 1
/* 80CDB3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB3F8  7C 08 03 A6 */	mtlr r0
/* 80CDB3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB400  4E 80 00 20 */	blr 
