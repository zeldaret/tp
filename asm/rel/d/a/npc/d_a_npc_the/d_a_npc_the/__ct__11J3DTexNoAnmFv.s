lbl_80AF8048:
/* 80AF8048  3C 80 80 B0 */	lis r4, __vt__11J3DTexNoAnm@ha
/* 80AF804C  38 04 C5 84 */	addi r0, r4, __vt__11J3DTexNoAnm@l
/* 80AF8050  90 03 00 00 */	stw r0, 0(r3)
/* 80AF8054  38 80 00 00 */	li r4, 0
/* 80AF8058  B0 83 00 04 */	sth r4, 4(r3)
/* 80AF805C  38 00 00 01 */	li r0, 1
/* 80AF8060  B0 03 00 06 */	sth r0, 6(r3)
/* 80AF8064  90 83 00 08 */	stw r4, 8(r3)
/* 80AF8068  4E 80 00 20 */	blr 
