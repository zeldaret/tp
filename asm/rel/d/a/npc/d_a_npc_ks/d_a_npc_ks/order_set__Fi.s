lbl_80A4DD70:
/* 80A4DD70  3C 80 80 A6 */	lis r4, saru_p@ha /* 0x80A5E478@ha */
/* 80A4DD74  38 C4 E4 78 */	addi r6, r4, saru_p@l /* 0x80A5E478@l */
/* 80A4DD78  80 86 00 00 */	lwz r4, 0(r6)
/* 80A4DD7C  C0 24 05 C4 */	lfs f1, 0x5c4(r4)
/* 80A4DD80  54 60 10 3A */	slwi r0, r3, 2
/* 80A4DD84  7C 86 02 14 */	add r4, r6, r0
/* 80A4DD88  80 84 FF FC */	lwz r4, -4(r4)
/* 80A4DD8C  C0 04 05 C4 */	lfs f0, 0x5c4(r4)
/* 80A4DD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DD94  40 80 00 30 */	bge lbl_80A4DDC4
/* 80A4DD98  38 A0 00 00 */	li r5, 0
/* 80A4DD9C  38 80 00 00 */	li r4, 0
/* 80A4DDA0  7C 69 03 A6 */	mtctr r3
/* 80A4DDA4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DDA8  4C 81 00 20 */	blelr 
lbl_80A4DDAC:
/* 80A4DDAC  7C 66 20 2E */	lwzx r3, r6, r4
/* 80A4DDB0  90 A3 05 B8 */	stw r5, 0x5b8(r3)
/* 80A4DDB4  38 A5 00 01 */	addi r5, r5, 1
/* 80A4DDB8  38 84 00 04 */	addi r4, r4, 4
/* 80A4DDBC  42 00 FF F0 */	bdnz lbl_80A4DDAC
/* 80A4DDC0  4E 80 00 20 */	blr 
lbl_80A4DDC4:
/* 80A4DDC4  38 E0 00 00 */	li r7, 0
/* 80A4DDC8  38 80 00 00 */	li r4, 0
/* 80A4DDCC  38 A3 FF FF */	addi r5, r3, -1
/* 80A4DDD0  7C 69 03 A6 */	mtctr r3
/* 80A4DDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DDD8  4C 81 00 20 */	blelr 
lbl_80A4DDDC:
/* 80A4DDDC  7C 07 28 50 */	subf r0, r7, r5
/* 80A4DDE0  7C 66 20 2E */	lwzx r3, r6, r4
/* 80A4DDE4  90 03 05 B8 */	stw r0, 0x5b8(r3)
/* 80A4DDE8  38 E7 00 01 */	addi r7, r7, 1
/* 80A4DDEC  38 84 00 04 */	addi r4, r4, 4
/* 80A4DDF0  42 00 FF EC */	bdnz lbl_80A4DDDC
/* 80A4DDF4  4E 80 00 20 */	blr 
