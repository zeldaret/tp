lbl_80AB6448:
/* 80AB6448  3C 80 80 AC */	lis r4, __vt__11J3DTexNoAnm@ha /* 0x80AB93AC@ha */
/* 80AB644C  38 04 93 AC */	addi r0, r4, __vt__11J3DTexNoAnm@l /* 0x80AB93AC@l */
/* 80AB6450  90 03 00 00 */	stw r0, 0(r3)
/* 80AB6454  38 80 00 00 */	li r4, 0
/* 80AB6458  B0 83 00 04 */	sth r4, 4(r3)
/* 80AB645C  38 00 00 01 */	li r0, 1
/* 80AB6460  B0 03 00 06 */	sth r0, 6(r3)
/* 80AB6464  90 83 00 08 */	stw r4, 8(r3)
/* 80AB6468  4E 80 00 20 */	blr 
