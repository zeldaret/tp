lbl_80ACC030:
/* 80ACC030  3C 80 80 AD */	lis r4, __vt__11J3DTexNoAnm@ha /* 0x80AD0978@ha */
/* 80ACC034  38 04 09 78 */	addi r0, r4, __vt__11J3DTexNoAnm@l /* 0x80AD0978@l */
/* 80ACC038  90 03 00 00 */	stw r0, 0(r3)
/* 80ACC03C  38 80 00 00 */	li r4, 0
/* 80ACC040  B0 83 00 04 */	sth r4, 4(r3)
/* 80ACC044  38 00 00 01 */	li r0, 1
/* 80ACC048  B0 03 00 06 */	sth r0, 6(r3)
/* 80ACC04C  90 83 00 08 */	stw r4, 8(r3)
/* 80ACC050  4E 80 00 20 */	blr 
